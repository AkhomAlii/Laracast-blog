-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 06:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'culpa', 'provident-magni-consequuntur-dolorem-earum-similique', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(2, 'voluptas', 'eius-fugiat-unde-perferendis', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(3, 'eaque', 'ex-voluptates-molestiae-ut-expedita-sit-qui-doloremque-totam', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(4, 'iste', 'asperiores-quaerat-et-odit-in-voluptates-molestiae-eius', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(5, 'facilis', 'quae-quasi-eius-aliquid', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(6, 'qui', 'ut-soluta-asperiores-sit-accusantium-alias', '2022-12-21 03:29:34', '2022-12-21 03:29:34'),
(7, 'non', 'placeat-rerum-beatae-et-ab-quod-aut-enim', '2022-12-21 03:29:34', '2022-12-21 03:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'Enim odio dolorum eum aut temporibus nihil ut. Iure odio non vero aperiam blanditiis neque sunt. Hic veniam ut enim voluptas occaecati quia. Inventore ut odit non suscipit rerum dolorem nostrum.', '2022-12-21 03:03:04', '2022-12-21 03:03:04'),
(2, 4, 4, 'Unde sed quia aliquid quis. Adipisci odit rerum velit aut quibusdam. Amet consequatur cumque omnis doloremque sit. Repellat aperiam est neque quis natus non.', '2022-12-21 03:03:04', '2022-12-21 03:03:04'),
(3, 4, 4, 'Vel animi harum voluptate accusamus. Nihil itaque non reiciendis ex ut. Perferendis cum voluptatem quia eius officiis. Atque modi sed distinctio magni.', '2022-12-21 03:03:04', '2022-12-21 03:03:04'),
(4, 4, 4, 'Suscipit nihil facere ea temporibus fugit. Ea et commodi hic.', '2022-12-21 03:11:49', '2022-12-21 03:11:49'),
(5, 4, 4, 'Occaecati deleniti quis ducimus voluptas possimus omnis. Facere sed minima et ea. Et necessitatibus in rerum ad aut. Explicabo repellendus aliquam quia qui veniam ut.', '2022-12-21 03:11:49', '2022-12-21 03:11:49'),
(6, 4, 4, 'Quas non quos rerum aperiam. Voluptas odio sit laboriosam blanditiis explicabo rerum. Dolor aspernatur possimus perferendis enim unde. Consequatur eius odit blanditiis asperiores est. Ut libero voluptas est quidem explicabo animi.', '2022-12-21 03:11:49', '2022-12-21 03:11:49'),
(7, 4, 9, 'Aut cupiditate ut enim aut. Veritatis autem molestias veritatis maiores facere eum est sit. Atque ea et quaerat. Consequatur quaerat voluptate id alias.', '2022-12-21 03:30:09', '2022-12-21 03:30:09'),
(8, 4, 10, 'Perspiciatis officiis soluta commodi. Repudiandae non animi omnis corrupti similique praesentium pariatur. Ipsum omnis atque repudiandae et.', '2022-12-21 03:30:09', '2022-12-21 03:30:09'),
(9, 4, 11, 'Optio enim nobis quo voluptatum in in commodi. Architecto debitis sit velit. Possimus eveniet assumenda quam consequatur eos eos porro. Qui debitis occaecati eligendi quia modi.', '2022-12-21 03:30:09', '2022-12-21 03:30:09'),
(10, 4, 12, 'now what', '2022-12-21 11:20:38', '2022-12-21 11:20:38'),
(11, 12, 12, 'mmm is it still working !?', '2022-12-21 11:56:34', '2022-12-21 11:56:34'),
(12, 12, 12, 'yeah it is actually', '2022-12-21 11:56:47', '2022-12-21 11:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_26_205855_create_posts_table', 1),
(6, '2022_12_07_122312_create_categories_table', 1),
(7, '2022_12_20_113442_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `slug`, `title`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 1, 1, 'Id laudantium ipsam dolorem qui reprehenderit et nesciunt.', 'Et molestiae rerum dolor aut.', 'Voluptas non fugiat perspiciatis.', 'Dolor omnis sunt et voluptatem id in. Numquam consequatur rerum nemo. Ut suscipit in porro velit sunt voluptates officia.', '2022-12-21 02:45:36', '2022-12-21 02:45:36', NULL),
(2, 2, 2, 'Sit eaque qui quos delectus sunt exercitationem.', 'Nemo molestiae praesentium quod id eos.', 'Sed cupiditate nisi cum est.', 'Et sunt qui aut. Fugiat ea sed rerum facilis. Aut ut est possimus ullam excepturi et velit.', '2022-12-21 02:45:36', '2022-12-21 02:45:36', NULL),
(3, 3, 3, 'Assumenda sed autem error saepe et aut inventore.', 'Aut beatae voluptates deleniti iusto nostrum voluptate delectus.', 'Quia consequuntur autem non tempore et.', 'Illo qui sint quos quia. Ea reprehenderit excepturi et quo sint minima sit. Molestiae illo repellat atque sequi. Dolor nemo reiciendis officiis id qui.', '2022-12-21 02:45:36', '2022-12-21 02:45:36', NULL),
(4, 4, 4, 'Distinctio totam necessitatibus animi rem molestiae dolor.', 'Quia architecto aut possimus rerum quo velit animi.', 'Error accusantium dignissimos corporis fugit.', 'Sit porro cumque velit non. Excepturi dignissimos eligendi expedita necessitatibus.', '2022-12-21 02:45:36', '2022-12-21 02:45:36', NULL),
(5, 5, 5, 'Aut voluptatibus modi possimus nam earum.', 'Laboriosam itaque minus facere est sint sit.', 'Ea repellendus quos qui fugit deleniti.', 'Rerum quisquam libero sint recusandae. Et accusantium molestias sint. Qui fuga temporibus libero dolores.', '2022-12-21 02:45:36', '2022-12-21 02:45:36', NULL),
(6, 4, 4, 'Placeat voluptates repellat eaque aut quas sit.', 'Ea tenetur explicabo accusamus beatae natus.', 'Temporibus doloremque laudantium libero fugiat quae.', 'Id officia quidem consequatur consequuntur tenetur id dolorem asperiores. Omnis eveniet commodi quo minima laborum vel natus. Ut doloribus similique et beatae nisi est nihil.', '2022-12-21 02:45:39', '2022-12-21 02:45:39', NULL),
(7, 4, 4, 'Rem dolore voluptate sed beatae.', 'Voluptatem ut ut fuga eius minima quisquam quae reprehenderit.', 'Dolore dolores et nemo ex.', 'Quibusdam voluptates maxime autem consectetur quia vitae. Molestias debitis voluptas voluptas ut occaecati expedita perspiciatis molestias. Saepe in commodi incidunt ab rem rerum libero. Inventore omnis voluptatem pariatur ratione iure sit doloribus.', '2022-12-21 02:45:39', '2022-12-21 02:45:39', NULL),
(8, 4, 4, 'Veniam alias sed rerum maiores blanditiis iste.', 'Molestiae ut iste maxime vero occaecati consectetur laboriosam.', 'Vero eos sint voluptatem aut tempora ea id.', 'Reiciendis modi voluptates quis. Omnis provident quaerat illum animi quod et. Natus et inventore aperiam quam ea. Expedita doloribus assumenda quod aperiam voluptatem a.', '2022-12-21 02:45:39', '2022-12-21 02:45:39', NULL),
(9, 4, 4, 'Modi neque est culpa explicabo reprehenderit qui impedit.', 'Velit in soluta sit doloribus quia perspiciatis quia.', 'Accusamus dolores nemo sed omnis.', 'Officia rerum neque nulla minima ut. Ullam sapiente perspiciatis quod inventore qui laboriosam. Consequatur vero sit voluptas illo et fuga. Consequatur voluptatibus maiores pariatur provident.', '2022-12-21 02:45:42', '2022-12-21 02:45:42', NULL),
(10, 4, 4, 'Enim nisi et similique rerum beatae eos commodi.', 'Consequatur est culpa quia beatae dolor dolore porro aliquid.', 'Ex dignissimos similique neque illum deleniti eum.', 'Nam possimus et in voluptate. Quia quibusdam quis ea eius officiis quia. Aut sed odio eaque vitae.', '2022-12-21 02:45:42', '2022-12-21 02:45:42', NULL),
(11, 4, 4, 'Officiis possimus id commodi harum eos dolores.', 'Numquam iste deserunt repudiandae eaque perferendis modi illo.', 'Debitis cumque quidem impedit consequatur quam saepe eos.', 'Id repellendus minima atque consequuntur ut voluptatem quis. Voluptatum excepturi quos doloremque totam aliquid et. Esse magni voluptate et quis.', '2022-12-21 02:45:42', '2022-12-21 02:45:42', NULL),
(12, 6, 6, 'Maxime sequi eum laborum voluptas necessitatibus et nisi.', 'Nam maiores deserunt omnis voluptas accusamus dolor.', 'Fugit vel eligendi dolor aut quasi voluptatem.', 'Quaerat nulla veniam magnam. Animi deserunt voluptatem veritatis reiciendis ut totam. Ab rem autem assumenda et minima similique voluptate. Quidem quos provident aut dignissimos.', '2022-12-21 03:29:34', '2022-12-21 03:29:34', NULL),
(13, 7, 7, 'Beatae quisquam dolore repellat quia.', 'Doloribus expedita quia autem adipisci sint a ea magni.', 'Quos eveniet quas soluta.', 'Placeat similique et architecto distinctio. Optio optio pariatur nostrum minima saepe et. Eveniet et fugit assumenda ex voluptatem veniam.', '2022-12-21 03:29:34', '2022-12-21 03:29:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Noemi Renner', 'xtromp@example.com', '2022-12-21 02:45:36', '$2y$10$sdjuia.2EALP0QBihDZ5VOuJkiweBfvriO1LMV7OPGafnS9Te6cpu', 'QoFqoFnWS7', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(2, 'Dr. Joanny Hagenes DVM', 'gjacobs@example.net', '2022-12-21 02:45:36', '$2y$10$HPqU6yoGJgScHipb106DMOp2HkiNw4lKV4URKgE4ZkQYm3v0c/.vS', 'sCSSDrNHLN', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(3, 'Prof. Oswaldo Bednar', 'karelle46@example.net', '2022-12-21 02:45:36', '$2y$10$XPVrStERZPLwTFOTEivA7e0SL6xA5ThrmecwXusOjOZhjsrMuQiWa', 'naQdO6nPLC', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(4, 'Reagan Little', 'wfay@example.org', '2022-12-21 02:45:36', '$2y$10$L2F4ZXjLcQz3oWmDJ59v8..FlxWc2EgFai1KKfNnPOm6Q9I7C5nKG', 'K64flhY5yt', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(5, 'Domenic West', 'murazik.demetrius@example.net', '2022-12-21 02:45:36', '$2y$10$e9fLcG60lCE77RlVvcmfUefbjs1vb2Oc5fxn9W0JYGBsDnYoXMiLm', 'fhXTjqUieL', '2022-12-21 02:45:36', '2022-12-21 02:45:36'),
(6, 'Josie Simonis', 'jordon30@example.net', '2022-12-21 03:29:34', '$2y$10$S/r6Kn5gbamxD54u398qguA8Pfhanfm2G2kquJti9tESXl/OPVFkq', 'pMHXLlzFgF', '2022-12-21 03:29:34', '2022-12-21 03:29:34'),
(7, 'Verda Kautzer', 'hansen.peggie@example.com', '2022-12-21 03:29:34', '$2y$10$TTXABg45L373vWxWXVYJ7eZb2gQW8hJbM7hyvzAod695G4FINBl/2', '72MXYUDIru', '2022-12-21 03:29:34', '2022-12-21 03:29:34'),
(8, 'Nicholaus Quitzon', 'luettgen.retha@example.com', '2022-12-21 03:29:34', '$2y$10$Dgy7LQv1D9rkeJMe64ZoROCIAFCAaFl1vG2KhZxRppSjpTceJJ21S', 'MqpPGtIkVz', '2022-12-21 03:29:34', '2022-12-21 03:29:34'),
(9, 'Tess Purdy', 'zfadel@example.org', '2022-12-21 03:30:09', '$2y$10$62VlMkZpcWCqi/y.uqBPyua.PbBL9EQ1NhtYhgkVDwrc/YXaHyeSG', 'eJ9IzQFM5k', '2022-12-21 03:30:09', '2022-12-21 03:30:09'),
(10, 'Ms. Ana Luettgen DVM', 'astark@example.com', '2022-12-21 03:30:09', '$2y$10$lnrswBTXBwGK3nH0yELZyugzNiOJuK5pCZvZMnaqJclfytD1Shvx6', 'wGScjsH7nS', '2022-12-21 03:30:09', '2022-12-21 03:30:09'),
(11, 'Alvah Kilback I', 'nfunk@example.net', '2022-12-21 03:30:09', '$2y$10$4.5MA3T.JDMSI3R7iHiQHeLH4uo1jsaE2LAq5B4GV4pTnBDySXZ5m', 'eTNxVlA5at', '2022-12-21 03:30:09', '2022-12-21 03:30:09'),
(12, 'Abdurahman Aly', 'akhomaly@gmail.com', NULL, '$2y$10$Ph/zb93NnlCe8tek6h/dfO.qZn12F/OXLTaMoY96ZG.IN8IRoBag.', NULL, '2022-12-21 11:13:53', '2022-12-21 11:13:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
