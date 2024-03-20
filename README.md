# Submission 2: Bank Custommer Churn Detection
Nama: Yudi Faturohman

Username dicoding: yudi_faturohman_i15d

| | Deskripsi |
| ----------- | ----------- |
| Dataset | [Bank Custommer Churn Dataset](https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset) |
| Masalah | Setiap bank ingin mempertahankan pelanggannya untuk mempertahankan bisnisnya. Perpindahan pelanggan dapat terjadi karena berbagai alasan, seperti ketidakpuasan terhadap layanan, penawaran yang lebih baik dari pesaing, perubahan kebutuhan finansial, atau pengalaman pelanggan yang kurang memuaskan.  |
| Solusi machine learning | Dari permasalah tersebut di buat solusi machine learning untuk mempelajari pola dan hubungan atribut pelanggan dari hasil churn agar dapat memprediksi kemungkinan churn bagi pelanggan baru atau pelanggan lama berdasarkan karakteristik mereka. Wawasan yang diperoleh dari model prediksi churn dapat membantu bank dalam menerapkan langkah-langkah proaktif untuk mempertahankan nasabah yang berharga. Misalnya, bank dapat menjangkau nasabah dengan kemungkinan churn yang tinggi dan menawarkan insentif yang dipersonalisasi, layanan yang lebih baik, atau rekomendasi yang disesuaikan untuk mendorong mereka tetap bertahan. Pendekatan ini membantu bank memprioritaskan sumber dayanya dan fokus dalam mempertahankan nasabah yang memiliki risiko churn terbesar. |
| Metode pengolahan | Data yang digunakan pada proyek ini terdapat dua tipe data, yaitu data kategorikal dan numerik. Metode yang digunakan untuk mengelolah data tersebut yaitu mentransformasikan data kategorikal menjadi bentuk one-hot encoding dan menormalisasikan data numerik kedalam range data yang sama. |
| Arsitektur model | Arsitektur model yang digunakan untuk machine learning ini menggunakan parameter Dense Unit, Dropout, dan memiliki 1 output layer. |
| Metrik evaluasi | Beberapa metircs evaluasi yang di gunakan AUC, Precision, Recall, BinaryAccuracy, TruePositive, FalsePositive, TrueNegative, FalseNegative untuk mengevaluasi performa model sebuah klasifikasi. |
| Performa model | Performa model yang dihasilkan dari proses prediksi dan pelatihan memiliki binary_accuracy 87% dan val_binary_accuracy 85%, sangat cukup dan tidak terjadi overfitting. |
| Opsi deployment | Untuk deployment model saya menggunakan layanan VPS (Virtual Private Server) dengan menggunakan OS Ubuntu 20.04 |
| Web app | Tautan web app yang digunakan untuk mengakses model serving. Contoh: [nama-model](https://model-resiko-kredit.herokuapp.com/v1/models/model-resiko-kredit/metadata)|
| Monitoring | Monitoring pada proyek ini dapat dilakukan dengan menggunakan layanan open-source yaitu prometheus dan menggunakan grafana untuk menampilkan dashboard grafik yang mudah di pahami. Contohnya setiap perubahan jumlah request yang dilakukan kepada sistem ini dapat dimonitoring dengan baik dan dapat menampilkan status dari setiap request yang diterima. |
