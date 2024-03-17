""""
Author: Yudi Faturohman
This is the tuner module.
Usage:
- Keras Tuner
"""

from typing import Any, Dict, NamedTuple, Text

import keras_tuner as kt
import tensorflow as tf
import tensorflow_transform as tft
from keras import layers
from keras_tuner.engine import base_tuner
from .bank_curn_transform import (CATEGORICAL_FEATURES, LABEL_KEY, NUMERICAL_FEATURES,
                       transformed_name)

NUM_EPOCHS = 5

TunerFnResult = NamedTuple("TunerFnResult", [
    ("tuner", base_tuner.BaseTuner),
    ("fit_kwargs", Dict[Text, Any]),
])

early_stop = tf.keras.callbacks.EarlyStopping(
    monitor="val_binary_accuracy",
    mode="max",
    verbose=1,
    patience=10,
)


def gzip_reader_fn(filenames):
    """Loads compression data

    Args:
        filenames (str): a path to the data directory

    Returns:
        TfRecord: Compressed data
    """

    return tf.data.TFRecordDataset(filenames, compression_type="GZIP")


def input_fn(file_pattern, tf_transform_output, batch_size=64):
    """Generated features and labels for tuning/training

    Args:
        file_pattern: input tf_record file pattern
        tf_transform_output: a TFTransformOutput
        batch_size: representing the number of consecutive elements of
        returned dataset to combine in a single batch. Defaults to 64.

    Returns:
        a dataset that contains (featurs, indices) tuple where features
        is a dictionary of Tensors, and indices is a single Tensor of
        label indices
    """

    transform_feature_spec = (
        tf_transform_output.transformed_feature_spec().copy()
    )

    dataset = tf.data.experimental.make_batched_features_dataset(
        file_pattern=file_pattern,
        batch_size=batch_size,
        features=transform_feature_spec,
        reader=gzip_reader_fn,
        label_key=transformed_name(LABEL_KEY)
    )

    return dataset


def get_model_tuner(hyperparameters):
    """This function defines a keras Model

    Args:
        hyperparameters (kt.HyperParameters): object to setting hyperparameters

    Returns:
        tf.keras.Model: model as a Keras object
    """

    num_hidden_layers = hyperparameters.Choice(
        "num_hidden_layers",
        values=[1, 2, 3],
    )
    dense_unit = hyperparameters.Int(
        "dense_unit",
        min_value=16,
        max_value=256,
        step=32,
    )
    dropout_rate = hyperparameters.Float(
        "dropout_rate",
        min_value=0.1,
        max_value=0.9,
        step=0.1,
    )
    learning_rate = hyperparameters.Choice(
        "learning_rate",
        values=[1e-2, 1e-3, 1e-4]
    )

    input_features = []

    for key, dim in CATEGORICAL_FEATURES.items():
        input_features.append(
            layers.Input(shape=(dim+1,), name=transformed_name(key))
        )

    for feature in NUMERICAL_FEATURES:
        input_features.append(
            layers.Input(shape=(1,), name=transformed_name(feature))
        )

    concatenate = layers.concatenate(input_features)
    deep = layers.Dense(dense_unit, activation=tf.nn.relu)(concatenate)

    for _ in range(num_hidden_layers):
        deep = layers.Dense(dense_unit, activation=tf.nn.relu)(deep)
        deep = layers.Dropout(dropout_rate)(deep)

    outputs = layers.Dense(1, activation=tf.nn.sigmoid)(deep)

    model = tf.keras.Model(inputs=input_features, outputs=outputs)

    model.compile(
        optimizer=tf.keras.optimizers.Adam(learning_rate=learning_rate),
        loss=tf.keras.losses.BinaryCrossentropy(),
        metrics=["binary_accuracy"],
    )

    model.summary()

    return model


def tuner_fn(fn_args):
    """Tuning the model to get the best hyperparameters based on given args

    Args:
        fn_args (FnArgs): Holds args used to train the model as name/value pair

    Returns:
        TunerFnResult (NamedTuple): object to run model tuner
    """

    tf_transform_output = tft.TFTransformOutput(fn_args.transform_graph_path)

    train_set = input_fn(fn_args.train_files[0], tf_transform_output,)
    eval_set = input_fn(fn_args.eval_files[0], tf_transform_output,)

    tuner = kt.RandomSearch(
        hypermodel=get_model_tuner,
        objective=kt.Objective(
            "val_loss",
            direction="min",
        ),
        max_trials=3,
        executions_per_trial=2,
        max_consecutive_failed_trials=3,
        directory=fn_args.working_dir,
        project_name="bank_curn_hyperbrand",
    )
    tuner.get_best_models()

    return TunerFnResult(
        tuner=tuner,
        fit_kwargs={
            "x": train_set,
            "validation_data": eval_set,
            "steps_per_epoch": fn_args.train_steps,
            "validation_steps": fn_args.eval_steps,
            "callbacks": [early_stop]
        },
    )
