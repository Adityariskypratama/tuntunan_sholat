<?php 
include 'header.php'; 

// Ambil parameter kategori dari URL (1 = Dewasa, 2 = Anak)
$id_kategori = isset($_GET['kategori']) ? intval($_GET['kategori']) : 1;

// Ambil nama kategori untuk judul
$query_kat = mysqli_query($conn, "SELECT nama FROM kategori WHERE id = $id_kategori");
$data_kat = mysqli_fetch_assoc($query_kat);
$nama_kategori = isset($data_kat['nama']) ? $data_kat['nama'] : 'Dewasa';

// Ambil data gerakan sholat dari database secara urut (F-01 & F-09)
$query_gerakan = mysqli_query($conn, "SELECT * FROM gerakan WHERE id_kategori = $id_kategori ORDER BY urutan ASC");
?>

<div class="container my-4">
    <a href="index.php" class="btn btn-outline-secondary mb-4 rounded-pill">← Kembali ke Beranda</a>

    <div class="text-center mb-4">
        <h2 class="fw-bold text-success">Daftar Gerakan Sholat</h2>
        <span class="badge bg-<?= $id_kategori == 1 ? 'primary' : 'warning'; ?> fs-6 rounded-pill px-3 py-2">
            Mode <?= $nama_kategori; ?>
        </span>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="list-group shadow-sm">
                <?php 
                if (mysqli_num_rows($query_gerakan) > 0) {
                    while ($row = mysqli_fetch_assoc($query_gerakan)) {
                ?>
                    <a href="detail_gerakan.php?id=<?= $row['id']; ?>" class="list-group-item list-group-item-action d-flex justify-content-between align-items-center py-3">
                        <div>
                            <span class="fw-bold text-success me-2"><?= $row['urutan']; ?>.</span>
                            <span class="fw-semibold"><?= $row['nama']; ?></span>
                        </div>
                        <span class="text-muted small">Lihat Detail →</span>
                    </a>
                <?php 
                    }
                } else {
                    echo '<div class="alert alert-info text-center">Data gerakan sholat belum diisi di database phpMyAdmin.</div>';
                }
                ?>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>