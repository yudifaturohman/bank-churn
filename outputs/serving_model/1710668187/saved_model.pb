…ў
ƒ$Ч$
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
°
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
№
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ю€€€€€€€€"
value_indexint(0ю€€€€€€€€"+

vocab_sizeint€€€€€€€€€(0€€€€€€€€€"
	delimiterstring	"
offsetint И
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
Н
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint€€€€€€€€€"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
Р
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
9
VarIsInitializedOp
resource
is_initialized
И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.13.12v2.13.0-17-gf841394b1b78‘ў
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
Б
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
z
Variable/AssignAssignVariableOpVariableasset_path_initializer*&
 _has_manual_control_dependencies(*
dtype0
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
Y
asset_path_initializer_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
З

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
А
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer_1*&
 _has_manual_control_dependencies(*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
Y
asset_path_initializer_2Placeholder*
_output_shapes
: *
dtype0*
shape: 
З

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
А
Variable_2/AssignAssignVariableOp
Variable_2asset_path_initializer_2*&
 _has_manual_control_dependencies(*
dtype0
a
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
Y
asset_path_initializer_3Placeholder*
_output_shapes
: *
dtype0*
shape: 
З

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
А
Variable_3/AssignAssignVariableOp
Variable_3asset_path_initializer_3*&
 _has_manual_control_dependencies(*
dtype0
a
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
: *
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *NCH
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *ЃG9Ѕ
P
Const_2Const*
_output_shapes
: *
dtype0*
valueB 2[OГ„XУиA
P
Const_3Const*
_output_shapes
: *
dtype0*
valueB 2Їcйеƒmш@
L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *  А@
L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *  Ањ
P
Const_6Const*
_output_shapes
: *
dtype0*
valueB 296•≤¶ў’?
P
Const_7Const*
_output_shapes
: *
dtype0*
valueB 2тељmКЗш?
L
Const_8Const*
_output_shapes
: *
dtype0*
valueB
 *   A
L
Const_9Const*
_output_shapes
: *
dtype0*
valueB
 *   А
Q
Const_10Const*
_output_shapes
: *
dtype0*
valueB 2$∆%егї @
Q
Const_11Const*
_output_shapes
: *
dtype0*
valueB 2є°И3)@
M
Const_12Const*
_output_shapes
: *
dtype0*
valueB
 *  ЄB
M
Const_13Const*
_output_shapes
: *
dtype0*
valueB
 *  РЅ
Q
Const_14Const*
_output_shapes
: *
dtype0*
valueB 2љµe[@
Q
Const_15Const*
_output_shapes
: *
dtype0*
valueB 2KnўtC@
M
Const_16Const*
_output_shapes
: *
dtype0*
valueB
 * АTD
M
Const_17Const*
_output_shapes
: *
dtype0*
valueB
 *  ѓ√
Q
Const_18Const*
_output_shapes
: *
dtype0*
valueB 2(Тс_Z"¬@
Q
Const_19Const*
_output_shapes
: *
dtype0*
valueB 2lСioLД@
J
Const_20Const*
_output_shapes
: *
dtype0	*
value	B	 R
S
Const_21Const*
_output_shapes
: *
dtype0	*
valueB	 R
€€€€€€€€€
J
Const_22Const*
_output_shapes
: *
dtype0	*
value	B	 R
J
Const_23Const*
_output_shapes
: *
dtype0	*
value	B	 R
J
Const_24Const*
_output_shapes
: *
dtype0	*
value	B	 R
S
Const_25Const*
_output_shapes
: *
dtype0	*
valueB	 R
€€€€€€€€€
J
Const_26Const*
_output_shapes
: *
dtype0	*
value	B	 R
J
Const_27Const*
_output_shapes
: *
dtype0	*
value	B	 R
J
Const_28Const*
_output_shapes
: *
dtype0	*
value	B	 R
S
Const_29Const*
_output_shapes
: *
dtype0	*
valueB	 R
€€€€€€€€€
J
Const_30Const*
_output_shapes
: *
dtype0	*
value	B	 R
J
Const_31Const*
_output_shapes
: *
dtype0	*
value	B	 R
J
Const_32Const*
_output_shapes
: *
dtype0	*
value	B	 R
S
Const_33Const*
_output_shapes
: *
dtype0	*
valueB	 R
€€€€€€€€€
J
Const_34Const*
_output_shapes
: *
dtype0	*
value	B	 R
J
Const_35Const*
_output_shapes
: *
dtype0	*
value	B	 R
Й
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236659
Л
StatefulPartitionedCall_1StatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236664
Л
StatefulPartitionedCall_2StatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236669
Л
StatefulPartitionedCall_3StatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236674
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_6/bias
w
'Adam/v/dense_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_6/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_6/bias
w
'Adam/m/dense_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_6/bias*
_output_shapes
:*
dtype0
З
Adam/v/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	р*&
shared_nameAdam/v/dense_6/kernel
А
)Adam/v/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_6/kernel*
_output_shapes
:	р*
dtype0
З
Adam/m/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	р*&
shared_nameAdam/m/dense_6/kernel
А
)Adam/m/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_6/kernel*
_output_shapes
:	р*
dtype0

Adam/v/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:р*$
shared_nameAdam/v/dense_5/bias
x
'Adam/v/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/bias*
_output_shapes	
:р*
dtype0

Adam/m/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:р*$
shared_nameAdam/m/dense_5/bias
x
'Adam/m/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/bias*
_output_shapes	
:р*
dtype0
И
Adam/v/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
рр*&
shared_nameAdam/v/dense_5/kernel
Б
)Adam/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/kernel* 
_output_shapes
:
рр*
dtype0
И
Adam/m/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
рр*&
shared_nameAdam/m/dense_5/kernel
Б
)Adam/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/kernel* 
_output_shapes
:
рр*
dtype0

Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:р*$
shared_nameAdam/v/dense_4/bias
x
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes	
:р*
dtype0

Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:р*$
shared_nameAdam/m/dense_4/bias
x
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes	
:р*
dtype0
З
Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	р*&
shared_nameAdam/v/dense_4/kernel
А
)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel*
_output_shapes
:	р*
dtype0
З
Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	р*&
shared_nameAdam/m/dense_4/kernel
А
)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel*
_output_shapes
:	р*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	р*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	р*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:р*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:р*
dtype0
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
рр*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
рр*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:р*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:р*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	р*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	р*
dtype0
s
serving_default_examplesPlaceholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Я
StatefulPartitionedCall_4StatefulPartitionedCallserving_default_examplesConst_35Const_34StatefulPartitionedCall_3Const_33Const_32Const_31Const_30StatefulPartitionedCall_2Const_29Const_28Const_27Const_26StatefulPartitionedCall_1Const_25Const_24Const_23Const_22StatefulPartitionedCallConst_21Const_20Const_19Const_18Const_17Const_16Const_15Const_14Const_13Const_12Const_11Const_10Const_9Const_8Const_7Const_6Const_5Const_4Const_3Const_2Const_1Constdense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/bias*:
Tin3
12/																*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

)*+,-.*-
config_proto

CPU

GPU 2J 8В *C
f>R<
:__inference_signature_wrapper_serve_tf_examples_fn_1235854
e
ReadVariableOpReadVariableOp
Variable_3^Variable_3/Assign*
_output_shapes
: *
dtype0
Ў
StatefulPartitionedCall_5StatefulPartitionedCallReadVariableOpStatefulPartitionedCall_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__initializer_1236491
g
ReadVariableOp_1ReadVariableOp
Variable_2^Variable_2/Assign*
_output_shapes
: *
dtype0
Џ
StatefulPartitionedCall_6StatefulPartitionedCallReadVariableOp_1StatefulPartitionedCall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__initializer_1236525
g
ReadVariableOp_2ReadVariableOp
Variable_1^Variable_1/Assign*
_output_shapes
: *
dtype0
Џ
StatefulPartitionedCall_7StatefulPartitionedCallReadVariableOp_2StatefulPartitionedCall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__initializer_1236559
c
ReadVariableOp_3ReadVariableOpVariable^Variable/Assign*
_output_shapes
: *
dtype0
Ў
StatefulPartitionedCall_8StatefulPartitionedCallReadVariableOp_3StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__initializer_1236593
 
NoOpNoOp^StatefulPartitionedCall_5^StatefulPartitionedCall_6^StatefulPartitionedCall_7^StatefulPartitionedCall_8^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign
є]
Const_36Const"/device:CPU:0*
_output_shapes
: *
dtype0*с\
valueз\Bд\ BЁ\
с
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-0
layer-10
layer_with_weights-1
layer-11
layer-12
layer_with_weights-2
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
	tft_layer

signatures*
* 
* 
* 
* 
* 
* 
* 
* 
* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
¶
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
¶
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias*
•
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5_random_generator* 
¶
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
і
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
$D _saved_model_loader_tracked_dict* 
.
%0
&1
-2
.3
<4
=5*
.
%0
&1
-2
.3
<4
=5*
* 
∞
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Jtrace_0
Ktrace_1* 

Ltrace_0
Mtrace_1* 
* 
Б
N
_variables
O_iterations
P_learning_rate
Q_index_dict
R
_momentums
S_velocities
T_update_step_xla*

Userving_default* 
* 
* 
* 
С
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

