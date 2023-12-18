-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 09:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakistanindustrialexpo`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `comment` tinyint(4) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => Published, 2 => Draft, 3 => Trash, 4 => Private, 5 => Pending',
  `visibility` enum('Pu','PP','Pr') NOT NULL COMMENT 'Pu => Public, PP => Password Protected, Pr => Private',
  `publish_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `slug`, `content`, `excerpt`, `comment`, `password`, `status`, `visibility`, `publish_on`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello world!', 'hello-world', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 0, '12345678', 1, 'Pu', '2022-08-31 00:00:00', '2022-08-30 23:31:56', '2023-02-27 03:47:38'),
(2, 1, 'Assumenda quidem ut', 'Veritatis rerum vel', '<p>Aperiam molestias do.</p>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-10 23:22:51', '2023-12-11 16:33:21'),
(3, 1, 'EVENT TECHNOLOGY AWARD FOR PEOPLE CHOICE', 'event-technology-award-for-people-choice', '<h5>Quaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo</h5>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-11 15:50:41', '2023-12-11 15:50:41'),
(4, 1, 'ICC WALES REPORTS RECORD BREAKING SUMMER', 'icc-wales-reports-record-breaking-summer', '<h5>Quaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leoQuaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo<br />\r\nQuaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo​​​​​​​</h5>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-11 15:51:48', '2023-12-11 15:51:48'),
(5, 1, 'Tree Hello world!', 'hello-world-6789-yuio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 0, '12345678', 1, 'Pu', '2022-08-31 00:00:00', '2022-08-30 23:31:56', '2023-02-27 03:47:38'),
(6, 1, 'Assumenda quidem ut', 'Veritatis rerum vel', '<p>Aperiam molestias do.</p>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-10 23:22:51', '2023-12-11 16:33:21'),
(7, 1, 'EVENT TECHNOLOGY AWARD FOR PEOPLE CHOICE', 'event-technology-award-for-people-choice-new-count', '<h5>Quaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo</h5>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-11 15:50:41', '2023-12-11 15:50:41'),
(8, 1, 'ICC WALES REPORTS RECORD BREAKING SUMMER', 'icc-wales-reports-record-breaking-summer-count-90o-as-ywe', '<h5>Quaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leoQuaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo<br />\r\nQuaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo​​​​​​​</h5>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-11 15:51:48', '2023-12-11 15:51:48'),
(9, 1, 'Hello world!', 'hello-world-social-icon-social-whatsapp-9', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 0, '12345678', 1, 'Pu', '2022-08-31 00:00:00', '2022-08-30 23:31:56', '2023-02-27 03:47:38'),
(10, 1, 'Assumenda quidem ut', '90-social-icon-social-whatsapp', '<p>Aperiam molestias do.</p>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-10 23:22:51', '2023-12-11 16:33:21'),
(11, 1, 'EVENT TECHNOLOGY AWARD FOR PEOPLE CHOICE', 'event-technology-award-for-people-choice-09-social-icon-social-whatsapp', '<h5>Quaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo</h5>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-11 15:50:41', '2023-12-11 15:50:41'),
(12, 1, 'ICC WALES REPORTS RECORD BREAKING SUMMER', 'icc-wales-reports-record-breaking-summer-9a-social-icon-social-whatsapp', '<h5>Quaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leoQuaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo<br />\r\nQuaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo​​​​​​​</h5>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-11 15:51:48', '2023-12-11 15:51:48'),
(13, 1, 'Tree Hello world!', 'hello-world-6789-yuio-98-12-social-icon-social-whatsapp', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 0, '12345678', 1, 'Pu', '2022-08-31 00:00:00', '2022-08-30 23:31:56', '2023-02-27 03:47:38'),
(14, 1, 'Assumenda quidem ut', 'Veritatis rerum vel-aslk-social-icon-social-whatsapp', '<p>Aperiam molestias do.</p>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-10 23:22:51', '2023-12-11 16:33:21'),
(15, 1, 'EVENT TECHNOLOGY AWARD FOR PEOPLE CHOICE', 'event-technology-award-for-people-choice-new-count0-tyui-social-icon-social-whatsapp', '<h5>Quaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo</h5>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-11 15:50:41', '2023-12-11 15:50:41'),
(16, 1, 'ICC WALES REPORTS RECORD BREAKING SUMMER', 'icc-wales-reports-record-breaking-summer-count-90o-as-ywe-7aso-associal-icon-social-whatsapp', '<h5>Quaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leoQuaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo<br />\r\nQuaerat, class turpis voluptates turpis nibh accumsan, tenetur faucibus? Ratione, sint leo​​​​​​​</h5>', NULL, 0, NULL, 1, 'Pu', '2023-12-11 00:00:00', '2023-12-11 15:51:48', '2023-12-11 15:51:48'),
(17, 1, 'What You Can Learn From Mistakes', 'what-you-can-learn-from-mistakes', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Fitness seems to be complicated for people Fitness', 1, '123456', 1, 'Pu', '2022-08-31 00:00:00', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(18, 1, 'Why Successful People Plan Their Days Before', 'why-successful-people-plan-their-days-before', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n<cite>William Son </cite></blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'For a personal brand like  showcasing the authority is very', 1, NULL, 1, 'Pu', '2022-10-31 00:00:00', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(19, 1, 'Everything You Need To Know About SEO', 'everything-you-need-to-know-about-seo', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n<cite>William Son </cite></blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'They started description with question that demands attention', 1, NULL, 1, 'Pu', '2022-10-31 00:00:00', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(20, 1, 'Why Everyone Loves Competition For today Business', 'everyone-loves-competition', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Why Everyone Loves Competition For today Business', 0, NULL, 1, 'Pu', '2022-12-19 00:00:00', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(21, 1, 'Photographic Tools That Made My Job Easier', 'two-photographic-tools-that-have-made-my-job-way-easier', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Photographic Tools That Made My Job Easier', 0, NULL, 1, 'Pu', '2022-11-19 00:00:00', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(22, 1, '9 Resume Mistakes That Might Cost You a Job', '9-resume-mistakes-that-might-cost-you-a-job', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n<cite>William Son </cite></blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', '9 Resume Mistakes That Might Cost You a Job', 0, NULL, 1, 'Pu', '2022-10-19 00:00:00', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(23, 1, 'The Best Ways to grow More in Less Time', 'the-best-ways-to-grow-more-in-less-time', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'The Best Ways to grow More in Less Time', 0, NULL, 1, 'Pu', '2022-09-19 00:00:00', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(24, 1, 'Let Me List Them Out For You', 'let-me-list-them-out-for-you', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Let Me List Them Out For You', 0, NULL, 1, 'Pu', '2022-09-19 00:00:00', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(25, 1, 'The Experience Has Taught Me Well', 'the-experience-has-taught-me-well', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n<cite>William Son </cite></blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'The Experience Has Taught Me Well', 0, NULL, 1, 'Pu', '2022-08-19 00:00:00', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(26, 1, 'Why Successful People Wear The Same Thing Every Day', 'why-successful-people-wear-the-same-thing-every-day', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Why Successful People Wear The Same Thing Every Day', 0, NULL, 1, 'Pu', '2022-12-21 00:00:00', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(27, 1, 'What No One Will Tell You But You Need To Hear About this', 'what-no-one-will-tell-you-but-you-need-to-hear-about-this', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.                   </p>\r\n\r\n<blockquote>                                        \r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n                                         William Son                                     </blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.                              </li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n                                </div>', 'What No One Will Tell You But You Need To Hear About this', 0, NULL, 1, 'Pu', '2022-12-21 00:00:00', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(28, 1, 'How To Create The Perfect Thank You Page: An Epic Guide', 'how-to-create-the-perfect-thank-you-page-an-epic-guide', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'What is a thank you page?', 0, NULL, 1, 'Pu', '2022-12-21 00:00:00', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(29, 1, 'Mistakes To Avoid While Writing A Blog Post', 'mistakes-to-avoid-while-writing-a-blog-post', '<div class=\"dz-post-text\">\r\n									<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n									<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n									<blockquote>\r\n										<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\n										<cite> William Son </cite>\r\n									</blockquote>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n									<ul class=\"m-b30\">\r\n										<li>A wonderful serenity has taken possession.</li>\r\n										<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n										<li>I enjoy with my whole heart.</li>\r\n										<li>This spot, which was created For the bliss of souls like mine.</li>\r\n									</ul>\r\n									<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n								</div>', 'Mistakes To Avoid While Writing A Blog Post', 0, NULL, 1, 'Pu', '2022-12-21 00:00:00', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(30, 1, 'The Best Ways to Do Market Research For Your Business Plan', 'the-best-ways-to-do-market-research-for-your-business-plan', '<div class=\"dz-post-text\">\r\n<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy</p>\r\n\r\n<p>For the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into.</p>\r\n\r\n<blockquote>\r\n<p>“ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm. ”.</p>\r\nWilliam Son </blockquote>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath.</p>\r\n\r\n<ul class=\"m-b30\">\r\n	<li>A wonderful serenity has taken possession.</li>\r\n	<li>Of my entire soul, like these sweet mornings of spring which.</li>\r\n	<li>I enjoy with my whole heart.</li>\r\n	<li>This spot, which was created For the bliss of souls like mine.</li>\r\n</ul>\r\n\r\n<p>The inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty.</p>\r\n</div>', 'The Best Ways to Do Market Research For Your Business Plan', 0, '123456', 1, 'Pu', '2022-12-19 00:00:00', '2023-12-12 20:54:38', '2023-12-12 20:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blog_categories`
--

CREATE TABLE `blog_blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_blog_categories`
--

INSERT INTO `blog_blog_categories` (`id`, `blog_id`, `blog_category_id`) VALUES
(1, 17, 1),
(2, 17, 2),
(3, 18, 3),
(4, 18, 1),
(5, 18, 4),
(6, 19, 3),
(7, 19, 5),
(8, 19, 1),
(9, 19, 4),
(10, 20, 3),
(11, 20, 1),
(12, 21, 3),
(13, 21, 5),
(14, 21, 1),
(15, 22, 5),
(16, 22, 1),
(17, 22, 4),
(18, 23, 2),
(19, 24, 3),
(20, 24, 1),
(21, 24, 2),
(22, 25, 3),
(23, 25, 5),
(24, 25, 4),
(25, 26, 3),
(26, 26, 5),
(27, 26, 1),
(28, 27, 2),
(29, 27, 4),
(30, 28, 3),
(31, 29, 2),
(32, 30, 5),
(33, 30, 4);

-- --------------------------------------------------------

--
-- Table structure for table `blog_blog_tags`
--

CREATE TABLE `blog_blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_blog_tags`
--

INSERT INTO `blog_blog_tags` (`id`, `blog_id`, `blog_tag_id`) VALUES
(1, 2, 1),
(2, 18, 2),
(3, 18, 3),
(4, 20, 4),
(5, 20, 5),
(6, 20, 6),
(7, 20, 3),
(8, 21, 4),
(9, 21, 6),
(10, 21, 3),
(11, 22, 4),
(12, 22, 6),
(13, 22, 7),
(14, 23, 4),
(15, 23, 5),
(16, 23, 3),
(17, 24, 5),
(18, 24, 7),
(19, 24, 3),
(20, 25, 4),
(21, 25, 6),
(22, 25, 3),
(23, 26, 4),
(24, 26, 7),
(25, 26, 3),
(26, 27, 2),
(27, 27, 6),
(28, 28, 5),
(29, 28, 2),
(30, 28, 3),
(31, 29, 2),
(32, 29, 3);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `order` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `parent_id`, `user_id`, `title`, `slug`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Nature', 'nature', NULL, NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(2, NULL, 1, 'Place', 'place', NULL, NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(3, NULL, 1, 'Beauty', 'beauty', 'asdasdd', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(4, 2, 1, 'Sports', 'sports', NULL, NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(5, NULL, 1, 'Lifestyle', 'lifestyle', NULL, NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `blog_metas`
--

CREATE TABLE `blog_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_metas`
--

INSERT INTO `blog_metas` (`id`, `blog_id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(5, 3, 'ximage', NULL, '2023-12-11 15:50:41', '2023-12-11 15:50:41'),
(6, 3, 'xvideo', NULL, '2023-12-11 15:50:41', '2023-12-11 15:50:41'),
(7, 4, 'ximage', NULL, '2023-12-11 15:51:48', '2023-12-11 15:51:48'),
(8, 4, 'xvideo', NULL, '2023-12-11 15:51:48', '2023-12-11 15:51:48'),
(9, 2, 'ximage', NULL, '2023-12-11 16:33:21', '2023-12-11 16:33:21'),
(10, 2, 'xvideo', 'Quis ut asperiores r', '2023-12-11 16:33:21', '2023-12-11 16:33:21'),
(11, 17, 'ximage', '1671452680_pic7.jpg', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(12, 17, 'xvideo', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(13, 18, 'ximage', '1671452696_pic8.jpg', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(14, 18, 'xvideo', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(15, 19, 'ximage', '1671452801_pic10.jpg', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(16, 19, 'xvideo', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(17, 20, 'ximage', '1671452926_pic9.jpg', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(18, 20, 'xvideo', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(19, 21, 'ximage', '1672119867_pic4.jpg', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(20, 21, 'xvideo', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(21, 22, 'ximage', '1672119652_pic5.jpg', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(22, 22, 'xvideo', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(23, 23, 'ximage', '1672119546_pic6.jpg', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(24, 23, 'xvideo', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(25, 24, 'ximage', '1672119466_pic9.jpg', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(26, 24, 'xvideo', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(27, 25, 'ximage', '1672119226_pic4.jpg', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(28, 25, 'xvideo', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(29, 26, 'ximage', '1671448293_pic3.jpg', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(30, 26, 'xvideo', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(31, 27, 'ximage', '1671449713_pic7.jpg', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(32, 27, 'xvideo', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(33, 28, 'ximage', '1671451668_pic1.jpg', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(34, 28, 'xvideo', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(35, 29, 'ximage', '1671452041_pic8.jpg', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(36, 29, 'xvideo', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(37, 30, 'ximage', '1675146497_1672119546_pic6.jpg', '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(38, 30, 'xvideo', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `blog_seos`
--

CREATE TABLE `blog_seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_descriptions` longtext DEFAULT NULL,
  `blog_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_seos`
--

INSERT INTO `blog_seos` (`id`, `blog_id`, `page_title`, `meta_keywords`, `meta_descriptions`, `blog_url`, `created_at`, `updated_at`) VALUES
(1, 2, 'Labore et laudantium quisquam mollitia in dicta praesentium aliquam magni eum sint magna culpa laboris necessitatibus', 'Qui omnis velit a laborum Et anim inventore', 'Quis eveniet qui et', NULL, '2023-12-10 23:22:51', '2023-12-10 23:22:51'),
(2, 3, NULL, NULL, NULL, NULL, '2023-12-11 15:50:41', '2023-12-11 15:50:41'),
(3, 4, NULL, NULL, NULL, NULL, '2023-12-11 15:51:48', '2023-12-11 15:51:48'),
(4, 17, 'test seo2', 'yurtyurtyu', 'rtyurtyu', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(5, 18, 'test seo', 'admin@localhost.com', 'sdfgdfg', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(6, 19, 'sdfsf', 'sdfsdf', 'sdfsdf', NULL, '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(7, 27, NULL, NULL, NULL, NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(8, 30, NULL, NULL, NULL, NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `user_id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ducimus recusandae', 'ducimus-recusandae', '2023-12-10 23:22:51', '2023-12-10 23:22:51'),
(2, 1, 'Application', 'application', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(3, 1, 'Education', 'education', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(4, 1, 'Businesses', 'businesses', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(5, 1, 'Employees', 'employees', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(6, 1, 'Company', 'company', '2023-12-12 20:54:37', '2023-12-12 20:54:37'),
(7, 1, 'Jobs', 'jobs', '2023-12-12 20:54:37', '2023-12-12 20:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `catalogues`
--

CREATE TABLE `catalogues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exhibition_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `comment` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => Published, 2 => Draft, 3 => Trash, 4 => Private, 5 => Pending',
  `visibility` enum('Pu','PP','Pr') NOT NULL COMMENT 'Pu => Public, PP => Password Protected, Pr => Private',
  `publish_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `value` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `editable` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`id`, `name`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`, `order`) VALUES
(1, 'Site.title', 'pakindustrialexpo Laravel', NULL, NULL, 'text', 1, 1, NULL, 0),
(2, 'Site.tagline', 'pakindustrialexpo Laravel System', NULL, NULL, 'textarea', 1, 2, NULL, 3),
(3, 'Site.email', 'admin@admin.com', NULL, NULL, 'text', 1, 3, NULL, 2),
(4, 'Site.status', '1', NULL, NULL, 'checkbox', 1, 4, NULL, 4),
(5, 'Site.copyright', 'Crafted with <span class=\"heart\"></span> by <a href=\"https://www.pakindustrialexpo.com/\\\" target=\\\"_blank\\\">pakindustrialexpo</a>', 'Copyright Text', NULL, 'text', 1, 5, NULL, 5),
(6, 'Site.footer_text', 'Developed by <a href=\"https://www.pakindustrialexpo.com/\\\" target=\\\"_blank\\\">pakindustrialexpo</a>', 'Footer text', NULL, 'textarea', 1, 6, NULL, 6),
(7, 'Site.coming_soon', '0', NULL, NULL, 'checkbox', 1, 7, NULL, 7),
(8, 'Site.contact', '1234567890', NULL, NULL, 'text', 1, 8, NULL, 8),
(9, 'Site.logo', 'ZkblPHttyrO5D2fUWYqV8f6BmohKKtRsESUmzKvy.png', 'Logo', 'Site Logo', 'file', 1, 9, NULL, 9),
(10, 'Site.favicon', 'dZtbrzamkKq00HXANWN3KBFmOUrJjIcXUTxAL7Av.png', 'Site Favicon', 'Site Favicon', 'file', 1, 10, NULL, 10),
(11, 'Site.maintenance_message', 'PLEASE SORRY FOR THE <span class=\"text-primary\">DISTURBANCES</span>', 'Maintenance Message', 'Site down for maintenance Message will show on maintenance page', 'textarea', 1, 11, NULL, 13),
(12, 'Site.comingsoon_message', 'We Are Coming Soon !', 'Coming Soon Message', 'Coming soon message will show on coming soon page', 'textarea', 1, 12, NULL, 11),
(13, 'Site.text_logo', '83mhxHyan6LtDFzFgfAicPquP3FfcZBRcfjlbpec.png', 'Text Logo', NULL, 'file', 1, 13, NULL, 12),
(14, 'Writing.editable', '1', 'Enable WYSIWYG editor', NULL, 'checkbox', 1, 14, NULL, 14),
(15, 'Reading.nodes_per_page', '10', NULL, NULL, 'text', 1, 15, NULL, 15),
(16, 'Reading.date_time_format', 'M. d, Y, g:i A', NULL, 'Formates :- <br>\r\nF j, Y, g:i a (November 23, 2022, 5:45 am), <br>\r\nY-m-d , H:i (2022-11-23, 05:45), <br>\r\nm/d/Y (11/23/2022), <br>\r\nd/m/Y(23/11/2022)', 'text', 1, 16, NULL, 16),
(17, 'Social.instagram', 'https://www.instagram.com/', 'Instagram Url', NULL, 'text', 1, 17, NULL, 17),
(18, 'Social.linkedin', 'https://www.in.linkedin.com/', 'Whatsapp Url', NULL, 'text', 1, 17, NULL, 17),
(19, 'Social.facebook', 'http://www.facebook.com', 'Facebook Url', NULL, 'text', 1, 18, NULL, 18),
(20, 'Social.twitter', 'http://www.twitter.com', 'Twitter Url', NULL, 'text', 1, 19, NULL, 19),
(21, 'Site.menu_location', 'a:5:{s:7:\"primary\";a:2:{s:5:\"title\";s:23:\"Desktop Horizontal Menu\";s:4:\"menu\";s:1:\"1\";}s:8:\"expanded\";a:2:{s:5:\"title\";s:21:\"Desktop Expanded Menu\";s:4:\"menu\";s:1:\"3\";}s:6:\"mobile\";a:2:{s:5:\"title\";s:11:\"Mobile Menu\";s:4:\"menu\";N;}s:6:\"footer\";a:2:{s:5:\"title\";s:11:\"Footer Menu\";s:4:\"menu\";s:1:\"1\";}s:6:\"social\";a:2:{s:5:\"title\";s:11:\"Social Menu\";s:4:\"menu\";s:0:\"\";}}', NULL, NULL, 'text', 0, 20, NULL, 20),
(22, 'Permalink.settings', '/%slug%/', '', NULL, 'text', 1, 21, NULL, 21),
(23, 'Reading.show_on_front', 'Page', NULL, '(Home Page)', 'radio', 1, 22, 'Post,Page', 22),
(24, 'Widget.show_sidebar', '1', NULL, NULL, 'checkbox', 1, NULL, '1', 0),
(25, 'Widget.show_recent_post_widget', '1', NULL, NULL, 'checkbox', 1, NULL, '1', 0),
(26, 'Widget.show_category_widget', '1', NULL, '', 'checkbox', 1, NULL, '1', 0),
(27, 'Widget.show_archives_widget', '1', NULL, '', 'checkbox', 1, NULL, '1', 0),
(28, 'Widget.show_search_widget', '1', NULL, NULL, 'checkbox', 1, NULL, '1', 0),
(29, 'Widget.show_tags_widget', '1', NULL, '', 'checkbox', 1, NULL, '1', 0),
(30, 'Site.comingsoon_date', '2023-02-27', NULL, '', 'date', 1, NULL, '', 0),
(31, 'Site.biography', 'A Wonderful Serenity Has Taken Possession Of My Entire Soul, Like These.', NULL, '', 'text', 1, NULL, '', 0),
(32, 'Site.location', '832  Thompson Drive, San Fransisco CA 94107, United States', NULL, '', 'text', 1, NULL, '', 0),
(33, 'Site.office_time', 'Time 09:00 AM To 07:00 PM', NULL, 'Ex. : \"Time 06:00 AM To 08:00 PM\'', 'text', 1, NULL, '', 0),
(34, 'Site.icon_logo', 'Og2EHp17wcUStTfuPfRrAkrasv1FxP0Ngt7eG3wi.png', NULL, '', 'file', 1, NULL, '', 0),
(35, 'Theme.home_slider', 'hVb2rBZWmSvbwac23xvFwB6VV3LjjsctQA5kWzZu.jpg,o5EKtmWHB6jkANLnFpnoqRHUy7RWH7xBsmMulGAp.jpg,h3sl5YReWHNyyeDaIf4a7mH3pamyCkmrVUuI59Ar.jpg', 'Home Banner Slider', 'Select Images for home banner slider', 'multiple_file', 1, NULL, NULL, 0),
(36, 'Theme.select_theme', 'w3cms/everestinternationalexpo', NULL, NULL, NULL, 0, NULL, NULL, 0),
(43, 'Site.eventtime', '2023-12-29T23:58:58', 'Time Counter', '', 'datetime-local', 1, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exhibitions`
--

CREATE TABLE `exhibitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `comment` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => Published, 2 => Draft, 3 => Trash, 4 => Private, 5 => Pending',
  `visibility` enum('Pu','PP','Pr') NOT NULL COMMENT 'Pu => Public, PP => Password Protected, Pr => Private',
  `publish_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Configuration', 9, '7a3d2c8b-0835-4063-a17a-761be14ddfaf', 'images', 'ZkblPHttyrO5D2fUWYqV8f6BmohKKtRsESUmzKvy', 'ZkblPHttyrO5D2fUWYqV8f6BmohKKtRsESUmzKvy.png', 'image/png', 'public', 'public', 23808, '[]', '[]', '[]', '[]', 1, '2023-12-12 10:00:05', '2023-12-12 10:00:05'),
(2, 'App\\Models\\Configuration', 10, '2cd09746-c2e4-4c40-9df7-a707cd8efbff', 'images', 'dZtbrzamkKq00HXANWN3KBFmOUrJjIcXUTxAL7Av', 'dZtbrzamkKq00HXANWN3KBFmOUrJjIcXUTxAL7Av.png', 'image/png', 'public', 'public', 23808, '[]', '[]', '[]', '[]', 1, '2023-12-12 10:10:32', '2023-12-12 10:10:32'),
(3, 'App\\Models\\Configuration', 13, 'f99d9cd7-ac4e-46ea-8be1-8a9757a21244', 'images', '83mhxHyan6LtDFzFgfAicPquP3FfcZBRcfjlbpec', '83mhxHyan6LtDFzFgfAicPquP3FfcZBRcfjlbpec.png', 'image/png', 'public', 'public', 23808, '[]', '[]', '[]', '[]', 1, '2023-12-12 10:10:32', '2023-12-12 10:10:32'),
(4, 'App\\Models\\Configuration', 34, '66de572f-c212-4876-843c-4b891d4af0b4', 'images', 'Og2EHp17wcUStTfuPfRrAkrasv1FxP0Ngt7eG3wi', 'Og2EHp17wcUStTfuPfRrAkrasv1FxP0Ngt7eG3wi.png', 'image/png', 'public', 'public', 23808, '[]', '[]', '[]', '[]', 1, '2023-12-12 10:10:32', '2023-12-12 10:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` enum('Admin','User') DEFAULT NULL COMMENT 'A => Admin, U => User',
  `order` bigint(20) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `slug`, `type`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Primary Menu', 'primary-menu', NULL, 1, '2022-12-26 08:10:57', '2023-12-12 20:55:08'),
(2, 1, 'Footer Menu', 'footer-menu', NULL, 2, '2022-11-03 05:55:38', '2023-02-11 04:09:53'),
(3, 1, 'Expanded Menu', 'secodary-menu', NULL, 3, '2022-11-03 05:57:00', '2023-02-11 04:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT 0,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) DEFAULT 0,
  `type` enum('Page','Link','Category','Post','Tag') NOT NULL COMMENT 'Page, Link, Category, Post, Tag',
  `title` varchar(255) NOT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `menu_target` tinyint(4) DEFAULT 0,
  `css_classes` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `order` bigint(20) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `parent_id`, `menu_id`, `item_id`, `type`, `title`, `attribute`, `link`, `menu_target`, `css_classes`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 'Page', 'Home', 'Home', NULL, 0, NULL, NULL, 0, '2023-02-11 04:05:15', '2023-12-12 20:55:08'),
(2, 0, 3, 1, 'Page', 'Home', 'Home', '', 0, '', '', 0, '2023-02-11 04:30:35', '2023-02-11 04:57:53'),
(3, 0, 2, 1, 'Page', 'Home', 'Home', NULL, 0, NULL, NULL, 147, '2023-02-11 04:30:53', '2023-02-11 04:30:53'),
(4, 0, 1, 2, 'Page', 'About Everest', 'About Everest', NULL, 0, NULL, NULL, 1, '2023-11-25 04:13:17', '2023-12-12 20:55:08'),
(5, 0, 1, 3, 'Page', 'News Center', 'News Center', NULL, 0, NULL, NULL, 3, '2023-11-25 04:13:17', '2023-12-12 20:55:08'),
(6, 0, 1, 4, 'Page', 'Exhibitors', 'Exhibitors', NULL, 0, NULL, NULL, 4, '2023-11-25 04:13:17', '2023-12-12 20:55:08'),
(7, 0, 1, 5, 'Page', 'Contact Us', 'Contact Us', NULL, 0, NULL, NULL, 5, '2023-11-25 04:13:17', '2023-12-12 20:55:08'),
(8, 4, 1, 6, 'Page', 'Testung', 'Testung', NULL, 0, NULL, NULL, 2, '2023-11-25 13:15:13', '2023-12-12 20:55:08');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_06_22_115736_create_configurations_table', 1),
(7, '2021_10_21_093713_create_temp_permissions_tables', 1),
(8, '2021_10_21_093714_create_permission_tables', 1),
(9, '2021_10_23_113846_create_sessions_table', 1),
(10, '2021_11_01_070431_create_pages_table', 1),
(11, '2021_11_01_070450_create_page_metas_table', 1),
(12, '2021_11_01_070459_create_page_seos_table', 1),
(13, '2021_11_12_103141_create_blogs_table', 1),
(14, '2021_11_12_103153_create_blog_tags_table', 1),
(15, '2021_11_12_103159_create_blog_metas_table', 1),
(16, '2021_11_12_103208_create_blog_categories_table', 1),
(17, '2021_11_12_103209_create_blog_blog_categories_table', 1),
(18, '2021_11_12_103216_create_blog_blog_tags_table', 1),
(19, '2021_11_12_103305_create_blog_seos_table', 1),
(20, '2022_01_21_064821_create_menus_table', 1),
(21, '2022_01_21_064832_create_menu_items_table', 1),
(22, '2022_12_17_114134_create_contacts_table', 1),
(23, '2023_12_12_142324_create_media_table', 2),
(25, '2023_12_12_174057_create_exhibitions_table', 3),
(27, '2023_12_12_180243_create_catalogues_table', 4),
(28, '2023_12_12_180608_create_products_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `deny` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `page_type` enum('Page','Widget') DEFAULT NULL,
  `content` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `comment` tinyint(4) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => Published, 2 => Draft, 3 => Trash, 4 => Private, 5 => Pending',
  `visibility` enum('Pu','PP','Pr') NOT NULL COMMENT 'Pu => Public, PP => Password Protected, Pr => Private',
  `publish_on` datetime DEFAULT NULL,
  `order` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `user_id`, `title`, `slug`, `page_type`, `content`, `excerpt`, `comment`, `password`, `status`, `visibility`, `publish_on`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Home', 'home', NULL, '<p>Its dumy</p>', 'Excerpt2', 1, '123456', 1, 'Pu', '2022-10-31 00:00:00', NULL, '2022-10-31 07:00:14', '2023-11-25 04:01:20'),
(2, NULL, 1, 'About Everest', 'about-everest', NULL, '<p><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">About Everest</span></span></strong></p>', NULL, 0, 'admin1122', 1, 'Pu', '2023-11-25 00:00:00', NULL, '2023-11-25 04:11:32', '2023-11-25 04:11:32'),
(3, NULL, 1, 'News Center', 'news-center', NULL, '<p><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">News Center</span></span></strong></p>', NULL, 0, 'admin1122', 1, 'Pu', '2023-11-25 00:00:00', NULL, '2023-11-25 04:11:53', '2023-11-25 04:11:53'),
(4, NULL, 1, 'Exhibitors', 'exhibitors', NULL, '<p><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Exhibitors</span></span></strong></p>', NULL, 0, 'admin1122', 1, 'Pu', '2023-11-25 00:00:00', NULL, '2023-11-25 04:12:07', '2023-11-25 04:12:07'),
(5, NULL, 1, 'Contact Us', 'contact-us', NULL, '<p><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Contact Us</span></span></strong></p>', NULL, 0, 'admin1122', 1, 'Pu', '2023-11-25 00:00:00', NULL, '2023-11-25 04:12:25', '2023-11-25 04:12:25'),
(6, NULL, 1, 'Testung', 'testung', NULL, '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, 0, 'admin1122', 1, 'Pu', '2023-11-25 00:00:00', NULL, '2023-11-25 13:14:37', '2023-12-10 13:55:57'),
(7, NULL, 1, 'New Title Add Page', 'new-title-add-page', NULL, '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'helpin', 0, 'admin1122', 1, 'Pu', '2023-12-10 00:00:00', NULL, '2023-12-10 14:27:16', '2023-12-10 14:27:16'),
(8, 0, 1, 'About Us', 'about-us', NULL, '<section class=\"content-inner about-sec bg-primary-light\">\r\n<div class=\"container\">\r\n<div class=\"about-bx2 align-items-center row style-1\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"dz-media\">\r\n<div class=\"align-items-end row\">\r\n<div class=\"col-6 fadeInUp wow\">\r\n<div class=\"image-box image-box-1\"><img alt=\"\" src=\"public/front/images/about/about-4.jpg\"></div>\r\n</div>\r\n\r\n<div class=\"col-6 fadeInUp wow\">\r\n<div class=\"image-box image-box-2\"><img alt=\"\" src=\"public/front/images/about/about-2.jpg\"></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-6 fadeInUp wow\">\r\n<div class=\"image-box image-box-3\"><img alt=\"\" src=\"public/front/images/about/about-3.jpg\"></div>\r\n</div>\r\n\r\n<div class=\"col-6 fadeInUp wow\">\r\n<div class=\"image-box image-box-4\"><img alt=\"\" src=\"public/front/images/about/about-1.jpg\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"about-content col-lg-6 fadeInUp m-b30 ps-lg-5 wow\">\r\n<div class=\"section-head\">\r\n<h2 class=\"title\">The World’s 1st ICO Platform That Offers Rewards</h2>\r\n\r\n<p class=\"lh-base m-0\">We are an independent gym that is committed to working with you to gain the results you want. Whether your aim is to loose weight</p>\r\n</div>\r\n<a class=\"btn btn-lg btn-primary btn-shadow text-uppercase\">Contact Us</a></div>\r\n</div>\r\n</div>\r\n<img alt=\"\" class=\"bg-shape1\" src=\"public/front/images/home-banner/shape1.png\"> <img alt=\"\" class=\"bg-shape2\" src=\"public/front/images/home-banner/shape3.png\"> <img alt=\"\" class=\"bg-shape3\" src=\"public/front/images/home-banner/shape3.png\"> <img alt=\"\" class=\"bg-shape4\" src=\"public/front/images/home-banner/shape3.png\"></section>\r\n\r\n<section class=\"content-inner p-0 bg-primary-light video-bx-wrapper\"><img alt=\"\" class=\"bg-shape1\" src=\"public/front/images/home-banner/shape1.png\">\r\n<div class=\"container fadeInUp wow\">\r\n<div class=\"style-1 video-bx\">\r\n<div class=\"video-media\"><img alt=\"\" src=\"public/front/images/about/videobx.png\"> <a class=\"popup-youtube play-icon\" href=\"https://www.youtube.com/watch?v=cfmQFW1DpA0\"> <i class=\"fa fa-play fs-4\"> </i> </a></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"content-inner bg-light pricing-plan-wrapper2\"><img alt=\"\" class=\"bg-shape2\" src=\"public/front/images/home-banner/shape1.png\">\r\n<div class=\"container\">\r\n<div class=\"section-head text-center\">\r\n<h2 class=\"title\">Awesome Pricing Plan for<br>\r\nCryptocurrency Business</h2>\r\n</div>\r\n\r\n<div class=\"justify-content-center row\">\r\n<div class=\"col-lg-6 col-md-6 col-xl-4 fadeInUp m-b30 wow\">\r\n<div class=\"box-hover pricingtable-wrapper style-1\">\r\n<div class=\"pricingtable-inner\">\r\n<h4 class=\"pricingtable-title\">Lite</h4>\r\n\r\n<p>Perfect to get started</p>\r\n\r\n<div class=\"pricingtable-price\">\r\n<h2 class=\"pricingtable-bx text-primary\"><span>$</span>11<small>/ Per Month</small></h2>\r\n\r\n<div class=\"bg-primary days-label\">Try 7 Days for free</div>\r\n\r\n<h6>Life-includes:</h6>\r\n</div>\r\n\r\n<ul class=\"pricingtable-features\">\r\n	<li><span>Review Your Question</span></li>\r\n	<li><span>Analysis of Your \"I Have\"</span></li>\r\n	<li><span>Work with Resources</span></li>\r\n	<li><span>Analysis of Your \"I Have\"</span></li>\r\n	<li><span>Support &amp; Mentoring</span></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"pricingtable-footer\"><a class=\"btn\">See all features</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-md-6 col-xl-4 fadeInUp m-b30 wow\">\r\n<div class=\"box-hover pricingtable-wrapper style-1\">\r\n<div class=\"pricingtable-inner\">\r\n<div class=\"tagline\">POPULER</div>\r\n\r\n<h4 class=\"pricingtable-title\">Pro</h4>\r\n\r\n<p>Perfect to get started</p>\r\n\r\n<div class=\"pricingtable-price\">\r\n<h2 class=\"pricingtable-bx text-primary\"><span>$</span>21<small>/ Per Month</small></h2>\r\n\r\n<div class=\"bg-primary days-label\">Try 7 Days for free</div>\r\n\r\n<h6>Everythings in Lite, Plus</h6>\r\n</div>\r\n\r\n<ul class=\"pricingtable-features\">\r\n	<li><span>Review Your Question</span></li>\r\n	<li><span>Analysis of Your \"I Have\"</span></li>\r\n	<li><span>Work with Resources</span></li>\r\n	<li><span>Analysis of Your \"I Have\"</span></li>\r\n	<li><span>Support &amp; Mentoring</span></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"pricingtable-footer\"><a class=\"btn\"><span>See all features</span></a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-md-6 col-xl-4 fadeInUp m-b30 wow\">\r\n<div class=\"active box-hover pricingtable-wrapper style-1\">\r\n<div class=\"pricingtable-inner\">\r\n<h4 class=\"pricingtable-title\">Ultimate</h4>\r\n\r\n<p>Perfect to get started</p>\r\n\r\n<div class=\"pricingtable-price\">\r\n<h2 class=\"pricingtable-bx text-primary\"><span>$</span>32<small>/ Per Month</small></h2>\r\n\r\n<div class=\"bg-primary days-label\">Try 7 Days for free</div>\r\n\r\n<h6>Everythings in Lite</h6>\r\n</div>\r\n\r\n<ul class=\"pricingtable-features\">\r\n	<li><span>Review Your Question</span></li>\r\n	<li><span>Work with Resources</span></li>\r\n	<li><span>Analysis of Your \"I Have\"</span></li>\r\n	<li><span>Support &amp; Mentoring</span></li>\r\n	<li><span>Analysis of Your \"I Have\"</span></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"pricingtable-footer\"><a class=\"btn\"><span>See all features</span></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"content-inner bg-white blog-wrapper\"><img alt=\"\" class=\"bg-shape1\" src=\"public/front/images/home-banner/shape1.png\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 col-xl-7\">\r\n<div class=\"fadeInUp section-head wow\">\r\n<h6 class=\"sub-title text-primary\">FROM OUR BLOG</h6>\r\n\r\n<h2 class=\"title\">Recent News &amp; Updates</h2>\r\n</div>\r\n\r\n<div class=\"blog-half dz-card fadeInUp m-b30 style-1 wow\">\r\n<div class=\"dz-media\"><a><img alt=\"\" src=\"public/front/images/blog/pic1.jpg\"></a>\r\n\r\n<ul class=\"dz-badge-list\">\r\n	<li><a class=\"dz-badge\">14 Feb 2022</a></li>\r\n</ul>\r\n<a class=\"btn btn-secondary\">Read More</a></div>\r\n\r\n<div class=\"dz-info\">\r\n<div class=\"dz-meta\">\r\n<ul>\r\n	<li class=\"post-author\"><a><img alt=\"\" src=\"public/front/images/avatar/avatar1.jpg\"> <span>By Noare</span> </a></li>\r\n	<li class=\"post-date\"><a>12 May 2022</a></li>\r\n</ul>\r\n</div>\r\n\r\n<h4 class=\"dz-title\"><a>Five Things To Avoid In Cryptocurrency.</a></h4>\r\n\r\n<p class=\"m-b0\">Nostrud tem exrcitation duis laboris nisi ut aliquip sed duis aute.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"blog-half dz-card fadeInUp m-b30 style-1 wow\">\r\n<div class=\"dz-media\"><a><img alt=\"\" src=\"public/front/images/blog/pic2.jpg\"></a>\r\n\r\n<ul class=\"dz-badge-list\">\r\n	<li><a class=\"dz-badge\">14 Feb 2022</a></li>\r\n</ul>\r\n<a class=\"btn btn-secondary\">Read More</a></div>\r\n\r\n<div class=\"dz-info\">\r\n<div class=\"dz-meta\">\r\n<ul>\r\n	<li class=\"post-author\"><a><img alt=\"\" src=\"public/front/images/avatar/avatar2.jpg\"> <span>By Noare</span> </a></li>\r\n	<li class=\"post-date\"><a>12 May 2022</a></li>\r\n</ul>\r\n</div>\r\n\r\n<h4 class=\"dz-title\"><a>Things That Make You Love Cryptocurrency.</a></h4>\r\n\r\n<p class=\"m-b0\">Nostrud tem exrcitation duis laboris nisi ut aliquip sed duis aute.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-12 col-xl-5 fadeInUp m-b30 wow\">\r\n<div class=\"dz-card style-2\">\r\n<div class=\"dz-category\">\r\n<ul class=\"dz-badge-list\">\r\n	<li><a class=\"dz-badge\">14 Feb 2022</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"dz-info\">\r\n<h2 class=\"dz-title\"><a class=\"text-white\">Directly support individuals Crypto</a></h2>\r\n\r\n<div class=\"dz-meta\">\r\n<ul>\r\n	<li class=\"post-author\"><a><img alt=\"\" src=\"public/front/images/avatar/avatar3.jpg\"> <span>By Noare</span> </a></li>\r\n	<li class=\"post-date\"><a>12 May 2022</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'Excerpt-about', 1, '123456', 1, 'Pu', '2022-10-31 00:00:00', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(9, 8, 1, 'Why us', 'why-us', NULL, '<p>Hello</p>', 'Hello', 0, NULL, 1, 'Pu', '2023-02-23 00:00:00', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(10, 0, 1, 'Support', 'support', NULL, '<h2>The singing Canadian</h2>\r\n\r\n<figure><img alt=\"\" src=\"https://picsum.photos/200/300\"></figure>\r\n\r\n<p><strong>Chris Austin Hadfield</strong> was born on August 29, 1959, in Canada. As a child, he watched the Apollo 11 moon landing and it inspired him to also become an astronaut. At the time Canada had no space program, so Hadfield joined the <a href=\"https://www.rcaf-arc.forces.gc.ca/en/\"><strong>Royal Canadian Air Forces</strong></a> and served as a fighter pilot for 25 years.</p>\r\n\r\n<p>In 1992, Hadfield was accepted into the Canadian astronaut program by the <a href=\"https://www.asc-csa.gc.ca/eng/\"><strong>Canadian Space Agency</strong></a>. He flew his first mission to the Russian Mir space station in 1995 aboard the Atlantis space shuttle. Six years later onboard the Endeavour space shuttle he flew to the International Space Station. He revisited the ISS in 2012 flying a Russian Soyuz spacecraft and taking command over the station during Expedition 34/35.</p>\r\n\r\n<p>Hadfield was most recognised by the general public for his rendition of the famous Space Oddity song by David Bowie which he recorded onboard the International Space Station. He also recorded numerous educational materials for schools while working in orbit. After his retirement from the astronaut service, he wrote three books based on his experience.</p>', NULL, 0, '123456', 1, 'Pu', '2022-11-17 00:00:00', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `page_metas`
--

CREATE TABLE `page_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_metas`
--

INSERT INTO `page_metas` (`id`, `page_id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'ximage', NULL, '2023-11-25 04:01:20', '2023-11-25 04:01:20'),
(2, 2, 'ximage', NULL, '2023-11-25 04:11:32', '2023-11-25 04:11:32'),
(3, 3, 'ximage', NULL, '2023-11-25 04:11:53', '2023-11-25 04:11:53'),
(4, 4, 'ximage', NULL, '2023-11-25 04:12:07', '2023-11-25 04:12:07'),
(5, 5, 'ximage', NULL, '2023-11-25 04:12:25', '2023-11-25 04:12:25'),
(7, 6, 'ximage', NULL, '2023-12-10 13:55:57', '2023-12-10 13:55:57'),
(8, 7, 'ximage', NULL, '2023-12-10 14:27:16', '2023-12-10 14:27:16'),
(9, 9, 'ximage', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(10, 8, 'ximage', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(11, 10, 'ximage', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `page_seos`
--

CREATE TABLE `page_seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_descriptions` text DEFAULT NULL,
  `content_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_seos`
--

INSERT INTO `page_seos` (`id`, `page_id`, `page_title`, `meta_keywords`, `meta_descriptions`, `content_url`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'admin@pakindustrialexpo.com', NULL, NULL, '2023-11-25 04:11:32', '2023-11-25 04:11:32'),
(2, 3, NULL, 'admin@pakindustrialexpo.com', NULL, NULL, '2023-11-25 04:11:53', '2023-11-25 04:11:53'),
(3, 4, NULL, 'admin@pakindustrialexpo.com', NULL, NULL, '2023-11-25 04:12:07', '2023-11-25 04:12:07'),
(4, 5, NULL, 'admin@pakindustrialexpo.com', NULL, NULL, '2023-11-25 04:12:25', '2023-11-25 04:12:25'),
(5, 6, NULL, 'admin@pakindustrialexpo.com', NULL, NULL, '2023-11-25 13:14:37', '2023-12-10 13:55:57'),
(6, 7, NULL, 'admin@pakindustrialexpo.com', NULL, NULL, '2023-12-10 14:27:16', '2023-12-10 14:27:16'),
(7, 9, NULL, NULL, NULL, NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38'),
(8, 8, 'about seo2', 'ssdf', 'drfg', NULL, '2023-12-12 20:54:38', '2023-12-12 20:54:38');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temp_permission_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `action` text NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `type` enum('pre-define','user-define') NOT NULL DEFAULT 'user-define',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `temp_permission_id`, `name`, `action`, `guard_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 4, 'Controllers > PermissionsController > index', 'Controllers/PermissionsController@index', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(2, 5, 'Controllers > PermissionsController > roles_permissions', 'Controllers/PermissionsController@roles_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(3, 6, 'Controllers > PermissionsController > role_permissions', 'Controllers/PermissionsController@role_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(4, 7, 'Controllers > PermissionsController > user_permissions', 'Controllers/PermissionsController@user_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(5, 8, 'Controllers > PermissionsController > manage_user_permissions', 'Controllers/PermissionsController@manage_user_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(6, 9, 'Controllers > PermissionsController > sync', 'Controllers/PermissionsController@sync', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(7, 10, 'Controllers > PermissionsController > manage_role_all_permissions', 'Controllers/PermissionsController@manage_role_all_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(8, 11, 'Controllers > PermissionsController > manage_role_permission', 'Controllers/PermissionsController@manage_role_permission', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(9, 12, 'Controllers > PermissionsController > manage_user_permission', 'Controllers/PermissionsController@manage_user_permission', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(10, 13, 'Controllers > PermissionsController > delete_user_permission', 'Controllers/PermissionsController@delete_user_permission', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(11, 14, 'Controllers > PermissionsController > remove_user_all_permission', 'Controllers/PermissionsController@remove_user_all_permission', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(12, 15, 'Controllers > PermissionsController > temp_permissions', 'Controllers/PermissionsController@temp_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(13, 16, 'Controllers > PermissionsController > generate_permissions', 'Controllers/PermissionsController@generate_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(14, 17, 'Controllers > PermissionsController > add_to_permissions', 'Controllers/PermissionsController@add_to_permissions', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(15, 18, 'Controllers > PermissionsController > permission_by_action', 'Controllers/PermissionsController@permission_by_action', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(16, 19, 'Controllers > PermissionsController > get_users_by_role', 'Controllers/PermissionsController@get_users_by_role', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(17, 20, 'Controllers > PermissionsController > get_permission_by_user', 'Controllers/PermissionsController@get_permission_by_user', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(18, 22, 'Controllers > UsersController > dashboard', 'Controllers/UsersController@dashboard', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(19, 23, 'Controllers > UsersController > index', 'Controllers/UsersController@index', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(20, 24, 'Controllers > UsersController > create', 'Controllers/UsersController@create', 'web', 'user-define', '2022-12-13 07:20:56', '2022-12-13 07:20:56'),
(21, 25, 'Controllers > UsersController > store', 'Controllers/UsersController@store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(22, 26, 'Controllers > UsersController > edit', 'Controllers/UsersController@edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(23, 27, 'Controllers > UsersController > update', 'Controllers/UsersController@update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(24, 28, 'Controllers > UsersController > destroy', 'Controllers/UsersController@destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(25, 29, 'Controllers > UsersController > update_password', 'Controllers/UsersController@update_password', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(26, 30, 'Controllers > UsersController > update_user_roles', 'Controllers/UsersController@update_user_roles', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(27, 31, 'Controllers > UsersController > profile', 'Controllers/UsersController@profile', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(28, 33, 'Controllers > RolesController > index', 'Controllers/RolesController@index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(29, 34, 'Controllers > RolesController > create', 'Controllers/RolesController@create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(30, 35, 'Controllers > RolesController > store', 'Controllers/RolesController@store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(31, 36, 'Controllers > RolesController > edit', 'Controllers/RolesController@edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(32, 37, 'Controllers > RolesController > update', 'Controllers/RolesController@update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(33, 38, 'Controllers > RolesController > destroy', 'Controllers/RolesController@destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(34, 40, 'Controllers > BlogsController > admin_index', 'Controllers/BlogsController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(35, 41, 'Controllers > BlogsController > admin_create', 'Controllers/BlogsController@admin_create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(36, 42, 'Controllers > BlogsController > admin_store', 'Controllers/BlogsController@admin_store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(37, 43, 'Controllers > BlogsController > admin_edit', 'Controllers/BlogsController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(38, 44, 'Controllers > BlogsController > admin_update', 'Controllers/BlogsController@admin_update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(39, 45, 'Controllers > BlogsController > admin_destroy', 'Controllers/BlogsController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(40, 46, 'Controllers > BlogsController > admin_trash_status', 'Controllers/BlogsController@admin_trash_status', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(41, 47, 'Controllers > BlogsController > remove_feature_image', 'Controllers/BlogsController@remove_feature_image', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(42, 49, 'Controllers > BlogCategoriesController > list', 'Controllers/BlogCategoriesController@list', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(43, 50, 'Controllers > BlogCategoriesController > admin_index', 'Controllers/BlogCategoriesController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(44, 51, 'Controllers > BlogCategoriesController > admin_create', 'Controllers/BlogCategoriesController@admin_create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(45, 52, 'Controllers > BlogCategoriesController > admin_store', 'Controllers/BlogCategoriesController@admin_store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(46, 53, 'Controllers > BlogCategoriesController > admin_edit', 'Controllers/BlogCategoriesController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(47, 54, 'Controllers > BlogCategoriesController > admin_update', 'Controllers/BlogCategoriesController@admin_update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(48, 55, 'Controllers > BlogCategoriesController > admin_destroy', 'Controllers/BlogCategoriesController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(49, 56, 'Controllers > BlogCategoriesController > admin_trash_status', 'Controllers/BlogCategoriesController@admin_trash_status', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(50, 57, 'Controllers > BlogCategoriesController > admin_ajax_add_category', 'Controllers/BlogCategoriesController@admin_ajax_add_category', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(51, 58, 'Controllers > BlogCategoriesController > admin_moveup', 'Controllers/BlogCategoriesController@admin_moveup', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(52, 59, 'Controllers > BlogCategoriesController > admin_movedown', 'Controllers/BlogCategoriesController@admin_movedown', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(53, 61, 'Controllers > PagesController > admin_index', 'Controllers/PagesController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(54, 62, 'Controllers > PagesController > admin_create', 'Controllers/PagesController@admin_create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(55, 63, 'Controllers > PagesController > admin_store', 'Controllers/PagesController@admin_store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(56, 64, 'Controllers > PagesController > admin_edit', 'Controllers/PagesController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(57, 65, 'Controllers > PagesController > admin_update', 'Controllers/PagesController@admin_update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(58, 66, 'Controllers > PagesController > admin_destroy', 'Controllers/PagesController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(59, 67, 'Controllers > PagesController > admin_trash_status', 'Controllers/PagesController@admin_trash_status', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(60, 68, 'Controllers > PagesController > remove_feature_image', 'Controllers/PagesController@remove_feature_image', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(61, 70, 'Controllers > MenusController > admin_index', 'Controllers/MenusController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(62, 71, 'Controllers > MenusController > admin_create', 'Controllers/MenusController@admin_create', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(63, 72, 'Controllers > MenusController > admin_store', 'Controllers/MenusController@admin_store', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(64, 73, 'Controllers > MenusController > admin_edit', 'Controllers/MenusController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(65, 74, 'Controllers > MenusController > admin_update', 'Controllers/MenusController@admin_update', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(66, 75, 'Controllers > MenusController > admin_destroy', 'Controllers/MenusController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(67, 76, 'Controllers > MenusController > ajax_menu_item_delete', 'Controllers/MenusController@ajax_menu_item_delete', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(68, 77, 'Controllers > MenusController > admin_select_menu', 'Controllers/MenusController@admin_select_menu', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(69, 78, 'Controllers > MenusController > ajax_add_link', 'Controllers/MenusController@ajax_add_link', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(70, 79, 'Controllers > MenusController > ajax_add_page', 'Controllers/MenusController@ajax_add_page', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(71, 80, 'Controllers > MenusController > search_menus', 'Controllers/MenusController@search_menus', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(72, 82, 'Controllers > ConfigurationsController > admin_index', 'Controllers/ConfigurationsController@admin_index', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(73, 83, 'Controllers > ConfigurationsController > admin_add', 'Controllers/ConfigurationsController@admin_add', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(74, 84, 'Controllers > ConfigurationsController > admin_edit', 'Controllers/ConfigurationsController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(75, 85, 'Controllers > ConfigurationsController > admin_delete', 'Controllers/ConfigurationsController@admin_delete', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(76, 86, 'Controllers > ConfigurationsController > admin_view', 'Controllers/ConfigurationsController@admin_view', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(77, 87, 'Controllers > ConfigurationsController > admin_prefix', 'Controllers/ConfigurationsController@admin_prefix', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(78, 88, 'Controllers > ConfigurationsController > admin_change_theme', 'Controllers/ConfigurationsController@admin_change_theme', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(79, 89, 'Controllers > ConfigurationsController > admin_change', 'Controllers/ConfigurationsController@admin_change', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(80, 90, 'Controllers > ConfigurationsController > admin_moveup', 'Controllers/ConfigurationsController@admin_moveup', 'web', 'user-define', '2022-12-13 07:20:57', '2022-12-13 07:20:57'),
(81, 91, 'Controllers > ConfigurationsController > admin_movedown', 'Controllers/ConfigurationsController@admin_movedown', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(82, 92, 'Controllers > ConfigurationsController > save_permalink', 'Controllers/ConfigurationsController@save_permalink', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(83, 93, 'Controllers > ConfigurationsController > upload_editor_image', 'Controllers/ConfigurationsController@upload_editor_image', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(84, 130, 'Controllers > DashboardController > dashboard', 'Controllers/DashboardController@dashboard', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(85, 132, 'Controllers > BlogTagsController > list', 'Controllers/BlogTagsController@list', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(86, 133, 'Controllers > BlogTagsController > admin_index', 'Controllers/BlogTagsController@admin_index', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(87, 134, 'Controllers > BlogTagsController > admin_create', 'Controllers/BlogTagsController@admin_create', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(88, 135, 'Controllers > BlogTagsController > admin_store', 'Controllers/BlogTagsController@admin_store', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(89, 136, 'Controllers > BlogTagsController > admin_edit', 'Controllers/BlogTagsController@admin_edit', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(90, 137, 'Controllers > BlogTagsController > admin_update', 'Controllers/BlogTagsController@admin_update', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(91, 138, 'Controllers > BlogTagsController > admin_destroy', 'Controllers/BlogTagsController@admin_destroy', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(92, 96, 'Controllers > HomeController > blogcategory', 'Controllers/HomeController@blogcategory', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(93, 97, 'Controllers > HomeController > detail', 'Controllers/HomeController@detail', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(94, 125, 'Controllers > HomeController > author', 'Controllers/HomeController@author', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(95, 126, 'Controllers > HomeController > blogtag', 'Controllers/HomeController@blogtag', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(96, 127, 'Controllers > HomeController > search', 'Controllers/HomeController@search', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(97, 128, 'Controllers > HomeController > all', 'Controllers/HomeController@all', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(98, 139, 'Controllers > HomeController > blogarchive', 'Controllers/HomeController@blogarchive', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(99, 140, 'Controllers > HomeController > blogslist', 'Controllers/HomeController@blogslist', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(100, 102, 'Installation > WelcomeController > welcome', 'Installation/WelcomeController@welcome', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(101, 104, 'Installation > EnvironmentController > environmentMenu', 'Installation/EnvironmentController@environmentMenu', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(102, 105, 'Installation > EnvironmentController > environmentWizard', 'Installation/EnvironmentController@environmentWizard', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(103, 106, 'Installation > EnvironmentController > saveWizard', 'Installation/EnvironmentController@saveWizard', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(104, 107, 'Installation > EnvironmentController > environmentClassic', 'Installation/EnvironmentController@environmentClassic', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(105, 108, 'Installation > EnvironmentController > saveClassic', 'Installation/EnvironmentController@saveClassic', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(106, 110, 'Installation > RequirementsController > requirements', 'Installation/RequirementsController@requirements', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(107, 112, 'Installation > PermissionsController > permissions', 'Installation/PermissionsController@permissions', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(108, 114, 'Installation > DatabaseController > database', 'Installation/DatabaseController@database', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(109, 116, 'Installation > AdminSetupController > admin', 'Installation/AdminSetupController@admin', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(110, 117, 'Installation > AdminSetupController > saveAdmin', 'Installation/AdminSetupController@saveAdmin', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(111, 119, 'Installation > FinalController > finish', 'Installation/FinalController@finish', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(112, 121, 'Installation > UpdateController > welcome', 'Installation/UpdateController@welcome', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(113, 122, 'Installation > UpdateController > overview', 'Installation/UpdateController@overview', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(114, 123, 'Installation > UpdateController > database', 'Installation/UpdateController@database', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(115, 124, 'Installation > UpdateController > finish', 'Installation/UpdateController@finish', 'web', 'user-define', '2022-12-13 07:20:58', '2022-12-13 07:20:58'),
(116, 141, 'Controllers > UsersController > remove_user_image', 'Controllers/UsersController@remove_user_image', 'web', 'user-define', '2022-12-23 03:48:13', '2022-12-23 03:48:13'),
(117, 142, 'Controllers > HomeController > contact', 'Controllers/HomeController@contact', 'web', 'user-define', '2022-12-23 03:48:13', '2022-12-23 03:48:13'),
(118, 143, 'Controllers > ConfigurationsController > remove_config_image', 'Controllers/ConfigurationsController@remove_config_image', 'web', 'user-define', '2023-02-11 04:32:50', '2023-02-11 04:32:50');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catalogue_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `comment` tinyint(4) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 => Published, 2 => Draft, 3 => Trash, 4 => Private, 5 => Pending',
  `visibility` enum('Pu','PP','Pr') NOT NULL COMMENT 'Pu => Public, PP => Password Protected, Pr => Private',
  `publish_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `module` text DEFAULT NULL COMMENT 'for laravel plugin/modules roles',
  `level` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'to maintain hierarchy',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `module`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', NULL, 0, '2022-10-29 08:21:29', '2023-01-07 07:36:54'),
(2, 'Manager', 'web', NULL, 0, '2022-10-29 08:21:29', '2022-12-24 05:19:21'),
(3, 'Customer', 'web', NULL, 0, '2022-12-08 07:03:15', '2022-12-24 05:25:42'),
(4, 'Admin', 'web', NULL, 0, '2023-01-07 05:07:01', '2023-01-07 07:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(84, 2),
(84, 3),
(84, 4),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_permissions`
--

CREATE TABLE `temp_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `type` enum('App','Module','Controller','Action') NOT NULL DEFAULT 'App',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_permissions`
--

INSERT INTO `temp_permissions` (`id`, `parent_id`, `name`, `path`, `controller`, `action`, `type`, `created_at`, `updated_at`) VALUES
(1, 0, 'Controllers', 'App\\Http\\Controllers\\Admin\\PermissionsController@index', NULL, NULL, 'App', NULL, NULL),
(2, 1, 'Admin', 'App\\Http\\Controllers\\Admin\\PermissionsController@index', NULL, NULL, 'App', NULL, NULL),
(3, 2, 'App\\Http\\Controllers\\Admin\\PermissionsController', 'App\\Http\\Controllers\\Admin\\PermissionsController@index', 'PermissionsController', NULL, 'Controller', NULL, NULL),
(4, 3, 'index', 'App\\Http\\Controllers\\Admin\\PermissionsController@index', 'PermissionsController', 'index', 'Action', NULL, NULL),
(5, 3, 'roles_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@roles_permissions', 'PermissionsController', 'roles_permissions', 'Action', NULL, NULL),
(6, 3, 'role_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@role_permissions', 'PermissionsController', 'role_permissions', 'Action', NULL, NULL),
(7, 3, 'user_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@user_permissions', 'PermissionsController', 'user_permissions', 'Action', NULL, NULL),
(8, 3, 'manage_user_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@manage_user_permissions', 'PermissionsController', 'manage_user_permissions', 'Action', NULL, NULL),
(9, 3, 'sync', 'App\\Http\\Controllers\\Admin\\PermissionsController@sync', 'PermissionsController', 'sync', 'Action', NULL, NULL),
(10, 3, 'manage_role_all_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@manage_role_all_permissions', 'PermissionsController', 'manage_role_all_permissions', 'Action', NULL, NULL),
(11, 3, 'manage_role_permission', 'App\\Http\\Controllers\\Admin\\PermissionsController@manage_role_permission', 'PermissionsController', 'manage_role_permission', 'Action', NULL, NULL),
(12, 3, 'manage_user_permission', 'App\\Http\\Controllers\\Admin\\PermissionsController@manage_user_permission', 'PermissionsController', 'manage_user_permission', 'Action', NULL, NULL),
(13, 3, 'delete_user_permission', 'App\\Http\\Controllers\\Admin\\PermissionsController@delete_user_permission', 'PermissionsController', 'delete_user_permission', 'Action', NULL, NULL),
(14, 3, 'remove_user_all_permission', 'App\\Http\\Controllers\\Admin\\PermissionsController@remove_user_all_permission', 'PermissionsController', 'remove_user_all_permission', 'Action', NULL, NULL),
(15, 3, 'temp_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@temp_permissions', 'PermissionsController', 'temp_permissions', 'Action', NULL, NULL),
(16, 3, 'generate_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@generate_permissions', 'PermissionsController', 'generate_permissions', 'Action', NULL, NULL),
(17, 3, 'add_to_permissions', 'App\\Http\\Controllers\\Admin\\PermissionsController@add_to_permissions', 'PermissionsController', 'add_to_permissions', 'Action', NULL, NULL),
(18, 3, 'permission_by_action', 'App\\Http\\Controllers\\Admin\\PermissionsController@permission_by_action', 'PermissionsController', 'permission_by_action', 'Action', NULL, NULL),
(19, 3, 'get_users_by_role', 'App\\Http\\Controllers\\Admin\\PermissionsController@get_users_by_role', 'PermissionsController', 'get_users_by_role', 'Action', NULL, NULL),
(20, 3, 'get_permission_by_user', 'App\\Http\\Controllers\\Admin\\PermissionsController@get_permission_by_user', 'PermissionsController', 'get_permission_by_user', 'Action', NULL, NULL),
(21, 2, 'App\\Http\\Controllers\\Admin\\UsersController', 'App\\Http\\Controllers\\Admin\\UsersController@dashboard', 'UsersController', NULL, 'Controller', NULL, NULL),
(22, 21, 'dashboard', 'App\\Http\\Controllers\\Admin\\UsersController@dashboard', 'UsersController', 'dashboard', 'Action', NULL, NULL),
(23, 21, 'index', 'App\\Http\\Controllers\\Admin\\UsersController@index', 'UsersController', 'index', 'Action', NULL, NULL),
(24, 21, 'create', 'App\\Http\\Controllers\\Admin\\UsersController@create', 'UsersController', 'create', 'Action', NULL, NULL),
(25, 21, 'store', 'App\\Http\\Controllers\\Admin\\UsersController@store', 'UsersController', 'store', 'Action', NULL, NULL),
(26, 21, 'edit', 'App\\Http\\Controllers\\Admin\\UsersController@edit', 'UsersController', 'edit', 'Action', NULL, NULL),
(27, 21, 'update', 'App\\Http\\Controllers\\Admin\\UsersController@update', 'UsersController', 'update', 'Action', NULL, NULL),
(28, 21, 'destroy', 'App\\Http\\Controllers\\Admin\\UsersController@destroy', 'UsersController', 'destroy', 'Action', NULL, NULL),
(29, 21, 'update_password', 'App\\Http\\Controllers\\Admin\\UsersController@update_password', 'UsersController', 'update_password', 'Action', NULL, NULL),
(30, 21, 'update_user_roles', 'App\\Http\\Controllers\\Admin\\UsersController@update_user_roles', 'UsersController', 'update_user_roles', 'Action', NULL, NULL),
(31, 21, 'profile', 'App\\Http\\Controllers\\Admin\\UsersController@profile', 'UsersController', 'profile', 'Action', NULL, NULL),
(32, 2, 'App\\Http\\Controllers\\Admin\\RolesController', 'App\\Http\\Controllers\\Admin\\RolesController@index', 'RolesController', NULL, 'Controller', NULL, NULL),
(33, 32, 'index', 'App\\Http\\Controllers\\Admin\\RolesController@index', 'RolesController', 'index', 'Action', NULL, NULL),
(34, 32, 'create', 'App\\Http\\Controllers\\Admin\\RolesController@create', 'RolesController', 'create', 'Action', NULL, NULL),
(35, 32, 'store', 'App\\Http\\Controllers\\Admin\\RolesController@store', 'RolesController', 'store', 'Action', NULL, NULL),
(36, 32, 'edit', 'App\\Http\\Controllers\\Admin\\RolesController@edit', 'RolesController', 'edit', 'Action', NULL, NULL),
(37, 32, 'update', 'App\\Http\\Controllers\\Admin\\RolesController@update', 'RolesController', 'update', 'Action', NULL, NULL),
(38, 32, 'destroy', 'App\\Http\\Controllers\\Admin\\RolesController@destroy', 'RolesController', 'destroy', 'Action', NULL, NULL),
(39, 2, 'App\\Http\\Controllers\\Admin\\BlogsController', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_index', 'BlogsController', NULL, 'Controller', NULL, NULL),
(40, 39, 'admin_index', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_index', 'BlogsController', 'admin_index', 'Action', NULL, NULL),
(41, 39, 'admin_create', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_create', 'BlogsController', 'admin_create', 'Action', NULL, NULL),
(42, 39, 'admin_store', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_store', 'BlogsController', 'admin_store', 'Action', NULL, NULL),
(43, 39, 'admin_edit', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_edit', 'BlogsController', 'admin_edit', 'Action', NULL, NULL),
(44, 39, 'admin_update', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_update', 'BlogsController', 'admin_update', 'Action', NULL, NULL),
(45, 39, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_destroy', 'BlogsController', 'admin_destroy', 'Action', NULL, NULL),
(46, 39, 'admin_trash_status', 'App\\Http\\Controllers\\Admin\\BlogsController@admin_trash_status', 'BlogsController', 'admin_trash_status', 'Action', NULL, NULL),
(47, 39, 'remove_feature_image', 'App\\Http\\Controllers\\Admin\\BlogsController@remove_feature_image', 'BlogsController', 'remove_feature_image', 'Action', NULL, NULL),
(48, 2, 'App\\Http\\Controllers\\Admin\\BlogCategoriesController', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@list', 'BlogCategoriesController', NULL, 'Controller', NULL, NULL),
(49, 48, 'list', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@list', 'BlogCategoriesController', 'list', 'Action', NULL, NULL),
(50, 48, 'admin_index', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_index', 'BlogCategoriesController', 'admin_index', 'Action', NULL, NULL),
(51, 48, 'admin_create', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_create', 'BlogCategoriesController', 'admin_create', 'Action', NULL, NULL),
(52, 48, 'admin_store', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_store', 'BlogCategoriesController', 'admin_store', 'Action', NULL, NULL),
(53, 48, 'admin_edit', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_edit', 'BlogCategoriesController', 'admin_edit', 'Action', NULL, NULL),
(54, 48, 'admin_update', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_update', 'BlogCategoriesController', 'admin_update', 'Action', NULL, NULL),
(55, 48, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_destroy', 'BlogCategoriesController', 'admin_destroy', 'Action', NULL, NULL),
(56, 48, 'admin_trash_status', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_trash_status', 'BlogCategoriesController', 'admin_trash_status', 'Action', NULL, NULL),
(57, 48, 'admin_ajax_add_category', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_ajax_add_category', 'BlogCategoriesController', 'admin_ajax_add_category', 'Action', NULL, NULL),
(58, 48, 'admin_moveup', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_moveup', 'BlogCategoriesController', 'admin_moveup', 'Action', NULL, NULL),
(59, 48, 'admin_movedown', 'App\\Http\\Controllers\\Admin\\BlogCategoriesController@admin_movedown', 'BlogCategoriesController', 'admin_movedown', 'Action', NULL, NULL),
(60, 2, 'App\\Http\\Controllers\\Admin\\PagesController', 'App\\Http\\Controllers\\Admin\\PagesController@admin_index', 'PagesController', NULL, 'Controller', NULL, NULL),
(61, 60, 'admin_index', 'App\\Http\\Controllers\\Admin\\PagesController@admin_index', 'PagesController', 'admin_index', 'Action', NULL, NULL),
(62, 60, 'admin_create', 'App\\Http\\Controllers\\Admin\\PagesController@admin_create', 'PagesController', 'admin_create', 'Action', NULL, NULL),
(63, 60, 'admin_store', 'App\\Http\\Controllers\\Admin\\PagesController@admin_store', 'PagesController', 'admin_store', 'Action', NULL, NULL),
(64, 60, 'admin_edit', 'App\\Http\\Controllers\\Admin\\PagesController@admin_edit', 'PagesController', 'admin_edit', 'Action', NULL, NULL),
(65, 60, 'admin_update', 'App\\Http\\Controllers\\Admin\\PagesController@admin_update', 'PagesController', 'admin_update', 'Action', NULL, NULL),
(66, 60, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\PagesController@admin_destroy', 'PagesController', 'admin_destroy', 'Action', NULL, NULL),
(67, 60, 'admin_trash_status', 'App\\Http\\Controllers\\Admin\\PagesController@admin_trash_status', 'PagesController', 'admin_trash_status', 'Action', NULL, NULL),
(68, 60, 'remove_feature_image', 'App\\Http\\Controllers\\Admin\\PagesController@remove_feature_image', 'PagesController', 'remove_feature_image', 'Action', NULL, NULL),
(69, 2, 'App\\Http\\Controllers\\Admin\\MenusController', 'App\\Http\\Controllers\\Admin\\MenusController@admin_index', 'MenusController', NULL, 'Controller', NULL, NULL),
(70, 69, 'admin_index', 'App\\Http\\Controllers\\Admin\\MenusController@admin_index', 'MenusController', 'admin_index', 'Action', NULL, NULL),
(71, 69, 'admin_create', 'App\\Http\\Controllers\\Admin\\MenusController@admin_create', 'MenusController', 'admin_create', 'Action', NULL, NULL),
(72, 69, 'admin_store', 'App\\Http\\Controllers\\Admin\\MenusController@admin_store', 'MenusController', 'admin_store', 'Action', NULL, NULL),
(73, 69, 'admin_edit', 'App\\Http\\Controllers\\Admin\\MenusController@admin_edit', 'MenusController', 'admin_edit', 'Action', NULL, NULL),
(74, 69, 'admin_update', 'App\\Http\\Controllers\\Admin\\MenusController@admin_update', 'MenusController', 'admin_update', 'Action', NULL, NULL),
(75, 69, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\MenusController@admin_destroy', 'MenusController', 'admin_destroy', 'Action', NULL, NULL),
(76, 69, 'ajax_menu_item_delete', 'App\\Http\\Controllers\\Admin\\MenusController@ajax_menu_item_delete', 'MenusController', 'ajax_menu_item_delete', 'Action', NULL, NULL),
(77, 69, 'admin_select_menu', 'App\\Http\\Controllers\\Admin\\MenusController@admin_select_menu', 'MenusController', 'admin_select_menu', 'Action', NULL, NULL),
(78, 69, 'ajax_add_link', 'App\\Http\\Controllers\\Admin\\MenusController@ajax_add_link', 'MenusController', 'ajax_add_link', 'Action', NULL, NULL),
(79, 69, 'ajax_add_page', 'App\\Http\\Controllers\\Admin\\MenusController@ajax_add_page', 'MenusController', 'ajax_add_page', 'Action', NULL, NULL),
(80, 69, 'search_menus', 'App\\Http\\Controllers\\Admin\\MenusController@search_menus', 'MenusController', 'search_menus', 'Action', NULL, NULL),
(81, 2, 'App\\Http\\Controllers\\Admin\\ConfigurationsController', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_index', 'ConfigurationsController', NULL, 'Controller', NULL, NULL),
(82, 81, 'admin_index', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_index', 'ConfigurationsController', 'admin_index', 'Action', NULL, NULL),
(83, 81, 'admin_add', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_add', 'ConfigurationsController', 'admin_add', 'Action', NULL, NULL),
(84, 81, 'admin_edit', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_edit', 'ConfigurationsController', 'admin_edit', 'Action', NULL, NULL),
(85, 81, 'admin_delete', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_delete', 'ConfigurationsController', 'admin_delete', 'Action', NULL, NULL),
(86, 81, 'admin_view', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_view', 'ConfigurationsController', 'admin_view', 'Action', NULL, NULL),
(87, 81, 'admin_prefix', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_prefix', 'ConfigurationsController', 'admin_prefix', 'Action', NULL, NULL),
(88, 81, 'admin_change_theme', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_change_theme', 'ConfigurationsController', 'admin_change_theme', 'Action', NULL, NULL),
(89, 81, 'admin_change', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_change', 'ConfigurationsController', 'admin_change', 'Action', NULL, NULL),
(90, 81, 'admin_moveup', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_moveup', 'ConfigurationsController', 'admin_moveup', 'Action', NULL, NULL),
(91, 81, 'admin_movedown', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@admin_movedown', 'ConfigurationsController', 'admin_movedown', 'Action', NULL, NULL),
(92, 81, 'save_permalink', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@save_permalink', 'ConfigurationsController', 'save_permalink', 'Action', NULL, NULL),
(93, 81, 'upload_editor_image', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@upload_editor_image', 'ConfigurationsController', 'upload_editor_image', 'Action', NULL, NULL),
(94, 1, 'Front', 'App\\Http\\Controllers\\Front\\HomeController@blogcategory', NULL, NULL, 'App', NULL, NULL),
(95, 94, 'App\\Http\\Controllers\\Front\\HomeController', 'App\\Http\\Controllers\\Front\\HomeController@blogcategory', 'HomeController', NULL, 'Controller', NULL, NULL),
(96, 95, 'blogcategory', 'App\\Http\\Controllers\\Front\\HomeController@blogcategory', 'HomeController', 'blogcategory', 'Action', NULL, NULL),
(97, 95, 'detail', 'App\\Http\\Controllers\\Front\\HomeController@detail', 'HomeController', 'detail', 'Action', NULL, NULL),
(98, 0, 'Installation 0', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', NULL, NULL, 'Module', NULL, NULL),
(99, 98, 'Http 98', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', NULL, NULL, 'Module', NULL, NULL),
(100, 99, 'Controllers 99', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', NULL, NULL, 'Module', NULL, NULL),
(101, 100, 'Modules\\Installation\\Http\\Controllers\\WelcomeController', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', 'WelcomeController', NULL, 'Controller', NULL, NULL),
(102, 101, 'welcome', 'Modules\\Installation\\Http\\Controllers\\WelcomeController@welcome', 'WelcomeController', 'welcome', 'Action', NULL, NULL),
(103, 100, 'Modules\\Installation\\Http\\Controllers\\EnvironmentController', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@environmentMenu', 'EnvironmentController', NULL, 'Controller', NULL, NULL),
(104, 103, 'environmentMenu', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@environmentMenu', 'EnvironmentController', 'environmentMenu', 'Action', NULL, NULL),
(105, 103, 'environmentWizard', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@environmentWizard', 'EnvironmentController', 'environmentWizard', 'Action', NULL, NULL),
(106, 103, 'saveWizard', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@saveWizard', 'EnvironmentController', 'saveWizard', 'Action', NULL, NULL),
(107, 103, 'environmentClassic', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@environmentClassic', 'EnvironmentController', 'environmentClassic', 'Action', NULL, NULL),
(108, 103, 'saveClassic', 'Modules\\Installation\\Http\\Controllers\\EnvironmentController@saveClassic', 'EnvironmentController', 'saveClassic', 'Action', NULL, NULL),
(109, 100, 'Modules\\Installation\\Http\\Controllers\\RequirementsController', 'Modules\\Installation\\Http\\Controllers\\RequirementsController@requirements', 'RequirementsController', NULL, 'Controller', NULL, NULL),
(110, 109, 'requirements', 'Modules\\Installation\\Http\\Controllers\\RequirementsController@requirements', 'RequirementsController', 'requirements', 'Action', NULL, NULL),
(111, 100, 'Modules\\Installation\\Http\\Controllers\\PermissionsController', 'Modules\\Installation\\Http\\Controllers\\PermissionsController@permissions', 'PermissionsController', NULL, 'Controller', NULL, NULL),
(112, 111, 'permissions', 'Modules\\Installation\\Http\\Controllers\\PermissionsController@permissions', 'PermissionsController', 'permissions', 'Action', NULL, NULL),
(113, 100, 'Modules\\Installation\\Http\\Controllers\\DatabaseController', 'Modules\\Installation\\Http\\Controllers\\DatabaseController@database', 'DatabaseController', NULL, 'Controller', NULL, NULL),
(114, 113, 'database', 'Modules\\Installation\\Http\\Controllers\\DatabaseController@database', 'DatabaseController', 'database', 'Action', NULL, NULL),
(115, 100, 'Modules\\Installation\\Http\\Controllers\\AdminSetupController', 'Modules\\Installation\\Http\\Controllers\\AdminSetupController@admin', 'AdminSetupController', NULL, 'Controller', NULL, NULL),
(116, 115, 'admin', 'Modules\\Installation\\Http\\Controllers\\AdminSetupController@admin', 'AdminSetupController', 'admin', 'Action', NULL, NULL),
(117, 115, 'saveAdmin', 'Modules\\Installation\\Http\\Controllers\\AdminSetupController@saveAdmin', 'AdminSetupController', 'saveAdmin', 'Action', NULL, NULL),
(118, 100, 'Modules\\Installation\\Http\\Controllers\\FinalController', 'Modules\\Installation\\Http\\Controllers\\FinalController@finish', 'FinalController', NULL, 'Controller', NULL, NULL),
(119, 118, 'finish', 'Modules\\Installation\\Http\\Controllers\\FinalController@finish', 'FinalController', 'finish', 'Action', NULL, NULL),
(120, 100, 'Modules\\Installation\\Http\\Controllers\\UpdateController', 'Modules\\Installation\\Http\\Controllers\\UpdateController@welcome', 'UpdateController', NULL, 'Controller', NULL, NULL),
(121, 120, 'welcome', 'Modules\\Installation\\Http\\Controllers\\UpdateController@welcome', 'UpdateController', 'welcome', 'Action', NULL, NULL),
(122, 120, 'overview', 'Modules\\Installation\\Http\\Controllers\\UpdateController@overview', 'UpdateController', 'overview', 'Action', NULL, NULL),
(123, 120, 'database', 'Modules\\Installation\\Http\\Controllers\\UpdateController@database', 'UpdateController', 'database', 'Action', NULL, NULL),
(124, 120, 'finish', 'Modules\\Installation\\Http\\Controllers\\UpdateController@finish', 'UpdateController', 'finish', 'Action', NULL, NULL),
(125, 95, 'author', 'App\\Http\\Controllers\\Front\\HomeController@author', 'HomeController', 'author', 'Action', NULL, NULL),
(126, 95, 'blogtag', 'App\\Http\\Controllers\\Front\\HomeController@blogtag', 'HomeController', 'blogtag', 'Action', NULL, NULL),
(127, 95, 'search', 'App\\Http\\Controllers\\Front\\HomeController@search', 'HomeController', 'search', 'Action', NULL, NULL),
(128, 95, 'all', 'App\\Http\\Controllers\\Front\\HomeController@all', 'HomeController', 'all', 'Action', NULL, NULL),
(129, 2, 'App\\Http\\Controllers\\Admin\\DashboardController', 'App\\Http\\Controllers\\Admin\\DashboardController@dashboard', 'DashboardController', NULL, 'Controller', NULL, NULL),
(130, 129, 'dashboard', 'App\\Http\\Controllers\\Admin\\DashboardController@dashboard', 'DashboardController', 'dashboard', 'Action', NULL, NULL),
(131, 2, 'App\\Http\\Controllers\\Admin\\BlogTagsController', 'App\\Http\\Controllers\\Admin\\BlogTagsController@list', 'BlogTagsController', NULL, 'Controller', NULL, NULL),
(132, 131, 'list', 'App\\Http\\Controllers\\Admin\\BlogTagsController@list', 'BlogTagsController', 'list', 'Action', NULL, NULL),
(133, 131, 'admin_index', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_index', 'BlogTagsController', 'admin_index', 'Action', NULL, NULL),
(134, 131, 'admin_create', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_create', 'BlogTagsController', 'admin_create', 'Action', NULL, NULL),
(135, 131, 'admin_store', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_store', 'BlogTagsController', 'admin_store', 'Action', NULL, NULL),
(136, 131, 'admin_edit', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_edit', 'BlogTagsController', 'admin_edit', 'Action', NULL, NULL),
(137, 131, 'admin_update', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_update', 'BlogTagsController', 'admin_update', 'Action', NULL, NULL),
(138, 131, 'admin_destroy', 'App\\Http\\Controllers\\Admin\\BlogTagsController@admin_destroy', 'BlogTagsController', 'admin_destroy', 'Action', NULL, NULL),
(139, 95, 'blogarchive', 'App\\Http\\Controllers\\Front\\HomeController@blogarchive', 'HomeController', 'blogarchive', 'Action', NULL, NULL),
(140, 95, 'blogslist', 'App\\Http\\Controllers\\Front\\HomeController@blogslist', 'HomeController', 'blogslist', 'Action', NULL, NULL),
(141, 21, 'remove_user_image', 'App\\Http\\Controllers\\Admin\\UsersController@remove_user_image', 'UsersController', 'remove_user_image', 'Action', NULL, NULL),
(142, 95, 'contact', 'App\\Http\\Controllers\\Front\\HomeController@contact', 'HomeController', 'contact', 'Action', NULL, NULL),
(143, 81, 'remove_config_image', 'App\\Http\\Controllers\\Admin\\ConfigurationsController@remove_config_image', 'ConfigurationsController', 'remove_config_image', 'Action', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `profile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin ', 'admin', NULL, 'admin@pakindustrialexpo.com', NULL, '$2y$10$wVZN52uL4Yy1cUMNpGxqrubMAwI.ZjuStUee29/8R68cXlt4g4b0i', NULL, NULL, NULL, 'F5aVLFt3wfnRmPOphTdWehoXSyaOVsGijsdOFGs93kdYIMyA0t2hQoI80k2c', '2023-11-18 00:21:05', '2023-11-23 14:09:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_blog_categories`
--
ALTER TABLE `blog_blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blog_categories_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_blog_categories_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blog_tags_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_blog_tags_blog_tag_id_foreign` (`blog_tag_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `blog_metas`
--
ALTER TABLE `blog_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_metas_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `blog_seos`
--
ALTER TABLE `blog_seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_seos_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_user_id_foreign` (`user_id`);

--
-- Indexes for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exhibitions`
--
ALTER TABLE `exhibitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_metas`
--
ALTER TABLE `page_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_metas_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_seos`
--
ALTER TABLE `page_seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_seos_page_id_foreign` (`page_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `permissions_temp_permission_id_foreign` (`temp_permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `temp_permissions`
--
ALTER TABLE `temp_permissions`
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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `blog_blog_categories`
--
ALTER TABLE `blog_blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_metas`
--
ALTER TABLE `blog_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `blog_seos`
--
ALTER TABLE `blog_seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `catalogues`
--
ALTER TABLE `catalogues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exhibitions`
--
ALTER TABLE `exhibitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page_metas`
--
ALTER TABLE `page_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `page_seos`
--
ALTER TABLE `page_seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `temp_permissions`
--
ALTER TABLE `temp_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_blog_categories`
--
ALTER TABLE `blog_blog_categories`
  ADD CONSTRAINT `blog_blog_categories_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_blog_categories_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_blog_tags`
--
ALTER TABLE `blog_blog_tags`
  ADD CONSTRAINT `blog_blog_tags_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_blog_tags_blog_tag_id_foreign` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_metas`
--
ALTER TABLE `blog_metas`
  ADD CONSTRAINT `blog_metas_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_seos`
--
ALTER TABLE `blog_seos`
  ADD CONSTRAINT `blog_seos_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_metas`
--
ALTER TABLE `page_metas`
  ADD CONSTRAINT `page_metas_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_seos`
--
ALTER TABLE `page_seos`
  ADD CONSTRAINT `page_seos_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_temp_permission_id_foreign` FOREIGN KEY (`temp_permission_id`) REFERENCES `temp_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
