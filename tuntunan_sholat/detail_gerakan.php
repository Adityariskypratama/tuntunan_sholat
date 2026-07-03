<?php 
include 'header.php'; 

$id_gerakan = isset($_GET['id']) ? intval($_GET['id']) : 1;

// Ambil data detail gerakan
$query_gerakan = mysqli_query($conn, "SELECT * FROM gerakan WHERE id = $id_gerakan");
$gerakan = mysqli_fetch_assoc($query_gerakan);

if (!$gerakan) { 
    echo "<div class='container my-5'><div class='alert alert-danger'>Gerakan tidak ditemukan!</div></div>"; 
    exit; 
}

$id_kategori = $gerakan['id_kategori'];

// Query Navigasi Maju/Mundur (F-05)
$query_prev = mysqli_query($conn, "SELECT id FROM gerakan WHERE id_kategori = $id_kategori AND urutan < {$gerakan['urutan']} ORDER BY urutan DESC LIMIT 1");
$prev_data = mysqli_fetch_assoc($query_prev);

$query_next = mysqli_query($conn, "SELECT id FROM gerakan WHERE id_kategori = $id_kategori AND urutan > {$gerakan['urutan']} ORDER BY urutan ASC LIMIT 1");
$next_data = mysqli_fetch_assoc($query_next);

// Ambil 4 lapisan data bacaan sholat dari basis data (F-02 & F-09)
$query_bacaan = mysqli_query($conn, "SELECT * FROM bacaan WHERE id_gerakan = $id_gerakan ORDER BY urutan ASC");
?>

<div class="container my-4">
    <div class="d-flex justify-content-between mb-4">
        <a href="daftar_gerakan.php?kategori=<?= $id_kategori; ?>" class="btn btn-outline-secondary rounded-pill">← Kembali ke Daftar</a>
        <button id="btnAutoplay" class="btn btn-success rounded-pill">▶ Putar Otomatis (Autoplay)</button>
    </div>

    <div class="row g-4">
        <div class="col-md-5 text-center">
            <div class="card shadow-sm p-3 border-0">
                <h5 class="fw-bold mb-3 text-success"><?= $gerakan['nama']; ?></h5>
                <div class="mb-3">
                    <img src="assets/img/<?= $gerakan['gambar_url']; ?>" class="img-fluid rounded shadow-sm" onerror="this.src='https://placehold.co/400x300?text=Gambar+Gerakan'">
                </div>
                <p class="text-muted small mb-3"><?= $gerakan['deskripsi']; ?></p>
                
                <?php if (!empty($gerakan['video_url'])) : ?>
                    <button class="btn btn-primary w-100 rounded-pill mb-2" type="button" data-bs-toggle="collapse" data-bs-target="#boxVideo">🎬 Tampilkan / Sembunyikan Video</button>
                    <div class="collapse" id="boxVideo">
                        <div class="ratio ratio-16x9 mt-2">
                            <iframe src="<?= $gerakan['video_url']; ?>" allowfullscreen></iframe>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>

        <div class="col-md-7">
            <div class="card shadow-sm p-4 border-0">
                <h5 class="fw-bold text-secondary border-bottom pb-2 mb-3">Bacaan Sholat (Sumber: HPT Muhammadiyah)</h5>
                <?php 
                $audio_files = [];
                if (mysqli_num_rows($query_bacaan) > 0) {
                    while ($bacaan = mysqli_fetch_assoc($query_bacaan)) {
                        // Kumpulkan playlist audio untuk kebutuhan fitur autoplay
                        if(!empty($bacaan['audio_url'])) { 
                            $audio_files[] = "assets/audio/" . $bacaan['audio_url']; 
                        }
                ?>
                    <div class="mb-4 bg-light p-3 rounded">
                        <div class="font-arab text-end mb-2 text-dark fw-bold"><?= $bacaan['teks_arab']; ?></div>
                        <div class="text-primary fw-semibold small mb-1"><em><?= $bacaan['teks_latin']; ?></em></div>
                        <div class="text-muted small mb-2">Artinya: "<?= $bacaan['terjemahan']; ?>"</div>
                        <?php if (!empty($bacaan['audio_url'])) : ?>
                            <audio controls class="w-100 mt-2">
                                <source src="assets/audio/<?= $bacaan['audio_url']; ?>" type="audio/mpeg">
                            </audio>
                        <?php endif; ?>
                        <div class="text-end text-secondary mt-1" style="font-size: 11px;">Rujukan: <?= $bacaan['sumber']; ?></div>
                    </div>
                <?php 
                    }
                } else { 
                    echo "<p class='text-muted text-center py-4'>Tidak ada bacaan khusus pada gerakan ini.</p>"; 
                }
                ?>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <div class="col-6 text-start">
            <?php if ($prev_data) : ?>
                <a href="detail_gerakan.php?id=<?= $prev_data['id']; ?>" class="btn btn-secondary px-4 rounded-pill">◀ Gerakan Sebelumnya</a>
            <?php endif; ?>
        </div>
        <div class="col-6 text-end">
            <?php if ($next_data) : ?>
                <a id="btnNext" href="detail_gerakan.php?id=<?= $next_data['id']; ?>" class="btn btn-secondary px-4 rounded-pill">Gerakan Selanjutnya ▶</a>
            <?php else : ?>
                <a href="index.php" class="btn btn-success px-4 rounded-pill">Selesai (Kembali ke Awal)</a>
            <?php endif; ?>
        </div>
    </div>
</div>

<script>
const audioTracks = <?= json_encode($audio_files); ?>;
let currentTrackIndex = 0;

document.getElementById('btnAutoplay').addEventListener('click', function() {
    if (audioTracks.length === 0) { 
        goToNextPage(); 
        return; 
    }
    this.classList.add('disabled'); 
    this.innerText = "⏳ Memutar Otomatis...";
    playAudioSequence();
});

function playAudioSequence() {
    if (currentTrackIndex < audioTracks.length) {
        let audio = new Audio(audioTracks[currentTrackIndex]);
        audio.play().catch(() => { 
            currentTrackIndex++; 
            playAudioSequence(); 
        });
        audio.onended = function() { 
            currentTrackIndex++; 
            playAudioSequence(); 
        };
    } else { 
        goToNextPage(); 
    }
}

function goToNextPage() {
    const nextBtn = document.getElementById('btnNext');
    if (nextBtn) { 
        window.location.href = nextBtn.href + "&autoplay=true"; 
    } else { 
        alert("Seluruh rangkaian gerakan sholat selesai diputar!"); 
        window.location.href = "index.php"; 
    }
}

window.onload = function() {
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.get('autoplay') === 'true') { 
        document.getElementById('btnAutoplay').click(); 
    }
};
</script>
</body>
</html>