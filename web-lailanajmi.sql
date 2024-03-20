-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Mar 2024 pada 05.11
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-lailanajmi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `profesi` varchar(255) NOT NULL,
  `me` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `content`, `profesi`, `me`, `birthday`, `age`, `website`, `phone`, `city`, `photos`, `created_at`, `updated_at`) VALUES
(1, '<p>-</p>', ' Halo! Saya Laila Najmi, mahasiswa Teknik Informatika di Universitas Negeri Padang. Minat saya terhadap teknologi dan seni saling melengkapi, membuka peluang tak terbatas untuk berkreasi dan berinovasi.', 'UI/UX Designer & Web Developer.', 'Di teknologi, saya tertarik pada pemrograman. Saya suka mempelajari berbagai bahasa pemrograman dan membuat aplikasi inovatif. Saya juga memiliki jiwa seni, menikmati menggambar, melukis, dan memotret.', '20 March 2004', ' 20', 'www.lailanajmi.com', '082288512573', 'Padang', 'Pc3ivNDO6dEm04HAM25GIiIivaaGK2-metabGFpbGEuanBn-.jpg', '2024-03-18 08:28:04', '2024-03-18 19:44:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `call` varchar(255) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `location`, `email`, `call`, `photos`, `created_at`, `updated_at`) VALUES
(1, 'Jl Cendrawasih, Air Tawar, Kota Padang, Sumatera Barat', 'Lailanajmi2003@gmail.com', '082288512573', 'WBTFXtJrdF6NfV8OUcqYCkr75Zf3qW-metaV2hhdHNBcHAgSW1hZ2UgMjAyNC0wMi0wNyBhdCAyMS41Mi4yOF9mNGZmNjJlYi5qcGc=-.jpg', '2024-03-18 12:36:52', '2024-03-18 12:46:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_18_135144_create_sections_table', 2),
(6, '2024_03_18_150314_create_abouts_table', 3),
(7, '2024_03_18_154208_create_skills_table', 4),
(8, '2024_03_18_183912_create_resumes_table', 5),
(9, '2024_03_18_185542_create_contacts_table', 6),
(10, '2024_03_18_190133_create_portofolios_table', 7),
(11, '2024_03_19_022935_create_sections_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `portofolios`
--

CREATE TABLE `portofolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `portofolios`
--

INSERT INTO `portofolios` (`id`, `name`, `photos`, `created_at`, `updated_at`) VALUES
(1, 'Pashion', 'n1GMIeiISRQl7GwHFpO1M8heguIdh9-metacGFzaGlvbi5qcGc=-.jpg', '2024-03-18 13:47:18', '2024-03-18 20:35:37'),
(2, '.', 'EEJHfvU9Bo5iVUVhQ0nEDZ6hjZQMkq-metaYW5pbWUuanBn-.jpg', '2024-03-18 20:36:49', '2024-03-18 20:36:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resumes`
--

CREATE TABLE `resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `resumes`
--

INSERT INTO `resumes` (`id`, `name`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 'SD N 11 KERINCI', 2009, '2024-03-18 11:50:01', '2024-03-18 13:24:24'),
(2, 'SMP NEGERI 7 KERINCI', 2015, '2024-03-18 13:24:47', '2024-03-18 13:24:47'),
(3, 'SMA NEGERI 6 KERINCI', 2019, '2024-03-18 13:25:17', '2024-03-18 13:25:17'),
(4, 'UNIVERSITAS NEGERI PADANG', 2021, '2024-03-18 13:25:42', '2024-03-18 13:25:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sections`
--

INSERT INTO `sections` (`id`, `name`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Laila Najmi', 'I am an informatics engineering student', 'Laila Najmi', 'GMXdWvKNBh74su01uvbXFcvspcBShN-metabGFpbGEuanBn-.jpg', '2024-03-18 19:38:43', '2024-03-18 20:43:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `persen` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `content`, `name`, `persen`, `created_at`, `updated_at`) VALUES
(1, 'Meskipun masih mahasiswa dan minim pengalaman, semangat belajar saya di bidang informatika tinggi. Saya yakin, dengan dedikasi dan kerja keras, saya dapat menjadi seorang profesional.', 'HTML', 80, '2024-03-18 08:54:37', '2024-03-18 13:06:05'),
(2, '-', 'CSS', 80, '2024-03-18 10:32:25', '2024-03-18 13:03:32'),
(3, '-', 'JAVASCRIPT', 70, '2024-03-18 13:04:02', '2024-03-18 13:04:02'),
(4, '-', 'PHP', 70, '2024-03-18 13:04:29', '2024-03-18 13:04:29'),
(5, '-', 'WORDPRESS/CMS', 55, '2024-03-18 13:04:47', '2024-03-18 13:04:47'),
(6, '-', 'PHOTOSHOP', 85, '2024-03-18 13:05:13', '2024-03-18 13:05:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'LailaNajmi', 'lailanajmi2003@gmail.com', NULL, '$2y$12$nMY0NVH7Etr8TrgKGf49E.x2ZTZYYef32XZnrQrbHUQeaqsPXvh/.', 'XGkxkmDhvIQcsKjtS5gBvFWhpAUXouSXhHTap5GIfN6RRfBzT2yywqPc9WQS', '2024-03-18 06:50:55', '2024-03-18 06:50:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `portofolios`
--
ALTER TABLE `portofolios`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `portofolios`
--
ALTER TABLE `portofolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
