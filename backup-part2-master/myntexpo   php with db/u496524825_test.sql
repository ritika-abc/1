-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 26, 2024 at 08:52 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u496524825_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` text NOT NULL,
  `photo` text NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `token`, `photo`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Peter Smith', 'admin@gmail.com', '$2y$10$k9VY0d4W4QpUIX3b5N5N7O/2.cLZFvseC2.wWJeYs0K/8ZcOsABz2', '', 'user-1.jpg', 1, NULL, '2023-03-05 22:57:53'),
(4, 'Mr Manager', 'manager@gmail.com', '$2y$10$KOVcYRrj7OnPhed2lx5pdOXQ9wF1OwJIzXCbCnQbUHpp5jkz5VKoC', '', 'user-4.png', 4, '2021-03-05 18:46:31', '2023-04-19 17:00:03'),
(6, 'Mr Editor', 'editor@gmail.com', '$2y$10$9Vfsb.ETTp8PXjqUeuWAhOM8gywehpfA4fE/OJ871IP0Sjwh0t1QC', '', 'user-6.png', 5, '2021-03-05 18:49:19', '2023-04-19 16:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_slug` varchar(255) DEFAULT NULL,
  `blog_content` text NOT NULL,
  `blog_content_short` text NOT NULL,
  `blog_photo` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `blog_title`, `blog_slug`, `blog_content`, `blog_content_short`, `blog_photo`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(3, 5, 'Insolens mea at vitae aliquip qui eu', 'insolens-mea-at-vitae-aliquip-qui-eu', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.', 'blog-3.png', 'Insolens mea at vitae aliquip qui eu', 'Insolens mea at vitae aliquip qui eu', '2020-11-19 21:01:33', '2020-11-28 00:09:32'),
(5, 6, 'Mutat torquatos nec per adhuc causae', 'mutat-torquatos-nec-per-adhuc-causae', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.', 'blog-5.jpeg', 'Mutat torquatos nec per adhuc causae', 'Mutat torquatos nec per adhuc causae', '2020-11-19 21:56:00', '2020-11-28 00:10:54'),
(6, 4, 'Cum at salutandi persecuti pro id virtute', 'cum-at-salutandi-persecuti-pro-id-virtute', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.', 'blog-6.jpeg', 'Cum at salutandi persecuti pro id virtute', 'Cum at salutandi persecuti pro id virtute', '2020-11-19 21:57:33', '2020-11-28 00:12:34'),
(7, 3, 'Libris impetus molestiae te eu ius ludus', 'libris-impetus-molestiae-te-eu-ius-ludus', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.', 'blog-7.jpeg', 'Libris impetus molestiae te eu ius ludus', 'Libris impetus molestiae te eu ius ludus', '2020-11-28 00:13:12', '2020-11-28 00:13:12'),
(8, 1, 'Eu paulo lucilius adipisci duo eam', 'eu-paulo-lucilius-adipisci-duo-eam', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.', 'blog-8.jpeg', 'Eu paulo lucilius adipisci duo eam', 'Eu paulo lucilius adipisci duo eam', '2020-11-28 00:13:49', '2020-11-28 00:13:49'),
(9, 1, 'Debitis consequuntur sea eu ex agam', 'debitis-consequuntur-sea-eu-ex-agam', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Sen, sans-serif; font-size: 16px;\">Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.', 'blog-9.jpeg', 'Debitis consequuntur sea eu ex agam', 'Debitis consequuntur sea eu ex agam', '2020-11-28 00:14:30', '2020-11-28 00:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Commercial', 'commercial', 'Commercial', 'Commercial', '2020-11-19 10:00:01', '2020-11-28 00:07:18'),
(3, 'Residential', 'residential', 'Residential', 'Residential', '2020-11-19 21:54:59', '2020-11-28 00:07:14'),
(4, 'Economical', 'economical', 'Economical', 'Economical', '2020-11-28 00:07:59', '2020-11-28 00:07:59'),
(5, 'Business Idea', 'business-idea', 'Business Idea', 'Business Idea', '2020-11-28 00:08:08', '2020-11-28 00:08:08'),
(6, 'Popular Tools', 'popular-tools', 'Popular Tools', 'Popular Tools', '2020-11-28 00:08:16', '2020-11-28 00:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `person_name` text NOT NULL,
  `person_email` text NOT NULL,
  `person_message` text NOT NULL,
  `comment_status` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `person_name`, `person_email`, `person_message`, `comment_status`, `created_at`, `updated_at`) VALUES
(4, 3, 'Sabbir Ahmed', 'sabbirahmed@gmail.com', 'This is a very nice website. I love it so much. I want to make a website like this. When can you talk to me? Please give me a time.', 'Pending', '2020-11-28 06:46:13', '2020-11-28 06:46:13'),
(5, 3, 'Patrick Henderson', 'patrickhenderson@gmail.com', 'Hi admin, very nice post and very helpful.', 'Approved', '2020-11-28 06:48:02', '2020-11-28 06:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(100) NOT NULL,
  `coupon_type` varchar(30) NOT NULL,
  `coupon_discount` varchar(10) NOT NULL,
  `coupon_maximum_use` smallint(6) NOT NULL,
  `coupon_existing_use` smallint(6) NOT NULL,
  `coupon_start_date` varchar(10) NOT NULL,
  `coupon_end_date` varchar(10) NOT NULL,
  `coupon_status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `coupon_type`, `coupon_discount`, `coupon_maximum_use`, `coupon_existing_use`, `coupon_start_date`, `coupon_end_date`, `coupon_status`, `created_at`, `updated_at`) VALUES
(2, 'NICE', 'Percentage', '5', 20, 0, '2020-04-09', '2020-12-25', 'Show', '2020-12-03 02:43:49', '2020-12-03 02:43:49'),
(3, 'STRONG', 'Amount', '15', 14, 0, '2020-04-09', '2020-12-25', 'Show', '2020-12-03 02:44:18', '2020-12-03 02:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `country`, `address`, `state`, `city`, `zip`, `password`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', '$2y$10$wuBAN0XNyoW5OV.IEctyx.dZu0NBDpdqII6jr0ycvYokIK1sEgq2W', '', 'Active', '2020-12-04 20:14:31', '2023-03-05 22:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pages`
--

CREATE TABLE `dynamic_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_page_name` text NOT NULL,
  `dynamic_page_slug` text DEFAULT NULL,
  `dynamic_page_content` text DEFAULT NULL,
  `dynamic_page_banner` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_pages`
--

INSERT INTO `dynamic_pages` (`id`, `dynamic_page_name`, `dynamic_page_slug`, `dynamic_page_content`, `dynamic_page_banner`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(6, 'Dynamic Page 1', 'dynamic-page-1', '<p style=\"margin-right: 0px; margin-bottom: 1.1em; margin-left: 0px; color: rgb(95, 114, 127); font-family: &quot;Source Sans Pro&quot;; font-size: 16px;\">Mynt is driven by the principles of creativity, originality, consideration and enthusiasm. We pride ourselves as one of the&nbsp;<a href=\"https://karmainteriors.in/residences-interior-designers/\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 188, 212); transition: color 0.3s ease 0s, background-color 0.3s ease 0s;\">best residential</a>&nbsp;and&nbsp;<a href=\"https://karmainteriors.in/corporate-office-interior-designers/\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 188, 212); transition: color 0.3s ease 0s, background-color 0.3s ease 0s;\">commercial interior designers in </a>India. We have a fearless attitude and approach towards&nbsp;<a href=\"http://karmainteriors.in/\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 188, 212); transition: color 0.3s ease 0s, background-color 0.3s ease 0s; margin-bottom: 0px;\">interior designing</a>. We always have an unquenchable thirst for what is new, interesting, exciting and creative. We pride ourselves in outshining the very depth of design by delivering in luxurious, creative and beautiful homes that directly corresponds to our client needs.</p><p style=\"margin-right: 0px; margin-bottom: 1.1em; margin-left: 0px; color: rgb(95, 114, 127); font-family: &quot;Source Sans Pro&quot;; font-size: 16px;\"><strong style=\"font-weight: bold; margin-bottom: 0px;\">Aim to Provide Best Solution</strong></p><p style=\"margin-right: 0px; margin-bottom: 1.1em; margin-left: 0px; color: rgb(95, 114, 127); font-family: &quot;Source Sans Pro&quot;; font-size: 16px;\">Our aim is to provide our clients with a personalized and customized design that goes beyond their imagination. We conceive an exclusive and chic design that not only reflect our client’s taste and preferences but also enriches their lives. Our design reflects the style, desires and personality of our clients that are sophisticated, subtle and elegant.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(95, 114, 127); font-family: &quot;Source Sans Pro&quot;; font-size: 16px;\">We work passionately with our clients so as to achieve an opulent end result which they cherish for a lifetime. We like design to be visually powerful, intellectually elegant and above all timeless.</p>', 'dynamic-page-banner-6.jpg', 'Dynamic Page 1', 'Dynamic Page 1', '2020-11-22 04:57:46', '2024-04-24 07:05:21'),
(7, 'Dynamic Page 2', 'dynamic-page-2', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 16px;\">Lorem ipsum dolor sit amet, id saperet suavitate signiferumque sea. Eu tantas invenire signiferumque per, at affert eloquentiam eos, duo no sale utroque. His ad homero verterem, ut paulo neglegentur contentiones per. Ex cum unum vocent commodo. Ut ridens principes rationibus ius, ex mea saepe docendi, cu eum unum assum accumsan.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 16px;\">Ne quo possim consectetuer, splendide voluptatibus ut mea. Summo mucius regione qui et, sea soleat everti indoctum no. Brute postea ut vel, oblique propriae pertinacia et sed. No nominati adipiscing nam, accusata interpretaris no est, no tota conceptam nam. Id posidonium dissentiunt mea, an nibh menandri eum. Meis nominati cum cu.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 16px;\">Eum ad delicatissimi signiferumque, mea causae delenit perfecto et. Sit primis nostrum id, an postea numquam per, id quo diceret deleniti consectetuer. Eum eu salutatus mediocritatem. Blandit ocurreret dissentiet ne quo, ex mazim numquam delenit his.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(51, 51, 51); font-size: 16px;\">Ea mel elit placerat. Ius nobis delicata gloriatur at. Nam fabulas salutandi at, in per officiis omittantur contentiones, omnes insolens suscipiantur sed cu. Ei modus persequeris vix. Persius legimus has an, mea dicit maiestatis adipiscing eu.</p>', 'dynamic-page-banner-7.jpeg', 'Dynamic Page 2', 'Dynamic Page 2', '2020-11-22 04:57:58', '2020-12-10 00:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `et_subject` text NOT NULL,
  `et_content` text NOT NULL,
  `et_name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `et_subject`, `et_content`, `et_name`, `created_at`, `updated_at`) VALUES
(1, 'Contact Form - your website', '<p>You have received a message from a visitor. Detailed information is here:</p><p>Visitor Name: [[visitor_name]]</p><p>Visitor Email: [[visitor_email]]</p><p>Visitor Phone: [[visitor_phone]]</p><p>Visitor Message:&nbsp;</p><p>[[visitor_message]]</p>', 'Contact Page Message', NULL, '2020-11-24 11:15:19'),
(2, 'New Comment Posted', '<p>You have received a new comment from a person. His detail is here:</p><p><strong>Person Name:</strong>&nbsp;[[person_name]]</p><p><strong>Person Email:&nbsp;</strong>[[person_email]]</p><p><strong>Person Message:</strong></p><p>[[person_message]]</p><p>Go to this link to see this comment<span style=\"font-weight: bolder;\">:&nbsp;</span><a href=\"[[comment_see_url]]\" target=\"_blank\">See Comment</a></p>', 'Comment Message to Admin', NULL, '2020-11-28 04:51:16'),
(3, 'Verify Subscription', '<p>Dear Sir,</p><p>You have requested to be a subscriber in our website. Please click on the following link to confirm the subscription:</p><p><a href=\"[[verification_link]]\" target=\"_blank\">Verification Link</a></p><p>Thank you so much!<br>Marketing Team</p>', 'Subscriber Message for Verification', NULL, '2020-12-09 18:51:13'),
(4, 'A News has been added', '<p>Dear Subscriber,</p><p>A news has been published. To see the news, please go to the following link:</p><p><a href=\"[[post_link]]\" target=\"_blank\">Click here to see the post</a></p><p>Thank you!</p>', 'News Post Message to Active Subscribers', NULL, '2020-12-09 22:26:04'),
(5, 'Reset Password', '<p>To reset your password, please click on the following link:</p><p><a href=\"[[reset_link]]\" target=\"_blank\">Reset Password</a><br></p>', 'Reset Password Message to Admin', NULL, '2020-11-27 19:20:59'),
(6, 'Confirm Registration', '<p>To activate your account and confirm the registration, please click on the verify link below:</p><p><a href=\"[[verification_link]]\" target=\"_blank\">Verification Link</a></p>', 'Registration Email to Customer', NULL, '2020-12-03 10:38:57'),
(7, 'Reset Password', '<p>To reset your password, please click on the following link:</p><p><a href=\"[[reset_link]]\" target=\"_blank\">Reset Password Link</a></p>', 'Reset Password Message to Customer', NULL, '2020-12-05 03:30:14'),
(8, 'Order Completed', '<p>Dear [[customer_name]],</p><p>Your order has been submitted successfully and we received the payment from you. After you process and ship the order, you will get all the products after a certain time period.&nbsp;</p><p><b>Payment Information:</b></p><p>Order Number: [[order_number]]</p><p>[[payment_method]]</p><p>Payment Date &amp; Time: [[payment_date_time]]</p><p>Transaction Id: [[transaction_id]]</p><p>Shipping Cost: [[shipping_cost]]</p><p>Coupon Code: [[coupon_code]]</p><p>Coupon Discount: [[coupon_discount]]</p><p>Paid Amount: [[paid_amount]]</p><p>Payment Status: [[payment_status]]</p><p>----------------------------------------</p><p><b>Your billing details:</b></p><p>Billing Name: [[billing_name]]</p><p>Billing Email: [[billing_email]]</p><p>Billing Phone: [[billing_phone]]</p><p>Billing Country: [[billing_country]]</p><p>Billing Address: [[billing_address]]</p><p>Billing State: [[billing_state]]</p><p>Billing City: [[billing_city]]</p><p>Billing Zip: [[billing_zip]]</p><p>----------------------------------------</p><p><b>Your shipping details:</b></p><p>Shipping Name: [[shipping_name]]</p><p>Shipping Email: [[shipping_email]]</p><p>Shipping Phone: [[shipping_phone]]</p><p>Shipping Country: [[shipping_country]]</p><p>Shipping Address: [[shipping_address]]</p><p>Shipping State: [[shipping_state]]</p><p>Shipping City: [[shipping_city]]</p><p>Shipping Zip: [[shipping_zip]]</p><p>----------------------------------------</p><p><b>Products You Purchased:&nbsp;</b></p><p>[[product_detail]]</p><p>Thank you! The ABC Team</p>', 'Order Completed Email to Customer', NULL, '2020-12-08 22:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_title` text NOT NULL,
  `faq_content` text NOT NULL,
  `faq_order` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_title`, `faq_content`, `faq_order`, `created_at`, `updated_at`) VALUES
(1, 'Will my kitchen remodel be complicated and take a lot of time?', '<p><br></p>', 3, '2020-11-23 11:09:14', '2024-04-24 06:39:05'),
(2, 'Which cabinets are better: framed or frameless?', '<p><br></p>', 2, '2020-11-23 11:09:31', '2024-04-24 06:36:56'),
(3, 'What is the best quality of cabinets I can buy?', '<p><br></p>', 1, '2020-11-23 11:09:45', '2024-04-24 06:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `footer_columns`
--

CREATE TABLE `footer_columns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `column_item_text` varchar(255) NOT NULL,
  `column_item_url` varchar(255) NOT NULL,
  `column_item_order` int(11) NOT NULL DEFAULT 0,
  `column_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_columns`
--

INSERT INTO `footer_columns` (`id`, `column_item_text`, `column_item_url`, `column_item_order`, `column_name`, `created_at`, `updated_at`) VALUES
(1, 'Link Name 1', '#', 1, 'Column 1', '2020-12-10 23:29:18', '2020-12-10 23:49:14'),
(2, 'Link Name 2', '#', 2, 'Column 1', '2020-12-10 23:30:09', '2020-12-10 23:30:09'),
(3, 'Link Name 3', '#', 3, 'Column 1', '2020-12-10 23:30:17', '2020-12-10 23:30:17'),
(4, 'Link Name 1', '#', 1, 'Column 2', '2020-12-10 23:30:35', '2020-12-10 23:30:35'),
(5, 'Link Name 2', '#', 2, 'Column 2', '2020-12-10 23:30:44', '2020-12-10 23:46:15'),
(6, 'Link Name 3', '#', 3, 'Column 2', '2020-12-10 23:30:53', '2020-12-10 23:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `login_bg` text NOT NULL,
  `top_bar_email` text DEFAULT NULL,
  `top_bar_phone` text DEFAULT NULL,
  `top_bar_social_status` text NOT NULL,
  `top_bar_login_status` text NOT NULL,
  `top_bar_registration_status` text NOT NULL,
  `top_bar_cart_status` text NOT NULL,
  `sidebar_total_recent_post` tinyint(4) NOT NULL,
  `theme_color` text NOT NULL,
  `footer_column1_heading` text NOT NULL,
  `footer_column2_heading` text NOT NULL,
  `footer_column3_heading` text NOT NULL,
  `footer_column4_heading` text NOT NULL,
  `footer_address` text NOT NULL,
  `footer_email` text NOT NULL,
  `footer_phone` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `preloader_photo` text NOT NULL,
  `preloader_status` text NOT NULL,
  `sticky_header_status` text NOT NULL,
  `google_analytic_tracking_id` text NOT NULL,
  `google_analytic_status` text NOT NULL,
  `tawk_live_chat_code` text NOT NULL,
  `tawk_live_chat_status` text NOT NULL,
  `cookie_consent_message` text NOT NULL,
  `cookie_consent_button_text` text NOT NULL,
  `cookie_consent_text_color` text NOT NULL,
  `cookie_consent_bg_color` text NOT NULL,
  `cookie_consent_button_text_color` text NOT NULL,
  `cookie_consent_button_bg_color` text NOT NULL,
  `cookie_consent_status` text NOT NULL,
  `google_recaptcha_site_key` text NOT NULL,
  `google_recaptcha_status` text NOT NULL,
  `banner_about` text NOT NULL,
  `banner_service` text NOT NULL,
  `banner_service_detail` text NOT NULL,
  `banner_blog` text NOT NULL,
  `banner_blog_detail` text NOT NULL,
  `banner_category` text NOT NULL,
  `banner_project` text NOT NULL,
  `banner_project_detail` text NOT NULL,
  `banner_team_member` text NOT NULL,
  `banner_team_member_detail` text NOT NULL,
  `banner_photo_gallery` text NOT NULL,
  `banner_video_gallery` text NOT NULL,
  `banner_faq` text NOT NULL,
  `banner_product` text NOT NULL,
  `banner_product_detail` text NOT NULL,
  `banner_contact` text NOT NULL,
  `banner_search` text NOT NULL,
  `banner_cart` text NOT NULL,
  `banner_checkout` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_registration` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_customer_panel` text NOT NULL,
  `banner_career` text NOT NULL,
  `banner_job` text NOT NULL,
  `banner_job_application` text NOT NULL,
  `banner_term` text NOT NULL,
  `banner_privacy` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `favicon`, `login_bg`, `top_bar_email`, `top_bar_phone`, `top_bar_social_status`, `top_bar_login_status`, `top_bar_registration_status`, `top_bar_cart_status`, `sidebar_total_recent_post`, `theme_color`, `footer_column1_heading`, `footer_column2_heading`, `footer_column3_heading`, `footer_column4_heading`, `footer_address`, `footer_email`, `footer_phone`, `footer_copyright`, `preloader_photo`, `preloader_status`, `sticky_header_status`, `google_analytic_tracking_id`, `google_analytic_status`, `tawk_live_chat_code`, `tawk_live_chat_status`, `cookie_consent_message`, `cookie_consent_button_text`, `cookie_consent_text_color`, `cookie_consent_bg_color`, `cookie_consent_button_text_color`, `cookie_consent_button_bg_color`, `cookie_consent_status`, `google_recaptcha_site_key`, `google_recaptcha_status`, `banner_about`, `banner_service`, `banner_service_detail`, `banner_blog`, `banner_blog_detail`, `banner_category`, `banner_project`, `banner_project_detail`, `banner_team_member`, `banner_team_member_detail`, `banner_photo_gallery`, `banner_video_gallery`, `banner_faq`, `banner_product`, `banner_product_detail`, `banner_contact`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_customer_panel`, `banner_career`, `banner_job`, `banner_job_application`, `banner_term`, `banner_privacy`, `created_at`, `updated_at`) VALUES
(1, 'logo.jpg', 'favicon.jpg', 'login_bg.jpg', 'sales@goodluckkitchen.com', '+9890350034', 'Hide', 'Show', 'Hide', 'Hide', 5, '89AAD6', 'GoodLuck Modular Kitchen', 'Useful Links', 'Contact Us', 'Gallery', '6, padhye Building S K Bole Road Dadar West,\r\nMumbai,Maharashtra (400028)', 'sales@goodluckkitchen.com', '+9890350034', 'All Rights Reserved By Web Info Nxt', 'preloader.gif', 'Hide', 'Hide', 'UA-84213520-6', 'Show', '<script type=\"text/javascript\">\r\n    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n    (function(){\r\n        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n        s1.async=true;\r\n        s1.src=\'https://embed.tawk.to/5a7c31ded7591465c7077c48/default\';\r\n        s1.charset=\'UTF-8\';\r\n        s1.setAttribute(\'crossorigin\',\'*\');\r\n        s0.parentNode.insertBefore(s1,s0);\r\n    })();\r\n</script>', 'Show', 'This website uses cookies to ensure you get the best experience on our website.', 'ACCEPT', '2FC1FF', '0E050E', '0E050E', '81AFFF', 'Show', '6LfzGuEZAAAAADZrHN3QDdPLYfS3I6BaKmjWjryh', 'Hide', 'banner_about.jpg', 'banner_service.jpg', 'banner_service_detail.jpg', 'banner_blog.jpg', 'banner_blog_detail.jpg', 'banner_category.jpg', 'banner_project.jpg', 'banner_project_detail.jpg', 'banner_team_member.jpeg', 'banner_team_member_detail.jpeg', 'banner_photo_gallery.jpeg', 'banner_video_gallery.jpeg', 'banner_faq.jpeg', 'banner_product.jpg', 'banner_product_detail.jpeg', 'banner_contact.jpeg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpeg', 'banner_login.jpeg', 'banner_registration.jpg', 'banner_forget_password.jpeg', 'banner_customer_panel.jpeg', 'banner_career.jpeg', 'banner_job.jpeg', 'banner_job_application.jpeg', 'banner_term.jpeg', 'banner_privacy.jpeg', NULL, '2024-04-24 07:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` text NOT NULL,
  `job_slug` text DEFAULT NULL,
  `job_description_short` text NOT NULL,
  `job_responsibility` text NOT NULL,
  `job_education` text DEFAULT NULL,
  `job_experience` text DEFAULT NULL,
  `job_additional_requirement` text DEFAULT NULL,
  `job_benefit` text DEFAULT NULL,
  `job_deadline` text NOT NULL,
  `job_vacancy` text NOT NULL,
  `job_company_name` text DEFAULT NULL,
  `job_location` text NOT NULL,
  `job_type` text DEFAULT NULL,
  `job_salary` text NOT NULL,
  `job_order` int(11) NOT NULL DEFAULT 0,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_slug`, `job_description_short`, `job_responsibility`, `job_education`, `job_experience`, `job_additional_requirement`, `job_benefit`, `job_deadline`, `job_vacancy`, `job_company_name`, `job_location`, `job_type`, `job_salary`, `job_order`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineer (SQL & BI Reporting)', 'software-engineer-sql-bi-reporting', 'We are looking for a Software Engineer (SQL & BI Reporting) in our company.', '<ul><li>Perform database programming for new and existing systems.</li><li>Write scripts, stored procedures, and functions for database systems with SQL Server 2008 and above.</li><li>Build and maintain reports with Crystal Reports/ Windward.</li><li>Troubleshoot database problems, queries, and errors in an accurate and timely manner</li><li>Maintain accurate and complete database programming documentation</li></ul>', '<ul><li>Bachelor in Engineering (BEngg)</li><li>B.Sc in Computer Science/ Engineering from any Reputed University.</li><li>Skills Required: MS SQL Server ,Oracle Database,Oracle PLSQL,TSQL</li></ul>', '<ul><li>At least 1 year(s)</li><li>Freshers are also encouraged to apply.</li></ul>', '<ul><li>Age 25 to 45 years</li><li>Female candidates are encouraged to apply</li><li>Self-starter who is able to take the initiative with minimal supervision</li><li>Ability to work under pressure and meet the deadline</li><li>Strong problem-solving skills</li><li>Strong communication skills - technical and non-technical</li><li>C#, ASP.Net MVC/Web API development knowledge will be a plus point.</li></ul>', '<ul><li>Medical allowance, Performance bonus, Provident fund, Gratuity, Weekly 2 holidays</li><li>Lunch Facilities: Full Subsidize</li><li>Salary Review: Yearly</li><li>Festival Bonus: 2</li></ul>', '2020/11/30', '02', 'ABC Software Limited', 'New York, USA', 'Full Time', 'Negotiable', 1, 'Software Engineer (SQL & BI Reporting)', 'Software Engineer (SQL & BI Reporting)', '2020-11-29 08:36:19', '2023-04-19 14:15:18'),
(2, 'PHP/Web Developer', 'phpweb-developer', 'This role will be focused on an integration project involving Marekto and Salesforce with additional work on our eCommerce platform.', '<ul><li>Perform database programming for new and existing systems.</li><li>Write scripts, stored procedures and functions for database system with SQL Server 2008 and above.</li><li>Build and maintain reports with Crystal Reports/ Windward.</li><li>Troubleshoot database problems, queries and errors in accurate and timely manner</li><li>Maintain accurate and complete database programming documentation</li></ul>', '<ul><li>Bachelor in Engineering (BEngg)</li><li>B.Sc in Computer Science/ Engineering from any Reputed University.</li><li>Skills Required: MS SQL Server ,Oracle Database,Oracle PLSQL,TSQL</li></ul>', '<ul><li>At least 1 year(s)</li><li>Freshers are also encouraged to apply.</li></ul>', '<ul><li>Age 25 to 45 years</li><li>Female candidates are encouraged to apply</li><li>Self-starter who is able to take the initiative with minimal supervision</li><li>Ability to work under pressure and meet the deadline</li><li>Strong problem solving skills</li><li>Strong communication skills - technical and non-technical</li><li>C#, ASP.Net MVC/Web Api development knowledge will be a plus point.</li></ul>', '<ul><li>Medical allowance, Performance bonus, Provident fund, Gratuity, Weekly 2 holidays</li><li>Lunch Facilities: Full Subsidize</li><li>Salary Review: Yearly</li><li>Festival Bonus: 2</li></ul>', '2020-07-23', '01', 'XYZ Software Limited', 'New York, USA', 'Full Time', 'Negotiable', 2, 'PHP/Web Developer', 'PHP/Web Developer', '2020-11-29 09:03:51', '2020-11-29 09:03:51'),
(3, 'Senior PHP Developer', 'senior-php-developer', 'Resume-Library is the fastest-growing job board in the U.S. market. We help thousands of expanding companies source the best candidates available. Our established tech team has worked hard to achieve a reputation for innovation, flexibility and usability, but we want more.', '<ul><li>Perform database programming for new and existing systems.</li><li>Write scripts, stored procedures and functions for database system with SQL Server 2008 and above.</li><li>Build and maintain reports with Crystal Reports/ Windward.</li><li>Troubleshoot database problems, queries and errors in accurate and timely manner</li><li>Maintain accurate and complete database programming documentation</li></ul>', '<ul><li>Bachelor in Engineering (BEngg)</li><li>B.Sc in Computer Science/ Engineering from any Reputed University.</li><li>Skills Required: MS SQL Server ,Oracle Database,Oracle PLSQL,TSQL</li></ul>', '<ul><li>At least 1 year(s)</li><li>Freshers are also encouraged to apply.</li></ul>', '<ul><li>Age 25 to 45 years</li><li>Female candidates are encouraged to apply</li><li>Self-starter who is able to take the initiative with minimal supervision</li><li>Ability to work under pressure and meet the deadline</li><li>Strong problem solving skills</li><li>Strong communication skills - technical and non-technical</li><li>C#, ASP.Net MVC/Web Api development knowledge will be a plus point.</li></ul>', '<ul><li>Medical allowance, Performance bonus, Provident fund, Gratuity, Weekly 2 holidays</li><li>Lunch Facilities: Full Subsidize</li><li>Salary Review: Yearly</li><li>Festival Bonus: 2</li></ul>', '2028-07-19', '01', 'MM Software Limited', 'New York, USA', 'Full Time', 'Negotiable', 3, 'Senior PHP Developer', 'Senior PHP Developer', '2020-11-29 09:06:01', '2020-11-29 09:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `applicant_first_name` text NOT NULL,
  `applicant_last_name` text NOT NULL,
  `applicant_email` text NOT NULL,
  `applicant_phone` text NOT NULL,
  `applicant_country` text NOT NULL,
  `applicant_state` text NOT NULL,
  `applicant_street` text NOT NULL,
  `applicant_city` text NOT NULL,
  `applicant_zip_code` text NOT NULL,
  `applicant_expected_salary` text NOT NULL,
  `applicant_cover_letter` text NOT NULL,
  `applicant_cv` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `menu_status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Show', NULL, NULL),
(2, 'About', 'Show', NULL, NULL),
(3, 'Services', 'Show', NULL, NULL),
(4, 'Shop', 'Hide', NULL, NULL),
(5, 'Blog', 'Hide', NULL, NULL),
(6, 'Project', 'Show', NULL, NULL),
(7, 'FAQ', 'Show', NULL, NULL),
(8, 'Team Members', 'Hide', NULL, NULL),
(9, 'Contact', 'Show', NULL, NULL),
(10, 'Career', 'Show', NULL, NULL),
(11, 'Photo Gallery', 'Hide', NULL, NULL),
(12, 'Video Gallery', 'Hide', NULL, NULL),
(13, 'Terms and Conditions', 'Show', NULL, NULL),
(14, 'Privacy Policy', 'Show', NULL, NULL);

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
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2020_11_18_041627_create_categories_table', 1),
(6, '2020_11_18_041747_create_blogs_table', 1),
(7, '2020_11_20_040327_create_sliders_table', 2),
(8, '2020_11_20_052802_create_general_settings_table', 3),
(11, '2020_11_20_161634_create_page_about_items_table', 4),
(12, '2020_11_21_020753_create_page_service_items_table', 4),
(13, '2020_11_21_045826_create_page_shop_items_table', 5),
(14, '2020_11_21_052123_create_page_blog_items_table', 5),
(15, '2020_11_21_052218_create_page_project_items_table', 5),
(16, '2020_11_21_052236_create_page_photo_gallery_items_table', 5),
(17, '2020_11_21_052252_create_page_video_gallery_items_table', 5),
(18, '2020_11_21_052416_create_page_faq_items_table', 5),
(19, '2020_11_21_052431_create_page_team_items_table', 5),
(20, '2020_11_21_052449_create_page_contact_items_table', 5),
(21, '2020_11_21_052506_create_page_career_items_table', 5),
(22, '2020_11_21_052522_create_page_term_items_table', 5),
(23, '2020_11_21_052537_create_page_privacy_items_table', 5),
(24, '2020_11_21_121719_create_page_home_items_table', 6),
(25, '2020_11_22_034318_create_page_other_items_table', 7),
(27, '2020_11_22_051017_create_dynamic_pages_table', 8),
(28, '2020_11_22_155040_create_projects_table', 9),
(29, '2020_11_22_155955_create_project_photos_table', 10),
(30, '2020_11_23_020609_create_photos_table', 11),
(31, '2020_11_23_023020_create_videos_table', 12),
(32, '2020_11_23_033108_create_why_choose_items_table', 13),
(34, '2020_11_23_052309_create_services_table', 14),
(35, '2020_11_23_065919_create_testimonials_table', 15),
(36, '2020_11_23_145620_create_team_members_table', 16),
(37, '2020_11_23_170012_create_faqs_table', 17),
(38, '2020_11_24_155819_create_email_templates_table', 18),
(39, '2020_11_25_003858_create_social_media_items_table', 19),
(40, '2020_11_25_014512_create_subscribers_table', 20),
(41, '2020_11_28_085244_create_comments_table', 21),
(42, '2020_11_29_130743_create_jobs_table', 22),
(43, '2020_11_29_131227_create_job_applications_table', 23),
(44, '2020_11_30_012218_create_coupons_table', 24),
(45, '2020_11_30_022238_create_shippings_table', 25),
(46, '2020_11_30_033142_create_products_table', 26),
(48, '2020_12_03_124013_create_customers_table', 27),
(49, '2020_12_06_054145_create_orders_table', 28),
(50, '2020_12_06_055114_create_order_details_table', 29),
(51, '2020_12_11_042247_create_footer_columns_table', 30),
(54, '2020_12_12_070218_create_menus_table', 32),
(56, '2021_02_19_023102_create_roles_table', 33),
(57, '2021_02_19_024253_create_role_permissions_table', 34),
(58, '2021_02_19_024527_create_role_pages_table', 34);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` text NOT NULL,
  `customer_type` text NOT NULL,
  `billing_name` text NOT NULL,
  `billing_email` text NOT NULL,
  `billing_phone` text NOT NULL,
  `billing_country` text NOT NULL,
  `billing_address` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_zip` text NOT NULL,
  `shipping_name` text NOT NULL,
  `shipping_email` text NOT NULL,
  `shipping_phone` text NOT NULL,
  `shipping_country` text NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_zip` text NOT NULL,
  `order_note` text DEFAULT NULL,
  `txnid` text NOT NULL,
  `shipping_cost` text DEFAULT NULL,
  `coupon_code` text DEFAULT NULL,
  `coupon_discount` text DEFAULT NULL,
  `paid_amount` text NOT NULL,
  `card_last4` text DEFAULT NULL,
  `card_exp_month` text DEFAULT NULL,
  `card_exp_year` text DEFAULT NULL,
  `payment_method` text NOT NULL,
  `payment_status` text NOT NULL,
  `order_no` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_name`, `customer_email`, `customer_type`, `billing_name`, `billing_email`, `billing_phone`, `billing_country`, `billing_address`, `billing_state`, `billing_city`, `billing_zip`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_country`, `shipping_address`, `shipping_state`, `shipping_city`, `shipping_zip`, `order_note`, `txnid`, `shipping_cost`, `coupon_code`, `coupon_discount`, `paid_amount`, `card_last4`, `card_exp_month`, `card_exp_year`, `payment_method`, `payment_status`, `order_no`, `created_at`, `updated_at`) VALUES
(1, 1, 'Patrick Henderson', 'demosly99@gmail.com', 'Returning Customer', 'Patrick Henderson', 'demosly99@gmail.com', '111-222-3333', 'Bangladesh', 'Aronghata', 'N/A', 'Khulna', '9100', 'Patrick Henderson', 'demosly99@gmail.com', '111-222-3333', 'Bangladesh', 'Aronghata', 'N/A', 'Khulna', '9100', NULL, 'txn_1HwIv6BoKopKik6A9XlVaFtu', '10', 'STRONG', '15', '54', '4242', '10', '2023', 'Stripe', 'Completed', '5fd03ddfe6a6e', '2020-12-08 21:00:47', NULL),
(2, 0, 'Samuel Green', 'samuel110@gmail.com', 'Guest', 'Samuel Green', 'samuel110@gmail.com', '111-222-3333', 'UK', '23 Street Road', 'KH', 'London', '12988', 'Samuel Green', 'samuel110@gmail.com', '111-222-3333', 'UK', '23 Street Road', 'KH', 'London', '12988', NULL, 'txn_1HwIxrBoKopKik6ANb6LxXtW', '0', '', '0', '319', '0005', '10', '2022', 'Stripe', 'Completed', '5fd03e8b39813', '2020-12-08 21:03:39', NULL),
(3, 1, 'Patrick Henderson', 'demosly99@gmail.com', 'Returning Customer', 'Patrick Henderson', 'demosly99@gmail.com', '111-222-3333', 'Bangladesh', 'Aronghata', 'N/A', 'Khulna', '9100', 'Patrick Henderson', 'demosly99@gmail.com', '111-222-3333', 'Bangladesh', 'Aronghata', 'N/A', 'Khulna', '9100', NULL, 'PAYID-L7ID6BI7Y50796990454002S', '0', '', '0', '60.00', '', '', '', 'PayPal', 'Completed', '5fd03f2265fa0', '2020-12-08 21:06:10', NULL),
(4, 0, 'Brent Grundy', 'brent9238@gmail.com', 'Guest', 'Brent Grundy', 'brent9238@gmail.com', '111-222-3874', 'Australia', '78 Grer Road', 'KL', 'New South Wales', '96271', 'Brent Grundy', 'brent9238@gmail.com', '111-222-3874', 'Australia', '78 Grer Road', 'KL', 'New South Wales', '96271', NULL, 'PAYID-L7ID7XI1V967346VW784225Y', '0', '', '0', '60.00', '', '', '', 'PayPal', 'Completed', '5fd03ff532966', '2020-12-08 21:09:41', NULL),
(5, 1, 'Patrick Henderson', 'demosly99@gmail.com', 'Returning Customer', 'Patrick Henderson', 'demosly99@gmail.com', '111-222-3333', 'Bangladesh', 'Aronghata', 'N/A', 'Khulna', '9100', 'Patrick Henderson', 'demosly99@gmail.com', '111-222-3333', 'Bangladesh', 'Aronghata', 'N/A', 'Khulna', '9100', NULL, 'txn_1HwJqlBoKopKik6AHODswFTL', '0', '', '0', '40', '4242', '10', '2024', 'Stripe', 'Completed', '5fd04bd7c5de0', '2020-12-08 22:00:23', NULL),
(7, 1, 'Thomas C. Bell', 'customer@gmail.com', 'Returning Customer', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', NULL, 'txn_1I1TnpBoKopKik6ATEJIiBNv', '0', '', '0', '39', '4242', '2', '2022', 'Stripe', 'Completed', '5fe31023e30a4', '2020-12-23 03:38:43', NULL),
(8, 1, 'Thomas C. Bell', 'customer@gmail.com', 'Returning Customer', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', NULL, 'PAYID-L7RRBOA1BD69183NN6084606', '0', '', '0', '30.00', '', '', '', 'PayPal', 'Completed', '5fe310cf6d80d', '2020-12-23 03:41:35', NULL),
(9, 1, 'Thomas C. Bell', 'customer@gmail.com', 'Returning Customer', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', NULL, 'PAYID-L7RRBOA1BD69183NN6084606', '0', '', '0', '30.00', '', '', '', 'PayPal', 'Completed', '5fe3119be7bb9', '2020-12-23 03:44:59', NULL),
(15, 1, 'Thomas C. Bell', 'customer@gmail.com', 'Returning Customer', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', NULL, '2U2268732A702130F', '0', '', '0', '130', '', '', '', 'PayPal', 'Completed', '64055b84bcd88', '2023-03-05 21:18:28', '2023-03-05 21:18:28'),
(16, 1, 'Thomas C. Bell', 'customer@gmail.com', 'Returning Customer', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', 'Thomas C. Bell', 'customer@gmail.com', '409-671-5285', 'USA', '1178 Burwell Heights Road Sugar Land, TX 77478', 'TX', 'Sugar Land', '77478', NULL, 'pi_3MiW2NBoKopKik6A2uAVoyU9', '0', '', '0', '45', '4242', '3', '2025', 'Stripe', 'Completed', '640571c271051', '2023-03-05 22:53:22', '2023-03-05 22:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_price` text NOT NULL,
  `product_qty` text NOT NULL,
  `payment_status` text NOT NULL,
  `order_no` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_qty`, `payment_status`, `order_no`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Product Item Name 3', '5', '3', 'Completed', '5fd03ddfe6a6e', '2020-12-08 21:00:48', NULL),
(2, 1, 5, 'Product Item Name 4', '22', '2', 'Completed', '5fd03ddfe6a6e', '2020-12-08 21:00:48', NULL),
(3, 2, 6, 'Product Item Name 5', '299', '1', 'Completed', '5fd03e8b39813', '2020-12-08 21:03:39', NULL),
(4, 2, 7, 'Product Item Name 6', '20', '1', 'Completed', '5fd03e8b39813', '2020-12-08 21:03:39', NULL),
(5, 3, 8, 'Product Item Name 7', '45', '1', 'Completed', '5fd03f2265fa0', '2020-12-08 21:06:10', NULL),
(6, 3, 9, 'Product Item Name 8', '15', '1', 'Completed', '5fd03f2265fa0', '2020-12-08 21:06:10', NULL),
(7, 4, 8, 'Product Item Name 7', '45', '1', 'Completed', '5fd03ff532966', '2020-12-08 21:09:41', NULL),
(8, 4, 9, 'Product Item Name 8', '15', '1', 'Completed', '5fd03ff532966', '2020-12-08 21:09:41', NULL),
(9, 5, 7, 'Product Item Name 6', '20', '2', 'Completed', '5fd04bd7c5de0', '2020-12-08 22:00:23', NULL),
(11, 7, 1, 'Product Item Name 1', '39', '1', 'Completed', '5fe31023e30a4', '2020-12-23 03:38:44', NULL),
(12, 8, 9, 'Product Item Name 8', '15', '2', 'Completed', '5fe310cf6d80d', '2020-12-23 03:41:35', NULL),
(13, 9, 9, 'Product Item Name 8', '15', '2', 'Completed', '5fe3119be7bb9', '2020-12-23 03:44:59', NULL),
(18, 15, 8, 'Product Item Name 7', '45', '2', 'Completed', '64055b84bcd88', '2023-03-05 21:18:28', '2023-03-05 21:18:28'),
(19, 15, 7, 'Product Item Name 6', '20', '2', 'Completed', '64055b84bcd88', '2023-03-05 21:18:28', '2023-03-05 21:18:28'),
(20, 16, 8, 'Product Item Name 7', '45', '1', 'Completed', '640571c271051', '2023-03-05 22:53:22', '2023-03-05 22:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_about_items`
--

CREATE TABLE `page_about_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_about_items`
--

INSERT INTO `page_about_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<p><span style=\"color: rgb(0, 0, 0); font-family: Spartan; font-size: 11px;\">Good Luck Modular Kitchen uses best quality materials handpicked for modular kitchens. These materials include Boiling Water Resistant Marine Plywood, HDF, HDHMR and MDF. We also use premium laminates, lacquers, Acrylics, membrane finish. The kitchen accessories combine elegance with functionality. It helps to give you a wide variety of baskets, trolleys, corner cabinet accessories, wall units and free-standing units for all your storage requirements depending on your requirements and lifestyle</span><br></p>', 'Show', 'About Us', 'About Us Meta Description', NULL, '2024-04-24 07:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `page_blog_items`
--

CREATE TABLE `page_blog_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_blog_items`
--

INSERT INTO `page_blog_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Blog', NULL, 'Show', 'Blog', 'Blog', NULL, '2023-04-19 13:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `page_career_items`
--

CREATE TABLE `page_career_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_career_items`
--

INSERT INTO `page_career_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Career', NULL, 'Show', 'Career', 'Career', NULL, '2023-04-19 13:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `page_contact_items`
--

CREATE TABLE `page_contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `contact_address` text DEFAULT NULL,
  `contact_email` text DEFAULT NULL,
  `contact_phone` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contact_items`
--

INSERT INTO `page_contact_items` (`id`, `name`, `detail`, `status`, `contact_address`, `contact_email`, `contact_phone`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Good Luck Modular Kitchen', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We have brought widest and beautiful collection of Kitchen units for your home decor. Let your significance enhancement get a place of pride to spice up your family time and bringing you shades of kitchen units that is a need for your daily requirement.Our kitchen Units are specially designed for your kitchen space available at lowest prices in India.</span><br></p>', 'Show', '6, padhye Building S K Bole Road Dadar West,Mumbai \r\nMaharashtra(400028)', 'sales@goodluckkitchen.com', '+9890350034', NULL, NULL, NULL, '2024-04-24 06:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `page_faq_items`
--

CREATE TABLE `page_faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_faq_items`
--

INSERT INTO `page_faq_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'FAQ', NULL, 'Show', 'FAQ', 'FAQ', NULL, '2020-11-21 05:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_home_items`
--

CREATE TABLE `page_home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `why_choose_title` text DEFAULT NULL,
  `why_choose_subtitle` text DEFAULT NULL,
  `why_choose_status` text DEFAULT NULL,
  `special_title` text DEFAULT NULL,
  `special_subtitle` text DEFAULT NULL,
  `special_content` text DEFAULT NULL,
  `special_btn_text` text DEFAULT NULL,
  `special_btn_url` text DEFAULT NULL,
  `special_yt_video` text DEFAULT NULL,
  `special_bg` text DEFAULT NULL,
  `special_video_bg` text DEFAULT NULL,
  `special_status` text DEFAULT NULL,
  `service_title` text DEFAULT NULL,
  `service_subtitle` text DEFAULT NULL,
  `service_status` text DEFAULT NULL,
  `testimonial_title` text DEFAULT NULL,
  `testimonial_subtitle` text DEFAULT NULL,
  `testimonial_status` text DEFAULT NULL,
  `testimonial_bg` text DEFAULT NULL,
  `project_title` text DEFAULT NULL,
  `project_subtitle` text DEFAULT NULL,
  `project_status` text DEFAULT NULL,
  `team_member_title` text DEFAULT NULL,
  `team_member_subtitle` text DEFAULT NULL,
  `team_member_status` text DEFAULT NULL,
  `appointment_title` text DEFAULT NULL,
  `appointment_text` text DEFAULT NULL,
  `appointment_btn_text` text DEFAULT NULL,
  `appointment_btn_url` text DEFAULT NULL,
  `appointment_bg` text DEFAULT NULL,
  `appointment_status` text DEFAULT NULL,
  `latest_blog_title` text DEFAULT NULL,
  `latest_blog_subtitle` text DEFAULT NULL,
  `latest_blog_status` text DEFAULT NULL,
  `newsletter_title` text DEFAULT NULL,
  `newsletter_text` text DEFAULT NULL,
  `newsletter_bg` text DEFAULT NULL,
  `newsletter_status` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_home_items`
--

INSERT INTO `page_home_items` (`id`, `seo_title`, `seo_meta_description`, `why_choose_title`, `why_choose_subtitle`, `why_choose_status`, `special_title`, `special_subtitle`, `special_content`, `special_btn_text`, `special_btn_url`, `special_yt_video`, `special_bg`, `special_video_bg`, `special_status`, `service_title`, `service_subtitle`, `service_status`, `testimonial_title`, `testimonial_subtitle`, `testimonial_status`, `testimonial_bg`, `project_title`, `project_subtitle`, `project_status`, `team_member_title`, `team_member_subtitle`, `team_member_status`, `appointment_title`, `appointment_text`, `appointment_btn_text`, `appointment_btn_url`, `appointment_bg`, `appointment_status`, `latest_blog_title`, `latest_blog_subtitle`, `latest_blog_status`, `newsletter_title`, `newsletter_text`, `newsletter_bg`, `newsletter_status`, `created_at`, `updated_at`) VALUES
(1, 'Good Luck Modular Kitchen', 'Good Luck Modular Kitchen offers fine range of latest modular kitchen designs which are truly modern and contemporary.', 'Why Choose Us ?', 'The kitchen is undeniably a reflection of an individual’s personal style. The modular kitchen embodies our latest designs serving as the reflection of the ever-transforming lifestyle of modern-day consumers.Our dedicated team of installers are trained and highly experienced in handling all kinds of modular kitchen fittings with utmost precision and efficiency.', 'Show', 'Welcome to Goodluck Modular Kitchen', NULL, 'Our complete design solution includes space planning, designing, build and install along with finishes, furnishers & fixtures, fine art advisory keeping in mind the detailed pre-decided schedules along with complete design management services, continuous client interaction & aesthetic updates, procurement & project turnover. The integration of colors, furniture, lighting, fixtures, flooring and wall covering are essentials in creating a desired outcome.\r\n\r\nFunctionality, creativity, quality and elegance are our long-standing design principles. We do everything to meet our client’s expectations or more. With craft, detail attention and consideration we deliver lifelong value and relationships to our esteemed clients.', 'Read More', '#', NULL, 'special_bg.jpg', 'special_video_bg.jpg', 'Show', 'Our Services', 'Our team always provides quality services to our valuable clients', 'Show', 'Testimonial', 'What our clients tell about us', 'Hide', 'testimonial_bg.jpg', 'Our Projects', 'See all our completed successful projects here', 'Hide', 'Team Members', 'See all our expert team members who are ready to help you always', 'Hide', 'Want to hire us for your business?', 'If you want to take our service to build your business, our expert team members are always here to help you to make you successful.', 'Make An Appointment', '#', 'appointment_bg.jpeg', 'Hide', 'Latest Blog', 'See all the latest blog about our activity from here', 'Hide', 'Newsletter', 'For LATEST UPDATES', 'newsletter_bg.jpg', 'Show', NULL, '2024-04-24 07:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `page_other_items`
--

CREATE TABLE `page_other_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `page_name` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_other_items`
--

INSERT INTO `page_other_items` (`id`, `seo_title`, `seo_meta_description`, `page_name`, `created_at`, `updated_at`) VALUES
(1, 'Search', 'Search Page Description', 'Search Page', NULL, '2023-04-19 14:10:36'),
(2, 'Cart', 'Cart Page Description', 'Cart Page', NULL, '2020-11-21 22:03:55'),
(3, 'Checkout', 'Checkout Page Description', 'Checkout Page', NULL, '2023-04-18 00:27:47'),
(4, 'Login', 'Login Page Description', 'Login Page', NULL, '2020-12-22 20:19:05'),
(5, 'Registration', 'Registration Page Description', 'Registration Page', NULL, '2020-11-21 22:04:09'),
(6, 'Forget Password', 'Forget Password Page Description', 'Forget Password Page', NULL, '2020-12-22 20:19:07'),
(7, 'Customer Panel', 'Customer Page Description', 'Customer Panel Pages', NULL, '2023-04-18 12:53:52'),
(8, 'Payment', 'Payment Page Description', 'Payment Page', NULL, '2023-04-18 12:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `page_photo_gallery_items`
--

CREATE TABLE `page_photo_gallery_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_photo_gallery_items`
--

INSERT INTO `page_photo_gallery_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Photo Gallery', NULL, 'Show', 'Photo Gallery', 'Photo Gallery', NULL, '2020-12-12 10:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `page_privacy_items`
--

CREATE TABLE `page_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_privacy_items`
--

INSERT INTO `page_privacy_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p>Lorem ipsum dolor sit amet, id saperet suavitate signiferumque sea. Eu tantas invenire signiferumque per, at affert eloquentiam eos, duo no sale utroque. His ad homero verterem, ut paulo neglegentur contentiones per. Ex cum unum vocent commodo. Ut ridens principes rationibus ius, ex mea saepe docendi, cu eum unum assum accumsan.</p><p>Ne quo possim consectetuer, splendide voluptatibus ut mea. Summo mucius regione qui et, sea soleat everti indoctum no. Brute postea ut vel, oblique propriae pertinacia et sed. No nominati adipiscing nam, accusata interpretaris no est, no tota conceptam nam. Id posidonium dissentiunt mea, an nibh menandri eum. Meis nominati cum cu.</p><p>Eum ad delicatissimi signiferumque, mea causae delenit perfecto et. Sit primis nostrum id, an postea numquam per, id quo diceret deleniti consectetuer. Eum eu salutatus mediocritatem. Blandit ocurreret dissentiet ne quo, ex mazim numquam delenit his.</p><p>Ea mel elit placerat. Ius nobis delicata gloriatur at. Nam fabulas salutandi at, in per officiis omittantur contentiones, omnes insolens suscipiantur sed cu. Ei modus persequeris vix. Persius legimus has an, mea dicit maiestatis adipiscing eu.</p>', 'Show', 'Privacy Policy', 'Privacy Policy', NULL, '2020-11-21 05:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `page_project_items`
--

CREATE TABLE `page_project_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_project_items`
--

INSERT INTO `page_project_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Projects', NULL, 'Show', 'Projects', 'Project Page Meta Description', NULL, '2020-11-21 05:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `page_service_items`
--

CREATE TABLE `page_service_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_service_items`
--

INSERT INTO `page_service_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Base Blind Eye', '<p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAgAAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/+4ADkFkb2JlAGTAAAAAAf/bAIQABgQEBAUEBgUFBgkGBQYJCwgGBggLDAoKCwoKDBAMDAwMDAwQDA4PEA8ODBMTFBQTExwbGxscHx8fHx8fHx8fHwEHBwcNDA0YEBAYGhURFRofHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8f/8AAEQgAWgBkAwERAAIRAQMRAf/EAKgAAAIDAQEBAAAAAAAAAAAAAAAEAwUGAgEIAQEBAQEBAQEAAAAAAAAAAAAAAQUGAgMEEAACAQICAgkRBAkFAAAAAAABAgMABBEhEgUxQWFxIhNTFAdRkcHRcoKSwjNzs9N0NQZGF4EyUkWxQmKistIjFVWhQ2PDFhEAAQIBCgYBAwUBAAAAAAAAAAECEVGRobHRctIDBAYxM1M0FRZUYSIFIUESUhPB/9oADAMBAAIRAxEAPwD6oZ1UYscKAhN9aj/cFAec/teUFAHP7TlBQBz+05QUAc/tOUFAHP7TlBQBz+05QUAc/tOUFAHP7TlBQBz+05QUB0l3bucFcE0BNpDDHaoDHdIOtbq0s0S3cxtI4UsuRAwJy61Y353UvyciLFgquhWv/DW/DadmbnQekURsarSvPwTrAnPXUp7xvWV8fC6j5D6cZ9fMZHQZRhFF+FdYt+bSj7G/nq+F1HyH04yeYyOgyjCSD4Q1gfzeXwW9ZTwmo+Q+nGPMZHQZRhOx8G6wP5xL4LesqeF1HyH04y+XyOgyjCdf+K1h/mJfBb1lPC6j5D6cY8vkdBlGEP8AxWsP8zL4Lesp4XUfIfTjHl8joMownh+C9Yj84l8FvWU8LqPkPpxjy+R0GUYTk/B2sB+cS+C3rKvhNR8h9OMnmMjoMownDfCWsB+by+C3rKeE1HyH04x5jI6DKMJ7B8I6wlYr/d5VwGOOix/7KeE1HyH04x5jI6DKMIvrfVmtPh+CG+TWkk541U4tgQMwWzxd/wAPUr8OuyNRompmf7Of90ILH6r/AGWQ/bos7I1bly/8ms+2MUh9PokpvOet/auP29HH/SusOYMp0meTg854prnty9u2+lTjd2/z1uLWhqa6U54SjTIUTgReIwke5VKTLHUBIsVCwIZZYxlHwycgf1cdzDNvspEQEH1LNJNd3POZo5LyIQtGXYooUEYxxghYmOOZXhbtSAIoY3srOOwlMgCR8VHNI5kZssA3HNgWbu8DumqCa0gaO1SMymd4hg8jYhu+BJI+2qh5UntlwkY9UdmgQoOkH3ND7Svo3rnNzdu2+lTjf27z1uLW0vfl/vexW8YpQdJnk4POeKa57cvbtvpU43dv89bi1oamulOeIIkyFE4BRqNMaA41hBaXFrLaXALJIAHRDokDHEYtlo1FUoW1nI0EcCDQto1CIGxIwGxkc332y3K8xKPRWkceYGLHIucyasRA9aMVUUgrdiCOF2uCqwgcNnw0cN3GqDOy2C3V7ZXEccqWdpMJIS7vGS54I0EBDFP2ZOD+zUBcRDB23q9HkzvSD7mh9pX0b1zm5u3bfSpxv7d563FraXvy/wB72K3jFKDpM8nB5zxTXPbl7dt9KnG7t/nrcWtDU10pzxzCF0QWIVQMSx2AOqaicCrxF9W315fxNjbPZSo7JJbu6s66LEKWZCQNIcIAZ7tIgtbexjTAvw2GY/CDuDs7NeVKg3UPQHAZmgK641oGlSCzTj5ZCQshyiUqMTi23vChIHi6tBkE12/ObgZqWGCJ3CbA39mvSEUjvVyjP/In6a9EOVGDGhDNdIPuaH2lfRvXO7m7dt9KnG9t3nrcWtpe/L/e9it4xSg6TPJwec8U1z25e3bfSpxu7f563FrQ1NdKc8K31pbXmqrq0uYxLbTwPHNEdhkZTip36icCrxGLTV9uYVEeMLxMyRSRnBgoYgDdG/RUA0Lq5tcrxdOPauYxl367I3xXg9ISSaxgGCw/15WGKxx4H7SdgChTnmk1xneNwNq3T7vfHZb9FAKazvba0mtpQpaO34wskS6RyUDAAbe5QFbrPX3HTxSWs93bxquLottpq+Oey22NiqQYGtra9YRxRyoyOhbjUKfrbteonka2zVIZnpB9zQ+0r6N653c3btvpU43tu89bi1tL35f73sVvGKUHSZ5ODznimue3L27b6VON3b/PW4taGprpTnhO8uZ4oVSO3aZJUcSSKQBGMBmcdnZqJwKpZWB/pnu3/iNAPrmK8qekK7VskEEMgVeG00vAQcI8M1CjXFTTeWOgnJKcz3TUBBdIqX1gqgBQZMh3NAJ3nw5DLLJIL26iMh0mVJDo4nqLtVUQ8xOpI+It4LcyNK6uuDNhplQccTh1K9EOh941SGZ6Qfc0PtK+jeud3N27b6VON7bvPW4tbS9+X+97FbxilB0meTg854prnty9u2+lTjd2/wA9bi1oamulOeF3JNrIBmeLbADuaicCrxGrJ8I23Hf+I1QPxvXlUKgtqhUEMzAAM08uJ2zwzXksR7EUESv1hKiX1izMAulJme4oAluJJHCKeKBzDN98jcXa3zXo8ldLZztfW9yLp4YodPjbVMCs+kMFMrHPgnMYVYCIwh4RqkM30g+5ofaV9G9c7ubt230qcb23eetxa2l78v8Ae9it4xSg6TPJwec8U1z25e3bfSpxu7f563FrQ1NdKc8V91axXthPZTM6xXMbRO8TFHAcYEow2GG0aJwH7jNsDaxiNAZIV2M8XG/j96hR6CdHAKNiMaAi1XJhbyeem/jNSAJzdl8RANPqyHJB26gOAihxJIeMlGw7D7vcjaqwAnq/V9lqy1NtZqyxF3kOmxkYtI2k3CbE7J2KIgVTqR6pDmE4ud6qQz3SD7mh9pX0b1zm5u3bfSpxv7d563FraXvy/wB72K3jFKHpMU8TAdrjAP3Wrnty9u2+lTjd2/z1uLWhqK6U54r45RgBjRFQKhOkoG3SKD9TslC2mraEn41298bdSKFgpHbQ8XGUll40F2fRHBXFmxz6tIoIKN8cAMAQBtCkUH6nJmXq0iggpE8w6tWKEgRPKvVpFCQU9tJA0rgHYHZoIFF0g+5ofaV9G9c7ubt230qcb+3eetxa2l/oN/YdHDPR7FbxijOvdRW2trYwzA4Y4qwyII2xX5tVpWZ7P4P4H302pfkv/mziZY9GcOOU8uG+v8tY/rWn/s+dMJrewZ8jJltD6ZxctJ117VX1vTyvnSwnsGfI2ZbQ+mcXLSdde1T1vTyvnSwewZ8jZltD6ZxctJ117VPW9PK+dLB7BnyNmW0PpnFy0nXXtU9b08r50sHsGfI2ZbQ+mcXLSdde1T1vTyvnSwewZ8jZltD6ZxctJ117VPW9PK+dLB7BnyNmW0PpnFy0nXXtU9b08r50sHsGfI2ZbQ+mcXLSdde1T1vTyvnSwewZ8jZltD6ZxcvJ+72qet6eV86YR7BnyNmW0ns+jezjnSSWSSQKQdAkYHDq4AV7ytvadjkdFywlVLDzmfnc9zVT7UjJG02HNU5vxOGWGFbpik9AFAFAFAFAFAFAFAFAFAFAFAFAf//Z\" style=\"width: 100px;\" data-filename=\"cc-1.jpg\"><br></p>', 'Show', 'Services', 'Services Meta Description', NULL, '2024-04-24 05:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `page_shop_items`
--

CREATE TABLE `page_shop_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_shop_items`
--

INSERT INTO `page_shop_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Shop', NULL, 'Show', 'Shop', 'Shop Page Meta Description', NULL, '2020-11-21 00:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `page_team_items`
--

CREATE TABLE `page_team_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_team_items`
--

INSERT INTO `page_team_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Team Member', NULL, 'Show', 'Team Member', 'Team Member', NULL, '2020-11-21 05:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `page_term_items`
--

CREATE TABLE `page_term_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_term_items`
--

INSERT INTO `page_term_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms and Conditions', '<p>Lorem ipsum dolor sit amet, id saperet suavitate signiferumque sea. Eu tantas invenire signiferumque per, at affert eloquentiam eos, duo no sale utroque. His ad homero verterem, ut paulo neglegentur contentiones per. Ex cum unum vocent commodo. Ut ridens principes rationibus ius, ex mea saepe docendi, cu eum unum assum accumsan.</p><p>Ne quo possim consectetuer, splendide voluptatibus ut mea. Summo mucius regione qui et, sea soleat everti indoctum no. Brute postea ut vel, oblique propriae pertinacia et sed. No nominati adipiscing nam, accusata interpretaris no est, no tota conceptam nam. Id posidonium dissentiunt mea, an nibh menandri eum. Meis nominati cum cu.</p><p>Eum ad delicatissimi signiferumque, mea causae delenit perfecto et. Sit primis nostrum id, an postea numquam per, id quo diceret deleniti consectetuer. Eum eu salutatus mediocritatem. Blandit ocurreret dissentiet ne quo, ex mazim numquam delenit his.</p><p>Ea mel elit placerat. Ius nobis delicata gloriatur at. Nam fabulas salutandi at, in per officiis omittantur contentiones, omnes insolens suscipiantur sed cu. Ei modus persequeris vix. Persius legimus has an, mea dicit maiestatis adipiscing eu.</p>', 'Show', 'Terms and Conditions', 'Terms and Conditions', NULL, '2020-11-21 05:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_video_gallery_items`
--

CREATE TABLE `page_video_gallery_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_video_gallery_items`
--

INSERT INTO `page_video_gallery_items` (`id`, `name`, `detail`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Video Gallery', NULL, 'Show', 'Video Gallery', 'Video Gallery', NULL, '2020-12-12 10:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('arefin2k@gmail.com', '$2y$10$n.b82lZQRLiL4WIgRsgpeu8UpfQMmx9M1FdiQQ18rjK38i9yGD6kG', '2020-11-23 19:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_name` text NOT NULL,
  `photo_caption` text DEFAULT NULL,
  `photo_order` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo_name`, `photo_caption`, `photo_order`, `created_at`, `updated_at`) VALUES
(3, 'photo-3.jpeg', 'Item 1', 1, '2020-11-22 20:27:59', '2020-11-22 20:49:20'),
(4, 'photo-4.jpeg', 'Item 2', 2, '2020-11-22 20:28:26', '2020-11-22 20:51:06'),
(5, 'photo-5.jpeg', 'Item 3', 3, '2020-11-22 20:28:34', '2020-11-22 20:37:16'),
(6, 'photo-6.png', 'Item 4', 4, '2020-11-22 20:28:42', '2020-11-22 20:51:17'),
(7, 'photo-7.jpeg', 'Item 5', 5, '2020-11-22 20:28:59', '2020-11-22 20:37:26'),
(8, 'photo-8.jpeg', 'Item 6', 6, '2020-11-22 20:29:07', '2020-11-22 20:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` text NOT NULL,
  `product_slug` text DEFAULT NULL,
  `product_old_price` text DEFAULT NULL,
  `product_current_price` text NOT NULL,
  `product_stock` smallint(6) NOT NULL,
  `product_content` text NOT NULL,
  `product_content_short` text NOT NULL,
  `product_return_policy` text DEFAULT NULL,
  `product_featured_photo` text NOT NULL,
  `product_order` smallint(6) NOT NULL DEFAULT 0,
  `product_status` text NOT NULL,
  `seo_title` text NOT NULL,
  `seo_meta_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_slug`, `product_old_price`, `product_current_price`, `product_stock`, `product_content`, `product_content_short`, `product_return_policy`, `product_featured_photo`, `product_order`, `product_status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Product Item Name 1', 'product-item-name-1', '59', '39', 7, '<p>Lorem ipsum dolor sit amet, erat dicat percipitur vix in, habeo expetendis nam et, his homero verterem molestiae ea. Tantas legere blandit duo ei, ei malis maluisset voluptatum mei. Ne mel alia consul equidem, at mea timeam indoctum explicari. Ut detracto gubergren dissentiet sea, harum dolores deserunt ut sed. Mel ne animal invidunt petentium, te mei exerci voluptaria. Quo id populo fabulas voluptatum, ius ei legere deterruisset, et nec ridens liberavisse. Nusquam partiendo scribentur quo an.</p><p>Et duo inermis tacimates, sed id posse intellegebat, ut sed agam aperiri. Nam ex dolorem vivendum, te omnis eleifend est, atqui tempor fabellas ne qui. Cotidieque reprehendunt eam no. Sed at alii sanctus, ius dictas mediocritatem in. Qui stet principes ut, ad pro dicat oporteat. Doctus senserit sea ut, eum an iisque neglegentur. Fugit putant consequuntur id sit.</p><p>In vidisse referrentur consectetuer duo. Dolor vocibus consulatu an pro, ei sed graece tritani perpetua. Mel et dolorem percipit, per nemore commune gloriatur no. Ex sed minim utamur intellegebat.&nbsp;</p>', 'Lorem ipsum dolor sit amet, erat dicat percipitur vix in, habeo expetendis nam et, his homero verterem molestiae ea.', '<p>Eu eos malis dicat facilisis, aliquip alterum assentior at vix. Inimicus interpretaris ei vim, graece singulis atomorum ad per, ea sed admodum apeirian indoctum. Cu pro tantas reprehendunt. Usu menandri pertinacia et, vis ne scaevola dissentias. In ornatus eligendi persequeris his, ea usu causae labitur. At porro delectus sed. Quot minim ei has, has id dolore maiorum interesset.</p><p>Justo incorrupte ea quo, adhuc eligendi reprimique pro et. Eos nobis aeterno conclusionemque ei, no eam dolor delectus. Error altera argumentum quo ea, eam ne antiopam assentior. Ea mea ullum dicant timeam, sea affert reformidans ad. Ei dicam appetere sea, id phaedrum moderatius sed.</p><p>Ad mel velit quidam honestatis. Has no mediocrem repudiandae, mel in ceteros perfecto gubergren, has ne dignissim consequat theophrastus. Duo et assum harum iriure, solum ubique philosophia per an, mea clita nominati reprehendunt ei. Zril melius dignissim qui ad. Debitis fierent quo in, no usu affert aeterno.</p>', 'product-1.png', 1, 'Show', 'Product Item Name', 'Product Item Name', '2020-11-30 03:40:11', '2020-11-30 19:03:13'),
(3, 'Product Item Name 2', 'product-item-name-2', '166', '110', 24, '<p>Lorem ipsum dolor sit amet, erat dicat percipitur vix in, habeo expetendis nam et, his homero verterem molestiae ea. Tantas legere blandit duo ei, ei malis maluisset voluptatum mei. Ne mel alia consul equidem, at mea timeam indoctum explicari. Ut detracto gubergren dissentiet sea, harum dolores deserunt ut sed. Mel ne animal invidunt petentium, te mei exerci voluptaria. Quo id populo fabulas voluptatum, ius ei legere deterruisset, et nec ridens liberavisse. Nusquam partiendo scribentur quo an.</p><p>Et duo inermis tacimates, sed id posse intellegebat, ut sed agam aperiri. Nam ex dolorem vivendum, te omnis eleifend est, atqui tempor fabellas ne qui. Cotidieque reprehendunt eam no. Sed at alii sanctus, ius dictas mediocritatem in. Qui stet principes ut, ad pro dicat oporteat. Doctus senserit sea ut, eum an iisque neglegentur. Fugit putant consequuntur id sit.</p><p>In vidisse referrentur consectetuer duo. Dolor vocibus consulatu an pro, ei sed graece tritani perpetua. Mel et dolorem percipit, per nemore commune gloriatur no. Ex sed minim utamur intellegebat.</p>', 'Lorem ipsum dolor sit amet, erat dicat percipitur vix in, habeo expetendis nam et, his homero verterem molestiae ea.', '<p>Eu eos malis dicat facilisis, aliquip alterum assentior at vix. Inimicus interpretaris ei vim, graece singulis atomorum ad per, ea sed admodum apeirian indoctum. Cu pro tantas reprehendunt. Usu menandri pertinacia et, vis ne scaevola dissentias. In ornatus eligendi persequeris his, ea usu causae labitur. At porro delectus sed. Quot minim ei has, has id dolore maiorum interesset.</p><p>Justo incorrupte ea quo, adhuc eligendi reprimique pro et. Eos nobis aeterno conclusionemque ei, no eam dolor delectus. Error altera argumentum quo ea, eam ne antiopam assentior. Ea mea ullum dicant timeam, sea affert reformidans ad. Ei dicam appetere sea, id phaedrum moderatius sed.</p><p>Ad mel velit quidam honestatis. Has no mediocrem repudiandae, mel in ceteros perfecto gubergren, has ne dignissim consequat theophrastus. Duo et assum harum iriure, solum ubique philosophia per an, mea clita nominati reprehendunt ei. Zril melius dignissim qui ad. Debitis fierent quo in, no usu affert aeterno.</p>', 'product-3.png', 2, 'Show', 'Product Item Name', 'Product Item Name', '2020-11-30 09:36:05', '2020-11-30 19:03:16'),
(4, 'Product Item Name 3', 'product-item-name-3', '9', '5', -1, '<p>Lorem ipsum dolor sit amet, erat dicat percipitur vix in, habeo expetendis nam et, his homero verterem molestiae ea. Tantas legere blandit duo ei, ei malis maluisset voluptatum mei. Ne mel alia consul equidem, at mea timeam indoctum explicari. Ut detracto gubergren dissentiet sea, harum dolores deserunt ut sed. Mel ne animal invidunt petentium, te mei exerci voluptaria. Quo id populo fabulas voluptatum, ius ei legere deterruisset, et nec ridens liberavisse. Nusquam partiendo scribentur quo an.</p><p>Et duo inermis tacimates, sed id posse intellegebat, ut sed agam aperiri. Nam ex dolorem vivendum, te omnis eleifend est, atqui tempor fabellas ne qui. Cotidieque reprehendunt eam no. Sed at alii sanctus, ius dictas mediocritatem in. Qui stet principes ut, ad pro dicat oporteat. Doctus senserit sea ut, eum an iisque neglegentur. Fugit putant consequuntur id sit.</p><p>In vidisse referrentur consectetuer duo. Dolor vocibus consulatu an pro, ei sed graece tritani perpetua. Mel et dolorem percipit, per nemore commune gloriatur no. Ex sed minim utamur intellegebat.</p>', 'Lorem ipsum dolor sit amet, erat dicat percipitur vix in, habeo expetendis nam et, his homero verterem molestiae ea.', '<p>Eu eos malis dicat facilisis, aliquip alterum assentior at vix. Inimicus interpretaris ei vim, graece singulis atomorum ad per, ea sed admodum apeirian indoctum. Cu pro tantas reprehendunt. Usu menandri pertinacia et, vis ne scaevola dissentias. In ornatus eligendi persequeris his, ea usu causae labitur. At porro delectus sed. Quot minim ei has, has id dolore maiorum interesset.</p><p>Justo incorrupte ea quo, adhuc eligendi reprimique pro et. Eos nobis aeterno conclusionemque ei, no eam dolor delectus. Error altera argumentum quo ea, eam ne antiopam assentior. Ea mea ullum dicant timeam, sea affert reformidans ad. Ei dicam appetere sea, id phaedrum moderatius sed.</p><p>Ad mel velit quidam honestatis. Has no mediocrem repudiandae, mel in ceteros perfecto gubergren, has ne dignissim consequat theophrastus. Duo et assum harum iriure, solum ubique philosophia per an, mea clita nominati reprehendunt ei. Zril melius dignissim qui ad. Debitis fierent quo in, no usu affert aeterno.</p>', 'product-4.png', 3, 'Show', 'Product Item Name', 'Product Item Name', '2020-11-30 09:37:39', '2020-11-30 19:03:20'),
(5, 'Product Item Name 4', 'product-item-name-4', '29', '22', 42, '<p>Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut. Prima impetus virtute usu ex, et vim numquam efficiantur, cu vis option civibus. Ad tale quas corpora has, melius nostrud ius ad, sonet consectetuer signiferumque cu usu. Sed te adhuc atomorum, ad quo erant alterum reprimique. Virtute equidem deseruisse vim ei.</p><p>Eu vim atqui ludus petentium, suas idque est id. Ne veniam oblique propriae vim, dicant forensibus definitionem vix eu. Pri eu probatus abhorreant, nonumy aliquid perpetua ut usu. Etiam iudicabit vituperata ne est, id sed everti utroque, vis ea oblique pertinax concludaturque.</p><p>Te cum abhorreant temporibus, eam mazim platonem ea. Dolor abhorreant sea et, usu cu debet bonorum, aliquando instructior necessitatibus vix te. Ea ubique percipit recusabo cum, regione consulatu interpretaris vim no, mel altera fabulas probatus ad. Ignota tritani ad nam, eu per delectus perfecto conceptam.</p><p>An sanctus pertinax cotidieque sed, quo te habemus molestiae consetetur, at salutandi periculis expetendis vim. Quando nusquam eum ut, ius an quem alii. Sit ad ullum consequuntur. Ei sea iudico sententiae honestatis, mel dolorem pertinax senserit ei, cu causae timeam eripuit sit. Sed ex habeo blandit oporteat, ex usu autem iisque. Vel minim dicam soleat te, denique liberavisse ex usu, cibo omnes te eam. Pri esse nobis no, no quo volutpat vulputate.</p>', 'Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut.', '<p>Eu eos malis dicat facilisis, aliquip alterum assentior at vix. Inimicus interpretaris ei vim, graece singulis atomorum ad per, ea sed admodum apeirian indoctum. Cu pro tantas reprehendunt. Usu menandri pertinacia et, vis ne scaevola dissentias. In ornatus eligendi persequeris his, ea usu causae labitur. At porro delectus sed. Quot minim ei has, has id dolore maiorum interesset.</p><p>Justo incorrupte ea quo, adhuc eligendi reprimique pro et. Eos nobis aeterno conclusionemque ei, no eam dolor delectus. Error altera argumentum quo ea, eam ne antiopam assentior. Ea mea ullum dicant timeam, sea affert reformidans ad. Ei dicam appetere sea, id phaedrum moderatius sed.</p><p>Ad mel velit quidam honestatis. Has no mediocrem repudiandae, mel in ceteros perfecto gubergren, has ne dignissim consequat theophrastus. Duo et assum harum iriure, solum ubique philosophia per an, mea clita nominati reprehendunt ei. Zril melius dignissim qui ad. Debitis fierent quo in, no usu affert aeterno.</p>', 'product-5.png', 4, 'Show', 'Product Item Name', 'Product Item Name', '2020-11-30 09:38:45', '2020-11-30 19:03:25'),
(6, 'Product Item Name 5', 'product-item-name-5', '370', '299', 34, '<p>Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut. Prima impetus virtute usu ex, et vim numquam efficiantur, cu vis option civibus. Ad tale quas corpora has, melius nostrud ius ad, sonet consectetuer signiferumque cu usu. Sed te adhuc atomorum, ad quo erant alterum reprimique. Virtute equidem deseruisse vim ei.</p><p>Eu vim atqui ludus petentium, suas idque est id. Ne veniam oblique propriae vim, dicant forensibus definitionem vix eu. Pri eu probatus abhorreant, nonumy aliquid perpetua ut usu. Etiam iudicabit vituperata ne est, id sed everti utroque, vis ea oblique pertinax concludaturque.</p><p>Te cum abhorreant temporibus, eam mazim platonem ea. Dolor abhorreant sea et, usu cu debet bonorum, aliquando instructior necessitatibus vix te. Ea ubique percipit recusabo cum, regione consulatu interpretaris vim no, mel altera fabulas probatus ad. Ignota tritani ad nam, eu per delectus perfecto conceptam.</p><p>An sanctus pertinax cotidieque sed, quo te habemus molestiae consetetur, at salutandi periculis expetendis vim. Quando nusquam eum ut, ius an quem alii. Sit ad ullum consequuntur. Ei sea iudico sententiae honestatis, mel dolorem pertinax senserit ei, cu causae timeam eripuit sit. Sed ex habeo blandit oporteat, ex usu autem iisque. Vel minim dicam soleat te, denique liberavisse ex usu, cibo omnes te eam. Pri esse nobis no, no quo volutpat vulputate.</p>', 'Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut.', '<p>Eu eos malis dicat facilisis, aliquip alterum assentior at vix. Inimicus interpretaris ei vim, graece singulis atomorum ad per, ea sed admodum apeirian indoctum. Cu pro tantas reprehendunt. Usu menandri pertinacia et, vis ne scaevola dissentias. In ornatus eligendi persequeris his, ea usu causae labitur. At porro delectus sed. Quot minim ei has, has id dolore maiorum interesset.</p><p>Justo incorrupte ea quo, adhuc eligendi reprimique pro et. Eos nobis aeterno conclusionemque ei, no eam dolor delectus. Error altera argumentum quo ea, eam ne antiopam assentior. Ea mea ullum dicant timeam, sea affert reformidans ad. Ei dicam appetere sea, id phaedrum moderatius sed.</p><p>Ad mel velit quidam honestatis. Has no mediocrem repudiandae, mel in ceteros perfecto gubergren, has ne dignissim consequat theophrastus. Duo et assum harum iriure, solum ubique philosophia per an, mea clita nominati reprehendunt ei. Zril melius dignissim qui ad. Debitis fierent quo in, no usu affert aeterno.</p>', 'product-6.png', 5, 'Show', 'Product Item Name', 'Product Item Name', '2020-11-30 09:39:42', '2020-11-30 19:03:29'),
(7, 'Product Item Name 6', 'product-item-name-6', '28', '20', 29, '<p>Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut. Prima impetus virtute usu ex, et vim numquam efficiantur, cu vis option civibus. Ad tale quas corpora has, melius nostrud ius ad, sonet consectetuer signiferumque cu usu. Sed te adhuc atomorum, ad quo erant alterum reprimique. Virtute equidem deseruisse vim ei.</p><p>Eu vim atqui ludus petentium, suas idque est id. Ne veniam oblique propriae vim, dicant forensibus definitionem vix eu. Pri eu probatus abhorreant, nonumy aliquid perpetua ut usu. Etiam iudicabit vituperata ne est, id sed everti utroque, vis ea oblique pertinax concludaturque.</p><p>Te cum abhorreant temporibus, eam mazim platonem ea. Dolor abhorreant sea et, usu cu debet bonorum, aliquando instructior necessitatibus vix te. Ea ubique percipit recusabo cum, regione consulatu interpretaris vim no, mel altera fabulas probatus ad. Ignota tritani ad nam, eu per delectus perfecto conceptam.</p><p>An sanctus pertinax cotidieque sed, quo te habemus molestiae consetetur, at salutandi periculis expetendis vim. Quando nusquam eum ut, ius an quem alii. Sit ad ullum consequuntur. Ei sea iudico sententiae honestatis, mel dolorem pertinax senserit ei, cu causae timeam eripuit sit. Sed ex habeo blandit oporteat, ex usu autem iisque. Vel minim dicam soleat te, denique liberavisse ex usu, cibo omnes te eam. Pri esse nobis no, no quo volutpat vulputate.</p>', 'Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut.', '<p>Eu eos malis dicat facilisis, aliquip alterum assentior at vix. Inimicus interpretaris ei vim, graece singulis atomorum ad per, ea sed admodum apeirian indoctum. Cu pro tantas reprehendunt. Usu menandri pertinacia et, vis ne scaevola dissentias. In ornatus eligendi persequeris his, ea usu causae labitur. At porro delectus sed. Quot minim ei has, has id dolore maiorum interesset.</p><p>Justo incorrupte ea quo, adhuc eligendi reprimique pro et. Eos nobis aeterno conclusionemque ei, no eam dolor delectus. Error altera argumentum quo ea, eam ne antiopam assentior. Ea mea ullum dicant timeam, sea affert reformidans ad. Ei dicam appetere sea, id phaedrum moderatius sed.</p><p>Ad mel velit quidam honestatis. Has no mediocrem repudiandae, mel in ceteros perfecto gubergren, has ne dignissim consequat theophrastus. Duo et assum harum iriure, solum ubique philosophia per an, mea clita nominati reprehendunt ei. Zril melius dignissim qui ad. Debitis fierent quo in, no usu affert aeterno.</p>', 'product-7.png', 6, 'Show', 'Product Item Name', 'Product Item Name', '2020-11-30 09:40:29', '2020-11-30 19:03:34'),
(8, 'Product Item Name 7', 'product-item-name-7', '65', '45', 37, '<p>Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut. Prima impetus virtute usu ex, et vim numquam efficiantur, cu vis option civibus. Ad tale quas corpora has, melius nostrud ius ad, sonet consectetuer signiferumque cu usu. Sed te adhuc atomorum, ad quo erant alterum reprimique. Virtute equidem deseruisse vim ei.</p><p>Eu vim atqui ludus petentium, suas idque est id. Ne veniam oblique propriae vim, dicant forensibus definitionem vix eu. Pri eu probatus abhorreant, nonumy aliquid perpetua ut usu. Etiam iudicabit vituperata ne est, id sed everti utroque, vis ea oblique pertinax concludaturque.</p><p>Te cum abhorreant temporibus, eam mazim platonem ea. Dolor abhorreant sea et, usu cu debet bonorum, aliquando instructior necessitatibus vix te. Ea ubique percipit recusabo cum, regione consulatu interpretaris vim no, mel altera fabulas probatus ad. Ignota tritani ad nam, eu per delectus perfecto conceptam.</p><p>An sanctus pertinax cotidieque sed, quo te habemus molestiae consetetur, at salutandi periculis expetendis vim. Quando nusquam eum ut, ius an quem alii. Sit ad ullum consequuntur. Ei sea iudico sententiae honestatis, mel dolorem pertinax senserit ei, cu causae timeam eripuit sit. Sed ex habeo blandit oporteat, ex usu autem iisque. Vel minim dicam soleat te, denique liberavisse ex usu, cibo omnes te eam. Pri esse nobis no, no quo volutpat vulputate.</p>', 'Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut.', '<p>Eu eos malis dicat facilisis, aliquip alterum assentior at vix. Inimicus interpretaris ei vim, graece singulis atomorum ad per, ea sed admodum apeirian indoctum. Cu pro tantas reprehendunt. Usu menandri pertinacia et, vis ne scaevola dissentias. In ornatus eligendi persequeris his, ea usu causae labitur. At porro delectus sed. Quot minim ei has, has id dolore maiorum interesset.</p><p>Justo incorrupte ea quo, adhuc eligendi reprimique pro et. Eos nobis aeterno conclusionemque ei, no eam dolor delectus. Error altera argumentum quo ea, eam ne antiopam assentior. Ea mea ullum dicant timeam, sea affert reformidans ad. Ei dicam appetere sea, id phaedrum moderatius sed.</p><p>Ad mel velit quidam honestatis. Has no mediocrem repudiandae, mel in ceteros perfecto gubergren, has ne dignissim consequat theophrastus. Duo et assum harum iriure, solum ubique philosophia per an, mea clita nominati reprehendunt ei. Zril melius dignissim qui ad. Debitis fierent quo in, no usu affert aeterno.</p>', 'product-8.png', 7, 'Show', 'Product Item Name', 'Product Item Name', '2020-11-30 09:41:18', '2020-11-30 19:03:38'),
(9, 'Product Item Name 8', 'product-item-name-8', '20', '15', 6, '<p>Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut. Prima impetus virtute usu ex, et vim numquam efficiantur, cu vis option civibus. Ad tale quas corpora has, melius nostrud ius ad, sonet consectetuer signiferumque cu usu. Sed te adhuc atomorum, ad quo erant alterum reprimique. Virtute equidem deseruisse vim ei.</p><p>Eu vim atqui ludus petentium, suas idque est id. Ne veniam oblique propriae vim, dicant forensibus definitionem vix eu. Pri eu probatus abhorreant, nonumy aliquid perpetua ut usu. Etiam iudicabit vituperata ne est, id sed everti utroque, vis ea oblique pertinax concludaturque.</p><p>Te cum abhorreant temporibus, eam mazim platonem ea. Dolor abhorreant sea et, usu cu debet bonorum, aliquando instructior necessitatibus vix te. Ea ubique percipit recusabo cum, regione consulatu interpretaris vim no, mel altera fabulas probatus ad. Ignota tritani ad nam, eu per delectus perfecto conceptam.</p><p>An sanctus pertinax cotidieque sed, quo te habemus molestiae consetetur, at salutandi periculis expetendis vim. Quando nusquam eum ut, ius an quem alii. Sit ad ullum consequuntur. Ei sea iudico sententiae honestatis, mel dolorem pertinax senserit ei, cu causae timeam eripuit sit. Sed ex habeo blandit oporteat, ex usu autem iisque. Vel minim dicam soleat te, denique liberavisse ex usu, cibo omnes te eam. Pri esse nobis no, no quo volutpat vulputate.</p>', 'Lorem ipsum dolor sit amet, te constituto intellegam eloquentiam sed, putent accusamus temporibus his ut.', '<p>Eu eos malis dicat facilisis, aliquip alterum assentior at vix. Inimicus interpretaris ei vim, graece singulis atomorum ad per, ea sed admodum apeirian indoctum. Cu pro tantas reprehendunt. Usu menandri pertinacia et, vis ne scaevola dissentias. In ornatus eligendi persequeris his, ea usu causae labitur. At porro delectus sed. Quot minim ei has, has id dolore maiorum interesset.</p><p>Justo incorrupte ea quo, adhuc eligendi reprimique pro et. Eos nobis aeterno conclusionemque ei, no eam dolor delectus. Error altera argumentum quo ea, eam ne antiopam assentior. Ea mea ullum dicant timeam, sea affert reformidans ad. Ei dicam appetere sea, id phaedrum moderatius sed.</p><p>Ad mel velit quidam honestatis. Has no mediocrem repudiandae, mel in ceteros perfecto gubergren, has ne dignissim consequat theophrastus. Duo et assum harum iriure, solum ubique philosophia per an, mea clita nominati reprehendunt ei. Zril melius dignissim qui ad. Debitis fierent quo in, no usu affert aeterno.</p>', 'product-9.png', 8, 'Show', 'Product Item Name', 'Product Item Name', '2020-11-30 09:42:06', '2020-11-30 19:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` text NOT NULL,
  `project_slug` text DEFAULT NULL,
  `project_content` text DEFAULT NULL,
  `project_content_short` text DEFAULT NULL,
  `project_start_date` text DEFAULT NULL,
  `project_end_date` text DEFAULT NULL,
  `project_client_name` text DEFAULT NULL,
  `project_client_company` text DEFAULT NULL,
  `project_client_comment` text DEFAULT NULL,
  `project_video` text DEFAULT NULL,
  `project_featured_photo` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `project_slug`, `project_content`, `project_content_short`, `project_start_date`, `project_end_date`, `project_client_name`, `project_client_company`, `project_client_comment`, `project_video`, `project_featured_photo`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(3, 'Libris impetus molestiae te eu ius ludus', 'libris-impetus-molestiae-te-eu-ius-ludus', '<p>Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam. An meliore admodum vis, quot aliquip bonorum ei quo. Mea nemore feugiat verterem cu, modus vulputate mea id.</p><p>Est facilis recteque et, etiam aliquip fastidii usu ea, eos id diam aeterno definiebas. Ad pro tantas numquam alienum, an quidam dolorem voluptatum his, ut natum explicari consequat quo. Minim audiam te vel, in est decore legimus. Semper accusamus posidonium ea duo, usu tale fabellas cu, elitr semper tincidunt ius in. Cum possim labitur eripuit at, vix ut quas commodo neglegentur.</p><p>Cetero mnesarchum id vis, id sea magna interpretaris. In perpetua posidonium complectitur duo. Te duo harum veniam altera, pri veritus nusquam offendit ex. Sed no ferri soleat quaerendum, quo ad vitae utroque expetendis, ex lorem soleat vis.</p>', 'Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam.', '2020-01-01', '2020-02-21', 'Client Name Here', 'Company Name Here', 'Qui commune laboramus definitionem et, ut regione persius vel, facete verterem has eu. Scripta iracundia mel in, vim omittam perpetua ut. Magna affert graece at pri, et est blandit laboramus. Duo feugiat periculis eu, ne illum melius molestie has.', 'wwOY6RgrDKQ', 'project-featured-photo-3.png', 'Libris impetus molestiae te eu ius ludus', 'Libris impetus molestiae te eu ius ludus', '2020-11-22 18:39:57', '2020-11-22 18:39:57'),
(8, 'Eu paulo lucilius adipisci duo eam', 'eu-paulo-lucilius-adipisci-duo-eam', '<p>Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam. An meliore admodum vis, quot aliquip bonorum ei quo. Mea nemore feugiat verterem cu, modus vulputate mea id.<br></p><p>Est facilis recteque et, etiam aliquip fastidii usu ea, eos id diam aeterno definiebas. Ad pro tantas numquam alienum, an quidam dolorem voluptatum his, ut natum explicari consequat quo. Minim audiam te vel, in est decore legimus. Semper accusamus posidonium ea duo, usu tale fabellas cu, elitr semper tincidunt ius in. Cum possim labitur eripuit at, vix ut quas commodo neglegentur.</p><p>Cetero mnesarchum id vis, id sea magna interpretaris. In perpetua posidonium complectitur duo. Te duo harum veniam altera, pri veritus nusquam offendit ex. Sed no ferri soleat quaerendum, quo ad vitae utroque expetendis, ex lorem soleat vis.</p>', 'Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam.', '2020-03-03', '2020-04-23', 'Client Name Here', 'Company Name Here', 'Qui commune laboramus definitionem et, ut regione persius vel, facete verterem has eu. Scripta iracundia mel in, vim omittam perpetua ut. Magna affert graece at pri, et est blandit laboramus. Duo feugiat periculis eu, ne illum melius molestie has.', 'hfDUf8g94nA', 'project-featured-photo-8.png', 'Eu paulo lucilius adipisci duo eam', 'Eu paulo lucilius adipisci duo eam', '2020-12-13 03:20:04', '2020-12-13 03:20:04'),
(9, 'Debitis consequuntur sea eu ex agam', 'debitis-consequuntur-sea-eu-ex-agam', '<p>Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam. An meliore admodum vis, quot aliquip bonorum ei quo. Mea nemore feugiat verterem cu, modus vulputate mea id.<br></p><p>Est facilis recteque et, etiam aliquip fastidii usu ea, eos id diam aeterno definiebas. Ad pro tantas numquam alienum, an quidam dolorem voluptatum his, ut natum explicari consequat quo. Minim audiam te vel, in est decore legimus. Semper accusamus posidonium ea duo, usu tale fabellas cu, elitr semper tincidunt ius in. Cum possim labitur eripuit at, vix ut quas commodo neglegentur.</p><p>Cetero mnesarchum id vis, id sea magna interpretaris. In perpetua posidonium complectitur duo. Te duo harum veniam altera, pri veritus nusquam offendit ex. Sed no ferri soleat quaerendum, quo ad vitae utroque expetendis, ex lorem soleat vis.</p>', 'Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam.', '2020-03-25', '2020-05-05', 'Client Name Here', 'Company Name Here', 'Qui commune laboramus definitionem et, ut regione persius vel, facete verterem has eu. Scripta iracundia mel in, vim omittam perpetua ut. Magna affert graece at pri, et est blandit laboramus. Duo feugiat periculis eu, ne illum melius molestie has.', 'eT68ne9TwsA', 'project-featured-photo-9.png', 'Debitis consequuntur sea eu ex agam', 'Debitis consequuntur sea eu ex agam', '2020-12-13 03:22:01', '2020-12-13 03:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `project_photos`
--

CREATE TABLE `project_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `project_photo` text NOT NULL,
  `project_photo_caption` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_photos`
--

INSERT INTO `project_photos` (`id`, `project_id`, `project_photo`, `project_photo_caption`, `created_at`, `updated_at`) VALUES
(19, 8, 'project-photo-19.png', 'Project Photo', '2020-12-13 03:24:34', '2020-12-13 03:24:34'),
(20, 8, 'project-photo-20.png', 'Project Photo', '2020-12-13 03:24:53', '2020-12-13 03:24:53'),
(21, 8, 'project-photo-21.png', 'Project Photo', '2020-12-13 03:25:09', '2020-12-13 03:25:09'),
(22, 9, 'project-photo-22.png', 'Project Photo', '2020-12-13 03:25:46', '2020-12-13 03:25:46'),
(23, 9, 'project-photo-23.png', 'Project Photo', '2020-12-13 03:26:07', '2020-12-13 03:26:07'),
(24, 3, 'project-photo-24.jpg', 'Kitchen Cabinets', '2024-04-24 06:04:02', '2024-04-24 06:04:02'),
(25, 3, 'project-photo-25.jpg', 'Modular Kitchen', '2024-04-24 06:04:32', '2024-04-24 06:04:32'),
(26, 3, 'project-photo-26.jpg', 'Kitchen Designs', '2024-04-24 06:05:08', '2024-04-24 06:05:08'),
(27, 3, 'project-photo-27.jpg', NULL, '2024-04-24 06:05:29', '2024-04-24 06:05:29'),
(28, 3, 'project-photo-28.jpg', NULL, '2024-04-24 06:05:42', '2024-04-24 06:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(4, 'Manager', '2021-03-05 18:43:49', '2021-03-05 19:41:00'),
(5, 'Editor', '2021-03-05 18:44:05', '2021-03-05 18:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_pages`
--

CREATE TABLE `role_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_pages`
--

INSERT INTO `role_pages` (`id`, `page_title`, `created_at`, `updated_at`) VALUES
(1, 'General Settings', NULL, NULL),
(2, 'Page Settings', NULL, NULL),
(3, 'Footer Columns', NULL, NULL),
(4, 'Sliders', NULL, NULL),
(5, 'Blog Section', NULL, NULL),
(6, 'Dynamic Pages', NULL, NULL),
(7, 'Admin User Section', NULL, NULL),
(8, 'Menu Manage', NULL, NULL),
(9, 'Project', NULL, NULL),
(10, 'Career Section', NULL, NULL),
(11, 'Photo Gallery', NULL, NULL),
(12, 'Video Gallery', NULL, NULL),
(13, 'Product Section', NULL, NULL),
(14, 'Order Section', NULL, NULL),
(15, 'Customer Section', NULL, NULL),
(16, 'Why Choose Us', NULL, NULL),
(17, 'Service', NULL, NULL),
(18, 'Testimonial', NULL, NULL),
(19, 'Team Member', NULL, NULL),
(20, 'FAQ', NULL, NULL),
(21, 'Email Template', NULL, NULL),
(22, 'Subscriber Section', NULL, NULL),
(23, 'Social Media', NULL, NULL),
(24, 'Translation Section', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_page_id` int(11) NOT NULL,
  `access_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `role_page_id`, `access_status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 1, NULL, NULL),
(2, 4, 2, 1, NULL, NULL),
(3, 4, 3, 1, NULL, NULL),
(4, 4, 4, 1, NULL, NULL),
(5, 4, 5, 1, NULL, NULL),
(6, 4, 6, 1, NULL, NULL),
(7, 4, 7, 0, NULL, NULL),
(8, 4, 8, 1, NULL, NULL),
(9, 4, 9, 1, NULL, NULL),
(10, 4, 10, 1, NULL, NULL),
(11, 4, 11, 1, NULL, NULL),
(12, 4, 12, 1, NULL, NULL),
(13, 4, 13, 1, NULL, NULL),
(14, 4, 14, 1, NULL, NULL),
(15, 4, 15, 1, NULL, NULL),
(16, 4, 16, 1, NULL, NULL),
(17, 4, 17, 1, NULL, NULL),
(18, 4, 18, 1, NULL, NULL),
(19, 4, 19, 1, NULL, NULL),
(20, 4, 20, 1, NULL, NULL),
(21, 4, 21, 1, NULL, NULL),
(22, 4, 22, 1, NULL, NULL),
(23, 4, 23, 1, NULL, NULL),
(24, 5, 1, 0, NULL, NULL),
(25, 5, 2, 0, NULL, NULL),
(26, 5, 3, 0, NULL, NULL),
(27, 5, 4, 0, NULL, NULL),
(28, 5, 5, 1, NULL, NULL),
(29, 5, 6, 0, NULL, NULL),
(30, 5, 7, 0, NULL, NULL),
(31, 5, 8, 0, NULL, NULL),
(32, 5, 9, 0, NULL, NULL),
(33, 5, 10, 0, NULL, NULL),
(34, 5, 11, 0, NULL, NULL),
(35, 5, 12, 0, NULL, NULL),
(36, 5, 13, 0, NULL, NULL),
(37, 5, 14, 0, NULL, NULL),
(38, 5, 15, 0, NULL, NULL),
(39, 5, 16, 0, NULL, NULL),
(40, 5, 17, 0, NULL, NULL),
(41, 5, 18, 0, NULL, NULL),
(42, 5, 19, 0, NULL, NULL),
(43, 5, 20, 0, NULL, NULL),
(44, 5, 21, 0, NULL, NULL),
(45, 5, 22, 0, NULL, NULL),
(46, 5, 23, 0, NULL, NULL),
(70, 4, 24, 1, NULL, NULL),
(71, 5, 24, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `photo` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `description`, `short_description`, `photo`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Base Blind Eye', NULL, '<p><br></p>', NULL, 'service-1.jpg', NULL, NULL, '2020-11-22 23:35:59', '2024-04-24 05:58:36'),
(2, 'Blind Gas Cylinder', '2', '<p><br></p>', NULL, 'service-2.jpg', NULL, NULL, '2020-11-22 23:36:45', '2024-04-24 06:10:43'),
(3, 'Base Cab', '3', '<p><br></p>', NULL, 'service-3.jpg', NULL, NULL, '2020-11-22 23:37:17', '2024-04-24 06:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` text NOT NULL,
  `shipping_text` text NOT NULL,
  `shipping_cost` varchar(10) NOT NULL,
  `shipping_order` smallint(6) NOT NULL DEFAULT 0,
  `shipping_status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `shipping_name`, `shipping_text`, `shipping_cost`, `shipping_order`, `shipping_status`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'Shipment will be within 10-15 Days', '0', 1, 'Show', '2020-11-29 21:08:10', '2020-11-29 21:11:47'),
(2, 'Standard Shipping', 'Shipment will be within 5-10 Day.', '5', 2, 'Show', '2020-11-29 21:14:01', '2020-11-29 21:14:01'),
(3, '2-Day Shipping', 'Shipment will be within 2 Days.', '10', 3, 'Show', '2020-11-29 21:14:21', '2020-11-29 21:14:21'),
(4, 'Same day delivery', 'Shipment will be within 1 Day.', '20', 4, 'Show', '2020-11-29 21:14:46', '2020-11-29 21:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_heading` varchar(255) DEFAULT NULL,
  `slider_text` text DEFAULT NULL,
  `slider_button_text` varchar(255) NOT NULL,
  `slider_button_url` varchar(255) NOT NULL,
  `slider_photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_heading`, `slider_text`, `slider_button_text`, `slider_button_url`, `slider_photo`, `created_at`, `updated_at`) VALUES
(2, 'Why MYNT?', 'The kitchen design software lets you consider planning, designing and building an indoor kitchen home. This software even lets you choose kitchen furniture, fittings, fixtures, sinks, flooring and all the other features that might be needed in the kitchen. It allows for the user to visualize the kitchen before going ahead to build it.', 'Read More', '#', 'slider-2.jpg', '2020-11-19 22:21:45', '2024-04-24 06:56:04'),
(3, 'We are the leading Cabinet Manufacturers.', 'Goodluck modular kitchen provides maximum best quality product which suits your Budget.', 'Read More', '#', 'slider-3.jpg', '2020-11-19 22:22:04', '2024-04-24 06:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_items`
--

CREATE TABLE `social_media_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_url` text NOT NULL,
  `social_icon` text NOT NULL,
  `social_order` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_items`
--

INSERT INTO `social_media_items` (`id`, `social_url`, `social_icon`, `social_order`, `created_at`, `updated_at`) VALUES
(2, '#', 'fab fa-twitter', 2, '2020-11-24 18:54:56', '2020-11-24 19:07:08'),
(4, '#', 'fab fa-facebook-f', 1, '2020-11-24 18:56:23', '2020-11-25 03:04:07'),
(5, '#', 'fab fa-linkedin-in', 3, '2020-11-24 19:07:28', '2020-11-24 19:08:35'),
(6, '#', 'fab fa-pinterest-p', 4, '2020-11-24 19:07:41', '2020-11-24 19:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subs_email` text NOT NULL,
  `subs_token` text DEFAULT NULL,
  `subs_active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `subs_email`, `subs_token`, `subs_active`, `created_at`, `updated_at`) VALUES
(1, 'flagstoneveneydel2q9+6fcb4niidjs@gmail.com', 'a2606ee0a0d5a67e5897166251b71a6b26442b4c37a1c63431b24a124bc821d9', 0, NULL, NULL),
(2, 'flagstoneveneydel2q9+6fcb5ce4njl@gmail.com', '59e4f0f0b16d2043fcff3641793905c791b1a456a91ee950bca651079f399580', 0, NULL, NULL),
(3, 'flagstoneveneydel2q9+6fcb34u92bt@gmail.com', '3e3a4b31ab9d11399dcaf772317661a4bf96ce87823c2caff87a7e3020628b9d', 0, NULL, NULL),
(4, 'sorgelakhanakp9z5+2bdui7fbm1il@gmail.com', '664c5f7969160066dd891d1b2b37410eaccab4bec083c0c59ec5da7ce3f51bef', 0, NULL, NULL),
(5, 'medranostarckuzz8n0+2bdui8g4nbkr@gmail.com', '248b97eaffeeeb387355cf74d8717ba908c0170010051a90d5b1f78efd40ef51', 0, NULL, NULL),
(6, 'osbornehartlinejvp4u1+2bdui6qh270r@gmail.com', 'ba46bd78887a38a0d5fba227d4c6c125e9f21c9a2550f54e72181af84d2dfe46', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` text DEFAULT NULL,
  `designation` text NOT NULL,
  `degree` text DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `website` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `video_youtube` text DEFAULT NULL,
  `photo` text NOT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `slug`, `designation`, `degree`, `detail`, `facebook`, `twitter`, `linkedin`, `youtube`, `instagram`, `email`, `phone`, `website`, `address`, `video_youtube`, `photo`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Brent Grundy', 'brent-grundy', 'Founder', '<p>Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p><p>Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p>Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p>Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p>Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', '<p>Fugit contentiones id nam, noster percipit ne mei. Duo no modo tempor, per ea quaeque commune complectitur, sed ex alia utamur apeirian. Est id solum dicant ceteros. Quem omnium dignissim in vim, sea nihil expetenda id, molestiae definitionem ad pri.</p><p>Id per esse iudicabit expetendis, ne qui legimus accusata corrumpit. Ei has duis corrumpit, facilisis accommodare te nec. Ne usu molestiae voluptatum mediocritatem, tota percipitur ut qui. Ne modo idque feugait vel. Postea epicuri mei te. Ad tollit qualisque dignissim per, eu purto virtute fabulas his.</p><p>Viris ignota vim et. Ea idque etiam liberavisse has. Ex mel lorem voluptatibus, sed vero accusata no. Ad pri utinam praesent, usu iuvaret adipisci contentiones an. Eum falli fabellas ut, usu te putent posidonium.</p><p>Ei cum elit fuisset, ad tota assueverit scriptorem qui, pro ex utamur recteque incorrupte. Has iisque consectetuer eu. Malis doming eirmod id his, te mea novum offendit. Ea minim doming evertitur eum, latine neglegentur no nec. Ea pro putant perpetua interpretaris. Mea ne noster aliquando constituam, iudico discere neglegentur vel cu, mandamus corrumpit duo ne.</p>', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'http://www.youtube.com', 'http://www.instagram.com', 'info@yourwebsite1.com', '111-222-3333', 'http://www.yourwebsite1.com', '4008 Ocala Street\r\nOrlando, FL 32809', '12oynGTjYKs', 'team-member-1.jpeg', 'Brent Grundy', 'Brent Grundy', '2020-11-23 10:53:34', '2020-11-23 10:53:34'),
(2, 'Robin Cook', 'robin-cook', 'Chairman', '<p>Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.<br></p><p>Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p>Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p>Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p>Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', '<p>Fugit contentiones id nam, noster percipit ne mei. Duo no modo tempor, per ea quaeque commune complectitur, sed ex alia utamur apeirian. Est id solum dicant ceteros. Quem omnium dignissim in vim, sea nihil expetenda id, molestiae definitionem ad pri.<br></p><p>Id per esse iudicabit expetendis, ne qui legimus accusata corrumpit. Ei has duis corrumpit, facilisis accommodare te nec. Ne usu molestiae voluptatum mediocritatem, tota percipitur ut qui. Ne modo idque feugait vel. Postea epicuri mei te. Ad tollit qualisque dignissim per, eu purto virtute fabulas his.<br></p><p>Viris ignota vim et. Ea idque etiam liberavisse has. Ex mel lorem voluptatibus, sed vero accusata no. Ad pri utinam praesent, usu iuvaret adipisci contentiones an. Eum falli fabellas ut, usu te putent posidonium.</p><p>Ei cum elit fuisset, ad tota assueverit scriptorem qui, pro ex utamur recteque incorrupte. Has iisque consectetuer eu. Malis doming eirmod id his, te mea novum offendit. Ea minim doming evertitur eum, latine neglegentur no nec. Ea pro putant perpetua interpretaris. Mea ne noster aliquando constituam, iudico discere neglegentur vel cu, mandamus corrumpit duo ne.</p>', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', NULL, NULL, 'robincook@gmail.com', '111-222-3334', 'http://www.website2.com', '4008 Ocala Street\r\nOrlando, FL 32809', 'ez-M8wHX4Wk', 'team-member-2.jpg', 'Robin Cook', 'Robin Cook', '2020-12-13 03:28:29', '2020-12-13 03:28:29'),
(3, 'Bob Smith', 'bob-smith', 'Executive Office', '<p>Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.<br></p><p>Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p>Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p>Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p>Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', '<p>Fugit contentiones id nam, noster percipit ne mei. Duo no modo tempor, per ea quaeque commune complectitur, sed ex alia utamur apeirian. Est id solum dicant ceteros. Quem omnium dignissim in vim, sea nihil expetenda id, molestiae definitionem ad pri.<br></p><p>Id per esse iudicabit expetendis, ne qui legimus accusata corrumpit. Ei has duis corrumpit, facilisis accommodare te nec. Ne usu molestiae voluptatum mediocritatem, tota percipitur ut qui. Ne modo idque feugait vel. Postea epicuri mei te. Ad tollit qualisque dignissim per, eu purto virtute fabulas his.</p><p>Viris ignota vim et. Ea idque etiam liberavisse has. Ex mel lorem voluptatibus, sed vero accusata no. Ad pri utinam praesent, usu iuvaret adipisci contentiones an. Eum falli fabellas ut, usu te putent posidonium.</p><p>Ei cum elit fuisset, ad tota assueverit scriptorem qui, pro ex utamur recteque incorrupte. Has iisque consectetuer eu. Malis doming eirmod id his, te mea novum offendit. Ea minim doming evertitur eum, latine neglegentur no nec. Ea pro putant perpetua interpretaris. Mea ne noster aliquando constituam, iudico discere neglegentur vel cu, mandamus corrumpit duo ne.</p>', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', NULL, NULL, 'bobsmith@gmail.com', '111-222-3338', 'http://www.website3.com', '4008 Ocala Street\r\nOrlando, FL 32809', 'KZxskJojRLY', 'team-member-3.jpg', 'Bob Smith', 'Bob Smith', '2020-12-13 04:24:07', '2020-12-13 04:24:07'),
(4, 'Patrick Henderson', 'patrick-henderson', 'Marketing Officer', '<p>Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.<br></p><p>Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p><p>Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p><p>Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p><p>Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', '<p>Fugit contentiones id nam, noster percipit ne mei. Duo no modo tempor, per ea quaeque commune complectitur, sed ex alia utamur apeirian. Est id solum dicant ceteros. Quem omnium dignissim in vim, sea nihil expetenda id, molestiae definitionem ad pri.<br></p><p>Id per esse iudicabit expetendis, ne qui legimus accusata corrumpit. Ei has duis corrumpit, facilisis accommodare te nec. Ne usu molestiae voluptatum mediocritatem, tota percipitur ut qui. Ne modo idque feugait vel. Postea epicuri mei te. Ad tollit qualisque dignissim per, eu purto virtute fabulas his.</p><p>Viris ignota vim et. Ea idque etiam liberavisse has. Ex mel lorem voluptatibus, sed vero accusata no. Ad pri utinam praesent, usu iuvaret adipisci contentiones an. Eum falli fabellas ut, usu te putent posidonium.</p><p>Ei cum elit fuisset, ad tota assueverit scriptorem qui, pro ex utamur recteque incorrupte. Has iisque consectetuer eu. Malis doming eirmod id his, te mea novum offendit. Ea minim doming evertitur eum, latine neglegentur no nec. Ea pro putant perpetua interpretaris. Mea ne noster aliquando constituam, iudico discere neglegentur vel cu, mandamus corrumpit duo ne.</p>', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', NULL, NULL, 'patrickhenderson@gmail.com', '111-222-3839', 'http://www.website4.com', '4008 Ocala Street\r\nOrlando, FL 32809', 'FbYrGaoWIec', 'team-member-4.jpg', 'Patrick Henderson', 'Patrick Henderson', '2020-12-13 04:26:08', '2020-12-13 04:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `photo` text NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `photo`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'Managing Director, ABC Media', 'testimonial-1.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2020-11-23 01:11:54', '2020-11-23 01:13:39'),
(2, 'Dadiv Smith', 'CEO, XYZ Technologies', 'testimonial-2.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2020-11-23 01:12:35', '2020-11-23 01:13:44'),
(3, 'Stefen Carman', 'Chairman, ZZ Corporation', 'testimonial-3.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2020-11-23 01:12:54', '2020-11-23 01:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_youtube` text NOT NULL,
  `video_caption` text DEFAULT NULL,
  `video_order` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_youtube`, `video_caption`, `video_order`, `created_at`, `updated_at`) VALUES
(1, 'MFptcZb4YwM', 'Caption 2', 2, '2020-11-22 21:08:21', '2020-11-22 21:13:39'),
(2, 'al-KfXBK1E0', 'Caption 1', 1, '2020-11-22 21:08:36', '2020-11-22 21:13:07'),
(3, 'JiR7cr3cljU', 'Caption 3', 3, '2020-11-22 21:13:58', '2020-11-22 21:13:58'),
(4, 'O7QtDOZuwfc', 'Caption 4', 4, '2020-11-22 21:14:42', '2020-11-22 21:14:42'),
(5, '5Lc91smOaoY', 'Caption 5', 5, '2020-11-22 21:15:02', '2020-11-22 21:15:02'),
(6, 'UDqR6gnuemw', 'Caption 6', 6, '2020-11-22 21:15:23', '2020-11-22 21:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_items`
--

CREATE TABLE `why_choose_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_items`
--

INSERT INTO `why_choose_items` (`id`, `name`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, '1. EXCEPTIONAL CUSTOMER SERVICE', 'We think providing exceptional customer service is our USP, our main strength. We take pride in providing outstanding services to our clients. We know that our customers are important for us and hence we do not leave any stone unturned in helping, guiding and providing the best possible solutions & after sales services and support to our clients.', 'why-choose-1.png', '2020-11-22 23:10:36', '2024-04-24 07:15:54'),
(2, '5. COMPETITIVE PRICES', 'We offer you some of the best cutting edge technologies for ecommerce development and online marketing services to maximize your sales and brand value across multiple retail channels at a very competitive price.', 'why-choose-2.png', '2020-11-22 23:12:59', '2024-04-24 07:16:33'),
(3, 'SPACE MANAGEMENT', 'Optimally using every nook and corner of the space in context, modular kitchen models maximise functionality and augment storage systems seamlessly. Offering a variety of organisational solutions, every unit comes with a string of innovative accessories and modular cabinet styles that help simulate a clutter-free environment in the kitchen. Compact in design, modularity radiates efficiency in its very foundation.', 'why-choose-3.png', '2020-11-22 23:13:16', '2024-04-24 07:18:22'),
(4, 'COST EFFECTIVE INSTALLATION', 'These are mass-produced and fairly economic in terms of installation. The pre-fabricated nature of modular kitchen systems allows for simple and quick installation on site, often taking no more than a week to complete the procedure. Additionally, the process of mounting also requires less labour.', 'why-choose-4.png', '2020-11-22 23:13:32', '2024-04-24 07:19:11'),
(5, 'EASY MAINTENANCE', 'Designed in a way that every tiny crevice can be accessed, modular kitchens are extremely easy to clean and maintain. Since these systems are almost entirely collapsible, the skirting and other accessories of a modular kitchen can be easily removed to ensure thorough cleaning or repair.', 'why-choose-5.png', '2020-11-22 23:13:47', '2024-04-24 07:20:18'),
(6, 'Security Protection', 'Due to their functional nature, modular kitchen models allow customers to change the aesthetic of their kitchen at any point in time. Such designs allow customers to render their kitchens with a completely new look by simply changing their cabinets, cupboards, knobs or backsplash tiles. Flexible and continually adaptable, modular kitchens help customers move with the times.', 'why-choose-6.png', '2020-11-22 23:14:10', '2024-04-24 07:20:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
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
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_columns`
--
ALTER TABLE `footer_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_about_items`
--
ALTER TABLE `page_about_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_career_items`
--
ALTER TABLE `page_career_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_home_items`
--
ALTER TABLE `page_home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_other_items`
--
ALTER TABLE `page_other_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_photo_gallery_items`
--
ALTER TABLE `page_photo_gallery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_project_items`
--
ALTER TABLE `page_project_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_service_items`
--
ALTER TABLE `page_service_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_shop_items`
--
ALTER TABLE `page_shop_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_team_items`
--
ALTER TABLE `page_team_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_term_items`
--
ALTER TABLE `page_term_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_video_gallery_items`
--
ALTER TABLE `page_video_gallery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_photos`
--
ALTER TABLE `project_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_pages`
--
ALTER TABLE `role_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_items`
--
ALTER TABLE `social_media_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer_columns`
--
ALTER TABLE `footer_columns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `page_about_items`
--
ALTER TABLE `page_about_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_career_items`
--
ALTER TABLE `page_career_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_home_items`
--
ALTER TABLE `page_home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_other_items`
--
ALTER TABLE `page_other_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `page_photo_gallery_items`
--
ALTER TABLE `page_photo_gallery_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_project_items`
--
ALTER TABLE `page_project_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_service_items`
--
ALTER TABLE `page_service_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_shop_items`
--
ALTER TABLE `page_shop_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_team_items`
--
ALTER TABLE `page_team_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_term_items`
--
ALTER TABLE `page_term_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_video_gallery_items`
--
ALTER TABLE `page_video_gallery_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project_photos`
--
ALTER TABLE `project_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_pages`
--
ALTER TABLE `role_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_media_items`
--
ALTER TABLE `social_media_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