[trace_0* 

\trace_0* 

%0
&1*

%0
&1*
* 
У
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

btrace_0* 

ctrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
У
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

ptrace_0
qtrace_1* 

rtrace_0
strace_1* 
* 

<0
=1*

<0
=1*
* 
У
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

ytrace_0* 

ztrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
С
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 

Аtrace_0* 

Бtrace_0* 
y
В	_imported
Г_wrapped_function
Д_structured_inputs
Е_structured_outputs
Ж_output_to_inputs_map* 
* 
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*

З0
И1*
* 
* 
* 
* 
* 
* 
n
O0
Й1
К2
Л3
М4
Н5
О6
П7
Р8
С9
Т10
У11
Ф12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
4
Й0
Л1
Н2
П3
С4
У5*
4
К0
М1
О2
Р3
Т4
Ф5*
* 
ё
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
ё
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39* 
ё
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39* 
ђ
єcreated_variables
Ї	resources
їtrackable_objects
Љinitializers
љassets
Њ
signatures
$њ_self_saveable_object_factories
Гtransform_fn* 
ё
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39* 
* 
* 
* 
<
ј	variables
Ѕ	keras_api

¬total

√count*
M
ƒ	variables
≈	keras_api

∆total

«count
»
_fn_kwargs*
`Z
VARIABLE_VALUEAdam/m/dense_4/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_4/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_4/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_4/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_5/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_5/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_5/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_5/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_6/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_6/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_6/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_6/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
"
…0
 1
Ћ2
ћ3* 
* 
"
Ќ0
ќ1
ѕ2
–3* 
"
—0
“1
”2
‘3* 

’serving_default* 
* 

¬0
√1*

ј	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

∆0
«1*

ƒ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
V
Ќ_initializer
÷_create_resource
„_initialize
Ў_destroy_resource* 
V
ќ_initializer
ў_create_resource
Џ_initialize
џ_destroy_resource* 
V
ѕ_initializer
№_create_resource
Ё_initialize
ё_destroy_resource* 
V
–_initializer
я_create_resource
а_initialize
б_destroy_resource* 
8
—	_filename
$в_self_saveable_object_factories* 
8
“	_filename
$г_self_saveable_object_factories* 
8
”	_filename
$д_self_saveable_object_factories* 
8
‘	_filename
$е_self_saveable_object_factories* 
* 
* 
* 
* 
ё
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39* 

жtrace_0* 

зtrace_0* 

иtrace_0* 

йtrace_0* 

кtrace_0* 

лtrace_0* 

мtrace_0* 

нtrace_0* 

оtrace_0* 

пtrace_0* 

рtrace_0* 

сtrace_0* 
* 
* 
* 
* 
* 

—	capture_0* 
* 
* 

“	capture_0* 
* 
* 

”	capture_0* 
* 
* 

‘	capture_0* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
”
StatefulPartitionedCall_9StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/bias	iterationlearning_rateAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biasAdam/m/dense_6/kernelAdam/v/dense_6/kernelAdam/m/dense_6/biasAdam/v/dense_6/biastotal_1count_1totalcountConst_36*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_save_1236848
ћ
StatefulPartitionedCall_10StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/bias	iterationlearning_rateAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biasAdam/m/dense_6/kernelAdam/v/dense_6/kernelAdam/m/dense_6/biasAdam/v/dense_6/biastotal_1count_1totalcount*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__traced_restore_1236929вы

ж
W
*__inference_restored_function_body_1236659
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *%
f R
__inference__creator_1235059^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
мz
и
(__inference_serve_tf_examples_fn_1235756
examples$
 transform_features_layer_1235641	$
 transform_features_layer_1235643	$
 transform_features_layer_1235645$
 transform_features_layer_1235647	$
 transform_features_layer_1235649	$
 transform_features_layer_1235651	$
 transform_features_layer_1235653	$
 transform_features_layer_1235655$
 transform_features_layer_1235657	$
 transform_features_layer_1235659	$
 transform_features_layer_1235661	$
 transform_features_layer_1235663	$
 transform_features_layer_1235665$
 transform_features_layer_1235667	$
 transform_features_layer_1235669	$
 transform_features_layer_1235671	$
 transform_features_layer_1235673	$
 transform_features_layer_1235675$
 transform_features_layer_1235677	$
 transform_features_layer_1235679	$
 transform_features_layer_1235681$
 transform_features_layer_1235683$
 transform_features_layer_1235685$
 transform_features_layer_1235687$
 transform_features_layer_1235689$
 transform_features_layer_1235691$
 transform_features_layer_1235693$
 transform_features_layer_1235695$
 transform_features_layer_1235697$
 transform_features_layer_1235699$
 transform_features_layer_1235701$
 transform_features_layer_1235703$
 transform_features_layer_1235705$
 transform_features_layer_1235707$
 transform_features_layer_1235709$
 transform_features_layer_1235711$
 transform_features_layer_1235713$
 transform_features_layer_1235715$
 transform_features_layer_1235717$
 transform_features_layer_1235719A
.model_1_dense_4_matmul_readvariableop_resource:	р>
/model_1_dense_4_biasadd_readvariableop_resource:	рB
.model_1_dense_5_matmul_readvariableop_resource:
рр>
/model_1_dense_5_biasadd_readvariableop_resource:	рA
.model_1_dense_6_matmul_readvariableop_resource:	р=
/model_1_dense_6_biasadd_readvariableop_resource:
identityИҐ&model_1/dense_4/BiasAdd/ReadVariableOpҐ%model_1/dense_4/MatMul/ReadVariableOpҐ&model_1/dense_5/BiasAdd/ReadVariableOpҐ%model_1/dense_5/MatMul/ReadVariableOpҐ&model_1/dense_6/BiasAdd/ReadVariableOpҐ%model_1/dense_6/MatMul/ReadVariableOpҐ0transform_features_layer/StatefulPartitionedCallU
ParseExample/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_2Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_3Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_4Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_5Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_6Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_7Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_8Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_9Const*
_output_shapes
: *
dtype0	*
valueB	 X
ParseExample/Const_10Const*
_output_shapes
: *
dtype0	*
valueB	 d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB с
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*Ц
valueМBЙBactive_memberBageBbalanceBcountryBcredit_cardBcredit_scoreBcustomer_idBestimated_salaryBgenderBproducts_numberBtenurej
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB Б
ParseExample/ParseExampleV2ParseExampleV2examples*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0ParseExample/Const_1:output:0ParseExample/Const_2:output:0ParseExample/Const_3:output:0ParseExample/Const_4:output:0ParseExample/Const_5:output:0ParseExample/Const_6:output:0ParseExample/Const_7:output:0ParseExample/Const_8:output:0ParseExample/Const_9:output:0ParseExample/Const_10:output:0*
Tdense
2							*з
_output_shapes‘
—:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*T
dense_shapesD
B:::::::::::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 Ж
transform_features_layer/ShapeShape*ParseExample/ParseExampleV2:dense_values:0*
T0	*
_output_shapes
::нѕv
,transform_features_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.transform_features_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.transform_features_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
&transform_features_layer/strided_sliceStridedSlice'transform_features_layer/Shape:output:05transform_features_layer/strided_slice/stack:output:07transform_features_layer/strided_slice/stack_1:output:07transform_features_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
 transform_features_layer/Shape_1Shape*ParseExample/ParseExampleV2:dense_values:0*
T0	*
_output_shapes
::нѕx
.transform_features_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(transform_features_layer/strided_slice_1StridedSlice)transform_features_layer/Shape_1:output:07transform_features_layer/strided_slice_1/stack:output:09transform_features_layer/strided_slice_1/stack_1:output:09transform_features_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'transform_features_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ј
%transform_features_layer/zeros/packedPack1transform_features_layer/strided_slice_1:output:00transform_features_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
$transform_features_layer/zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R Ј
transform_features_layer/zerosFill.transform_features_layer/zeros/packed:output:0-transform_features_layer/zeros/Const:output:0*
T0	*'
_output_shapes
:€€€€€€€€€∆
/transform_features_layer/PlaceholderWithDefaultPlaceholderWithDefault'transform_features_layer/zeros:output:0*'
_output_shapes
:€€€€€€€€€*
dtype0	*
shape:€€€€€€€€€а
0transform_features_layer/StatefulPartitionedCallStatefulPartitionedCall*ParseExample/ParseExampleV2:dense_values:0*ParseExample/ParseExampleV2:dense_values:1*ParseExample/ParseExampleV2:dense_values:28transform_features_layer/PlaceholderWithDefault:output:0*ParseExample/ParseExampleV2:dense_values:3*ParseExample/ParseExampleV2:dense_values:4*ParseExample/ParseExampleV2:dense_values:5*ParseExample/ParseExampleV2:dense_values:6*ParseExample/ParseExampleV2:dense_values:7*ParseExample/ParseExampleV2:dense_values:8*ParseExample/ParseExampleV2:dense_values:9+ParseExample/ParseExampleV2:dense_values:10 transform_features_layer_1235641 transform_features_layer_1235643 transform_features_layer_1235645 transform_features_layer_1235647 transform_features_layer_1235649 transform_features_layer_1235651 transform_features_layer_1235653 transform_features_layer_1235655 transform_features_layer_1235657 transform_features_layer_1235659 transform_features_layer_1235661 transform_features_layer_1235663 transform_features_layer_1235665 transform_features_layer_1235667 transform_features_layer_1235669 transform_features_layer_1235671 transform_features_layer_1235673 transform_features_layer_1235675 transform_features_layer_1235677 transform_features_layer_1235679 transform_features_layer_1235681 transform_features_layer_1235683 transform_features_layer_1235685 transform_features_layer_1235687 transform_features_layer_1235689 transform_features_layer_1235691 transform_features_layer_1235693 transform_features_layer_1235695 transform_features_layer_1235697 transform_features_layer_1235699 transform_features_layer_1235701 transform_features_layer_1235703 transform_features_layer_1235705 transform_features_layer_1235707 transform_features_layer_1235709 transform_features_layer_1235711 transform_features_layer_1235713 transform_features_layer_1235715 transform_features_layer_1235717 transform_features_layer_1235719*?
Tin8
624																								*
Tout
2
	*‘
_output_shapesЅ
Њ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *#
fR
__inference_pruned_1235322c
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ґ
model_1/concatenate_1/concatConcatV29transform_features_layer/StatefulPartitionedCall:output:39transform_features_layer/StatefulPartitionedCall:output:79transform_features_layer/StatefulPartitionedCall:output:49transform_features_layer/StatefulPartitionedCall:output:09transform_features_layer/StatefulPartitionedCall:output:59transform_features_layer/StatefulPartitionedCall:output:19transform_features_layer/StatefulPartitionedCall:output:99transform_features_layer/StatefulPartitionedCall:output:89transform_features_layer/StatefulPartitionedCall:output:6*model_1/concatenate_1/concat/axis:output:0*
N	*
T0*'
_output_shapes
:€€€€€€€€€Х
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	р*
dtype0©
model_1/dense_4/MatMulMatMul%model_1/concatenate_1/concat:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рУ
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:р*
dtype0І
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рq
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€рЦ
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
рр*
dtype0¶
model_1/dense_5/MatMulMatMul"model_1/dense_4/Relu:activations:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рУ
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:р*
dtype0І
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рq
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€р}
model_1/dropout_2/IdentityIdentity"model_1/dense_5/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€рХ
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource*
_output_shapes
:	р*
dtype0¶
model_1/dense_6/MatMulMatMul#model_1/dropout_2/Identity:output:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€v
model_1/dense_6/SigmoidSigmoid model_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitymodel_1/dense_6/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€»
NoOpNoOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp1^transform_features_layer/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2d
0transform_features_layer/StatefulPartitionedCall0transform_features_layer/StatefulPartitionedCall:M I
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235645:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235655:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235665:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235675:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :()$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(.$
"
_user_specified_name
resource
Е
I
__inference__creator_1236542
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236539^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
Е
I
__inference__creator_1236576
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236573^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
Ь
.
__inference__destroyer_1235009
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
у
Ч
)__inference_dense_6_layer_call_fn_1236455

inputs
unknown:	р
	unknown_0:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1236209o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€р: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs:'#
!
_user_specified_name	1236449:'#
!
_user_specified_name	1236451
«
¶
)__inference_model_1_layer_call_fn_1236300

country_xf
	gender_xf
credit_card_xf
active_member_xf
credit_score_xf

age_xf
	tenure_xf
products_number_xf
estimated_salary_xf
unknown:	р
	unknown_0:	р
	unknown_1:
рр
	unknown_2:	р
	unknown_3:	р
	unknown_4:
identityИҐStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCall
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_1236250o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesЇ
Ј:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
country_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	gender_xf:WS
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namecredit_card_xf:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_nameactive_member_xf:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namecredit_score_xf:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameage_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	tenure_xf:[W
'
_output_shapes
:€€€€€€€€€
,
_user_specified_nameproducts_number_xf:\X
'
_output_shapes
:€€€€€€€€€
-
_user_specified_nameestimated_salary_xf:'	#
!
_user_specified_name	1236286:'
#
!
_user_specified_name	1236288:'#
!
_user_specified_name	1236290:'#
!
_user_specified_name	1236292:'#
!
_user_specified_name	1236294:'#
!
_user_specified_name	1236296
ж
W
*__inference_restored_function_body_1236669
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *%
f R
__inference__creator_1235050^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
ж
W
*__inference_restored_function_body_1236674
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *%
f R
__inference__creator_1235005^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
л
s
*__inference_restored_function_body_1236517
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__initializer_1235065^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: :'#
!
_user_specified_name	1236513
Ђ
љ
/__inference_concatenate_1_layer_call_fn_1236365
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identityП
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1236152`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ј
_input_shapesЃ
Ђ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_4:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_5:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_6:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_7:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_8
≥
ƒ
 __inference__initializer_1235065!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityИҐ,text_file_init/InitializeTableFromTextFileV2у
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexю€€€€€€€€*
value_index€€€€€€€€€G
ConstConst*
_output_shapes
: *
dtype0*
value	B :Q
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: :,(
&
_user_specified_nametable_handle
я
Ц
:__inference_signature_wrapper_serve_tf_examples_fn_1235854
examples
unknown	
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3	
	unknown_4	
	unknown_5	
	unknown_6
	unknown_7	
	unknown_8	
	unknown_9	

unknown_10	

unknown_11

unknown_12	

unknown_13	

unknown_14	

unknown_15	

unknown_16

unknown_17	

unknown_18	

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39:	р

unknown_40:	р

unknown_41:
рр

unknown_42:	р

unknown_43:	р

unknown_44:
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallexamplesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/																*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

)*+,-.*-
config_proto

CPU

GPU 2J 8В *1
f,R*
(__inference_serve_tf_examples_fn_1235756o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:€€€€€€€€€
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235764:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235774:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235784:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235794:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :')#
!
_user_specified_name	1235840:'*#
!
_user_specified_name	1235842:'+#
!
_user_specified_name	1235844:',#
!
_user_specified_name	1235846:'-#
!
_user_specified_name	1235848:'.#
!
_user_specified_name	1235850
Ш
.
__inference__destroyer_1236500
identityщ
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236496G
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
°

e
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236441

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€рQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕН
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€р*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333?І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€рT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€рb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:€€€€€€€€€р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€р:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs
Ё
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236242

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€р\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€р"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€р:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs
Ї
:
*__inference_restored_function_body_1236598
identityќ
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__destroyer_1235022O
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ќ

ц
D__inference_dense_6_layer_call_and_return_conditional_losses_1236209

inputs1
matmul_readvariableop_resource:	р-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	р*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е
I
__inference__creator_1236474
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236471^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
„

ш
D__inference_dense_5_layer_call_and_return_conditional_losses_1236180

inputs2
matmul_readvariableop_resource:
рр.
biasadd_readvariableop_resource:	р
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
рр*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:р*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€рb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€рS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
У0
З
:__inference_transform_features_layer_layer_call_fn_1236128
active_member	
age	
balance
country
credit_card	
credit_score	
customer_id	
estimated_salary

gender
products_number	

tenure	
unknown	
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3	
	unknown_4	
	unknown_5	
	unknown_6
	unknown_7	
	unknown_8	
	unknown_9	

unknown_10	

unknown_11

unknown_12	

unknown_13	

unknown_14	

unknown_15	

unknown_16

unknown_17	

unknown_18	

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8ИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallactive_memberagebalancecountrycredit_cardcredit_scorecustomer_idestimated_salarygenderproducts_numbertenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*>
Tin7
523																							*
Tout
2	*
_collective_manager_ids
 *Ѕ
_output_shapesЃ
Ђ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *^
fYRW
U__inference_transform_features_layer_layer_call_and_return_conditional_losses_1236017o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0*(
_construction_contextkEagerRuntime*ґ
_input_shapes§
°:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:€€€€€€€€€
'
_user_specified_nameactive_member:LH
'
_output_shapes
:€€€€€€€€€

_user_specified_nameage:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	balance:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	country:TP
'
_output_shapes
:€€€€€€€€€
%
_user_specified_namecredit_card:UQ
'
_output_shapes
:€€€€€€€€€
&
_user_specified_namecredit_score:TP
'
_output_shapes
:€€€€€€€€€
%
_user_specified_namecustomer_id:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_nameestimated_salary:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namegender:X	T
'
_output_shapes
:€€€€€€€€€
)
_user_specified_nameproducts_number:O
K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nametenure:

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1236034:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1236044:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1236054:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1236064:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: 
Ш
.
__inference__destroyer_1236602
identityщ
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236598G
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
О"
≥
D__inference_model_1_layer_call_and_return_conditional_losses_1236250

country_xf
	gender_xf
credit_card_xf
active_member_xf
credit_score_xf

age_xf
	tenure_xf
products_number_xf
estimated_salary_xf"
dense_4_1236228:	р
dense_4_1236230:	р#
dense_5_1236233:
рр
dense_5_1236235:	р"
dense_6_1236244:	р
dense_6_1236246:
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCall…
concatenate_1/PartitionedCallPartitionedCall
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xf*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1236152Р
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_1236228dense_4_1236230*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1236164Т
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_1236233dense_5_1236235*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1236180ё
dropout_2/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236242Л
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_6_1236244dense_6_1236246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1236209w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€И
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesЇ
Ј:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
country_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	gender_xf:WS
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namecredit_card_xf:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_nameactive_member_xf:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namecredit_score_xf:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameage_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	tenure_xf:[W
'
_output_shapes
:€€€€€€€€€
,
_user_specified_nameproducts_number_xf:\X
'
_output_shapes
:€€€€€€€€€
-
_user_specified_nameestimated_salary_xf:'	#
!
_user_specified_name	1236228:'
#
!
_user_specified_name	1236230:'#
!
_user_specified_name	1236233:'#
!
_user_specified_name	1236235:'#
!
_user_specified_name	1236244:'#
!
_user_specified_name	1236246
Ш
.
__inference__destroyer_1236568
identityщ
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236564G
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ґ#
„
D__inference_model_1_layer_call_and_return_conditional_losses_1236216

country_xf
	gender_xf
credit_card_xf
active_member_xf
credit_score_xf

age_xf
	tenure_xf
products_number_xf
estimated_salary_xf"
dense_4_1236165:	р
dense_4_1236167:	р#
dense_5_1236181:
рр
dense_5_1236183:	р"
dense_6_1236210:	р
dense_6_1236212:
identityИҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCall…
concatenate_1/PartitionedCallPartitionedCall
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xf*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1236152Р
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_1236165dense_4_1236167*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1236164Т
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_1236181dense_5_1236183*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1236180о
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236197У
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_6_1236210dense_6_1236212*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_6_layer_call_and_return_conditional_losses_1236209w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ђ
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesЇ
Ј:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
country_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	gender_xf:WS
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namecredit_card_xf:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_nameactive_member_xf:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namecredit_score_xf:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameage_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	tenure_xf:[W
'
_output_shapes
:€€€€€€€€€
,
_user_specified_nameproducts_number_xf:\X
'
_output_shapes
:€€€€€€€€€
-
_user_specified_nameestimated_salary_xf:'	#
!
_user_specified_name	1236165:'
#
!
_user_specified_name	1236167:'#
!
_user_specified_name	1236181:'#
!
_user_specified_name	1236183:'#
!
_user_specified_name	1236210:'#
!
_user_specified_name	1236212
ж
W
*__inference_restored_function_body_1236505
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *%
f R
__inference__creator_1235050^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
л
s
*__inference_restored_function_body_1236585
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__initializer_1235402^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: :'#
!
_user_specified_name	1236581
ќ

ц
D__inference_dense_6_layer_call_and_return_conditional_losses_1236466

inputs1
matmul_readvariableop_resource:	р-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	р*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ї
:
*__inference_restored_function_body_1236564
identityќ
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__destroyer_1235054O
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
•
G
+__inference_dropout_2_layer_call_fn_1236429

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236242a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€р:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs
ж
W
*__inference_restored_function_body_1236539
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *%
f R
__inference__creator_1235018^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
Ё
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236446

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€р\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€р"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€р:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs
Ї
:
*__inference_restored_function_body_1236530
identityќ
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__destroyer_1235009O
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
Ш
<
__inference__creator_1235050
identityИҐ
hash_table„

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*в
shared_name“ѕhash_table_tf.Tensor(b'outputs/bank-churn-pipeline/Transform/transform_graph/64/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary', shape=(), dtype=string)_-2_-1_load_1234994_1235046*
use_node_name_sharing(*
value_dtype0	/
NoOpNoOp^hash_table*
_output_shapes
 W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
Ѕ
i
 __inference__initializer_1236491
unknown
	unknown_0
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236483G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: :'#
!
_user_specified_name	1236486
“-
џ
"__inference__wrapped_model_1235890

country_xf
	gender_xf
credit_card_xf
active_member_xf
credit_score_xf

age_xf
	tenure_xf
products_number_xf
estimated_salary_xfA
.model_1_dense_4_matmul_readvariableop_resource:	р>
/model_1_dense_4_biasadd_readvariableop_resource:	рB
.model_1_dense_5_matmul_readvariableop_resource:
рр>
/model_1_dense_5_biasadd_readvariableop_resource:	рA
.model_1_dense_6_matmul_readvariableop_resource:	р=
/model_1_dense_6_biasadd_readvariableop_resource:
identityИҐ&model_1/dense_4/BiasAdd/ReadVariableOpҐ%model_1/dense_4/MatMul/ReadVariableOpҐ&model_1/dense_5/BiasAdd/ReadVariableOpҐ%model_1/dense_5/MatMul/ReadVariableOpҐ&model_1/dense_6/BiasAdd/ReadVariableOpҐ%model_1/dense_6/MatMul/ReadVariableOpc
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Х
model_1/concatenate_1/concatConcatV2
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xf*model_1/concatenate_1/concat/axis:output:0*
N	*
T0*'
_output_shapes
:€€€€€€€€€Х
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	р*
dtype0©
model_1/dense_4/MatMulMatMul%model_1/concatenate_1/concat:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рУ
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:р*
dtype0І
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рq
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€рЦ
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
рр*
dtype0¶
model_1/dense_5/MatMulMatMul"model_1/dense_4/Relu:activations:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рУ
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:р*
dtype0І
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рq
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€р}
model_1/dropout_2/IdentityIdentity"model_1/dense_5/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€рХ
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource*
_output_shapes
:	р*
dtype0¶
model_1/dense_6/MatMulMatMul#model_1/dropout_2/Identity:output:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€v
model_1/dense_6/SigmoidSigmoid model_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitymodel_1/dense_6/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Х
NoOpNoOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesЇ
Ј:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : 2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
country_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	gender_xf:WS
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namecredit_card_xf:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_nameactive_member_xf:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namecredit_score_xf:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameage_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	tenure_xf:[W
'
_output_shapes
:€€€€€€€€€
,
_user_specified_nameproducts_number_xf:\X
'
_output_shapes
:€€€€€€€€€
-
_user_specified_nameestimated_salary_xf:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
л
s
*__inference_restored_function_body_1236551
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__initializer_1235028^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: :'#
!
_user_specified_name	1236547
„

ш
D__inference_dense_5_layer_call_and_return_conditional_losses_1236419

inputs2
matmul_readvariableop_resource:
рр.
biasadd_readvariableop_resource:	р
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
рр*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:р*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€рb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€рS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ж
W
*__inference_restored_function_body_1236471
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *%
f R
__inference__creator_1235005^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
Ш
<
__inference__creator_1235018
identityИҐ
hash_table„

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*в
shared_name“ѕhash_table_tf.Tensor(b'outputs/bank-churn-pipeline/Transform/transform_graph/64/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_2_vocabulary', shape=(), dtype=string)_-2_-1_load_1234994_1235014*
use_node_name_sharing(*
value_dtype0	/
NoOpNoOp^hash_table*
_output_shapes
 W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
≥
ƒ
 __inference__initializer_1235402!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityИҐ,text_file_init/InitializeTableFromTextFileV2у
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexю€€€€€€€€*
value_index€€€€€€€€€G
ConstConst*
_output_shapes
: *
dtype0*
value	B :Q
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: :,(
&
_user_specified_nametable_handle
Ь
.
__inference__destroyer_1235022
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
”

ч
D__inference_dense_4_layer_call_and_return_conditional_losses_1236399

inputs1
matmul_readvariableop_resource:	р.
biasadd_readvariableop_resource:	р
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:р*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€рb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€рS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ш
.
__inference__destroyer_1236534
identityщ
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236530G
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
Ѕ
i
 __inference__initializer_1236593
unknown
	unknown_0
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236585G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: :'#
!
_user_specified_name	1236588
жС
Г
__inference_pruned_1235322

inputs	
inputs_1	
inputs_2
inputs_3	
inputs_4
inputs_5	
inputs_6	
inputs_7	
inputs_8
inputs_9
	inputs_10	
	inputs_11	:
6compute_and_apply_vocabulary_vocabulary_identity_input	<
8compute_and_apply_vocabulary_vocabulary_identity_1_input	W
Scompute_and_apply_vocabulary_apply_vocab_none_lookup_lookuptablefindv2_table_handleX
Tcompute_and_apply_vocabulary_apply_vocab_none_lookup_lookuptablefindv2_default_value	2
.compute_and_apply_vocabulary_apply_vocab_sub_x	<
8compute_and_apply_vocabulary_1_vocabulary_identity_input	>
:compute_and_apply_vocabulary_1_vocabulary_identity_1_input	Y
Ucompute_and_apply_vocabulary_1_apply_vocab_none_lookup_lookuptablefindv2_table_handleZ
Vcompute_and_apply_vocabulary_1_apply_vocab_none_lookup_lookuptablefindv2_default_value	4
0compute_and_apply_vocabulary_1_apply_vocab_sub_x	<
8compute_and_apply_vocabulary_2_vocabulary_identity_input	>
:compute_and_apply_vocabulary_2_vocabulary_identity_1_input	Y
Ucompute_and_apply_vocabulary_2_apply_vocab_none_lookup_lookuptablefindv2_table_handleZ
Vcompute_and_apply_vocabulary_2_apply_vocab_none_lookup_lookuptablefindv2_default_value	4
0compute_and_apply_vocabulary_2_apply_vocab_sub_x	<
8compute_and_apply_vocabulary_3_vocabulary_identity_input	>
:compute_and_apply_vocabulary_3_vocabulary_identity_1_input	Y
Ucompute_and_apply_vocabulary_3_apply_vocab_none_lookup_lookuptablefindv2_table_handleZ
Vcompute_and_apply_vocabulary_3_apply_vocab_none_lookup_lookuptablefindv2_default_value	4
0compute_and_apply_vocabulary_3_apply_vocab_sub_x	$
 mean_mean_and_var_identity_input&
"mean_mean_and_var_identity_1_input-
)scale_to_0_1_min_and_max_identity_2_input-
)scale_to_0_1_min_and_max_identity_3_input&
"mean_1_mean_and_var_identity_input(
$mean_1_mean_and_var_identity_1_input/
+scale_to_0_1_1_min_and_max_identity_2_input/
+scale_to_0_1_1_min_and_max_identity_3_input&
"mean_2_mean_and_var_identity_input(
$mean_2_mean_and_var_identity_1_input/
+scale_to_0_1_2_min_and_max_identity_2_input/
+scale_to_0_1_2_min_and_max_identity_3_input&
"mean_3_mean_and_var_identity_input(
$mean_3_mean_and_var_identity_1_input/
+scale_to_0_1_3_min_and_max_identity_2_input/
+scale_to_0_1_3_min_and_max_identity_3_input&
"mean_4_mean_and_var_identity_input(
$mean_4_mean_and_var_identity_1_input/
+scale_to_0_1_4_min_and_max_identity_2_input/
+scale_to_0_1_4_min_and_max_identity_3_input
identity

identity_1

identity_2	

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9ИQ
one_hot_3/depthConst*
_output_shapes
: *
dtype0*
value	B :W
one_hot_3/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  А?X
one_hot_3/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    `
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   c
 scale_to_0_1_4/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_4/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB y
/scale_to_0_1_4/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ™
>scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:®
>scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_4/min_and_max/Shape:0) = ™
>scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_4/min_and_max/Shape_1:0) = c
 scale_to_0_1_3/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_3/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB y
/scale_to_0_1_3/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ™
>scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:®
>scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_3/min_and_max/Shape:0) = ™
>scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_3/min_and_max/Shape_1:0) = c
 scale_to_0_1_2/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_2/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB y
/scale_to_0_1_2/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ™
>scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:®
>scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_2/min_and_max/Shape:0) = ™
>scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_2/min_and_max/Shape_1:0) = c
 scale_to_0_1_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB e
"scale_to_0_1_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB y
/scale_to_0_1_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ™
>scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:®
>scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (scale_to_0_1_1/min_and_max/Shape:0) = ™
>scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*<
value3B1 B+y (scale_to_0_1_1/min_and_max/Shape_1:0) = a
scale_to_0_1/min_and_max/ShapeConst*
_output_shapes
: *
dtype0*
valueB c
 scale_to_0_1/min_and_max/Shape_1Const*
_output_shapes
: *
dtype0*
valueB w
-scale_to_0_1/min_and_max/assert_equal_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ®
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:§
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*8
value/B- B'x (scale_to_0_1/min_and_max/Shape:0) = ¶
<scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3Const*
_output_shapes
: *
dtype0*:
value1B/ B)y (scale_to_0_1/min_and_max/Shape_1:0) = g
"scale_to_0_1_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
scale_to_0_1_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
scale_to_0_1_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    O
one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :U
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  А?V
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Q
one_hot_2/depthConst*
_output_shapes
: *
dtype0*
value	B :W
one_hot_2/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  А?X
one_hot_2/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    `
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   e
 scale_to_0_1/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    W
scale_to_0_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
scale_to_0_1/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    g
"scale_to_0_1_4/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
scale_to_0_1_4/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
scale_to_0_1_4/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Q
one_hot_1/depthConst*
_output_shapes
: *
dtype0*
value	B :W
one_hot_1/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  А?X
one_hot_1/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    `
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   g
"scale_to_0_1_3/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
scale_to_0_1_3/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
scale_to_0_1_3/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    g
"scale_to_0_1_2/min_and_max/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
scale_to_0_1_2/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?[
scale_to_0_1_2/add_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:€€€€€€€€€ы
Hcompute_and_apply_vocabulary_3/apply_vocab/None_Lookup/LookupTableFindV2LookupTableFindV2Ucompute_and_apply_vocabulary_3_apply_vocab_none_lookup_lookuptablefindv2_table_handleinputs_copy:output:0Vcompute_and_apply_vocabulary_3_apply_vocab_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*&
 _has_manual_control_dependencies(*
_output_shapes
:ё
	one_hot_3OneHotQcompute_and_apply_vocabulary_3/apply_vocab/None_Lookup/LookupTableFindV2:values:0one_hot_3/depth:output:0one_hot_3/on_value:output:0one_hot_3/off_value:output:0*
T0*
_output_shapes
:t
	Reshape_3Reshapeone_hot_3:output:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€U
inputs_4_copyIdentityinputs_4*
T0*'
_output_shapes
:€€€€€€€€€ч
Fcompute_and_apply_vocabulary/apply_vocab/None_Lookup/LookupTableFindV2LookupTableFindV2Scompute_and_apply_vocabulary_apply_vocab_none_lookup_lookuptablefindv2_table_handleinputs_4_copy:output:0Tcompute_and_apply_vocabulary_apply_vocab_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*&
 _has_manual_control_dependencies(*
_output_shapes
:≥
/scale_to_0_1_4/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_4/min_and_max/Shape:output:0+scale_to_0_1_4/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: ї
-scale_to_0_1_4/min_and_max/assert_equal_1/AllAll3scale_to_0_1_4/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_4/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: ≥
/scale_to_0_1_3/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_3/min_and_max/Shape:output:0+scale_to_0_1_3/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: ї
-scale_to_0_1_3/min_and_max/assert_equal_1/AllAll3scale_to_0_1_3/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_3/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: ≥
/scale_to_0_1_2/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_2/min_and_max/Shape:output:0+scale_to_0_1_2/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: ї
-scale_to_0_1_2/min_and_max/assert_equal_1/AllAll3scale_to_0_1_2/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_2/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: ≥
/scale_to_0_1_1/min_and_max/assert_equal_1/EqualEqual)scale_to_0_1_1/min_and_max/Shape:output:0+scale_to_0_1_1/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: ї
-scale_to_0_1_1/min_and_max/assert_equal_1/AllAll3scale_to_0_1_1/min_and_max/assert_equal_1/Equal:z:08scale_to_0_1_1/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: ≠
-scale_to_0_1/min_and_max/assert_equal_1/EqualEqual'scale_to_0_1/min_and_max/Shape:output:0)scale_to_0_1/min_and_max/Shape_1:output:0*
T0*
_output_shapes
: µ
+scale_to_0_1/min_and_max/assert_equal_1/AllAll1scale_to_0_1/min_and_max/assert_equal_1/Equal:z:06scale_to_0_1/min_and_max/assert_equal_1/Const:output:0*
_output_shapes
: м
5scale_to_0_1/min_and_max/assert_equal_1/Assert/AssertAssert4scale_to_0_1/min_and_max/assert_equal_1/All:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0'scale_to_0_1/min_and_max/Shape:output:0Escale_to_0_1/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0)scale_to_0_1/min_and_max/Shape_1:output:0*
T	
2*&
 _has_manual_control_dependencies(*
_output_shapes
 ≤
7scale_to_0_1_1/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_1/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_1/min_and_max/Shape:output:0Gscale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_1/min_and_max/Shape_1:output:06^scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert*
T	
2*&
 _has_manual_control_dependencies(*
_output_shapes
 і
7scale_to_0_1_2/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_2/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_2/min_and_max/Shape:output:0Gscale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_2/min_and_max/Shape_1:output:08^scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert*
T	
2*&
 _has_manual_control_dependencies(*
_output_shapes
 і
7scale_to_0_1_3/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_3/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_3/min_and_max/Shape:output:0Gscale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_3/min_and_max/Shape_1:output:08^scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert*
T	
2*&
 _has_manual_control_dependencies(*
_output_shapes
 і
7scale_to_0_1_4/min_and_max/assert_equal_1/Assert/AssertAssert6scale_to_0_1_4/min_and_max/assert_equal_1/All:output:0Gscale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_0:output:0Gscale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_1:output:0)scale_to_0_1_4/min_and_max/Shape:output:0Gscale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert/data_3:output:0+scale_to_0_1_4/min_and_max/Shape_1:output:08^scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert*
T	
2*&
 _has_manual_control_dependencies(*
_output_shapes
 U
inputs_5_copyIdentityinputs_5*
T0	*'
_output_shapes
:€€€€€€€€€э
Hcompute_and_apply_vocabulary_2/apply_vocab/None_Lookup/LookupTableFindV2LookupTableFindV2Ucompute_and_apply_vocabulary_2_apply_vocab_none_lookup_lookuptablefindv2_table_handleinputs_5_copy:output:0Vcompute_and_apply_vocabulary_2_apply_vocab_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*&
 _has_manual_control_dependencies(*
_output_shapes
:U
inputs_9_copyIdentityinputs_9*
T0*'
_output_shapes
:€€€€€€€€€э
Hcompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/LookupTableFindV2LookupTableFindV2Ucompute_and_apply_vocabulary_1_apply_vocab_none_lookup_lookuptablefindv2_table_handleinputs_9_copy:output:0Vcompute_and_apply_vocabulary_1_apply_vocab_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*&
 _has_manual_control_dependencies(*
_output_shapes
:Ф
NoOpNoOpG^compute_and_apply_vocabulary/apply_vocab/None_Lookup/LookupTableFindV2I^compute_and_apply_vocabulary_1/apply_vocab/None_Lookup/LookupTableFindV2I^compute_and_apply_vocabulary_2/apply_vocab/None_Lookup/LookupTableFindV2I^compute_and_apply_vocabulary_3/apply_vocab/None_Lookup/LookupTableFindV26^scale_to_0_1/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_1/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_2/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_3/min_and_max/assert_equal_1/Assert/Assert8^scale_to_0_1_4/min_and_max/assert_equal_1/Assert/Assert*&
 _has_manual_control_dependencies(*
_output_shapes
 a
IdentityIdentityReshape_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U
inputs_1_copyIdentityinputs_1*
T0	*'
_output_shapes
:€€€€€€€€€g
Cast_1Castinputs_1_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:€€€€€€€€€N
IsNan_1IsNan
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€m
mean_1/mean_and_var/IdentityIdentity"mean_1_mean_and_var_identity_input*
T0*
_output_shapes
: И

SelectV2_1SelectV2IsNan_1:y:0%mean_1/mean_and_var/Identity:output:0
Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€q
scale_to_0_1_1/CastCastSelectV2_1:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€
%scale_to_0_1_1/min_and_max/Identity_2Identity+scale_to_0_1_1_min_and_max_identity_2_input*
T0*
_output_shapes
: •
 scale_to_0_1_1/min_and_max/sub_1Sub+scale_to_0_1_1/min_and_max/sub_1/x:output:0.scale_to_0_1_1/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: К
scale_to_0_1_1/subSubscale_to_0_1_1/Cast:y:0$scale_to_0_1_1/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
scale_to_0_1_1/zeros_like	ZerosLikescale_to_0_1_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
%scale_to_0_1_1/min_and_max/Identity_3Identity+scale_to_0_1_1_min_and_max_identity_3_input*
T0*
_output_shapes
: Т
scale_to_0_1_1/LessLess$scale_to_0_1_1/min_and_max/sub_1:z:0.scale_to_0_1_1/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_1/Cast_1Castscale_to_0_1_1/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: З
scale_to_0_1_1/addAddV2scale_to_0_1_1/zeros_like:y:0scale_to_0_1_1/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€v
scale_to_0_1_1/Cast_2Castscale_to_0_1_1/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:€€€€€€€€€Т
scale_to_0_1_1/sub_1Sub.scale_to_0_1_1/min_and_max/Identity_3:output:0$scale_to_0_1_1/min_and_max/sub_1:z:0*
T0*
_output_shapes
: Е
scale_to_0_1_1/truedivRealDivscale_to_0_1_1/sub:z:0scale_to_0_1_1/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
scale_to_0_1_1/SigmoidSigmoidscale_to_0_1_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€®
scale_to_0_1_1/SelectV2SelectV2scale_to_0_1_1/Cast_2:y:0scale_to_0_1_1/truediv:z:0scale_to_0_1_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€М
scale_to_0_1_1/mulMul scale_to_0_1_1/SelectV2:output:0scale_to_0_1_1/mul/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
scale_to_0_1_1/add_1AddV2scale_to_0_1_1/mul:z:0scale_to_0_1_1/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€i

Identity_1Identityscale_to_0_1_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U
inputs_3_copyIdentityinputs_3*
T0	*'
_output_shapes
:€€€€€€€€€g

Identity_2Identityinputs_3_copy:output:0^NoOp*
T0	*'
_output_shapes
:€€€€€€€€€‘
one_hotOneHotOcompute_and_apply_vocabulary/apply_vocab/None_Lookup/LookupTableFindV2:values:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*
_output_shapes
:n
ReshapeReshapeone_hot:output:0Reshape/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€a

Identity_3IdentityReshape:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ё
	one_hot_2OneHotQcompute_and_apply_vocabulary_2/apply_vocab/None_Lookup/LookupTableFindV2:values:0one_hot_2/depth:output:0one_hot_2/on_value:output:0one_hot_2/off_value:output:0*
T0*
_output_shapes
:t
	Reshape_2Reshapeone_hot_2:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€c

Identity_4IdentityReshape_2:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U
inputs_6_copyIdentityinputs_6*
T0	*'
_output_shapes
:€€€€€€€€€e
CastCastinputs_6_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:€€€€€€€€€J
IsNanIsNanCast:y:0*
T0*'
_output_shapes
:€€€€€€€€€i
mean/mean_and_var/IdentityIdentity mean_mean_and_var_identity_input*
T0*
_output_shapes
: А
SelectV2SelectV2	IsNan:y:0#mean/mean_and_var/Identity:output:0Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€m
scale_to_0_1/CastCastSelectV2:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€{
#scale_to_0_1/min_and_max/Identity_2Identity)scale_to_0_1_min_and_max_identity_2_input*
T0*
_output_shapes
: Я
scale_to_0_1/min_and_max/sub_1Sub)scale_to_0_1/min_and_max/sub_1/x:output:0,scale_to_0_1/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: Д
scale_to_0_1/subSubscale_to_0_1/Cast:y:0"scale_to_0_1/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
scale_to_0_1/zeros_like	ZerosLikescale_to_0_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€{
#scale_to_0_1/min_and_max/Identity_3Identity)scale_to_0_1_min_and_max_identity_3_input*
T0*
_output_shapes
: М
scale_to_0_1/LessLess"scale_to_0_1/min_and_max/sub_1:z:0,scale_to_0_1/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: b
scale_to_0_1/Cast_1Castscale_to_0_1/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: Б
scale_to_0_1/addAddV2scale_to_0_1/zeros_like:y:0scale_to_0_1/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€r
scale_to_0_1/Cast_2Castscale_to_0_1/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:€€€€€€€€€М
scale_to_0_1/sub_1Sub,scale_to_0_1/min_and_max/Identity_3:output:0"scale_to_0_1/min_and_max/sub_1:z:0*
T0*
_output_shapes
: 
scale_to_0_1/truedivRealDivscale_to_0_1/sub:z:0scale_to_0_1/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€h
scale_to_0_1/SigmoidSigmoidscale_to_0_1/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€†
scale_to_0_1/SelectV2SelectV2scale_to_0_1/Cast_2:y:0scale_to_0_1/truediv:z:0scale_to_0_1/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
scale_to_0_1/mulMulscale_to_0_1/SelectV2:output:0scale_to_0_1/mul/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€В
scale_to_0_1/add_1AddV2scale_to_0_1/mul:z:0scale_to_0_1/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€g

Identity_5Identityscale_to_0_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U
inputs_8_copyIdentityinputs_8*
T0*'
_output_shapes
:€€€€€€€€€g
Cast_4Castinputs_8_copy:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€N
IsNan_4IsNan
Cast_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€m
mean_4/mean_and_var/IdentityIdentity"mean_4_mean_and_var_identity_input*
T0*
_output_shapes
: И

SelectV2_4SelectV2IsNan_4:y:0%mean_4/mean_and_var/Identity:output:0
Cast_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€q
scale_to_0_1_4/CastCastSelectV2_4:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€
%scale_to_0_1_4/min_and_max/Identity_2Identity+scale_to_0_1_4_min_and_max_identity_2_input*
T0*
_output_shapes
: •
 scale_to_0_1_4/min_and_max/sub_1Sub+scale_to_0_1_4/min_and_max/sub_1/x:output:0.scale_to_0_1_4/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: К
scale_to_0_1_4/subSubscale_to_0_1_4/Cast:y:0$scale_to_0_1_4/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
scale_to_0_1_4/zeros_like	ZerosLikescale_to_0_1_4/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
%scale_to_0_1_4/min_and_max/Identity_3Identity+scale_to_0_1_4_min_and_max_identity_3_input*
T0*
_output_shapes
: Т
scale_to_0_1_4/LessLess$scale_to_0_1_4/min_and_max/sub_1:z:0.scale_to_0_1_4/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_4/Cast_1Castscale_to_0_1_4/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: З
scale_to_0_1_4/addAddV2scale_to_0_1_4/zeros_like:y:0scale_to_0_1_4/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€v
scale_to_0_1_4/Cast_2Castscale_to_0_1_4/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:€€€€€€€€€Т
scale_to_0_1_4/sub_1Sub.scale_to_0_1_4/min_and_max/Identity_3:output:0$scale_to_0_1_4/min_and_max/sub_1:z:0*
T0*
_output_shapes
: Е
scale_to_0_1_4/truedivRealDivscale_to_0_1_4/sub:z:0scale_to_0_1_4/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
scale_to_0_1_4/SigmoidSigmoidscale_to_0_1_4/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€®
scale_to_0_1_4/SelectV2SelectV2scale_to_0_1_4/Cast_2:y:0scale_to_0_1_4/truediv:z:0scale_to_0_1_4/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€М
scale_to_0_1_4/mulMul scale_to_0_1_4/SelectV2:output:0scale_to_0_1_4/mul/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
scale_to_0_1_4/add_1AddV2scale_to_0_1_4/mul:z:0scale_to_0_1_4/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€i

Identity_6Identityscale_to_0_1_4/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ё
	one_hot_1OneHotQcompute_and_apply_vocabulary_1/apply_vocab/None_Lookup/LookupTableFindV2:values:0one_hot_1/depth:output:0one_hot_1/on_value:output:0one_hot_1/off_value:output:0*
T0*
_output_shapes
:t
	Reshape_1Reshapeone_hot_1:output:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€c

Identity_7IdentityReshape_1:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€W
inputs_10_copyIdentity	inputs_10*
T0	*'
_output_shapes
:€€€€€€€€€h
Cast_3Castinputs_10_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:€€€€€€€€€N
IsNan_3IsNan
Cast_3:y:0*
T0*'
_output_shapes
:€€€€€€€€€m
mean_3/mean_and_var/IdentityIdentity"mean_3_mean_and_var_identity_input*
T0*
_output_shapes
: И

SelectV2_3SelectV2IsNan_3:y:0%mean_3/mean_and_var/Identity:output:0
Cast_3:y:0*
T0*'
_output_shapes
:€€€€€€€€€q
scale_to_0_1_3/CastCastSelectV2_3:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€
%scale_to_0_1_3/min_and_max/Identity_2Identity+scale_to_0_1_3_min_and_max_identity_2_input*
T0*
_output_shapes
: •
 scale_to_0_1_3/min_and_max/sub_1Sub+scale_to_0_1_3/min_and_max/sub_1/x:output:0.scale_to_0_1_3/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: К
scale_to_0_1_3/subSubscale_to_0_1_3/Cast:y:0$scale_to_0_1_3/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
scale_to_0_1_3/zeros_like	ZerosLikescale_to_0_1_3/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
%scale_to_0_1_3/min_and_max/Identity_3Identity+scale_to_0_1_3_min_and_max_identity_3_input*
T0*
_output_shapes
: Т
scale_to_0_1_3/LessLess$scale_to_0_1_3/min_and_max/sub_1:z:0.scale_to_0_1_3/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_3/Cast_1Castscale_to_0_1_3/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: З
scale_to_0_1_3/addAddV2scale_to_0_1_3/zeros_like:y:0scale_to_0_1_3/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€v
scale_to_0_1_3/Cast_2Castscale_to_0_1_3/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:€€€€€€€€€Т
scale_to_0_1_3/sub_1Sub.scale_to_0_1_3/min_and_max/Identity_3:output:0$scale_to_0_1_3/min_and_max/sub_1:z:0*
T0*
_output_shapes
: Е
scale_to_0_1_3/truedivRealDivscale_to_0_1_3/sub:z:0scale_to_0_1_3/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
scale_to_0_1_3/SigmoidSigmoidscale_to_0_1_3/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€®
scale_to_0_1_3/SelectV2SelectV2scale_to_0_1_3/Cast_2:y:0scale_to_0_1_3/truediv:z:0scale_to_0_1_3/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€М
scale_to_0_1_3/mulMul scale_to_0_1_3/SelectV2:output:0scale_to_0_1_3/mul/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
scale_to_0_1_3/add_1AddV2scale_to_0_1_3/mul:z:0scale_to_0_1_3/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€i

Identity_8Identityscale_to_0_1_3/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€W
inputs_11_copyIdentity	inputs_11*
T0	*'
_output_shapes
:€€€€€€€€€h
Cast_2Castinputs_11_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:€€€€€€€€€N
IsNan_2IsNan
Cast_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€m
mean_2/mean_and_var/IdentityIdentity"mean_2_mean_and_var_identity_input*
T0*
_output_shapes
: И

SelectV2_2SelectV2IsNan_2:y:0%mean_2/mean_and_var/Identity:output:0
Cast_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€q
scale_to_0_1_2/CastCastSelectV2_2:output:0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€
%scale_to_0_1_2/min_and_max/Identity_2Identity+scale_to_0_1_2_min_and_max_identity_2_input*
T0*
_output_shapes
: •
 scale_to_0_1_2/min_and_max/sub_1Sub+scale_to_0_1_2/min_and_max/sub_1/x:output:0.scale_to_0_1_2/min_and_max/Identity_2:output:0*
T0*
_output_shapes
: К
scale_to_0_1_2/subSubscale_to_0_1_2/Cast:y:0$scale_to_0_1_2/min_and_max/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
scale_to_0_1_2/zeros_like	ZerosLikescale_to_0_1_2/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€
%scale_to_0_1_2/min_and_max/Identity_3Identity+scale_to_0_1_2_min_and_max_identity_3_input*
T0*
_output_shapes
: Т
scale_to_0_1_2/LessLess$scale_to_0_1_2/min_and_max/sub_1:z:0.scale_to_0_1_2/min_and_max/Identity_3:output:0*
T0*
_output_shapes
: f
scale_to_0_1_2/Cast_1Castscale_to_0_1_2/Less:z:0*

DstT0*

SrcT0
*
_output_shapes
: З
scale_to_0_1_2/addAddV2scale_to_0_1_2/zeros_like:y:0scale_to_0_1_2/Cast_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€v
scale_to_0_1_2/Cast_2Castscale_to_0_1_2/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:€€€€€€€€€Т
scale_to_0_1_2/sub_1Sub.scale_to_0_1_2/min_and_max/Identity_3:output:0$scale_to_0_1_2/min_and_max/sub_1:z:0*
T0*
_output_shapes
: Е
scale_to_0_1_2/truedivRealDivscale_to_0_1_2/sub:z:0scale_to_0_1_2/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
scale_to_0_1_2/SigmoidSigmoidscale_to_0_1_2/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€®
scale_to_0_1_2/SelectV2SelectV2scale_to_0_1_2/Cast_2:y:0scale_to_0_1_2/truediv:z:0scale_to_0_1_2/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€М
scale_to_0_1_2/mulMul scale_to_0_1_2/SelectV2:output:0scale_to_0_1_2/mul/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
scale_to_0_1_2/add_1AddV2scale_to_0_1_2/mul:z:0scale_to_0_1_2/add_1/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€i

Identity_9Identityscale_to_0_1_2/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*…
_input_shapesЈ
і:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :- )
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:-	)
'
_output_shapes
:€€€€€€€€€:-
)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: 
Ѕ
i
 __inference__initializer_1236525
unknown
	unknown_0
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236517G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: :'#
!
_user_specified_name	1236520
”
d
+__inference_dropout_2_layer_call_fn_1236424

inputs
identityИҐStatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236197p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€р<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€р22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs
”

ч
D__inference_dense_4_layer_call_and_return_conditional_losses_1236164

inputs1
matmul_readvariableop_resource:	р.
biasadd_readvariableop_resource:	р
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:р*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€рQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€рb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€рS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ь
.
__inference__destroyer_1235013
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
л
s
*__inference_restored_function_body_1236483
unknown
	unknown_0
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__initializer_1235000^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: :'#
!
_user_specified_name	1236479
ж
W
*__inference_restored_function_body_1236573
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *%
f R
__inference__creator_1235059^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
ж
W
*__inference_restored_function_body_1236664
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *%
f R
__inference__creator_1235018^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
Ц
<
__inference__creator_1235005
identityИҐ
hash_table’

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*а
shared_name–Ќhash_table_tf.Tensor(b'outputs/bank-churn-pipeline/Transform/transform_graph/64/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary', shape=(), dtype=string)_-2_-1_load_1234994_1235001*
use_node_name_sharing(*
value_dtype0	/
NoOpNoOp^hash_table*
_output_shapes
 W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
§
÷
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1236152

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ї
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8concat/axis:output:0*
N	*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ј
_input_shapesЃ
Ђ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
«
¶
)__inference_model_1_layer_call_fn_1236275

country_xf
	gender_xf
credit_card_xf
active_member_xf
credit_score_xf

age_xf
	tenure_xf
products_number_xf
estimated_salary_xf
unknown:	р
	unknown_0:	р
	unknown_1:
рр
	unknown_2:	р
	unknown_3:	р
	unknown_4:
identityИҐStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCall
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_1236216o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ћ
_input_shapesЇ
Ј:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
country_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	gender_xf:WS
'
_output_shapes
:€€€€€€€€€
(
_user_specified_namecredit_card_xf:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_nameactive_member_xf:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namecredit_score_xf:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameage_xf:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	tenure_xf:[W
'
_output_shapes
:€€€€€€€€€
,
_user_specified_nameproducts_number_xf:\X
'
_output_shapes
:€€€€€€€€€
-
_user_specified_nameestimated_salary_xf:'	#
!
_user_specified_name	1236261:'
#
!
_user_specified_name	1236263:'#
!
_user_specified_name	1236265:'#
!
_user_specified_name	1236267:'#
!
_user_specified_name	1236269:'#
!
_user_specified_name	1236271
ч
Щ
)__inference_dense_5_layer_call_fn_1236408

inputs
unknown:
рр
	unknown_0:	р
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_5_layer_call_and_return_conditional_losses_1236180p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€р<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€р: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs:'#
!
_user_specified_name	1236402:'#
!
_user_specified_name	1236404
Ш
<
__inference__creator_1235059
identityИҐ
hash_table„

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*в
shared_name“ѕhash_table_tf.Tensor(b'outputs/bank-churn-pipeline/Transform/transform_graph/64/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_3_vocabulary', shape=(), dtype=string)_-2_-1_load_1234994_1235055*
use_node_name_sharing(*
value_dtype0	/
NoOpNoOp^hash_table*
_output_shapes
 W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
°

e
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236197

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUU@e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€рQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕН
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€р*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *333?І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€рT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€рb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:€€€€€€€€€р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€р:P L
(
_output_shapes
:€€€€€€€€€р
 
_user_specified_nameinputs
Ї
Ў
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1236379
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :љ
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8concat/axis:output:0*
N	*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ј
_input_shapesЃ
Ђ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_4:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_5:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_6:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_7:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_8
Ї
:
*__inference_restored_function_body_1236496
identityќ
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__destroyer_1235013O
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
≥
ƒ
 __inference__initializer_1235000!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityИҐ,text_file_init/InitializeTableFromTextFileV2у
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexю€€€€€€€€*
value_index€€€€€€€€€G
ConstConst*
_output_shapes
: *
dtype0*
value	B :Q
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: :,(
&
_user_specified_nametable_handle
Яї
њ
 __inference__traced_save_1236848
file_prefix8
%read_disablecopyonread_dense_4_kernel:	р4
%read_1_disablecopyonread_dense_4_bias:	р;
'read_2_disablecopyonread_dense_5_kernel:
рр4
%read_3_disablecopyonread_dense_5_bias:	р:
'read_4_disablecopyonread_dense_6_kernel:	р3
%read_5_disablecopyonread_dense_6_bias:,
"read_6_disablecopyonread_iteration:	 0
&read_7_disablecopyonread_learning_rate: A
.read_8_disablecopyonread_adam_m_dense_4_kernel:	рA
.read_9_disablecopyonread_adam_v_dense_4_kernel:	р<
-read_10_disablecopyonread_adam_m_dense_4_bias:	р<
-read_11_disablecopyonread_adam_v_dense_4_bias:	рC
/read_12_disablecopyonread_adam_m_dense_5_kernel:
ррC
/read_13_disablecopyonread_adam_v_dense_5_kernel:
рр<
-read_14_disablecopyonread_adam_m_dense_5_bias:	р<
-read_15_disablecopyonread_adam_v_dense_5_bias:	рB
/read_16_disablecopyonread_adam_m_dense_6_kernel:	рB
/read_17_disablecopyonread_adam_v_dense_6_kernel:	р;
-read_18_disablecopyonread_adam_m_dense_6_bias:;
-read_19_disablecopyonread_adam_v_dense_6_bias:+
!read_20_disablecopyonread_total_1: +
!read_21_disablecopyonread_count_1: )
read_22_disablecopyonread_total: )
read_23_disablecopyonread_count: 
savev2_const_36
identity_49ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 Ґ
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_4_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	рy
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_4_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:р*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:р`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:р{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 ©
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_5_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
рр*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ррe

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ррy
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_5_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:р*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:р`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:р{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_6_kernel"/device:CPU:0*
_output_shapes
 ®
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_6_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рd

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	рy
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_6_bias"/device:CPU:0*
_output_shapes
 °
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_6_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_6/DisableCopyOnReadDisableCopyOnRead"read_6_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_6/ReadVariableOpReadVariableOp"read_6_disablecopyonread_iteration^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_learning_rate^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: В
Read_8/DisableCopyOnReadDisableCopyOnRead.read_8_disablecopyonread_adam_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 ѓ
Read_8/ReadVariableOpReadVariableOp.read_8_disablecopyonread_adam_m_dense_4_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	рВ
Read_9/DisableCopyOnReadDisableCopyOnRead.read_9_disablecopyonread_adam_v_dense_4_kernel"/device:CPU:0*
_output_shapes
 ѓ
Read_9/ReadVariableOpReadVariableOp.read_9_disablecopyonread_adam_v_dense_4_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	рВ
Read_10/DisableCopyOnReadDisableCopyOnRead-read_10_disablecopyonread_adam_m_dense_4_bias"/device:CPU:0*
_output_shapes
 ђ
Read_10/ReadVariableOpReadVariableOp-read_10_disablecopyonread_adam_m_dense_4_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:р*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:рb
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:рВ
Read_11/DisableCopyOnReadDisableCopyOnRead-read_11_disablecopyonread_adam_v_dense_4_bias"/device:CPU:0*
_output_shapes
 ђ
Read_11/ReadVariableOpReadVariableOp-read_11_disablecopyonread_adam_v_dense_4_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:р*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:рb
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:рД
Read_12/DisableCopyOnReadDisableCopyOnRead/read_12_disablecopyonread_adam_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_12/ReadVariableOpReadVariableOp/read_12_disablecopyonread_adam_m_dense_5_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
рр*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ррg
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ррД
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_adam_v_dense_5_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_adam_v_dense_5_kernel^Read_13/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
рр*
dtype0q
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ррg
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ррВ
Read_14/DisableCopyOnReadDisableCopyOnRead-read_14_disablecopyonread_adam_m_dense_5_bias"/device:CPU:0*
_output_shapes
 ђ
Read_14/ReadVariableOpReadVariableOp-read_14_disablecopyonread_adam_m_dense_5_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:р*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:рb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:рВ
Read_15/DisableCopyOnReadDisableCopyOnRead-read_15_disablecopyonread_adam_v_dense_5_bias"/device:CPU:0*
_output_shapes
 ђ
Read_15/ReadVariableOpReadVariableOp-read_15_disablecopyonread_adam_v_dense_5_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:р*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:рb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:рД
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_m_dense_6_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_m_dense_6_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рf
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	рД
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_v_dense_6_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_v_dense_6_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рf
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	рВ
Read_18/DisableCopyOnReadDisableCopyOnRead-read_18_disablecopyonread_adam_m_dense_6_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_18/ReadVariableOpReadVariableOp-read_18_disablecopyonread_adam_m_dense_6_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_19/DisableCopyOnReadDisableCopyOnRead-read_19_disablecopyonread_adam_v_dense_6_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_19/ReadVariableOpReadVariableOp-read_19_disablecopyonread_adam_v_dense_6_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_20/DisableCopyOnReadDisableCopyOnRead!read_20_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_20/ReadVariableOpReadVariableOp!read_20_disablecopyonread_total_1^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_21/DisableCopyOnReadDisableCopyOnRead!read_21_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_21/ReadVariableOpReadVariableOp!read_21_disablecopyonread_count_1^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_22/DisableCopyOnReadDisableCopyOnReadread_22_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_22/ReadVariableOpReadVariableOpread_22_disablecopyonread_total^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_23/DisableCopyOnReadDisableCopyOnReadread_23_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_23/ReadVariableOpReadVariableOpread_23_disablecopyonread_count^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: ъ

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£

valueЩ
BЦ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЯ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ю
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0savev2_const_36"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_48Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_49IdentityIdentity_48:output:0^NoOp*
T0*
_output_shapes
: Ч

NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_49Identity_49:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_5/bias:.*
(
_user_specified_namedense_6/kernel:,(
&
_user_specified_namedense_6/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:5	1
/
_user_specified_nameAdam/m/dense_4/kernel:5
1
/
_user_specified_nameAdam/v/dense_4/kernel:3/
-
_user_specified_nameAdam/m/dense_4/bias:3/
-
_user_specified_nameAdam/v/dense_4/bias:51
/
_user_specified_nameAdam/m/dense_5/kernel:51
/
_user_specified_nameAdam/v/dense_5/kernel:3/
-
_user_specified_nameAdam/m/dense_5/bias:3/
-
_user_specified_nameAdam/v/dense_5/bias:51
/
_user_specified_nameAdam/m/dense_6/kernel:51
/
_user_specified_nameAdam/v/dense_6/kernel:3/
-
_user_specified_nameAdam/m/dense_6/bias:3/
-
_user_specified_nameAdam/v/dense_6/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount:@<

_output_shapes
: 
"
_user_specified_name
Const_36
ьo
ђ
#__inference__traced_restore_1236929
file_prefix2
assignvariableop_dense_4_kernel:	р.
assignvariableop_1_dense_4_bias:	р5
!assignvariableop_2_dense_5_kernel:
рр.
assignvariableop_3_dense_5_bias:	р4
!assignvariableop_4_dense_6_kernel:	р-
assignvariableop_5_dense_6_bias:&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: ;
(assignvariableop_8_adam_m_dense_4_kernel:	р;
(assignvariableop_9_adam_v_dense_4_kernel:	р6
'assignvariableop_10_adam_m_dense_4_bias:	р6
'assignvariableop_11_adam_v_dense_4_bias:	р=
)assignvariableop_12_adam_m_dense_5_kernel:
рр=
)assignvariableop_13_adam_v_dense_5_kernel:
рр6
'assignvariableop_14_adam_m_dense_5_bias:	р6
'assignvariableop_15_adam_v_dense_5_bias:	р<
)assignvariableop_16_adam_m_dense_6_kernel:	р<
)assignvariableop_17_adam_v_dense_6_kernel:	р5
'assignvariableop_18_adam_m_dense_6_bias:5
'assignvariableop_19_adam_v_dense_6_bias:%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9э

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*£

valueЩ
BЦ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHҐ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_5_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_5_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_6_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_6_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_8AssignVariableOp(assignvariableop_8_adam_m_dense_4_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_9AssignVariableOp(assignvariableop_9_adam_v_dense_4_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_10AssignVariableOp'assignvariableop_10_adam_m_dense_4_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_11AssignVariableOp'assignvariableop_11_adam_v_dense_4_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_m_dense_5_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_v_dense_5_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_14AssignVariableOp'assignvariableop_14_adam_m_dense_5_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_v_dense_5_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_dense_6_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_dense_6_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_m_dense_6_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_v_dense_6_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 я
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ®
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_25Identity_25:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_5/bias:.*
(
_user_specified_namedense_6/kernel:,(
&
_user_specified_namedense_6/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:5	1
/
_user_specified_nameAdam/m/dense_4/kernel:5
1
/
_user_specified_nameAdam/v/dense_4/kernel:3/
-
_user_specified_nameAdam/m/dense_4/bias:3/
-
_user_specified_nameAdam/v/dense_4/bias:51
/
_user_specified_nameAdam/m/dense_5/kernel:51
/
_user_specified_nameAdam/v/dense_5/kernel:3/
-
_user_specified_nameAdam/m/dense_5/bias:3/
-
_user_specified_nameAdam/v/dense_5/bias:51
/
_user_specified_nameAdam/m/dense_6/kernel:51
/
_user_specified_nameAdam/v/dense_6/kernel:3/
-
_user_specified_nameAdam/m/dense_6/bias:3/
-
_user_specified_nameAdam/v/dense_6/bias:'#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:%!

_user_specified_nametotal:%!

_user_specified_namecount
Ѕ
i
 __inference__initializer_1236559
unknown
	unknown_0
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236551G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
: :'#
!
_user_specified_name	1236554
Ь
.
__inference__destroyer_1235054
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
†1
э
%__inference_signature_wrapper_1235396

inputs	
inputs_1	
	inputs_10	
	inputs_11	
inputs_2
inputs_3	
inputs_4
inputs_5	
inputs_6	
inputs_7	
inputs_8
inputs_9
unknown	
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3	
	unknown_4	
	unknown_5	
	unknown_6
	unknown_7	
	unknown_8	
	unknown_9	

unknown_10	

unknown_11

unknown_12	

unknown_13	

unknown_14	

unknown_15	

unknown_16

unknown_17	

unknown_18	

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38
identity

identity_1

identity_2	

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9ИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*?
Tin8
624																								*
Tout
2
	*‘
_output_shapesЅ
Њ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *#
fR
__inference_pruned_1235322<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0	*'
_output_shapes
:€€€€€€€€€q

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_9Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*…
_input_shapesЈ
і:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	inputs_10:RN
'
_output_shapes
:€€€€€€€€€
#
_user_specified_name	inputs_11:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_4:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_5:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_6:Q	M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_7:Q
M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_8:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_9:

_output_shapes
: :

_output_shapes
: :&"
 
_user_specified_name862334:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_user_specified_name862344:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_user_specified_name862354:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_user_specified_name862364:

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: 
«=
Ґ
U__inference_transform_features_layer_layer_call_and_return_conditional_losses_1236017
active_member	
age	
balance
country
credit_card	
credit_score	
customer_id	
estimated_salary

gender
products_number	

tenure	
unknown	
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3	
	unknown_4	
	unknown_5	
	unknown_6
	unknown_7	
	unknown_8	
	unknown_9	

unknown_10	

unknown_11

unknown_12	

unknown_13	

unknown_14	

unknown_15	

unknown_16

unknown_17	

unknown_18	

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8ИҐStatefulPartitionedCallP
ShapeShapeactive_member*
T0	*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Shape_1Shapeactive_member*
T0	*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:M
zeros/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0	*'
_output_shapes
:€€€€€€€€€Ф
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:€€€€€€€€€*
dtype0	*
shape:€€€€€€€€€Ќ
StatefulPartitionedCallStatefulPartitionedCallactive_memberagebalancePlaceholderWithDefault:output:0countrycredit_cardcredit_scorecustomer_idestimated_salarygenderproducts_numbertenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*?
Tin8
624																								*
Tout
2
	*‘
_output_shapesЅ
Њ:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *#
fR
__inference_pruned_1235322o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_3Identity StatefulPartitionedCall:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_4Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_5Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_6Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_7Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_8Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0*(
_construction_contextkEagerRuntime*ґ
_input_shapes§
°:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:€€€€€€€€€
'
_user_specified_nameactive_member:LH
'
_output_shapes
:€€€€€€€€€

_user_specified_nameage:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	balance:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	country:TP
'
_output_shapes
:€€€€€€€€€
%
_user_specified_namecredit_card:UQ
'
_output_shapes
:€€€€€€€€€
&
_user_specified_namecredit_score:TP
'
_output_shapes
:€€€€€€€€€
%
_user_specified_namecustomer_id:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_nameestimated_salary:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namegender:X	T
'
_output_shapes
:€€€€€€€€€
)
_user_specified_nameproducts_number:O
K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nametenure:

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235922:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235932:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235942:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_user_specified_name	1235952:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: 
Е
I
__inference__creator_1236508
identityИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *3
f.R,
*__inference_restored_function_body_1236505^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
ф
Ш
)__inference_dense_4_layer_call_fn_1236388

inputs
unknown:	р
	unknown_0:	р
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€р*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_4_layer_call_and_return_conditional_losses_1236164p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€р<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:'#
!
_user_specified_name	1236382:'#
!
_user_specified_name	1236384
≥
ƒ
 __inference__initializer_1235028!
text_file_init_asset_filepath=
9text_file_init_initializetablefromtextfilev2_table_handle
identityИҐ,text_file_init/InitializeTableFromTextFileV2у
,text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV29text_file_init_initializetablefromtextfilev2_table_handletext_file_init_asset_filepath*
_output_shapes
 *
	key_indexю€€€€€€€€*
value_index€€€€€€€€€G
ConstConst*
_output_shapes
: *
dtype0*
value	B :Q
NoOpNoOp-^text_file_init/InitializeTableFromTextFileV2*
_output_shapes
 L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2\
,text_file_init/InitializeTableFromTextFileV2,text_file_init/InitializeTableFromTextFileV2: 

_output_shapes
: :,(
&
_user_specified_nametable_handle" M
saver_filename:0StatefulPartitionedCall_9:0StatefulPartitionedCall_108"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*™
serving_defaultЦ
9
examples-
serving_default_examples:0€€€€€€€€€=
outputs2
StatefulPartitionedCall_4:0€€€€€€€€€tensorflow/serving/predict2M

asset_path_initializer:0/vocab_compute_and_apply_vocabulary_3_vocabulary2O

asset_path_initializer_1:0/vocab_compute_and_apply_vocabulary_2_vocabulary2O

asset_path_initializer_2:0/vocab_compute_and_apply_vocabulary_1_vocabulary2M

asset_path_initializer_3:0-vocab_compute_and_apply_vocabulary_vocabulary:Й÷
И
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-0
layer-10
layer_with_weights-1
layer-11
layer-12
layer_with_weights-2
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
	tft_layer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
•
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
ї
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias"
_tf_keras_layer
Љ
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses
5_random_generator"
_tf_keras_layer
ї
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
Ћ
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
$D _saved_model_loader_tracked_dict"
_tf_keras_model
J
%0
&1
-2
.3
<4
=5"
trackable_list_wrapper
J
%0
&1
-2
.3
<4
=5"
trackable_list_wrapper
 "
trackable_list_wrapper
 
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
≈
Jtrace_0
Ktrace_12О
)__inference_model_1_layer_call_fn_1236275
)__inference_model_1_layer_call_fn_1236300µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zJtrace_0zKtrace_1
ы
Ltrace_0
Mtrace_12ƒ
D__inference_model_1_layer_call_and_return_conditional_losses_1236216
D__inference_model_1_layer_call_and_return_conditional_losses_1236250µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zLtrace_0zMtrace_1
 B«
"__inference__wrapped_model_1235890
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xf	"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
N
_variables
O_iterations
P_learning_rate
Q_index_dict
R
_momentums
S_velocities
T_update_step_xla"
experimentalOptimizer
,
Userving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
й
[trace_02ћ
/__inference_concatenate_1_layer_call_fn_1236365Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z[trace_0
Д
\trace_02з
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1236379Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z\trace_0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
г
btrace_02∆
)__inference_dense_4_layer_call_fn_1236388Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zbtrace_0
ю
ctrace_02б
D__inference_dense_4_layer_call_and_return_conditional_losses_1236399Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zctrace_0
!:	р2dense_4/kernel
:р2dense_4/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
г
itrace_02∆
)__inference_dense_5_layer_call_fn_1236408Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zitrace_0
ю
jtrace_02б
D__inference_dense_5_layer_call_and_return_conditional_losses_1236419Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zjtrace_0
": 
рр2dense_5/kernel
:р2dense_5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
љ
ptrace_0
qtrace_12Ж
+__inference_dropout_2_layer_call_fn_1236424
+__inference_dropout_2_layer_call_fn_1236429©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zptrace_0zqtrace_1
у
rtrace_0
strace_12Љ
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236441
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236446©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zrtrace_0zstrace_1
"
_generic_user_object
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
г
ytrace_02∆
)__inference_dense_6_layer_call_fn_1236455Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zytrace_0
ю
ztrace_02б
D__inference_dense_6_layer_call_and_return_conditional_losses_1236466Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zztrace_0
!:	р2dense_6/kernel
:2dense_6/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ц
Аtrace_02„
:__inference_transform_features_layer_layer_call_fn_1236128Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zАtrace_0
С
Бtrace_02т
U__inference_transform_features_layer_layer_call_and_return_conditional_losses_1236017Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0
Ч
В	_imported
Г_wrapped_function
Д_structured_inputs
Е_structured_outputs
Ж_output_to_inputs_map"
trackable_dict_wrapper
 "
trackable_list_wrapper
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
З0
И1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
)__inference_model_1_layer_call_fn_1236275
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xf	"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
)__inference_model_1_layer_call_fn_1236300
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xf	"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЙBЖ
D__inference_model_1_layer_call_and_return_conditional_losses_1236216
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xf	"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЙBЖ
D__inference_model_1_layer_call_and_return_conditional_losses_1236250
country_xf	gender_xfcredit_card_xfactive_member_xfcredit_score_xfage_xf	tenure_xfproducts_number_xfestimated_salary_xf	"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
К
O0
Й1
К2
Л3
М4
Н5
О6
П7
Р8
С9
Т10
У11
Ф12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
P
Й0
Л1
Н2
П3
С4
У5"
trackable_list_wrapper
P
К0
М1
О2
Р3
Т4
Ф5"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
Ъ
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39Bя
:__inference_signature_wrapper_serve_tf_examples_fn_1235854examples"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХ	capture_0zЦ	capture_1zЧ	capture_3zШ	capture_4zЩ	capture_5zЪ	capture_6zЫ	capture_8zЬ	capture_9zЭ
capture_10zЮ
capture_11zЯ
capture_13z†
capture_14z°
capture_15zҐ
capture_16z£
capture_18z§
capture_19z•
capture_20z¶
capture_21zІ
capture_22z®
capture_23z©
capture_24z™
capture_25zЂ
capture_26zђ
capture_27z≠
capture_28zЃ
capture_29zѓ
capture_30z∞
capture_31z±
capture_32z≤
capture_33z≥
capture_34zі
capture_35zµ
capture_36zґ
capture_37zЈ
capture_38zЄ
capture_39
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЂB®
/__inference_concatenate_1_layer_call_fn_1236365inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8	"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆B√
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1236379inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8	"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_4_layer_call_fn_1236388inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_4_layer_call_and_return_conditional_losses_1236399inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_5_layer_call_fn_1236408inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_5_layer_call_and_return_conditional_losses_1236419inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
+__inference_dropout_2_layer_call_fn_1236424inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_dropout_2_layer_call_fn_1236429inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236441inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236446inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_6_layer_call_fn_1236455inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_6_layer_call_and_return_conditional_losses_1236466inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Х
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39BЏ
:__inference_transform_features_layer_layer_call_fn_1236128active_memberagebalancecountrycredit_cardcredit_scorecustomer_idestimated_salarygenderproducts_numbertenure"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХ	capture_0zЦ	capture_1zЧ	capture_3zШ	capture_4zЩ	capture_5zЪ	capture_6zЫ	capture_8zЬ	capture_9zЭ
capture_10zЮ
capture_11zЯ
capture_13z†
capture_14z°
capture_15zҐ
capture_16z£
capture_18z§
capture_19z•
capture_20z¶
capture_21zІ
capture_22z®
capture_23z©
capture_24z™
capture_25zЂ
capture_26zђ
capture_27z≠
capture_28zЃ
capture_29zѓ
capture_30z∞
capture_31z±
capture_32z≤
capture_33z≥
capture_34zі
capture_35zµ
capture_36zґ
capture_37zЈ
capture_38zЄ
capture_39
∞
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39Bх
U__inference_transform_features_layer_layer_call_and_return_conditional_losses_1236017active_memberagebalancecountrycredit_cardcredit_scorecustomer_idestimated_salarygenderproducts_numbertenure"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХ	capture_0zЦ	capture_1zЧ	capture_3zШ	capture_4zЩ	capture_5zЪ	capture_6zЫ	capture_8zЬ	capture_9zЭ
capture_10zЮ
capture_11zЯ
capture_13z†
capture_14z°
capture_15zҐ
capture_16z£
capture_18z§
capture_19z•
capture_20z¶
capture_21zІ
capture_22z®
capture_23z©
capture_24z™
capture_25zЂ
capture_26zђ
capture_27z≠
capture_28zЃ
capture_29zѓ
capture_30z∞
capture_31z±
capture_32z≤
capture_33z≥
capture_34zі
capture_35zµ
capture_36zґ
capture_37zЈ
capture_38zЄ
capture_39
»
єcreated_variables
Ї	resources
їtrackable_objects
Љinitializers
љassets
Њ
signatures
$њ_self_saveable_object_factories
Гtransform_fn"
_generic_user_object
—

Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39BЦ
__inference_pruned_1235322inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11zХ	capture_0zЦ	capture_1zЧ	capture_3zШ	capture_4zЩ	capture_5zЪ	capture_6zЫ	capture_8zЬ	capture_9zЭ
capture_10zЮ
capture_11zЯ
capture_13z†
capture_14z°
capture_15zҐ
capture_16z£
capture_18z§
capture_19z•
capture_20z¶
capture_21zІ
capture_22z®
capture_23z©
capture_24z™
capture_25zЂ
capture_26zђ
capture_27z≠
capture_28zЃ
capture_29zѓ
capture_30z∞
capture_31z±
capture_32z≤
capture_33z≥
capture_34zі
capture_35zµ
capture_36zґ
capture_37zЈ
capture_38zЄ
capture_39
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
R
ј	variables
Ѕ	keras_api

¬total

√count"
_tf_keras_metric
c
ƒ	variables
≈	keras_api

∆total

«count
»
_fn_kwargs"
_tf_keras_metric
&:$	р2Adam/m/dense_4/kernel
&:$	р2Adam/v/dense_4/kernel
 :р2Adam/m/dense_4/bias
 :р2Adam/v/dense_4/bias
':%
рр2Adam/m/dense_5/kernel
':%
рр2Adam/v/dense_5/kernel
 :р2Adam/m/dense_5/bias
 :р2Adam/v/dense_5/bias
&:$	р2Adam/m/dense_6/kernel
&:$	р2Adam/v/dense_6/kernel
:2Adam/m/dense_6/bias
:2Adam/v/dense_6/bias
"J

Const_35jtf.TrackableConstant
"J

Const_34jtf.TrackableConstant
"J

Const_33jtf.TrackableConstant
"J

Const_32jtf.TrackableConstant
"J

Const_31jtf.TrackableConstant
"J

Const_30jtf.TrackableConstant
"J

Const_29jtf.TrackableConstant
"J

Const_28jtf.TrackableConstant
"J

Const_27jtf.TrackableConstant
"J

Const_26jtf.TrackableConstant
"J

Const_25jtf.TrackableConstant
"J

Const_24jtf.TrackableConstant
"J

Const_23jtf.TrackableConstant
"J

Const_22jtf.TrackableConstant
"J

Const_21jtf.TrackableConstant
"J

Const_20jtf.TrackableConstant
"J

Const_19jtf.TrackableConstant
"J

Const_18jtf.TrackableConstant
"J

Const_17jtf.TrackableConstant
"J

Const_16jtf.TrackableConstant
"J

Const_15jtf.TrackableConstant
"J

Const_14jtf.TrackableConstant
"J

Const_13jtf.TrackableConstant
"J

Const_12jtf.TrackableConstant
"J

Const_11jtf.TrackableConstant
"J

Const_10jtf.TrackableConstant
!J	
Const_9jtf.TrackableConstant
!J	
Const_8jtf.TrackableConstant
!J	
Const_7jtf.TrackableConstant
!J	
Const_6jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
 "
trackable_list_wrapper
@
…0
 1
Ћ2
ћ3"
trackable_list_wrapper
 "
trackable_list_wrapper
@
Ќ0
ќ1
ѕ2
–3"
trackable_list_wrapper
@
—0
“1
”2
‘3"
trackable_list_wrapper
-
’serving_default"
signature_map
 "
trackable_dict_wrapper
0
¬0
√1"
trackable_list_wrapper
.
ј	variables"
_generic_user_object
:  (2total
:  (2count
0
∆0
«1"
trackable_list_wrapper
.
ƒ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
V
Ќ_initializer
÷_create_resource
„_initialize
Ў_destroy_resourceR 
V
ќ_initializer
ў_create_resource
Џ_initialize
џ_destroy_resourceR 
V
ѕ_initializer
№_create_resource
Ё_initialize
ё_destroy_resourceR 
V
–_initializer
я_create_resource
а_initialize
б_destroy_resourceR 
T
—	_filename
$в_self_saveable_object_factories"
_generic_user_object
T
“	_filename
$г_self_saveable_object_factories"
_generic_user_object
T
”	_filename
$д_self_saveable_object_factories"
_generic_user_object
T
‘	_filename
$е_self_saveable_object_factories"
_generic_user_object
*
*
*
* 
с
Х	capture_0
Ц	capture_1
Ч	capture_3
Ш	capture_4
Щ	capture_5
Ъ	capture_6
Ы	capture_8
Ь	capture_9
Э
capture_10
Ю
capture_11
Я
capture_13
†
capture_14
°
capture_15
Ґ
capture_16
£
capture_18
§
capture_19
•
capture_20
¶
capture_21
І
capture_22
®
capture_23
©
capture_24
™
capture_25
Ђ
capture_26
ђ
capture_27
≠
capture_28
Ѓ
capture_29
ѓ
capture_30
∞
capture_31
±
capture_32
≤
capture_33
≥
capture_34
і
capture_35
µ
capture_36
ґ
capture_37
Ј
capture_38
Є
capture_39Bґ
%__inference_signature_wrapper_1235396inputsinputs_1	inputs_10	inputs_11inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХ	capture_0zЦ	capture_1zЧ	capture_3zШ	capture_4zЩ	capture_5zЪ	capture_6zЫ	capture_8zЬ	capture_9zЭ
capture_10zЮ
capture_11zЯ
capture_13z†
capture_14z°
capture_15zҐ
capture_16z£
capture_18z§
capture_19z•
capture_20z¶
capture_21zІ
capture_22z®
capture_23z©
capture_24z™
capture_25zЂ
capture_26zђ
capture_27z≠
capture_28zЃ
capture_29zѓ
capture_30z∞
capture_31z±
capture_32z≤
capture_33z≥
capture_34zі
capture_35zµ
capture_36zґ
capture_37zЈ
capture_38zЄ
capture_39
ѕ
жtrace_02∞
__inference__creator_1236474П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zжtrace_0
”
зtrace_02і
 __inference__initializer_1236491П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zзtrace_0
—
иtrace_02≤
__inference__destroyer_1236500П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zиtrace_0
ѕ
йtrace_02∞
__inference__creator_1236508П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zйtrace_0
”
кtrace_02і
 __inference__initializer_1236525П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zкtrace_0
—
лtrace_02≤
__inference__destroyer_1236534П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zлtrace_0
ѕ
мtrace_02∞
__inference__creator_1236542П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zмtrace_0
”
нtrace_02і
 __inference__initializer_1236559П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zнtrace_0
—
оtrace_02≤
__inference__destroyer_1236568П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zоtrace_0
ѕ
пtrace_02∞
__inference__creator_1236576П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zпtrace_0
”
рtrace_02і
 __inference__initializer_1236593П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zрtrace_0
—
сtrace_02≤
__inference__destroyer_1236602П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ zсtrace_0
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
≥B∞
__inference__creator_1236474"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
„
—	capture_0Bі
 __inference__initializer_1236491"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ z—	capture_0
µB≤
__inference__destroyer_1236500"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥B∞
__inference__creator_1236508"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
„
“	capture_0Bі
 __inference__initializer_1236525"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ z“	capture_0
µB≤
__inference__destroyer_1236534"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥B∞
__inference__creator_1236542"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
„
”	capture_0Bі
 __inference__initializer_1236559"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ z”	capture_0
µB≤
__inference__destroyer_1236568"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥B∞
__inference__creator_1236576"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
„
‘	capture_0Bі
 __inference__initializer_1236593"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ z‘	capture_0
µB≤
__inference__destroyer_1236602"П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ A
__inference__creator_1236474!Ґ

Ґ 
™ "К
unknown A
__inference__creator_1236508!Ґ

Ґ 
™ "К
unknown A
__inference__creator_1236542!Ґ

Ґ 
™ "К
unknown A
__inference__creator_1236576!Ґ

Ґ 
™ "К
unknown C
__inference__destroyer_1236500!Ґ

Ґ 
™ "К
unknown C
__inference__destroyer_1236534!Ґ

Ґ 
™ "К
unknown C
__inference__destroyer_1236568!Ґ

Ґ 
™ "К
unknown C
__inference__destroyer_1236602!Ґ

Ґ 
™ "К
unknown K
 __inference__initializer_1236491'—…Ґ

Ґ 
™ "К
unknown K
 __inference__initializer_1236525'“ Ґ

Ґ 
™ "К
unknown K
 __inference__initializer_1236559'”ЋҐ

Ґ 
™ "К
unknown K
 __inference__initializer_1236593'‘ћҐ

Ґ 
™ "К
unknown м
"__inference__wrapped_model_1235890≈%&-.<=ЗҐГ
ыҐч
фЪр
$К!

country_xf€€€€€€€€€
#К 
	gender_xf€€€€€€€€€
(К%
credit_card_xf€€€€€€€€€
*К'
active_member_xf€€€€€€€€€
)К&
credit_score_xf€€€€€€€€€
 К
age_xf€€€€€€€€€
#К 
	tenure_xf€€€€€€€€€
,К)
products_number_xf€€€€€€€€€
-К*
estimated_salary_xf€€€€€€€€€
™ "1™.
,
dense_6!К
dense_6€€€€€€€€€џ
J__inference_concatenate_1_layer_call_and_return_conditional_losses_1236379МџҐ„
ѕҐЋ
»Ъƒ
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
"К
inputs_2€€€€€€€€€
"К
inputs_3€€€€€€€€€
"К
inputs_4€€€€€€€€€
"К
inputs_5€€€€€€€€€
"К
inputs_6€€€€€€€€€
"К
inputs_7€€€€€€€€€
"К
inputs_8€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ µ
/__inference_concatenate_1_layer_call_fn_1236365БџҐ„
ѕҐЋ
»Ъƒ
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
"К
inputs_2€€€€€€€€€
"К
inputs_3€€€€€€€€€
"К
inputs_4€€€€€€€€€
"К
inputs_5€€€€€€€€€
"К
inputs_6€€€€€€€€€
"К
inputs_7€€€€€€€€€
"К
inputs_8€€€€€€€€€
™ "!К
unknown€€€€€€€€€ђ
D__inference_dense_4_layer_call_and_return_conditional_losses_1236399d%&/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "-Ґ*
#К 
tensor_0€€€€€€€€€р
Ъ Ж
)__inference_dense_4_layer_call_fn_1236388Y%&/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ""К
unknown€€€€€€€€€р≠
D__inference_dense_5_layer_call_and_return_conditional_losses_1236419e-.0Ґ-
&Ґ#
!К
inputs€€€€€€€€€р
™ "-Ґ*
#К 
tensor_0€€€€€€€€€р
Ъ З
)__inference_dense_5_layer_call_fn_1236408Z-.0Ґ-
&Ґ#
!К
inputs€€€€€€€€€р
™ ""К
unknown€€€€€€€€€рђ
D__inference_dense_6_layer_call_and_return_conditional_losses_1236466d<=0Ґ-
&Ґ#
!К
inputs€€€€€€€€€р
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ж
)__inference_dense_6_layer_call_fn_1236455Y<=0Ґ-
&Ґ#
!К
inputs€€€€€€€€€р
™ "!К
unknown€€€€€€€€€ѓ
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236441e4Ґ1
*Ґ'
!К
inputs€€€€€€€€€р
p
™ "-Ґ*
#К 
tensor_0€€€€€€€€€р
Ъ ѓ
F__inference_dropout_2_layer_call_and_return_conditional_losses_1236446e4Ґ1
*Ґ'
!К
inputs€€€€€€€€€р
p 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€р
Ъ Й
+__inference_dropout_2_layer_call_fn_1236424Z4Ґ1
*Ґ'
!К
inputs€€€€€€€€€р
p
™ ""К
unknown€€€€€€€€€рЙ
+__inference_dropout_2_layer_call_fn_1236429Z4Ґ1
*Ґ'
!К
inputs€€€€€€€€€р
p 
™ ""К
unknown€€€€€€€€€рС
D__inference_model_1_layer_call_and_return_conditional_losses_1236216»%&-.<=ПҐЛ
ГҐ€
фЪр
$К!

country_xf€€€€€€€€€
#К 
	gender_xf€€€€€€€€€
(К%
credit_card_xf€€€€€€€€€
*К'
active_member_xf€€€€€€€€€
)К&
credit_score_xf€€€€€€€€€
 К
age_xf€€€€€€€€€
#К 
	tenure_xf€€€€€€€€€
,К)
products_number_xf€€€€€€€€€
-К*
estimated_salary_xf€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ С
D__inference_model_1_layer_call_and_return_conditional_losses_1236250»%&-.<=ПҐЛ
ГҐ€
фЪр
$К!

country_xf€€€€€€€€€
#К 
	gender_xf€€€€€€€€€
(К%
credit_card_xf€€€€€€€€€
*К'
active_member_xf€€€€€€€€€
)К&
credit_score_xf€€€€€€€€€
 К
age_xf€€€€€€€€€
#К 
	tenure_xf€€€€€€€€€
,К)
products_number_xf€€€€€€€€€
-К*
estimated_salary_xf€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ л
)__inference_model_1_layer_call_fn_1236275љ%&-.<=ПҐЛ
ГҐ€
фЪр
$К!

country_xf€€€€€€€€€
#К 
	gender_xf€€€€€€€€€
(К%
credit_card_xf€€€€€€€€€
*К'
active_member_xf€€€€€€€€€
)К&
credit_score_xf€€€€€€€€€
 К
age_xf€€€€€€€€€
#К 
	tenure_xf€€€€€€€€€
,К)
products_number_xf€€€€€€€€€
-К*
estimated_salary_xf€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€л
)__inference_model_1_layer_call_fn_1236300љ%&-.<=ПҐЛ
ГҐ€
фЪр
$К!

country_xf€€€€€€€€€
#К 
	gender_xf€€€€€€€€€
(К%
credit_card_xf€€€€€€€€€
*К'
active_member_xf€€€€€€€€€
)К&
credit_score_xf€€€€€€€€€
 К
age_xf€€€€€€€€€
#К 
	tenure_xf€€€€€€€€€
,К)
products_number_xf€€€€€€€€€
-К*
estimated_salary_xf€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€ю

__inference_pruned_1235322я
PХЦ…ЧШЩЪ ЫЬЭЮЋЯ†°Ґћ£§•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄЋҐ«
њҐї
Є™і
?
active_member.К+
inputs_active_member€€€€€€€€€	
+
age$К!

inputs_age€€€€€€€€€	
3
balance(К%
inputs_balance€€€€€€€€€
/
churn&К#
inputs_churn€€€€€€€€€	
3
country(К%
inputs_country€€€€€€€€€
;
credit_card,К)
inputs_credit_card€€€€€€€€€	
=
credit_score-К*
inputs_credit_score€€€€€€€€€	
;
customer_id,К)
inputs_customer_id€€€€€€€€€	
E
estimated_salary1К.
inputs_estimated_salary€€€€€€€€€
1
gender'К$
inputs_gender€€€€€€€€€
C
products_number0К-
inputs_products_number€€€€€€€€€	
1
tenure'К$
inputs_tenure€€€€€€€€€	
™ "Љ™Є
>
active_member_xf*К'
active_member_xf€€€€€€€€€
*
age_xf К
age_xf€€€€€€€€€
.
churn_xf"К
churn_xf€€€€€€€€€	
2

country_xf$К!

country_xf€€€€€€€€€
:
credit_card_xf(К%
credit_card_xf€€€€€€€€€
<
credit_score_xf)К&
credit_score_xf€€€€€€€€€
D
estimated_salary_xf-К*
estimated_salary_xf€€€€€€€€€
0
	gender_xf#К 
	gender_xf€€€€€€€€€
B
products_number_xf,К)
products_number_xf€€€€€€€€€
0
	tenure_xf#К 
	tenure_xf€€€€€€€€€О

%__inference_signature_wrapper_1235396д	PХЦ…ЧШЩЪ ЫЬЭЮЋЯ†°Ґћ£§•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄ–Ґћ
Ґ 
ƒ™ј
*
inputs К
inputs€€€€€€€€€	
.
inputs_1"К
inputs_1€€€€€€€€€	
0
	inputs_10#К 
	inputs_10€€€€€€€€€	
0
	inputs_11#К 
	inputs_11€€€€€€€€€	
.
inputs_2"К
inputs_2€€€€€€€€€
.
inputs_3"К
inputs_3€€€€€€€€€	
.
inputs_4"К
inputs_4€€€€€€€€€
.
inputs_5"К
inputs_5€€€€€€€€€	
.
inputs_6"К
inputs_6€€€€€€€€€	
.
inputs_7"К
inputs_7€€€€€€€€€	
.
inputs_8"К
inputs_8€€€€€€€€€
.
inputs_9"К
inputs_9€€€€€€€€€"Љ™Є
>
active_member_xf*К'
active_member_xf€€€€€€€€€
*
age_xf К
age_xf€€€€€€€€€
.
churn_xf"К
churn_xf€€€€€€€€€	
2

country_xf$К!

country_xf€€€€€€€€€
:
credit_card_xf(К%
credit_card_xf€€€€€€€€€
<
credit_score_xf)К&
credit_score_xf€€€€€€€€€
D
estimated_salary_xf-К*
estimated_salary_xf€€€€€€€€€
0
	gender_xf#К 
	gender_xf€€€€€€€€€
B
products_number_xf,К)
products_number_xf€€€€€€€€€
0
	tenure_xf#К 
	tenure_xf€€€€€€€€€Е
:__inference_signature_wrapper_serve_tf_examples_fn_1235854∆VХЦ…ЧШЩЪ ЫЬЭЮЋЯ†°Ґћ£§•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄ%&-.<=9Ґ6
Ґ 
/™,
*
examplesК
examples€€€€€€€€€"1™.
,
outputs!К
outputs€€€€€€€€€и

U__inference_transform_features_layer_layer_call_and_return_conditional_losses_1236017О
PХЦ…ЧШЩЪ ЫЬЭЮЋЯ†°Ґћ£§•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄЌҐ…
ЅҐљ
Ї™ґ
8
active_member'К$
active_member€€€€€€€€€	
$
ageК
age€€€€€€€€€	
,
balance!К
balance€€€€€€€€€
,
country!К
country€€€€€€€€€
4
credit_card%К"
credit_card€€€€€€€€€	
6
credit_score&К#
credit_score€€€€€€€€€	
4
customer_id%К"
customer_id€€€€€€€€€	
>
estimated_salary*К'
estimated_salary€€€€€€€€€
*
gender К
gender€€€€€€€€€
<
products_number)К&
products_number€€€€€€€€€	
*
tenure К
tenure€€€€€€€€€	
™ "йҐе
Ё™ў
G
active_member_xf3К0
tensor_0_active_member_xf€€€€€€€€€
3
age_xf)К&
tensor_0_age_xf€€€€€€€€€
;

country_xf-К*
tensor_0_country_xf€€€€€€€€€
C
credit_card_xf1К.
tensor_0_credit_card_xf€€€€€€€€€
E
credit_score_xf2К/
tensor_0_credit_score_xf€€€€€€€€€
M
estimated_salary_xf6К3
tensor_0_estimated_salary_xf€€€€€€€€€
9
	gender_xf,К)
tensor_0_gender_xf€€€€€€€€€
K
products_number_xf5К2
tensor_0_products_number_xf€€€€€€€€€
9
	tenure_xf,К)
tensor_0_tenure_xf€€€€€€€€€
Ъ р	
:__inference_transform_features_layer_layer_call_fn_1236128±	PХЦ…ЧШЩЪ ЫЬЭЮЋЯ†°Ґћ£§•¶І®©™Ђђ≠Ѓѓ∞±≤≥іµґЈЄЌҐ…
ЅҐљ
Ї™ґ
8
active_member'К$
active_member€€€€€€€€€	
$
ageК
age€€€€€€€€€	
,
balance!К
balance€€€€€€€€€
,
country!К
country€€€€€€€€€
4
credit_card%К"
credit_card€€€€€€€€€	
6
credit_score&К#
credit_score€€€€€€€€€	
4
customer_id%К"
customer_id€€€€€€€€€	
>
estimated_salary*К'
estimated_salary€€€€€€€€€
*
gender К
gender€€€€€€€€€
<
products_number)К&
products_number€€€€€€€€€	
*
tenure К
tenure€€€€€€€€€	
™ "М™И
>
active_member_xf*К'
active_member_xf€€€€€€€€€
*
age_xf К
age_xf€€€€€€€€€
2

country_xf$К!

country_xf€€€€€€€€€
:
credit_card_xf(К%
credit_card_xf€€€€€€€€€
<
credit_score_xf)К&
credit_score_xf€€€€€€€€€
D
estimated_salary_xf-К*
estimated_salary_xf€€€€€€€€€
0
	gender_xf#К 
	gender_xf€€€€€€€€€
B
products_number_xf,К)
products_number_xf€€€€€€€€€
0
	tenure_xf#К 
	tenure_xf€€€€€€€€€