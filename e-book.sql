-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2021 at 01:44 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-book`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auther` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `auther`, `bookfile`, `info`, `image`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'في قلبي انثي عبريه', 'خوله حمدي', '1635898976book.pdf', 'في قلب حارة اليهود في الجنوب التونسي تتشابك الأحداث حول المسلمة اليتيمة التي تربت بين أحضان عائلة يهودية، و بين ثنايا مدينة قانا العتيقة في الجنوب اللبناني تدخل بلبلة غير متوقعة في حياة ندى التي نشأت على اليهودية بعيدا عن والدها المسلم. تتتابع اللقاءات و الأحداث المثيرة حولهما لتخرج كلا منهما من حياة الرتابة و تسير بها إلى موعد مع القدر\\', '1635898976thumnnail.jfif', 1, 1, '2021-11-02 22:22:56', '2021-11-02 22:22:56'),
(2, 'ما لا نبوح به', 'سندرا سراج', '1635899070book.pdf', 'كم مرة إنفصلنا؟ لا أعرف، كل ما أعرفه أن البعد عنه يربكني، كنت أريد أن أعود، في كل مرة نبتعد كنتُ أعود دائماً، أرجع وأنا كُلي أمل أن يتغير، أن يصبح لي، أن يتخلى عن حماقاته ويراني على حقيقتي ولو لمرة واحدة، كنت أريده أن يكون مثالياً وأن يكون لي وحدي، كنتُ أريد كل شيء وحدي! ولم يكن هو يشعر بأي شيء .. تركني هنا في المنتصف تماماً، لا أنا أكملت الطريق وحدي', '1635899070thumnnail.jfif', 1, 1, '2021-11-02 22:24:30', '2021-11-02 22:24:30'),
(3, 'تابع الشيطان', 'جورج برنارد شو', '1635899197book.pdf', 'نت مع مسرحية جريئة لكاتب جريء لم يعرف المجتمع الإنكليزي مثيلاً له في الجرأة، فضلاً عن قدراته العظيمة في الكتابة الفنية للمسرح. في هذه المسرحية، تابع الشيطان، ستجد أيها القارئ أموراً واقعية معروضة بأسلوب ساخر، وربما لاذع إلى حد بعيد. إنها مسرحية مسلية، وفي الوقت نفسه عالية المستوى، تحتاج إلى قراءة متأنية لقد كتبها برنارد شو لكل فئات المجتمع', '1635899197thumnnail.jpg', 1, 3, '2021-11-02 22:26:37', '2021-11-02 22:26:37'),
(4, 'تحت المظله', 'نجيب محفوظ', '1635899263book.pdf', 'مجموعة من القصص القصيرة وعددها 6 و المسرحيات القصيرة وعددها5 واول قصة هى قصة \"تحت المظلة\" وإليها نسب الكتاب وهى قصة رمزية تتحدث عن فساد العالم وكيف يحاول الانسان دائما أن يبرر لنفسه فساد الكون بأنه غير حقيقي ليخلي نفسه من المسئولية عن عمل أي شئ لتصحيح أخطاء الكون.. و حتي عندما وجد أن الحياة فسدت بشكل لا يحتمل', '1635899263thumnnail.jpg', 1, 2, '2021-11-02 22:27:43', '2021-11-02 22:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'الروايات', '2021-11-02 22:20:34', '2021-11-02 22:20:34'),
(2, 'قصص قصيره', '2021-11-02 22:20:42', '2021-11-02 22:20:42'),
(3, 'مسرح مترجم', '2021-11-02 22:20:58', '2021-11-02 22:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `book_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'انا العتيقة في الجنوب اللبناني', '2021-11-02 22:25:12', '2021-11-02 22:25:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(57, '2014_10_12_100000_create_password_resets_table', 1),
(64, '2014_10_12_000000_create_users_table', 2),
(65, '2019_08_19_000000_create_failed_jobs_table', 2),
(66, '2021_10_30_212443_create_roles_table', 2),
(67, '2021_10_30_212917_create_roles_users_table', 2),
(68, '2021_10_30_213007_create_categories_table', 2),
(69, '2021_10_30_213040_create_books_table', 2),
(70, '2021_10_30_215107_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admins', NULL, NULL),
(2, 'users', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'howydamohamed', 'howydamuhamed@gmail.com', NULL, '$2y$10$BTyBdgpe8VNJ5t5XkjA9y.ryHjFIiQ4UPfulQj5vHi3jPAOV0x6gi', NULL, '2021-11-02 22:19:30', '2021-11-02 22:19:30'),
(2, 'omar', 'omar@gmail.com', NULL, '$2y$10$Cz9.hzS6m0ewEzti9cIwdu2/PbzhiLGkPGv0O2aY4AjDlTrEMBa7K', NULL, '2021-11-02 22:28:47', '2021-11-02 22:28:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
