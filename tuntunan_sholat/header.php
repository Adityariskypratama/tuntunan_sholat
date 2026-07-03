<?php
include 'koneksi.php';
// Ambil data identitas kelompok dari database (F-08 & F-09)
$query_kelompok = mysqli_query($conn, "SELECT * FROM kelompok LIMIT 1");
$data_kelompok = mysqli_fetch_assoc($query_kelompok);
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aplikasi Tuntunan Tata Cara Sholat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Amiri&family=Noto+Naskh+Arabic&display=swap" rel="stylesheet">
    <style>
        .font-arab {
            font-family: 'Amiri', serif;
            font-size: 28px;
            direction: rtl;
        }
    </style>
</head>
<body class="bg-light">

<header class="bg-dark text-white py-3 mb-4 shadow-sm">
    <div class="container text-center">
        <h4 class="fw-bold mb-1"><?= isset($data_kelompok['nama_kelompok']) ? $data_kelompok['nama_kelompok'] : 'Nama Kelompok'; ?></h4>
        <p class="small mb-0 text-secondary">
            Prodi: <?= isset($data_kelompok['prodi']) ? $data_kelompok['prodi'] : '-'; ?> | 
            MK: <?= isset($data_kelompok['mata_kuliah']) ? $data_kelompok['mata_kuliah'] : '-'; ?> | 
            Dosen: <?= isset($data_kelompok['dosen']) ? $data_kelompok['dosen'] : '-'; ?>
        </p>
    </div>
</header>