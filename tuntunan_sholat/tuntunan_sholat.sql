-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2026 pada 20.51
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tuntunan_sholat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bacaan`
--

CREATE TABLE `bacaan` (
  `id` int(11) NOT NULL,
  `id_gerakan` int(11) NOT NULL,
  `urutan` smallint(6) NOT NULL,
  `teks_arab` text NOT NULL,
  `teks_latin` text NOT NULL,
  `terjemahan` text NOT NULL,
  `audio_url` varchar(255) DEFAULT NULL,
  `sumber` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bacaan`
--

INSERT INTO `bacaan` (`id`, `id_gerakan`, `urutan`, `teks_arab`, `teks_latin`, `terjemahan`, `audio_url`, `sumber`) VALUES
(1, 1, 1, 'Niat', '-', '\"Niat sholat dilakukan secara ikhlas di dalam hati karena Allah SWT bersamaan dengan Takbiratul Ihram.\"', 'niat_dewasa.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(2, 2, 1, 'اللهُ أَكْبَرُ', 'Allāhu Akbar', 'Allah Maha Besar.', 'takbir.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(3, 3, 1, 'اللَّهُمَّ بَاعِدْ بَيْنِي وَبَيْنَ خَطَايَايَ كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ', 'Allāhumma bā\'id bainī wa baina khaṭāyāya kamā bā\'adta bainal-masyriqi wal-maġribi', 'Ya Allah, jauhkanlah antara aku dan kesalahan-kesalahanku, sebagaimana Engkau menjauhkan antara timur dan barat.', 'iftitah.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(4, 4, 1, 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَالصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾', 'Bismillahir-rahmanir-rahim. Al-hamdu lillahi rabbil-\'alamin. Ar-rahmanir-rahim. Maliki yaumid-din. Iyyaka na\'budu wa iyyaka nasta\'in. Ihdinas-siratal-mustaqim. Siratal-ladzina an\'amta \'alaihim ghairil-maghdubi \'alaihim wa lad-dallin.', '\"Dengan nama Allah Yang Maha Pengasih, Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam, Yang Maha Pengasih, Maha Penyayang, Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami mohon pertolongan. Tunjukilah kami jalan yang lurus, (yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan (jalan) mereka yang dimurkai, dan bukan (pula jalan) mereka yang sesat.\"', 'alfatihah.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(5, 5, 1, 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ اللَّهُمَّ اغْفِرْ لِي', 'Subḥānakallāhumma rabbanā wa biḥamdika Allāhummaġfir lī', 'Maha Suci Engkau, ya Allah, Tuhan kami, dan dengan memuji-Mu, ya Allah, ampunilah aku.', 'tasbih_rukuk.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(6, 6, 1, 'سَمِعَ اللهُ لِمَنْ حَمِدَهُ. رَبَّنَا وَلَكَ الْحَمْدُ', 'Sami\'allāhu liman ḥamidah. Rabbanā wa lakal-ḥamd', 'Allah mendengar orang yang memuji-Nya. Ya Tuhan kami, bagi-Mu segala puji.', 'itidal.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(7, 7, 1, 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ اللَّهُمَّ اغْفِرْ Lِي', 'Subḥānakallāhumma rabbanā wa biḥamdika Allāhummaġfir lī', 'Maha Suci Engkau, ya Allah, Tuhan kami, dan dengan memuji-Mu, ya Allah, ampunilah aku.', 'tasbih_sujud.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(8, 8, 1, 'اللَّهُمَّ اغْفِرْ Lِي وَارْحَمْنِي وَاجْبُرْنِي وَاهْدِنِي وَارْزُقْنِي', 'Allāhummaġfir lī warḥamnī wajburnī wahdinī warzuqnī', 'Ya Allah ampunilah aku, kasihanilah aku, cukupkanlah kekurangan/keadaanku, tunjukilah aku, dan berilah rezeki kepadaku.', 'duduk_antara_sujud.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(9, 9, 1, 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ اللَّهُمَّ اغْفِرْ Lِي', 'Subḥānakallāhumma rabbanā wa biḥamdika Allāhummaġfir lī', 'Maha Suci Engkau, ya Allah, Tuhan kami, dan dengan memuji-Mu, ya Allah, ampunilah aku.', 'tasbih_sujud.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(10, 10, 1, 'التَّحِيَّاتُ Lِلَّهِ وَالصَّلَوَاتُ وَالطَّيِّبَاتُ... أَشْهَدُ أَنْ لاَ إِلَهَ إِلاَّ اللهُ...', 'At-taḥiyyātu lillāhi waṣ-ṣalawātu waṭ-ṭayyibātu... Asyhadu allā ilāha illallāh...', 'Segala penghormatan kemuliaan, kebahagiaan dan kebaikan adalah kepunyaan Allah... Aku bersaksi bahwa tidak ada Tuhan melainkan Allah...', 'tasyahud_awal.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(11, 11, 1, 'اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ...', 'Allāhumma ṣalli \'alā Muḥammedin wa \'alā āli Muḥammed...', 'Ya Allah, limpahkanlah kemurahan-Mu kepada Muhammad dan kepada keluarga Muhammad...', 'tasyahud_akhir.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(12, 12, 1, 'السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ', 'As-salāmu \'alaikum wa raḥmatullāhi wa barakātuh', 'Semoga keselamatan, rahmat Allah, dan berkah-Nya senantiasa tercurah kepadamu.', 'salam.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(13, 13, 1, 'Niat', '-', 'Niat ikhlas di dalam hati karena Allah.', 'niat.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(14, 14, 1, 'اللهُ أَكْبَرُ', 'Allāhu Akbar', 'Allah Maha Besar.', 'takbir.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(15, 15, 1, 'اللَّهُمَّ بَاعِدْ بَيْنِي وَبَيْنَ خَطَايَايَ...', 'Allāhumma bā\'id bainī...', 'Ya Allah, jauhkanlah aku dari kesalahan-kesalahanku...', 'iftitah_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(16, 16, 1, 'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ...', 'Bismillāhir-raḥmānir-raḥīm...', 'Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang...', 'alfatihah_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(17, 17, 1, 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ اللَّهُمَّ اغْفِرْ لِي', 'Subḥānakallāhumma rabbanā...', 'Maha Suci Engkau ya Allah, ampunilah aku.', 'tasbih_rukuk_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(18, 18, 1, 'سَمِعَ اللهُ Lِمَنْ حَمِدَهُ...', 'Sami\'allāhu liman ḥamidah...', 'Allah mendengar orang yang memuji-Nya...', 'itidal_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(19, 19, 1, 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ اللَّهُمَّ اغْفِرْ لِي', 'Subḥānakallāhumma rabbanā...', 'Maha Suci Engkau ya Allah, ampunilah aku.', 'sujud_pertama_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(20, 20, 1, 'اللَّهُمَّ اغْفِرْ لِي وَارْحَمْنِي...', 'Allāhummaġfir lī warḥamnī...', 'Ya Allah ampunilah aku dan kasihanilah aku...', 'duduk_antara_dua_sujud_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(21, 21, 1, 'سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ اللَّهُمَّ اغْفِرْ لِي', 'Subḥānakallāhumma rabbanā...', 'Maha Suci Engkau ya Allah, ampunilah aku.', 'sujud_kedua_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(22, 22, 1, 'التَّحِيَّاتُ لِلَّهِ وَالصَّلَوَاتُ...', 'At-taḥiyyātu lillāhi...', 'Segala penghormatan hanyalah milik Allah...', 'tasyahud_awal_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(23, 23, 1, 'اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ...', 'Allāhumma ṣalli \'alā Muḥammedin...', 'Ya Allah, limpahkanlah kebaikan kepada Nabi Muhammad...', 'tasyahud_akhir_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat'),
(24, 24, 1, 'السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ', 'As-salāmu \'alaikum wa raḥmatullāh', 'Semoga keselamatan dan rahmat Allah bersamamu.', 'salam_anak-anak.mp3', 'HPT Muhammadiyah Kitab Shalat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gerakan`
--

CREATE TABLE `gerakan` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `urutan` smallint(6) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gerakan`
--

INSERT INTO `gerakan` (`id`, `id_kategori`, `nama`, `urutan`, `deskripsi`, `gambar_url`, `video_url`) VALUES
(1, 1, 'Berdiri Tegak (Qiyam) & Niat', 1, 'Berdiri tegak menghadap kiblat dan menghadirkan niat ikhlas karena Allah di dalam hati.', 'qiyam_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(2, 1, 'Takbiratul Ihram', 2, 'Mengangkat kedua tangan sejajar telinga atau bahu sambil mengucapkan takbir.', 'takbir_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(3, 1, 'Bersedekap (Membaca Doa Iftitah)', 3, 'Meletakkan tangan kanan di atas pergelangan tangan kiri di dada, kemudian membaca doa Iftitah.', 'sedekap_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(4, 1, 'Membaca Surah Al-Fatihah & Ayat Al-Qur\'an', 4, 'Berdiri bersedekap dengan khusyuk membaca Al-Fatihah dan surah pendek.', 'baca_alquran_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(5, 1, 'Rukuk (Thuma\'ninah)', 5, 'Membungkukkan badan, membentangkan punggung secara lurus, dan memegang lutut dengan kedua telapak tangan.', 'rukuk_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(6, 1, 'I\'tidal (Bangkit dari Rukuk)', 6, 'Bangkit tegak berdiri kembali setelah rukuk seraya mengangkat kedua tangan.', 'itidal_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(7, 1, 'Sujud Pertama (Thuma\'ninah)', 7, 'Sujud dengan meletakkan tujuh anggota badan (dahi & hidung, dua telapak tangan, dua lutut, dua ujung kaki) di lantai.', 'sujud_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(8, 1, 'Duduk di Antara Dua Sujud (Iftirasy)', 8, 'Bangkit dari sujud pertama lalu duduk di atas telapak kaki kiri, sedangkan kaki kanan ditegakkan.', 'duduk_iftirasy_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(9, 1, 'Sujud Kedua', 9, 'Melakukan sujud yang kedua dengan tata cara dan kekhusyukan yang sama seperti sujud pertama.', 'sujud_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(10, 1, 'Duduk Tasyahud Awal', 11, 'Duduk secara Iftirasy pada rakaat kedua dengan meletakkan tangan di paha dan mengacungkan jari telunjuk kanan.', 'tasyahud_awal_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(11, 1, 'Duduk Tasyahud Akhir (Tawarruk)', 12, 'Duduk dengan posisi memajukan kaki kiri ke bawah kaki kanan, dan mendudukkan pantat langsung ke lantai.', 'tasyahud_akhir_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(12, 1, 'Salam', 13, 'Mengakhiri sholat dengan menolehkan wajah ke arah kanan terlebih dahulu hingga pipi terlihat dari belakang, kemudian ke kiri.', 'salam_dewasa.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(13, 2, 'Yuk Berdiri Tegak & Niat', 1, 'Berdiri tegak menghadap kiblat ya teman-teman, lalu siapkan hati yang ikhlas untuk sholat karena Allah.', 'qiyam_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(14, 2, 'Takbiratul Ihram', 2, 'Angkat kedua tangan sejajar telinga sambil mengucapkan Allahu Akbar.', 'takbir_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(15, 2, 'Bersedekap & Baca Doa Iftitah', 3, 'Letakkan tangan kanan di atas tangan kiri di dada, lalu kita membaca doa Iftitah.', 'sedekap_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(16, 2, 'Membaca Surah Al-Fatihah', 4, 'Membaca Al-Fatihah dengan khusyuk dan tidak terburu-buru.', 'baca_alquran_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(17, 2, 'Rukuk yang Tertib', 5, 'Membungkukkan badan dengan punggung yang lurus, lalu pegang lututmu dengan kuat ya.', 'rukuk_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(18, 2, 'I\'tidal (Bangkit dari Rukuk)', 6, 'Berdiri tegak kembali setelah rukuk sambil mengangkat kedua tangan.', 'itidal_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(19, 2, 'Sujud Pertama', 7, 'Sujud dengan menempelkan dahi, hidung, telapak tangan, lutut, dan ujung kaki ke lantai.', 'sujud_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(20, 2, 'Duduk di Antara Dua Sujud', 8, 'Bangun dari sujud lalu duduk dengan tenang di atas kaki kirimu.', 'duduk_iftirasy_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(21, 2, 'Sujud Kedua', 9, 'Lakukan sujud yang kedua dengan cara yang sama indahnya seperti sujud pertama.', 'sujud_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(22, 2, 'Duduk Tasyahud Awal', 10, 'Duduk di rakaat kedua, letakkan tangan di paha, dan tunjuk dengan jari telunjuk kananmu.', 'tasyahud_awal_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(23, 2, 'Duduk Tasyahud Akhir', 11, 'Duduk dengan menggeser kaki kiri ke bawah kaki kanan sebelum sholat kita selesai.', 'tasyahud_akhir_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ'),
(24, 2, 'Salam Penutup', 12, 'Menengok ke kanan dulu sampai selesai membaca salam, baru kemudian menengok ke kiri.', 'salam_anak.jpg', 'https://www.youtube.com/embed/dQw4w9WgXcQ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Dewasa'),
(2, 'Anak-anak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE `kelompok` (
  `id` int(11) NOT NULL,
  `nama_kelompok` varchar(100) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `mata_kuliah` varchar(100) NOT NULL,
  `dosen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`id`, `nama_kelompok`, `prodi`, `mata_kuliah`, `dosen`) VALUES
(1, 'Kelompok 1 (Aditya Risky Pratama, Tommy Maestro Akasa, Hairi Wahyudi, Muhammad Indra Gunawan)', 'Informatika', 'AIK 2 ', 'Dedy Susanto, S.Pd.I., M.M.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bacaan`
--
ALTER TABLE `bacaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_gerakan` (`id_gerakan`);

--
-- Indeks untuk tabel `gerakan`
--
ALTER TABLE `gerakan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bacaan`
--
ALTER TABLE `bacaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `gerakan`
--
ALTER TABLE `gerakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bacaan`
--
ALTER TABLE `bacaan`
  ADD CONSTRAINT `bacaan_ibfk_1` FOREIGN KEY (`id_gerakan`) REFERENCES `gerakan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gerakan`
--
ALTER TABLE `gerakan`
  ADD CONSTRAINT `gerakan_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
