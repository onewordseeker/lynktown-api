-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2023 at 01:07 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lynktown`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `url`, `type`, `created_at`, `updated_at`) VALUES
(1, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/7470b643-fe0e-4a0d-90d3-eb5d847cbc4e.jpg', 'image', '2023-05-13 11:56:23', '2023-05-13 11:56:23'),
(2, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/e42f1e15-7ce3-486c-8bb4-cfed9cd6b908.jpg', 'image', '2023-05-13 11:56:23', '2023-05-13 11:56:23'),
(3, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/d5bdd426-955e-47bf-81ee-01df72d82923.jpg', 'image', '2023-05-13 11:58:55', '2023-05-13 11:58:55'),
(4, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/10430755-34a1-4355-9c27-b38c0fca7ef5.jpg', 'image', '2023-05-13 11:58:55', '2023-05-13 11:58:55'),
(5, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/c9073ddf-a065-4317-b4c6-50e04031315b.jpg', 'image', '2023-05-13 11:59:22', '2023-05-13 11:59:22'),
(6, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/d46fb713-8a21-4c0a-9e81-575e5b14aa98.jpg', 'image', '2023-05-13 11:59:22', '2023-05-13 11:59:22'),
(7, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2Fc9073ddf-a065-4317-b4c6-50e04031315b.jpg?alt=media&token=31a74f36-659a-4638-b4da-5a8c26875136', 'image', '2023-05-13 12:00:01', '2023-05-13 12:00:01'),
(8, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/coverImg%2Fd46fb713-8a21-4c0a-9e81-575e5b14aa98.jpg?alt=media&token=7d75da4a-da15-4196-9260-3b11563ddec5', 'image', '2023-05-13 12:00:01', '2023-05-13 12:00:01'),
(9, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/35621fc0-2ae1-4492-8804-b19556cb6798.jpg', 'image', '2023-05-13 12:18:46', '2023-05-13 12:18:46'),
(10, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/58e22e34-8ece-4f58-b959-3603667fe9c4.jpg', 'image', '2023-05-13 12:18:46', '2023-05-13 12:18:46'),
(11, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg', 'image', '2023-05-13 12:19:08', '2023-05-13 12:19:08'),
(12, 'file:///storage/emulated/0/Android/data/com.lynktown.app/files/Pictures/78dccd44-d615-43bf-a189-cb224911faf2.jpg', 'image', '2023-05-13 12:19:08', '2023-05-13 12:19:08'),
(13, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2F3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg?alt=media&token=e08a9bab-01eb-47ec-bb02-0c37e3549e58', 'image', '2023-05-13 12:20:10', '2023-05-13 12:20:10'),
(14, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/coverImg%2F78dccd44-d615-43bf-a189-cb224911faf2.jpg?alt=media&token=4847465c-c3b9-45ab-a625-efc81f7b3f6a', 'image', '2023-05-13 12:20:10', '2023-05-13 12:20:10'),
(15, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2F3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg?alt=media&token=e08a9bab-01eb-47ec-bb02-0c37e3549e58', 'image', '2023-05-13 17:23:40', '2023-05-13 17:23:40'),
(16, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/coverImg%2F78dccd44-d615-43bf-a189-cb224911faf2.jpg?alt=media&token=4847465c-c3b9-45ab-a625-efc81f7b3f6a', 'image', '2023-05-13 17:23:40', '2023-05-13 17:23:40'),
(17, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2F3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg?alt=media&token=e08a9bab-01eb-47ec-bb02-0c37e3549e58', 'image', '2023-05-13 17:29:05', '2023-05-13 17:29:05'),
(18, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/coverImg%2F78dccd44-d615-43bf-a189-cb224911faf2.jpg?alt=media&token=4847465c-c3b9-45ab-a625-efc81f7b3f6a', 'image', '2023-05-13 17:29:05', '2023-05-13 17:29:05'),
(19, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2F3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg?alt=media&token=e08a9bab-01eb-47ec-bb02-0c37e3549e58', 'image', '2023-05-13 17:35:56', '2023-05-13 17:35:56'),
(20, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/coverImg%2F78dccd44-d615-43bf-a189-cb224911faf2.jpg?alt=media&token=4847465c-c3b9-45ab-a625-efc81f7b3f6a', 'image', '2023-05-13 17:35:56', '2023-05-13 17:35:56'),
(21, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2F3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg?alt=media&token=e08a9bab-01eb-47ec-bb02-0c37e3549e58', 'image', '2023-05-13 17:36:11', '2023-05-13 17:36:11'),
(22, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/coverImg%2F78dccd44-d615-43bf-a189-cb224911faf2.jpg?alt=media&token=4847465c-c3b9-45ab-a625-efc81f7b3f6a', 'image', '2023-05-13 17:36:11', '2023-05-13 17:36:11'),
(23, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2F3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg?alt=media&token=e08a9bab-01eb-47ec-bb02-0c37e3549e58', 'image', '2023-05-13 17:37:03', '2023-05-13 17:37:03'),
(24, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/coverImg%2F78dccd44-d615-43bf-a189-cb224911faf2.jpg?alt=media&token=4847465c-c3b9-45ab-a625-efc81f7b3f6a', 'image', '2023-05-13 17:37:03', '2023-05-13 17:37:03'),
(25, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2F3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg?alt=media&token=e08a9bab-01eb-47ec-bb02-0c37e3549e58', 'image', '2023-05-13 17:37:27', '2023-05-13 17:37:27'),
(52, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/profileImg%2F3b6040da-3da3-4829-9e00-8240ff6f0d80.jpg?alt=media&token=e08a9bab-01eb-47ec-bb02-0c37e3549e58', 'image', '2023-05-13 22:01:45', '2023-05-13 22:01:45'),
(53, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/coverImg%2F78dccd44-d615-43bf-a189-cb224911faf2.jpg?alt=media&token=4847465c-c3b9-45ab-a625-efc81f7b3f6a', 'image', '2023-05-13 22:01:45', '2023-05-13 22:01:45'),
(64, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_72719a47-cf17-4f11-be43-4ca93aaaae0f.jpg?alt=media', 'image', '2023-05-13 22:38:12', '2023-05-13 22:38:12'),
(65, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_4515f9f2-f513-4829-b676-227c9ea544fd.jpg?alt=media', 'image', '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(66, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_e0e05336-30e8-493a-bb5b-550a38109d87.jpg?alt=media', 'image', '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(67, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_b1598e3a-e983-40f6-aff0-53b42a265a06.jpg?alt=media', 'image', '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(68, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_8a3bf162-333e-4c3f-9249-92981aab7e87.jpg?alt=media', 'image', '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(69, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_5754017f-0dec-4aab-ac80-344639ed70fd.jpg?alt=media', 'image', '2023-05-14 01:26:12', '2023-05-14 01:26:12'),
(70, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_dd5a376a-62e0-42d1-841d-5e4b0f7eaab5.jpg?alt=media', 'image', '2023-05-14 01:26:12', '2023-05-14 01:26:12'),
(71, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_04be39da-bc6f-4b02-9e06-deb6dfcfd258.jpg?alt=media', 'image', '2023-05-14 01:28:08', '2023-05-14 01:28:08'),
(72, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_0995e862-6734-466b-9cf3-39602b027a55.jpg?alt=media', 'image', '2023-05-14 01:28:08', '2023-05-14 01:28:08'),
(73, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_6d1f9b11-a0ab-4a3d-92dd-777f7ef2f20a.jpg?alt=media', 'image', '2023-05-14 01:29:23', '2023-05-14 01:29:23'),
(74, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_fe279dda-1ebc-4488-9638-58a8e488d341.jpg?alt=media', 'image', '2023-05-14 01:30:02', '2023-05-14 01:30:02'),
(75, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_488dbd80-6966-4dda-b682-5d47a3ee7636.jpg?alt=media&token=7997318b-34a9-43d4-9dd4-3d5474871deb', 'image', '2023-05-14 03:22:01', '2023-05-14 03:22:01'),
(76, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_01d302af-b095-4463-b682-8cd38e464b92.jpg?alt=media&token=9e45a9ba-3af6-47a6-bb3a-f183be8e966b', 'image', '2023-05-14 03:22:01', '2023-05-14 03:22:01'),
(77, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_47c3a8fd-e6f4-4b04-83c6-2c8da0eb5677.jpg?alt=media&token=38456415-40fc-43de-a376-1ba16996a12d', 'image', '2023-05-14 03:22:01', '2023-05-14 03:22:01'),
(78, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_5193fbb2-5f11-4f93-94f4-54e7eab1bedc.jpg?alt=media&token=0ac6e5ec-bb7a-428e-9c2e-3da4c11bdb7b', 'image', '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(79, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_d43a93ee-8bfc-48f6-9a1b-c907ba4d0156.jpg?alt=media&token=9a9f5b4b-6137-4063-81a0-53ca39f112e0', 'image', '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(80, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bbafa032-9ae1-446b-96a7-eaf34074c158.jpg?alt=media&token=e1742b65-af4d-4203-a249-98aa9c244e92', 'image', '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(81, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_5193fbb2-5f11-4f93-94f4-54e7eab1bedc.jpg?alt=media&token=95963848-4092-418f-b4aa-3621c9c6b1d5', 'image', '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(82, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_d43a93ee-8bfc-48f6-9a1b-c907ba4d0156.jpg?alt=media&token=861cad22-a67a-4548-9385-67616cf048a1', 'image', '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(83, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bbafa032-9ae1-446b-96a7-eaf34074c158.jpg?alt=media&token=08e1a3c8-e420-4f18-a548-8c9796fe7208', 'image', '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(84, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_341f827c-04e7-4772-9298-4e46ca01d761.jpg?alt=media', 'image', '2023-05-15 02:21:53', '2023-05-15 02:21:53'),
(85, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks/rn_image_picker_lib_temp_b851bc65-6719-488a-8d66-fdbd26f6f899.jpg?alt=media', 'image', '2023-05-15 02:25:42', '2023-05-15 02:25:42'),
(86, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=4294b1ff-12cc-4342-89df-486225075760', 'image', '2023-05-17 03:56:17', '2023-05-17 03:56:17'),
(87, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=0c6d6b3f-576d-40af-b83d-05deeef0be71', 'image', '2023-05-17 03:56:26', '2023-05-17 03:56:26'),
(88, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=75b5feb8-a633-48e6-b5fe-83d6c071df8d', 'image', '2023-05-17 03:56:33', '2023-05-17 03:56:33'),
(89, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=8d21f2aa-2d42-461a-9c37-d8032cd73ca0', 'image', '2023-05-17 03:57:11', '2023-05-17 03:57:11'),
(90, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=26dd8766-d678-4e98-bfb6-932e0b9a801e', 'image', '2023-05-17 03:57:56', '2023-05-17 03:57:56'),
(91, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=76ba5219-023b-49b2-8a27-ee6842bc9692', 'image', '2023-05-17 03:58:08', '2023-05-17 03:58:08'),
(92, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=3d1498ed-5d8c-4339-bf24-e52dfc648a9a', 'image', '2023-05-17 03:58:34', '2023-05-17 03:58:34'),
(93, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=d02d8760-ab7a-4287-a74a-da3f9b596aa5', 'image', '2023-05-17 03:58:40', '2023-05-17 03:58:40'),
(94, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=ec6cd03f-9e09-4633-8f44-6dc9c937b816', 'image', '2023-05-17 03:59:12', '2023-05-17 03:59:12'),
(95, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=285302bd-67e4-4272-82ba-5f7bf4737d96', 'image', '2023-05-17 04:00:06', '2023-05-17 04:00:06'),
(96, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=a967e2dc-4567-402e-9619-f5b698646b7e', 'image', '2023-05-17 04:00:31', '2023-05-17 04:00:31'),
(97, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=816655d4-2034-49fe-bfbf-f6aa5caa225b', 'image', '2023-05-17 04:00:53', '2023-05-17 04:00:53'),
(98, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=cf1f31b3-7dd6-4fae-a9e0-8da0c74a62ac', 'image', '2023-05-17 04:01:10', '2023-05-17 04:01:10'),
(99, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=12c00f81-fe3e-4fc8-904a-f364126cbc1d', 'image', '2023-05-17 04:01:15', '2023-05-17 04:01:15'),
(100, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bc453195-5306-4b02-bb55-1eeccd4c6fac.jpg?alt=media&token=d5a80994-3c1d-464c-b1af-4fd01be2b146', 'image', '2023-05-17 04:01:59', '2023-05-17 04:01:59'),
(101, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_edfa6a45-f7d9-4050-9543-9f0e1f54e6ed.jpg?alt=media&token=d5b6efe3-3ff2-47c0-abee-18086d189473', 'image', '2023-05-17 05:37:06', '2023-05-17 05:37:06'),
(102, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_edfa6a45-f7d9-4050-9543-9f0e1f54e6ed.jpg?alt=media&token=b5a25883-2dd9-401a-ab4d-ad10c28a1281', 'image', '2023-05-17 05:37:50', '2023-05-17 05:37:50'),
(103, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_edfa6a45-f7d9-4050-9543-9f0e1f54e6ed.jpg?alt=media&token=ec5281ae-0f54-4dc7-ab6b-c3d7a98d23b3', 'image', '2023-05-17 05:37:55', '2023-05-17 05:37:55'),
(104, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_19074300-54cd-436c-bbd0-72f45b5571eb.jpg?alt=media&token=d0f17fe4-f8d3-4f76-9a5b-788f70c1e90d', 'image', '2023-05-17 05:38:23', '2023-05-17 05:38:23'),
(105, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_19074300-54cd-436c-bbd0-72f45b5571eb.jpg?alt=media&token=d0e5ef70-2c72-4abd-8cca-2298f5f658f7', 'image', '2023-05-17 05:39:17', '2023-05-17 05:39:17'),
(106, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_652994b5-e4ef-4c46-971c-2cf18bedb8d0.jpg?alt=media&token=dbaf4818-4561-40ae-96b4-56fa52b7e809', 'image', '2023-05-17 05:39:54', '2023-05-17 05:39:54'),
(107, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_9b5f9c69-8a54-4fd3-a1bc-f769ed973612.jpg?alt=media&token=8a81286d-bf0d-4c41-8b61-faa4fbc7296b', 'image', '2023-05-17 05:40:22', '2023-05-17 05:40:22'),
(108, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_9b5f9c69-8a54-4fd3-a1bc-f769ed973612.jpg?alt=media&token=194bf80b-cf8d-4051-945e-7137fb0c7175', 'image', '2023-05-17 05:40:34', '2023-05-17 05:40:34'),
(109, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_6a103b71-5019-40f9-81fa-1e3ee04a7622.jpg?alt=media&token=dde6d4c9-3d74-48b5-8e3f-dead47a4df9f', 'image', '2023-05-17 05:41:08', '2023-05-17 05:41:08'),
(110, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_6a103b71-5019-40f9-81fa-1e3ee04a7622.jpg?alt=media&token=dced02ca-5f04-4685-94ea-c0f794816f3b', 'image', '2023-05-17 05:41:29', '2023-05-17 05:41:29'),
(111, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_6a103b71-5019-40f9-81fa-1e3ee04a7622.jpg?alt=media&token=2d857d10-8175-4452-89ff-c3a66522adb9', 'image', '2023-05-17 05:42:49', '2023-05-17 05:42:49'),
(112, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_a5a98d25-476c-4146-8d23-dd84677e76e4.jpg?alt=media&token=242b9529-91db-400f-9c5e-12f993f64fa0', 'image', '2023-05-17 05:51:50', '2023-05-17 05:51:50'),
(113, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_7eaf4ccc-85f3-4c00-b547-c490655a7e7c.jpg?alt=media&token=b06e5f4a-cd85-4381-b2a8-251e0a614eac', 'image', '2023-05-17 05:54:45', '2023-05-17 05:54:45'),
(114, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_7eaf4ccc-85f3-4c00-b547-c490655a7e7c.jpg?alt=media&token=6a66cb07-d7e9-46bb-9fe4-59026e1b3f2f', 'image', '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(115, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_182eca46-0f1e-4723-acca-739920151678.jpg?alt=media&token=5db36c5c-a076-46a8-86db-b4322154c590', 'image', '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(116, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_dc195a35-83b3-49d1-983d-ff32eb4123e5.jpg?alt=media&token=a92750b0-169c-46b9-88a2-fe1cf7de2623', 'image', '2023-05-17 05:58:18', '2023-05-17 05:58:18'),
(117, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_4a9f81a0-9004-4bd8-bf99-c6a78052d4f6.jpg?alt=media&token=331b68dc-255b-425b-9eb6-1f56c92027f9', 'image', '2023-05-17 06:00:38', '2023-05-17 06:00:38'),
(118, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_4a9f81a0-9004-4bd8-bf99-c6a78052d4f6.jpg?alt=media&token=d31881b3-27d3-411c-a9b2-2c09a4e7c6ad', 'image', '2023-05-17 06:04:10', '2023-05-17 06:04:10'),
(119, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_a627e929-b4f6-4144-8d03-599989072a26.jpg?alt=media&token=710ae744-b498-449c-9091-5917d23e6ca9', 'image', '2023-05-17 06:08:02', '2023-05-17 06:08:02'),
(120, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_a627e929-b4f6-4144-8d03-599989072a26.jpg?alt=media&token=15cf5728-6ffb-4ca7-8052-f78fbe12bdb1', 'image', '2023-05-17 06:08:13', '2023-05-17 06:08:13'),
(121, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bec630cf-291b-4060-bddd-5d0507e016ba.jpg?alt=media&token=79763ac7-456a-4353-a231-afb5d7f2ad62', 'image', '2023-05-17 06:08:55', '2023-05-17 06:08:55'),
(122, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bec630cf-291b-4060-bddd-5d0507e016ba.jpg?alt=media&token=50a1591e-b3b9-449c-a6e4-bf67461d9eb6', 'image', '2023-05-17 06:09:09', '2023-05-17 06:09:09'),
(123, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bec630cf-291b-4060-bddd-5d0507e016ba.jpg?alt=media&token=549836b4-8f91-4dc3-bbac-920c1182f700', 'image', '2023-05-17 06:09:15', '2023-05-17 06:09:15'),
(124, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bec630cf-291b-4060-bddd-5d0507e016ba.jpg?alt=media&token=e86446ca-02c5-4514-a991-55d70c51d964', 'image', '2023-05-17 06:09:20', '2023-05-17 06:09:20'),
(125, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_bec630cf-291b-4060-bddd-5d0507e016ba.jpg?alt=media&token=4a24449d-a295-4b51-90fe-ca49b4f30aa4', 'image', '2023-05-17 06:09:51', '2023-05-17 06:09:51'),
(126, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_a3e3bda7-160f-4eba-b620-6052c3862d50.jpg?alt=media&token=d8825c8a-a17f-4af2-bc71-d646694fba5a', 'image', '2023-05-17 06:10:16', '2023-05-17 06:10:16'),
(127, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_88efc4ed-192e-44bf-abff-b603a8ce71e1.jpg?alt=media&token=27198c68-90eb-4ab4-8f9b-80cda250d3af', 'image', '2023-05-17 06:11:25', '2023-05-17 06:11:25'),
(128, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_018543c6-a024-48df-865b-1e104bdf2618.jpg?alt=media&token=ad6a3125-31c7-418c-8a01-5bae13ceeb30', 'image', '2023-05-17 06:12:55', '2023-05-17 06:12:55'),
(129, 'https://firebasestorage.googleapis.com/v0/b/u2-lynk.appspot.com/o/lynks%2Frn_image_picker_lib_temp_a1ae2543-4051-4fe3-8201-e63f363ca546.jpg?alt=media&token=1f170243-6fe1-4b3b-9f4a-14258ed77e01', 'image', '2023-05-17 06:18:23', '2023-05-17 06:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalogs_sections`
--

DROP TABLE IF EXISTS `catalogs_sections`;
CREATE TABLE IF NOT EXISTS `catalogs_sections` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalogs_sections`
--

INSERT INTO `catalogs_sections` (`id`, `store_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, '2023 Arrival', NULL, '2023-05-14 20:43:38', '2023-05-14 20:43:38'),
(18, 10, '2023 NewArrival', NULL, '2023-05-14 21:36:15', '2023-05-14 21:36:15'),
(19, 10, NULL, NULL, '2023-05-15 02:22:57', '2023-05-15 02:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_products`
--

DROP TABLE IF EXISTS `catalog_products`;
CREATE TABLE IF NOT EXISTS `catalog_products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `section_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_products_product_id_foreign` (`product_id`),
  KEY `catalog_products_catalog_id_foreign` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_section_products`
--

DROP TABLE IF EXISTS `catalog_section_products`;
CREATE TABLE IF NOT EXISTS `catalog_section_products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_section_products_section_id_foreign` (`section_id`),
  KEY `catalog_section_products_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog_section_products`
--

INSERT INTO `catalog_section_products` (`id`, `product_id`, `section_id`, `status`, `created_at`, `updated_at`) VALUES
(13, 56, 18, '1', '2023-05-14 21:45:47', '2023-05-14 21:45:47'),
(14, 57, 18, '1', '2023-05-14 21:45:47', '2023-05-14 21:45:47'),
(15, 56, 19, '1', '2023-05-15 02:23:05', '2023-05-15 02:23:05'),
(16, 57, 19, '1', '2023-05-15 02:23:05', '2023-05-15 02:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_settings`
--

DROP TABLE IF EXISTS `delivery_settings`;
CREATE TABLE IF NOT EXISTS `delivery_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int UNSIGNED DEFAULT NULL,
  `in_bangalore_delivery_fee` double(8,2) DEFAULT NULL,
  `out_bangalore_delivery_fee` double(8,2) DEFAULT NULL,
  `per_km` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_settings_store_id_foreign` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_requests`
--

DROP TABLE IF EXISTS `exchange_requests`;
CREATE TABLE IF NOT EXISTS `exchange_requests` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED DEFAULT NULL,
  `store_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `business_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo_id` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exchange_requests_product_id_foreign` (`product_id`),
  KEY `exchange_requests_store_id_foreign` (`store_id`),
  KEY `exchange_requests_user_id_foreign` (`user_id`),
  KEY `exchange_requests_photo_id_foreign` (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_activity`
--

DROP TABLE IF EXISTS `login_activity`;
CREATE TABLE IF NOT EXISTS `login_activity` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `device_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `login_activity_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lynks`
--

DROP TABLE IF EXISTS `lynks`;
CREATE TABLE IF NOT EXISTS `lynks` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int UNSIGNED DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pkg_height` int DEFAULT NULL,
  `pkg_width` int DEFAULT NULL,
  `pkg_length` int DEFAULT NULL,
  `pkg_weight` int DEFAULT NULL,
  `shipping_charges` int DEFAULT NULL,
  `exchange_limit` int DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lynks_store_id_foreign` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lynks`
--

INSERT INTO `lynks` (`id`, `store_id`, `url`, `pkg_height`, `pkg_width`, `pkg_length`, `pkg_weight`, `shipping_charges`, `exchange_limit`, `status`, `created_at`, `updated_at`) VALUES
(93, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-05-14 01:29:23', '2023-05-14 03:56:41'),
(94, 10, NULL, 88, 38, 96, 88, 1, 1, 0, '2023-05-14 01:30:02', '2023-05-14 03:57:02'),
(95, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-14 03:22:00', '2023-05-14 03:22:00'),
(96, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(97, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2023-05-14 03:29:58', '2023-05-14 03:56:28'),
(98, 10, NULL, 52, 13, 12, 66, 1, 1, 1, '2023-05-15 02:21:53', '2023-05-15 02:21:53'),
(99, 10, NULL, 12, 32, 36, 32, 1, 1, 1, '2023-05-15 02:25:42', '2023-05-15 02:25:42'),
(100, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:56:17', '2023-05-17 03:56:17'),
(101, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:56:26', '2023-05-17 03:56:26'),
(102, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:56:33', '2023-05-17 03:56:33'),
(103, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:57:11', '2023-05-17 03:57:11'),
(104, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:57:56', '2023-05-17 03:57:56'),
(105, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:58:08', '2023-05-17 03:58:08'),
(106, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:58:34', '2023-05-17 03:58:34'),
(107, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:58:40', '2023-05-17 03:58:40'),
(108, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 03:59:12', '2023-05-17 03:59:12'),
(109, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 04:00:06', '2023-05-17 04:00:06'),
(110, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 04:00:31', '2023-05-17 04:00:31'),
(111, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 04:00:53', '2023-05-17 04:00:53'),
(112, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 04:01:10', '2023-05-17 04:01:10'),
(113, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 04:01:15', '2023-05-17 04:01:15'),
(114, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 04:01:59', '2023-05-17 04:01:59'),
(115, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:37:06', '2023-05-17 05:37:06'),
(116, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:37:50', '2023-05-17 05:37:50'),
(117, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:37:55', '2023-05-17 05:37:55'),
(118, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:38:23', '2023-05-17 05:38:23'),
(119, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:39:17', '2023-05-17 05:39:17'),
(120, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:39:54', '2023-05-17 05:39:54'),
(121, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:40:22', '2023-05-17 05:40:22'),
(122, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:40:34', '2023-05-17 05:40:34'),
(123, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:41:08', '2023-05-17 05:41:08'),
(124, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:41:28', '2023-05-17 05:41:28'),
(125, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:42:49', '2023-05-17 05:42:49'),
(126, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:51:50', '2023-05-17 05:51:50'),
(127, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:54:45', '2023-05-17 05:54:45'),
(128, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(129, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(130, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 05:58:18', '2023-05-17 05:58:18'),
(131, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:00:38', '2023-05-17 06:00:38'),
(132, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:04:10', '2023-05-17 06:04:10'),
(133, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:08:02', '2023-05-17 06:08:02'),
(134, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:08:13', '2023-05-17 06:08:13'),
(135, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:08:55', '2023-05-17 06:08:55'),
(136, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:09:09', '2023-05-17 06:09:09'),
(137, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:09:15', '2023-05-17 06:09:15'),
(138, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:09:20', '2023-05-17 06:09:20'),
(139, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:09:51', '2023-05-17 06:09:51'),
(140, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:10:16', '2023-05-17 06:10:16'),
(141, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:11:25', '2023-05-17 06:11:25'),
(142, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:12:55', '2023-05-17 06:12:55'),
(143, 10, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-05-17 06:18:23', '2023-05-17 06:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `lynk_products`
--

DROP TABLE IF EXISTS `lynk_products`;
CREATE TABLE IF NOT EXISTS `lynk_products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `lynk_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lynk_products_lynk_id_foreign` (`lynk_id`),
  KEY `lynk_products_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lynk_products`
--

INSERT INTO `lynk_products` (`id`, `lynk_id`, `product_id`, `status`, `note`, `created_at`, `updated_at`) VALUES
(65, 93, 53, '1', NULL, '2023-05-14 01:29:23', '2023-05-14 01:29:23'),
(66, 94, 54, '1', NULL, '2023-05-14 01:30:02', '2023-05-14 01:30:02'),
(67, 95, 55, '1', NULL, '2023-05-14 03:22:00', '2023-05-14 03:22:00'),
(68, 95, 56, '1', NULL, '2023-05-14 03:22:01', '2023-05-14 03:22:01'),
(69, 96, 57, '1', NULL, '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(70, 96, 58, '1', NULL, '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(71, 97, 59, '1', NULL, '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(72, 97, 60, '1', NULL, '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(73, 98, 61, '1', NULL, '2023-05-15 02:21:53', '2023-05-15 02:21:53'),
(74, 99, 62, '1', NULL, '2023-05-15 02:25:42', '2023-05-15 02:25:42'),
(75, 100, 63, '1', NULL, '2023-05-17 03:56:17', '2023-05-17 03:56:17'),
(76, 101, 64, '1', NULL, '2023-05-17 03:56:26', '2023-05-17 03:56:26'),
(77, 102, 65, '1', NULL, '2023-05-17 03:56:33', '2023-05-17 03:56:33'),
(78, 103, 66, '1', NULL, '2023-05-17 03:57:11', '2023-05-17 03:57:11'),
(79, 104, 67, '1', NULL, '2023-05-17 03:57:56', '2023-05-17 03:57:56'),
(80, 105, 68, '1', NULL, '2023-05-17 03:58:08', '2023-05-17 03:58:08'),
(81, 106, 69, '1', NULL, '2023-05-17 03:58:34', '2023-05-17 03:58:34'),
(82, 107, 70, '1', NULL, '2023-05-17 03:58:40', '2023-05-17 03:58:40'),
(83, 108, 71, '1', NULL, '2023-05-17 03:59:12', '2023-05-17 03:59:12'),
(84, 109, 72, '1', NULL, '2023-05-17 04:00:06', '2023-05-17 04:00:06'),
(85, 110, 73, '1', NULL, '2023-05-17 04:00:31', '2023-05-17 04:00:31'),
(86, 111, 74, '1', NULL, '2023-05-17 04:00:53', '2023-05-17 04:00:53'),
(87, 112, 75, '1', NULL, '2023-05-17 04:01:10', '2023-05-17 04:01:10'),
(88, 113, 76, '1', NULL, '2023-05-17 04:01:15', '2023-05-17 04:01:15'),
(89, 114, 77, '1', NULL, '2023-05-17 04:01:59', '2023-05-17 04:01:59'),
(90, 115, 78, '1', NULL, '2023-05-17 05:37:06', '2023-05-17 05:37:06'),
(91, 116, 79, '1', NULL, '2023-05-17 05:37:50', '2023-05-17 05:37:50'),
(92, 117, 80, '1', NULL, '2023-05-17 05:37:55', '2023-05-17 05:37:55'),
(93, 118, 81, '1', NULL, '2023-05-17 05:38:23', '2023-05-17 05:38:23'),
(94, 119, 82, '1', NULL, '2023-05-17 05:39:17', '2023-05-17 05:39:17'),
(95, 120, 83, '1', NULL, '2023-05-17 05:39:54', '2023-05-17 05:39:54'),
(96, 121, 84, '1', NULL, '2023-05-17 05:40:22', '2023-05-17 05:40:22'),
(97, 122, 85, '1', NULL, '2023-05-17 05:40:34', '2023-05-17 05:40:34'),
(98, 123, 86, '1', NULL, '2023-05-17 05:41:08', '2023-05-17 05:41:08'),
(99, 124, 87, '1', NULL, '2023-05-17 05:41:29', '2023-05-17 05:41:29'),
(100, 125, 88, '1', NULL, '2023-05-17 05:42:49', '2023-05-17 05:42:49'),
(101, 126, 89, '1', NULL, '2023-05-17 05:51:50', '2023-05-17 05:51:50'),
(102, 127, 90, '1', NULL, '2023-05-17 05:54:45', '2023-05-17 05:54:45'),
(103, 128, 91, '1', NULL, '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(104, 129, 92, '1', NULL, '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(105, 130, 93, '1', NULL, '2023-05-17 05:58:18', '2023-05-17 05:58:18'),
(106, 131, 94, '1', NULL, '2023-05-17 06:00:38', '2023-05-17 06:00:38'),
(107, 132, 95, '1', NULL, '2023-05-17 06:04:10', '2023-05-17 06:04:10'),
(108, 133, 96, '1', NULL, '2023-05-17 06:08:02', '2023-05-17 06:08:02'),
(109, 134, 97, '1', NULL, '2023-05-17 06:08:13', '2023-05-17 06:08:13'),
(110, 135, 98, '1', NULL, '2023-05-17 06:08:55', '2023-05-17 06:08:55'),
(111, 136, 99, '1', NULL, '2023-05-17 06:09:09', '2023-05-17 06:09:09'),
(112, 137, 100, '1', NULL, '2023-05-17 06:09:15', '2023-05-17 06:09:15'),
(113, 138, 101, '1', NULL, '2023-05-17 06:09:20', '2023-05-17 06:09:20'),
(114, 139, 102, '1', NULL, '2023-05-17 06:09:51', '2023-05-17 06:09:51'),
(115, 140, 103, '1', NULL, '2023-05-17 06:10:16', '2023-05-17 06:10:16'),
(116, 141, 104, '1', NULL, '2023-05-17 06:11:25', '2023-05-17 06:11:25'),
(117, 142, 105, '1', NULL, '2023-05-17 06:12:55', '2023-05-17 06:12:55'),
(118, 143, 106, '1', NULL, '2023-05-17 06:18:23', '2023-05-17 06:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `measurements`
--

DROP TABLE IF EXISTS `measurements`;
CREATE TABLE IF NOT EXISTS `measurements` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED DEFAULT NULL,
  `fitting` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `front` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ankle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `calf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `full_length` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hip_round` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `inseam` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thigh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `waist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `arm_hole` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chest` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `neck` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shoulder` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sleeve_length` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wrist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `measurements_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_27_1679876427_create_assets_table', 1),
(6, '2023_03_27_1679876530_create_stores_table', 1),
(7, '2023_03_27_1679876582_create_orders_table', 1),
(8, '2023_03_27_1679876608_create_order_requests_table', 1),
(9, '2023_03_27_1679876769_create_order_products_table', 1),
(10, '2023_03_27_1679876769_create_products_table', 1),
(11, '2023_03_27_1679876796_create_exchange_requests_table', 1),
(12, '2023_03_27_1679876828_create_lynks_table', 1),
(13, '2023_03_27_1679876850_create_lynk_products_table', 1),
(14, '2023_03_27_1679876877_create_catalogs_table', 1),
(15, '2023_03_27_1679876891_create_catalog_products_table', 1),
(16, '2023_03_27_1679876906_create_catalogs_sections_table', 1),
(17, '2023_03_27_1679876944_create_catalog_section_products_table', 1),
(18, '2023_03_27_1679876957_create_order_activity_table', 1),
(19, '2023_03_27_1679876970_create_login_activity_table', 1),
(20, '2023_03_27_1679877009_create_delivery_settings_table', 1),
(21, '2023_03_27_1679877106_create_measurements_table', 1),
(22, '2023_03_27_1679877132_create_notifications_table', 1),
(23, '2023_03_27_1679877164_create_business_settings_table', 1),
(24, '2023_03_27_1679877165_alter_photo_to_users', 1),
(25, '22023_03_27_1679877165_alter_business_settings', 1),
(26, '22023_03_27_1679877165_alter_catalog_products_to_relation', 1),
(27, '22023_03_27_1679877165_alter_catalog_section_products_to_relation', 1),
(28, '22023_03_27_1679877165_alter_delivery_settings_relation', 1),
(29, '22023_03_27_1679877165_alter_exchange_request_relations', 1),
(30, '22023_03_27_1679877165_alter_login_activity_relation', 1),
(31, '22023_03_27_1679877165_alter_lynk_products_relation', 1),
(32, '22023_03_27_1679877165_alter_lynks_relation', 1),
(33, '22023_03_27_1679877165_alter_measurement_relation', 1),
(34, '22023_03_27_1679877165_alter_notifications_relation', 1),
(35, '22023_03_27_1679877165_alter_order_activity_relation', 1),
(36, '22023_03_27_1679877165_alter_order_requests_to_relation', 1),
(37, '22023_03_27_1679877165_alter_order_to_relation', 1),
(38, '22023_03_27_1679877165_alter_products_to_relation', 1),
(39, '22023_03_27_1679877165_alter_store_relation_to_assets', 1),
(40, '2023_05_05_214000_create_phone_verifications_table', 2),
(41, '2023_05_07_102752_add_store_id_to_catalogs_table', 3),
(42, '2023_05_11_105521_create_product_images_table', 4),
(44, '2023_05_19_120653_create_wishlist_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` int NOT NULL DEFAULT '0',
  `sent_to` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED DEFAULT NULL,
  `store_id` int UNSIGNED DEFAULT NULL,
  `lynk_id` int UNSIGNED DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `subtotal_price` int DEFAULT NULL,
  `shipping_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_charges` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_start_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `customer_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_store_id_foreign` (`store_id`),
  KEY `orders_lynk_id_foreign` (`lynk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_activity`
--

DROP TABLE IF EXISTS `order_activity`;
CREATE TABLE IF NOT EXISTS `order_activity` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_activity_order_id_foreign` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `discount_price` double(8,2) DEFAULT NULL,
  `post_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img_id` int UNSIGNED DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `exchange_available` int NOT NULL DEFAULT '1',
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_products_order_id_foreign` (`order_id`),
  KEY `order_products_img_id_foreign` (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_requests`
--

DROP TABLE IF EXISTS `order_requests`;
CREATE TABLE IF NOT EXISTS `order_requests` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED DEFAULT NULL,
  `store_id` int UNSIGNED DEFAULT NULL,
  `full_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int UNSIGNED DEFAULT NULL,
  `status` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_requests_user_id_foreign` (`user_id`),
  KEY `order_requests_store_id_foreign` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(8, 'App\\Models\\User', 1, 'API Token', 'ccdf0b6687db129e27cf3f038c8599a5332da555ba42cda7bcc1f22ae7a6d6cb', '[\"*\"]', '2023-05-05 19:35:25', NULL, '2023-05-05 10:17:10', '2023-05-05 19:35:25'),
(9, 'App\\Models\\User', 2, 'API Token', '9c363d9b3b6bfcc36b56a62eda9114f7489602db170c23535563e13808b2f393', '[\"*\"]', NULL, NULL, '2023-05-06 10:51:39', '2023-05-06 10:51:39'),
(10, 'App\\Models\\User', 3, 'API Token', '635bb03bb06fdd2e6b38178e9e36fa0759e693119c493fa2753a680bf40f786f', '[\"*\"]', NULL, NULL, '2023-05-06 10:52:13', '2023-05-06 10:52:13'),
(11, 'App\\Models\\User', 1, 'API Token', '201007ed227a78807a4b53625a11ee76f2e85af1c3178d1e9b7d2e21e58fa1d7', '[\"*\"]', '2023-05-12 07:14:49', NULL, '2023-05-06 10:54:12', '2023-05-12 07:14:49'),
(12, 'App\\Models\\User', 1, 'API Token', '5e53a3c837a408a18da4cdb57bd564032bdcc350b3424edc2933783bcccb39a9', '[\"*\"]', NULL, NULL, '2023-05-07 06:28:23', '2023-05-07 06:28:23'),
(13, 'App\\Models\\User', 5, 'API Token', '8fcd80b2d4057a9897d32cd04665a66808905857cb86eecc0789e22d91dc44ea', '[\"*\"]', NULL, NULL, '2023-05-07 06:35:03', '2023-05-07 06:35:03'),
(14, 'App\\Models\\User', 6, 'API Token', '4684be06fda698c1d60de80ff1fb185cb1bb34df6b0cc81e30dad0b0626788ce', '[\"*\"]', NULL, NULL, '2023-05-08 06:13:48', '2023-05-08 06:13:48'),
(15, 'App\\Models\\User', 7, 'API Token', 'e7ed6bbf3649517e2849f963bc809f68d040a9dd7daa3682be0286254643fb49', '[\"*\"]', NULL, NULL, '2023-05-08 06:16:22', '2023-05-08 06:16:22'),
(16, 'App\\Models\\User', 7, 'API Token', 'a7f608ad9ca4396a706d5bafc6e829cdf672fae369fac53dc8605bd89a34c0c1', '[\"*\"]', NULL, NULL, '2023-05-08 06:16:43', '2023-05-08 06:16:43'),
(17, 'App\\Models\\User', 7, 'API Token', 'f160f57ad7138d9fad0feded31164e13c5cdeb5fa9c13ed0a8fbaeadf3b3cc00', '[\"*\"]', NULL, NULL, '2023-05-08 06:17:27', '2023-05-08 06:17:27'),
(18, 'App\\Models\\User', 7, 'API Token', '630b02df753d1c4f6ed1fc34f52d498fcee78fb46b3d2c502a941493b1547e9a', '[\"*\"]', NULL, NULL, '2023-05-08 06:18:40', '2023-05-08 06:18:40'),
(19, 'App\\Models\\User', 8, 'API Token', 'c7757eb6c6786a3aa1d197429614e8f4192779540801926e57e4df8fdb3b582b', '[\"*\"]', '2023-05-12 06:41:29', NULL, '2023-05-12 06:40:51', '2023-05-12 06:41:29'),
(20, 'App\\Models\\User', 9, 'API Token', '3dcab198c51c1e899deee862424aa2efa0e0efbcc14b8c5dace0f80f099135dc', '[\"*\"]', '2023-05-12 13:00:39', NULL, '2023-05-12 08:07:52', '2023-05-12 13:00:39'),
(21, 'App\\Models\\User', 9, 'API Token', 'cfc004e633ea889c749a77529624d2c5b991a29d12b2b8f645e4abea4a28a7ca', '[\"*\"]', '2023-05-12 19:12:24', NULL, '2023-05-12 18:21:16', '2023-05-12 19:12:24'),
(22, 'App\\Models\\User', 9, 'API Token', '944e53077bc8d689a33e62ea4171d0f85b3f7aa30957cb7f6fd2a6b560a175ad', '[\"*\"]', '2023-05-13 18:05:32', NULL, '2023-05-12 18:54:13', '2023-05-13 18:05:32'),
(23, 'App\\Models\\User', 9, 'API Token', '0b0b02a746dccaa71aa775fccc3be09b0e0543d5b8b918dd801201e1bc5f66ea', '[\"*\"]', '2023-05-16 06:40:37', NULL, '2023-05-13 11:05:51', '2023-05-16 06:40:37'),
(24, 'App\\Models\\User', 9, 'API Token', 'c1759f5de637bce5eb17b2a9d09fe4079204c015257fba395cb5bcd8b7753673', '[\"*\"]', '2023-05-15 02:20:17', NULL, '2023-05-15 02:19:55', '2023-05-15 02:20:17'),
(25, 'App\\Models\\User', 9, 'API Token', 'ec20d76bd743d08f40f2291baddd641598d2dd9c60fe0d4482e6fa70a90ea23a', '[\"*\"]', '2023-05-15 02:26:36', NULL, '2023-05-15 02:20:57', '2023-05-15 02:26:36'),
(26, 'App\\Models\\User', 9, 'API Token', 'b73dc0818173db209e2fc5fda25b26120fe8f937ca38e7688086bd2dfb447b52', '[\"*\"]', '2023-05-17 07:36:20', NULL, '2023-05-16 06:38:10', '2023-05-17 07:36:20'),
(27, 'App\\Models\\User', 9, 'API Token', 'b3d6e9f5d135b42fe59b77258d594c52d96727172677c3d10822903e39f61134', '[\"*\"]', '2023-05-17 20:10:00', NULL, '2023-05-17 07:37:02', '2023-05-17 20:10:00'),
(28, 'App\\Models\\User', 9, 'API Token', '50850cdc5e029e4396a7a0641e020c31d193793c4a92fc509a8616685da364b0', '[\"*\"]', '2023-05-17 20:43:31', NULL, '2023-05-17 20:13:54', '2023-05-17 20:43:31'),
(29, 'App\\Models\\User', 9, 'API Token', '2851ad46c158bbf8b940ebac16040b348c35057d8099730583f12d6f8eb6df69', '[\"*\"]', '2023-05-17 20:45:17', NULL, '2023-05-17 20:44:08', '2023-05-17 20:45:17'),
(30, 'App\\Models\\User', 9, 'API Token', 'be811febb25bfbeb3ccc96fa7f646e8e6403644b4df048259012ce7e9671ce36', '[\"*\"]', '2023-05-17 20:49:52', NULL, '2023-05-17 20:48:50', '2023-05-17 20:49:52'),
(31, 'App\\Models\\User', 9, 'API Token', 'bcafbc6d0f6e9cf636abb0ff546be6f5b12cb3d1d775e3b3f0e15bcd198b3829', '[\"*\"]', '2023-05-17 20:55:28', NULL, '2023-05-17 20:50:22', '2023-05-17 20:55:28'),
(32, 'App\\Models\\User', 9, 'API Token', 'eb326cb823477289003273e37fc735fee638238eaad478765d692bbacd94bd32', '[\"*\"]', '2023-05-17 20:56:52', NULL, '2023-05-17 20:56:04', '2023-05-17 20:56:52'),
(33, 'App\\Models\\User', 9, 'API Token', '8a249d2060177b98ea53de4623a2c49b1eaa7cd2fd5d9d61927128388481c6b1', '[\"*\"]', '2023-05-18 09:03:32', NULL, '2023-05-17 20:57:21', '2023-05-18 09:03:32'),
(34, 'App\\Models\\User', 10, 'API Token', '6bd90d39d57e0352e6bbb7e5d459381766bda9235675fcb01a86d3dfcdca4d64', '[\"*\"]', '2023-05-19 08:07:12', NULL, '2023-05-19 08:06:29', '2023-05-19 08:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

DROP TABLE IF EXISTS `phone_verifications`;
CREATE TABLE IF NOT EXISTS `phone_verifications` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_expired` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_verifications`
--

INSERT INTO `phone_verifications` (`id`, `phone_no`, `otp_code`, `is_expired`, `created_at`, `updated_at`) VALUES
(1, '1234567890', '216139', 1, '2023-05-12 08:07:45', '2023-05-12 08:07:52'),
(2, '1234567890', '284336', 0, '2023-05-12 08:47:18', '2023-05-12 08:47:18'),
(3, '1234567890', '994739', 0, '2023-05-12 08:48:44', '2023-05-12 08:48:44'),
(4, '1234567890', '858957', 1, '2023-05-12 17:40:52', '2023-05-12 18:54:13'),
(5, '1234567890', '267623', 0, '2023-05-12 17:54:02', '2023-05-12 17:54:02'),
(6, '1234567890', '740829', 1, '2023-05-12 18:21:07', '2023-05-12 18:21:16'),
(7, '1234567890', '039321', 1, '2023-05-13 11:05:38', '2023-05-13 11:05:51'),
(8, '1234567890', '753576', 1, '2023-05-15 02:19:49', '2023-05-15 02:19:55'),
(9, '1234567890', '331504', 1, '2023-05-15 02:20:52', '2023-05-15 02:20:57'),
(10, '1234567890', '226850', 1, '2023-05-16 06:38:04', '2023-05-16 06:38:10'),
(11, '1234567890', '688510', 1, '2023-05-17 07:36:56', '2023-05-17 07:37:02'),
(12, '1234567890', '305374', 0, '2023-05-17 20:10:00', '2023-05-17 20:10:00'),
(13, '1234567890', '701818', 1, '2023-05-17 20:13:48', '2023-05-17 20:13:54'),
(14, '1234567890', '028948', 0, '2023-05-17 20:14:45', '2023-05-17 20:14:45'),
(15, '1234567890', '607984', 0, '2023-05-17 20:36:03', '2023-05-17 20:36:03'),
(16, '1234567890', '794022', 0, '2023-05-17 20:36:18', '2023-05-17 20:36:18'),
(17, '1234567890', '668413', 0, '2023-05-17 20:37:37', '2023-05-17 20:37:37'),
(18, '1234567890', '849476', 0, '2023-05-17 20:37:49', '2023-05-17 20:37:49'),
(19, '1234567890', '406352', 0, '2023-05-17 20:38:44', '2023-05-17 20:38:44'),
(20, '1234567890', '080845', 0, '2023-05-17 20:40:41', '2023-05-17 20:40:41'),
(21, '1234567890', '233753', 0, '2023-05-17 20:41:25', '2023-05-17 20:41:25'),
(22, '1234567890', '256068', 0, '2023-05-17 20:41:33', '2023-05-17 20:41:33'),
(23, '1234567890', '793058', 1, '2023-05-17 20:41:49', '2023-05-17 20:42:40'),
(24, '1234567890', '216706', 1, '2023-05-17 20:44:01', '2023-05-17 20:44:08'),
(25, '1234567890', '793350', 1, '2023-05-17 20:44:23', '2023-05-17 20:44:58'),
(26, '1234567890', '429127', 1, '2023-05-17 20:48:43', '2023-05-17 20:48:50'),
(27, '1234567890', '670224', 1, '2023-05-17 20:49:13', '2023-05-17 20:49:29'),
(28, '1234567890', '180636', 1, '2023-05-17 20:50:15', '2023-05-17 20:50:22'),
(29, '1234567890', '092885', 1, '2023-05-17 20:50:34', '2023-05-17 20:50:46'),
(30, '1234567890', '503348', 0, '2023-05-17 20:52:57', '2023-05-17 20:52:57'),
(31, '1234567890', '152880', 1, '2023-05-17 20:54:13', '2023-05-17 20:55:28'),
(32, '1234567890', '925281', 1, '2023-05-17 20:55:58', '2023-05-17 20:56:04'),
(33, '1234567890', '012690', 1, '2023-05-17 20:56:19', '2023-05-17 20:56:52'),
(34, '1234567890', '128234', 1, '2023-05-17 20:57:15', '2023-05-17 20:57:21'),
(35, '2', '186961', 1, '2023-05-19 08:04:30', '2023-05-19 08:04:38'),
(36, '2', '588958', 1, '2023-05-19 08:06:16', '2023-05-19 08:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` int DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `discount_price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `post_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img_id` int UNSIGNED DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `exchange_available` int DEFAULT NULL,
  `return_available` int DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `new_arrival` int DEFAULT '0',
  `recommended` int DEFAULT '0',
  `catalog_enabled` int DEFAULT '0',
  `product_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `store_id`, `quantity`, `price`, `discount_price`, `post_link`, `img_id`, `name`, `size`, `exchange_available`, `return_available`, `status`, `new_arrival`, `recommended`, `catalog_enabled`, `product_type`, `created_at`, `updated_at`) VALUES
(45, 10, 1, '88', '89', NULL, NULL, 'Hshssj', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-13 22:38:12', '2023-05-13 22:38:12'),
(46, 10, 1, '123', '12', NULL, NULL, 'Prod 1', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(47, 10, 1, '321', '21', NULL, NULL, 'Prod 2', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(48, 10, 0, '12', '1', NULL, NULL, 'Prod 1', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 01:25:19', '2023-05-14 01:25:19'),
(49, 10, 0, '12', '1', NULL, NULL, 'Prod 1', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 01:26:12', '2023-05-14 01:26:12'),
(50, 10, 0, '134', '5', NULL, NULL, 'Prod2', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 01:26:12', '2023-05-14 01:26:12'),
(51, 10, 0, '132', '52', NULL, NULL, 'Prod1', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 01:28:08', '2023-05-14 01:28:08'),
(52, 10, 0, '3154', '51', NULL, NULL, 'Prod2', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 01:28:08', '2023-05-14 01:28:08'),
(53, 10, 0, '1234', '451', NULL, NULL, 'Prod1', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 01:29:23', '2023-05-14 01:29:23'),
(54, 10, 0, '318', '84', NULL, NULL, 'Prod2', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 01:30:02', '2023-05-14 01:30:02'),
(55, 10, 0, '5181', '84', NULL, NULL, 'Qwyeyq', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 03:22:00', '2023-05-14 03:22:00'),
(56, 10, 0, '5484', '481', NULL, NULL, 'Gquehdbsb', NULL, NULL, NULL, '1', 1, 1, 1, 'true', '2023-05-14 03:22:01', '2023-05-14 20:35:31'),
(57, 10, 0, '6586', '64', NULL, NULL, 'Hdjkfv', NULL, NULL, NULL, '1', 1, 1, 1, 'true', '2023-05-14 03:27:45', '2023-05-14 20:35:31'),
(58, 10, 0, '56598', '65', NULL, NULL, 'Jfjckvlgl', NULL, NULL, NULL, '1', 1, 0, 1, 'true', '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(59, 10, 0, '6586', '64', NULL, NULL, 'Hdjkfv', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(60, 10, 0, '56598', '65', NULL, NULL, 'Jfjckvlgl', NULL, NULL, NULL, '1', 0, 0, 1, 'true', '2023-05-14 03:29:58', '2023-05-14 21:39:39'),
(61, 10, 0, '12345', '12', NULL, NULL, 'Prod 2', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-15 02:21:53', '2023-05-15 02:21:53'),
(62, 10, 12, '123', '32', NULL, NULL, 'Prod 4', 'S,M', 5, 3, '1', 0, 0, 0, 'false', '2023-05-15 02:25:42', '2023-05-15 02:25:42'),
(63, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:56:17', '2023-05-17 03:56:17'),
(64, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:56:26', '2023-05-17 03:56:26'),
(65, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:56:33', '2023-05-17 03:56:33'),
(66, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:57:11', '2023-05-17 03:57:11'),
(67, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:57:56', '2023-05-17 03:57:56'),
(68, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:58:08', '2023-05-17 03:58:08'),
(69, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:58:34', '2023-05-17 03:58:34'),
(70, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:58:40', '2023-05-17 03:58:40'),
(71, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 03:59:12', '2023-05-17 03:59:12'),
(72, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 04:00:06', '2023-05-17 04:00:06'),
(73, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 04:00:31', '2023-05-17 04:00:31'),
(74, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 04:00:53', '2023-05-17 04:00:53'),
(75, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 04:01:10', '2023-05-17 04:01:10'),
(76, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 04:01:15', '2023-05-17 04:01:15'),
(77, 10, 0, '123', '12', NULL, NULL, 'Qwer', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 04:01:59', '2023-05-17 04:01:59'),
(78, 10, 0, '123', '23', NULL, NULL, 'Hwhw', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:37:06', '2023-05-17 05:37:06'),
(79, 10, 0, '123', '23', NULL, NULL, 'Hwhw', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:37:50', '2023-05-17 05:37:50'),
(80, 10, 0, '123', '23', NULL, NULL, 'Hwhw', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:37:55', '2023-05-17 05:37:55'),
(81, 10, 0, '123', '23', NULL, NULL, 'Shsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:38:23', '2023-05-17 05:38:23'),
(82, 10, 0, '123', '23', NULL, NULL, 'Shsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:39:17', '2023-05-17 05:39:17'),
(83, 10, 0, '123', '23', NULL, NULL, 'Ehshs', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:39:54', '2023-05-17 05:39:54'),
(84, 10, 0, '123', '23', NULL, NULL, 'Hshsbsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:40:22', '2023-05-17 05:40:22'),
(85, 10, 0, '123', '23', NULL, NULL, 'Hshsbsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:40:34', '2023-05-17 05:40:34'),
(86, 10, 0, '123', '23', NULL, NULL, 'Hwshsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:41:08', '2023-05-17 05:41:08'),
(87, 10, 0, '123', '23', NULL, NULL, 'Hwsbbhsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:41:28', '2023-05-17 05:41:28'),
(88, 10, 0, '123', '23', NULL, NULL, 'Hwsbbhsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:42:49', '2023-05-17 05:42:49'),
(89, 10, 0, '123', '23', NULL, NULL, 'Hshs', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:51:50', '2023-05-17 05:51:50'),
(90, 10, 0, '123', '23', NULL, NULL, 'Ofjfj', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:54:45', '2023-05-17 05:54:45'),
(91, 10, 0, '123', '23', NULL, NULL, 'Ofjfj', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(92, 10, 0, '1235', '35', NULL, NULL, 'Qwerty', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(93, 10, 0, '123', '23', NULL, NULL, 'Qhshs', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 05:58:18', '2023-05-17 05:58:18'),
(94, 10, 0, '123', '23', NULL, NULL, 'Wywuq', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:00:38', '2023-05-17 06:00:38'),
(95, 10, 0, '123', '23', NULL, NULL, 'Wywuq', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:04:10', '2023-05-17 06:04:10'),
(96, 10, 0, '123', '23', NULL, NULL, 'Ywhsbsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:08:02', '2023-05-17 06:08:02'),
(97, 10, 0, '123', '23', NULL, NULL, 'Ywhsbsb', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:08:13', '2023-05-17 06:08:13'),
(98, 10, 0, '123', '23', NULL, NULL, 'Wuwbsn', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:08:55', '2023-05-17 06:08:55'),
(99, 10, 0, '123', '23', NULL, NULL, 'Wuwbsn', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:09:09', '2023-05-17 06:09:09'),
(100, 10, 0, '123', '23', NULL, NULL, 'Wuwbsn', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:09:15', '2023-05-17 06:09:15'),
(101, 10, 0, '123', '23', NULL, NULL, 'Wuwbsn', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:09:20', '2023-05-17 06:09:20'),
(102, 10, 0, '123', '23', NULL, NULL, 'Wuwbsn', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:09:51', '2023-05-17 06:09:51'),
(103, 10, 0, '123', '23', NULL, NULL, 'Dhehs', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:10:16', '2023-05-17 06:10:16'),
(104, 10, 0, '123', '23', NULL, NULL, 'Banasn', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:11:25', '2023-05-17 06:11:25'),
(105, 10, 0, '123', '23', NULL, NULL, 'Jsjawj', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:12:55', '2023-05-17 06:12:55'),
(106, 10, 0, '123', '23', NULL, NULL, 'Shab', NULL, NULL, NULL, '1', 0, 0, 0, 'true', '2023-05-17 06:18:23', '2023-05-17 06:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_asset_id_foreign` (`asset_id`),
  KEY `product_images_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `asset_id`, `product_id`, `created_at`, `updated_at`) VALUES
(26, 64, 45, '2023-05-13 22:38:12', '2023-05-13 22:38:12'),
(27, 65, 46, '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(28, 66, 46, '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(29, 67, 47, '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(30, 68, 47, '2023-05-14 00:27:09', '2023-05-14 00:27:09'),
(31, 69, 49, '2023-05-14 01:26:12', '2023-05-14 01:26:12'),
(32, 70, 50, '2023-05-14 01:26:12', '2023-05-14 01:26:12'),
(33, 71, 51, '2023-05-14 01:28:08', '2023-05-14 01:28:08'),
(34, 72, 52, '2023-05-14 01:28:08', '2023-05-14 01:28:08'),
(35, 73, 53, '2023-05-14 01:29:23', '2023-05-14 01:29:23'),
(36, 74, 54, '2023-05-14 01:30:02', '2023-05-14 01:30:02'),
(37, 75, 55, '2023-05-14 03:22:01', '2023-05-14 03:22:01'),
(38, 76, 55, '2023-05-14 03:22:01', '2023-05-14 03:22:01'),
(39, 77, 56, '2023-05-14 03:22:01', '2023-05-14 03:22:01'),
(40, 78, 57, '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(41, 79, 57, '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(42, 80, 58, '2023-05-14 03:27:45', '2023-05-14 03:27:45'),
(43, 81, 59, '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(44, 82, 59, '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(45, 83, 60, '2023-05-14 03:29:58', '2023-05-14 03:29:58'),
(46, 84, 61, '2023-05-15 02:21:53', '2023-05-15 02:21:53'),
(47, 85, 62, '2023-05-15 02:25:42', '2023-05-15 02:25:42'),
(48, 86, 63, '2023-05-17 03:56:17', '2023-05-17 03:56:17'),
(49, 87, 64, '2023-05-17 03:56:26', '2023-05-17 03:56:26'),
(50, 88, 65, '2023-05-17 03:56:33', '2023-05-17 03:56:33'),
(51, 89, 66, '2023-05-17 03:57:11', '2023-05-17 03:57:11'),
(52, 90, 67, '2023-05-17 03:57:56', '2023-05-17 03:57:56'),
(53, 91, 68, '2023-05-17 03:58:08', '2023-05-17 03:58:08'),
(54, 92, 69, '2023-05-17 03:58:34', '2023-05-17 03:58:34'),
(55, 93, 70, '2023-05-17 03:58:40', '2023-05-17 03:58:40'),
(56, 94, 71, '2023-05-17 03:59:12', '2023-05-17 03:59:12'),
(57, 95, 72, '2023-05-17 04:00:06', '2023-05-17 04:00:06'),
(58, 96, 73, '2023-05-17 04:00:31', '2023-05-17 04:00:31'),
(59, 97, 74, '2023-05-17 04:00:53', '2023-05-17 04:00:53'),
(60, 98, 75, '2023-05-17 04:01:10', '2023-05-17 04:01:10'),
(61, 99, 76, '2023-05-17 04:01:15', '2023-05-17 04:01:15'),
(62, 100, 77, '2023-05-17 04:01:59', '2023-05-17 04:01:59'),
(63, 101, 78, '2023-05-17 05:37:06', '2023-05-17 05:37:06'),
(64, 102, 79, '2023-05-17 05:37:50', '2023-05-17 05:37:50'),
(65, 103, 80, '2023-05-17 05:37:55', '2023-05-17 05:37:55'),
(66, 104, 81, '2023-05-17 05:38:23', '2023-05-17 05:38:23'),
(67, 105, 82, '2023-05-17 05:39:17', '2023-05-17 05:39:17'),
(68, 106, 83, '2023-05-17 05:39:54', '2023-05-17 05:39:54'),
(69, 107, 84, '2023-05-17 05:40:22', '2023-05-17 05:40:22'),
(70, 108, 85, '2023-05-17 05:40:34', '2023-05-17 05:40:34'),
(71, 109, 86, '2023-05-17 05:41:08', '2023-05-17 05:41:08'),
(72, 110, 87, '2023-05-17 05:41:29', '2023-05-17 05:41:29'),
(73, 111, 88, '2023-05-17 05:42:49', '2023-05-17 05:42:49'),
(74, 112, 89, '2023-05-17 05:51:50', '2023-05-17 05:51:50'),
(75, 113, 90, '2023-05-17 05:54:45', '2023-05-17 05:54:45'),
(76, 114, 91, '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(77, 115, 92, '2023-05-17 05:57:34', '2023-05-17 05:57:34'),
(78, 116, 93, '2023-05-17 05:58:18', '2023-05-17 05:58:18'),
(79, 117, 94, '2023-05-17 06:00:38', '2023-05-17 06:00:38'),
(80, 118, 95, '2023-05-17 06:04:10', '2023-05-17 06:04:10'),
(81, 119, 96, '2023-05-17 06:08:02', '2023-05-17 06:08:02'),
(82, 120, 97, '2023-05-17 06:08:13', '2023-05-17 06:08:13'),
(83, 121, 98, '2023-05-17 06:08:55', '2023-05-17 06:08:55'),
(84, 122, 99, '2023-05-17 06:09:09', '2023-05-17 06:09:09'),
(85, 123, 100, '2023-05-17 06:09:15', '2023-05-17 06:09:15'),
(86, 124, 101, '2023-05-17 06:09:20', '2023-05-17 06:09:20'),
(87, 125, 102, '2023-05-17 06:09:51', '2023-05-17 06:09:51'),
(88, 126, 103, '2023-05-17 06:10:16', '2023-05-17 06:10:16'),
(89, 127, 104, '2023-05-17 06:11:25', '2023-05-17 06:11:25'),
(90, 128, 105, '2023-05-17 06:12:55', '2023-05-17 06:12:55'),
(91, 129, 106, '2023-05-17 06:18:23', '2023-05-17 06:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `record_details`
--

DROP TABLE IF EXISTS `record_details`;
CREATE TABLE IF NOT EXISTS `record_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `views` int DEFAULT '0',
  `clicks` int DEFAULT '0',
  `lynk_id` int DEFAULT NULL,
  `total_sells` int DEFAULT '0',
  `product_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `record_details`
--

INSERT INTO `record_details` (`id`, `views`, `clicks`, `lynk_id`, `total_sells`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 0, 0, NULL, 0, 49, '2023-05-14 06:26:12', '2023-05-14 06:26:12'),
(2, 0, 0, NULL, 0, 50, '2023-05-14 06:26:12', '2023-05-14 06:26:12'),
(3, 0, 0, 91, 0, NULL, '2023-05-14 06:26:12', '2023-05-14 06:26:12'),
(4, 0, 0, NULL, 0, 51, '2023-05-14 06:28:08', '2023-05-14 06:28:08'),
(5, 0, 0, NULL, 0, 52, '2023-05-14 06:28:08', '2023-05-14 06:28:08'),
(6, 0, 0, 92, 0, NULL, '2023-05-14 06:28:08', '2023-05-14 06:28:08'),
(7, 0, 0, NULL, 0, 53, '2023-05-14 06:29:23', '2023-05-14 06:29:23'),
(8, 0, 0, 93, 0, NULL, '2023-05-14 06:29:23', '2023-05-14 06:29:23'),
(9, 0, 0, NULL, 0, 54, '2023-05-14 06:30:02', '2023-05-14 06:30:02'),
(10, 0, 0, 94, 0, NULL, '2023-05-14 06:30:02', '2023-05-14 06:30:02'),
(11, 0, 0, NULL, 0, 55, '2023-05-14 08:22:00', '2023-05-14 08:22:00'),
(12, 0, 0, NULL, 0, 56, '2023-05-14 08:22:01', '2023-05-14 08:22:01'),
(13, 0, 0, 95, 0, NULL, '2023-05-14 08:22:01', '2023-05-14 08:22:01'),
(14, 0, 0, NULL, 0, 57, '2023-05-14 08:27:45', '2023-05-14 08:27:45'),
(15, 0, 0, NULL, 0, 58, '2023-05-14 08:27:45', '2023-05-14 08:27:45'),
(16, 0, 0, 96, 0, NULL, '2023-05-14 08:27:45', '2023-05-14 08:27:45'),
(17, 0, 0, NULL, 0, 59, '2023-05-14 08:29:58', '2023-05-14 08:29:58'),
(18, 0, 0, NULL, 0, 60, '2023-05-14 08:29:58', '2023-05-14 08:29:58'),
(19, 0, 0, 97, 0, NULL, '2023-05-14 08:29:58', '2023-05-14 08:29:58'),
(20, 0, 0, NULL, 0, 61, '2023-05-15 07:21:53', '2023-05-15 07:21:53'),
(21, 0, 0, 98, 0, NULL, '2023-05-15 07:21:53', '2023-05-15 07:21:53'),
(22, 0, 0, NULL, 0, 62, '2023-05-15 07:25:42', '2023-05-15 07:25:42'),
(23, 0, 0, 99, 0, NULL, '2023-05-15 07:25:42', '2023-05-15 07:25:42'),
(24, 0, 0, NULL, 0, 63, '2023-05-17 08:56:17', '2023-05-17 08:56:17'),
(25, 0, 0, 100, 0, NULL, '2023-05-17 08:56:17', '2023-05-17 08:56:17'),
(26, 0, 0, NULL, 0, 64, '2023-05-17 08:56:26', '2023-05-17 08:56:26'),
(27, 0, 0, 101, 0, NULL, '2023-05-17 08:56:26', '2023-05-17 08:56:26'),
(28, 0, 0, NULL, 0, 65, '2023-05-17 08:56:33', '2023-05-17 08:56:33'),
(29, 0, 0, 102, 0, NULL, '2023-05-17 08:56:33', '2023-05-17 08:56:33'),
(30, 0, 0, NULL, 0, 66, '2023-05-17 08:57:11', '2023-05-17 08:57:11'),
(31, 0, 0, 103, 0, NULL, '2023-05-17 08:57:11', '2023-05-17 08:57:11'),
(32, 0, 0, NULL, 0, 67, '2023-05-17 08:57:56', '2023-05-17 08:57:56'),
(33, 0, 0, 104, 0, NULL, '2023-05-17 08:57:56', '2023-05-17 08:57:56'),
(34, 0, 0, NULL, 0, 68, '2023-05-17 08:58:08', '2023-05-17 08:58:08'),
(35, 0, 0, 105, 0, NULL, '2023-05-17 08:58:08', '2023-05-17 08:58:08'),
(36, 0, 0, NULL, 0, 69, '2023-05-17 08:58:34', '2023-05-17 08:58:34'),
(37, 0, 0, 106, 0, NULL, '2023-05-17 08:58:34', '2023-05-17 08:58:34'),
(38, 0, 0, NULL, 0, 70, '2023-05-17 08:58:40', '2023-05-17 08:58:40'),
(39, 0, 0, 107, 0, NULL, '2023-05-17 08:58:40', '2023-05-17 08:58:40'),
(40, 0, 0, NULL, 0, 71, '2023-05-17 08:59:12', '2023-05-17 08:59:12'),
(41, 0, 0, 108, 0, NULL, '2023-05-17 08:59:12', '2023-05-17 08:59:12'),
(42, 0, 0, NULL, 0, 72, '2023-05-17 09:00:06', '2023-05-17 09:00:06'),
(43, 0, 0, 109, 0, NULL, '2023-05-17 09:00:06', '2023-05-17 09:00:06'),
(44, 0, 0, NULL, 0, 73, '2023-05-17 09:00:31', '2023-05-17 09:00:31'),
(45, 0, 0, 110, 0, NULL, '2023-05-17 09:00:31', '2023-05-17 09:00:31'),
(46, 0, 0, NULL, 0, 74, '2023-05-17 09:00:53', '2023-05-17 09:00:53'),
(47, 0, 0, 111, 0, NULL, '2023-05-17 09:00:53', '2023-05-17 09:00:53'),
(48, 0, 0, NULL, 0, 75, '2023-05-17 09:01:10', '2023-05-17 09:01:10'),
(49, 0, 0, 112, 0, NULL, '2023-05-17 09:01:10', '2023-05-17 09:01:10'),
(50, 0, 0, NULL, 0, 76, '2023-05-17 09:01:15', '2023-05-17 09:01:15'),
(51, 0, 0, 113, 0, NULL, '2023-05-17 09:01:15', '2023-05-17 09:01:15'),
(52, 0, 0, NULL, 0, 77, '2023-05-17 09:01:59', '2023-05-17 09:01:59'),
(53, 0, 0, 114, 0, NULL, '2023-05-17 09:01:59', '2023-05-17 09:01:59'),
(54, 0, 0, NULL, 0, 78, '2023-05-17 10:37:06', '2023-05-17 10:37:06'),
(55, 0, 0, 115, 0, NULL, '2023-05-17 10:37:06', '2023-05-17 10:37:06'),
(56, 0, 0, NULL, 0, 79, '2023-05-17 10:37:50', '2023-05-17 10:37:50'),
(57, 0, 0, 116, 0, NULL, '2023-05-17 10:37:50', '2023-05-17 10:37:50'),
(58, 0, 0, NULL, 0, 80, '2023-05-17 10:37:55', '2023-05-17 10:37:55'),
(59, 0, 0, 117, 0, NULL, '2023-05-17 10:37:55', '2023-05-17 10:37:55'),
(60, 0, 0, NULL, 0, 81, '2023-05-17 10:38:23', '2023-05-17 10:38:23'),
(61, 0, 0, 118, 0, NULL, '2023-05-17 10:38:23', '2023-05-17 10:38:23'),
(62, 0, 0, NULL, 0, 82, '2023-05-17 10:39:17', '2023-05-17 10:39:17'),
(63, 0, 0, 119, 0, NULL, '2023-05-17 10:39:17', '2023-05-17 10:39:17'),
(64, 0, 0, NULL, 0, 83, '2023-05-17 10:39:54', '2023-05-17 10:39:54'),
(65, 0, 0, 120, 0, NULL, '2023-05-17 10:39:54', '2023-05-17 10:39:54'),
(66, 0, 0, NULL, 0, 84, '2023-05-17 10:40:22', '2023-05-17 10:40:22'),
(67, 0, 0, 121, 0, NULL, '2023-05-17 10:40:22', '2023-05-17 10:40:22'),
(68, 0, 0, NULL, 0, 85, '2023-05-17 10:40:34', '2023-05-17 10:40:34'),
(69, 0, 0, 122, 0, NULL, '2023-05-17 10:40:34', '2023-05-17 10:40:34'),
(70, 0, 0, NULL, 0, 86, '2023-05-17 10:41:08', '2023-05-17 10:41:08'),
(71, 0, 0, 123, 0, NULL, '2023-05-17 10:41:08', '2023-05-17 10:41:08'),
(72, 0, 0, NULL, 0, 87, '2023-05-17 10:41:29', '2023-05-17 10:41:29'),
(73, 0, 0, 124, 0, NULL, '2023-05-17 10:41:29', '2023-05-17 10:41:29'),
(74, 0, 0, NULL, 0, 88, '2023-05-17 10:42:49', '2023-05-17 10:42:49'),
(75, 0, 0, 125, 0, NULL, '2023-05-17 10:42:49', '2023-05-17 10:42:49'),
(76, 0, 0, NULL, 0, 89, '2023-05-17 10:51:50', '2023-05-17 10:51:50'),
(77, 0, 0, 126, 0, NULL, '2023-05-17 10:51:50', '2023-05-17 10:51:50'),
(78, 0, 0, NULL, 0, 90, '2023-05-17 10:54:45', '2023-05-17 10:54:45'),
(79, 0, 0, 127, 0, NULL, '2023-05-17 10:54:45', '2023-05-17 10:54:45'),
(80, 0, 0, NULL, 0, 91, '2023-05-17 10:57:34', '2023-05-17 10:57:34'),
(81, 0, 0, 128, 0, NULL, '2023-05-17 10:57:34', '2023-05-17 10:57:34'),
(82, 0, 0, NULL, 0, 92, '2023-05-17 10:57:34', '2023-05-17 10:57:34'),
(83, 0, 0, 129, 0, NULL, '2023-05-17 10:57:34', '2023-05-17 10:57:34'),
(84, 0, 0, NULL, 0, 93, '2023-05-17 10:58:18', '2023-05-17 10:58:18'),
(85, 0, 0, 130, 0, NULL, '2023-05-17 10:58:18', '2023-05-17 10:58:18'),
(86, 0, 0, NULL, 0, 94, '2023-05-17 11:00:38', '2023-05-17 11:00:38'),
(87, 0, 0, 131, 0, NULL, '2023-05-17 11:00:38', '2023-05-17 11:00:38'),
(88, 0, 0, NULL, 0, 95, '2023-05-17 11:04:10', '2023-05-17 11:04:10'),
(89, 0, 0, 132, 0, NULL, '2023-05-17 11:04:10', '2023-05-17 11:04:10'),
(90, 0, 0, NULL, 0, 96, '2023-05-17 11:08:02', '2023-05-17 11:08:02'),
(91, 0, 0, 133, 0, NULL, '2023-05-17 11:08:02', '2023-05-17 11:08:02'),
(92, 0, 0, NULL, 0, 97, '2023-05-17 11:08:13', '2023-05-17 11:08:13'),
(93, 0, 0, 134, 0, NULL, '2023-05-17 11:08:13', '2023-05-17 11:08:13'),
(94, 0, 0, NULL, 0, 98, '2023-05-17 11:08:55', '2023-05-17 11:08:55'),
(95, 0, 0, 135, 0, NULL, '2023-05-17 11:08:55', '2023-05-17 11:08:55'),
(96, 0, 0, NULL, 0, 99, '2023-05-17 11:09:09', '2023-05-17 11:09:09'),
(97, 0, 0, 136, 0, NULL, '2023-05-17 11:09:09', '2023-05-17 11:09:09'),
(98, 0, 0, NULL, 0, 100, '2023-05-17 11:09:15', '2023-05-17 11:09:15'),
(99, 0, 0, 137, 0, NULL, '2023-05-17 11:09:15', '2023-05-17 11:09:15'),
(100, 0, 0, NULL, 0, 101, '2023-05-17 11:09:20', '2023-05-17 11:09:20'),
(101, 0, 0, 138, 0, NULL, '2023-05-17 11:09:20', '2023-05-17 11:09:20'),
(102, 0, 0, NULL, 0, 102, '2023-05-17 11:09:51', '2023-05-17 11:09:51'),
(103, 0, 0, 139, 0, NULL, '2023-05-17 11:09:51', '2023-05-17 11:09:51'),
(104, 0, 0, NULL, 0, 103, '2023-05-17 11:10:16', '2023-05-17 11:10:16'),
(105, 0, 0, 140, 0, NULL, '2023-05-17 11:10:16', '2023-05-17 11:10:16'),
(106, 0, 0, NULL, 0, 104, '2023-05-17 11:11:25', '2023-05-17 11:11:25'),
(107, 0, 0, 141, 0, NULL, '2023-05-17 11:11:25', '2023-05-17 11:11:25'),
(108, 0, 0, NULL, 0, 105, '2023-05-17 11:12:55', '2023-05-17 11:12:55'),
(109, 0, 0, 142, 0, NULL, '2023-05-17 11:12:55', '2023-05-17 11:12:55'),
(110, 0, 0, NULL, 0, 106, '2023-05-17 11:18:23', '2023-05-17 11:18:23'),
(111, 0, 0, 143, 0, NULL, '2023-05-17 11:18:23', '2023-05-17 11:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED DEFAULT NULL,
  `store_uid` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_logo` int UNSIGNED DEFAULT NULL,
  `store_header_cover` int UNSIGNED DEFAULT NULL,
  `brand_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `store_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `storephoneno` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `business_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gst_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankaccno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pancardno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `accepting_orders` int NOT NULL DEFAULT '1',
  `deleted` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stores_user_id_foreign` (`user_id`),
  KEY `stores_store_logo_foreign` (`store_logo`),
  KEY `stores_store_header_cover_foreign` (`store_header_cover`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `user_id`, `store_uid`, `store_logo`, `store_header_cover`, `brand_color`, `store_address`, `store_email`, `storephoneno`, `business_name`, `whatsapp`, `website`, `instagram`, `gst_id`, `bankaccno`, `holder_name`, `ifsc_code`, `bank_name`, `branch`, `pancardno`, `house_no`, `address`, `city`, `pincode`, `state`, `locality`, `category`, `status`, `note`, `accepting_orders`, `deleted`, `created_at`, `updated_at`) VALUES
(10, 9, 'G6P3WMDIPubY', 52, 53, NULL, 'asdasd', 'itsdisposable008@gmail.com', NULL, 'Store 3', '123464549', 'Optionals website', 'Https://fkshsbs.com', 'Qwerty', '123456', 'Holder name', 'Ifscssd', 'Banskss', 'Branchws', 'Panss123', 'Qqeert', NULL, 'Tyuio', 'Ghkl', 'Fhkluy', 'Scvnju', NULL, NULL, NULL, 1, 0, '2023-05-12 08:49:04', '2023-05-13 22:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo_asset_id` int UNSIGNED DEFAULT NULL,
  `cover_photo_asset_id` int UNSIGNED DEFAULT NULL,
  `verification_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_deleted` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_photo_asset_id_foreign` (`photo_asset_id`),
  KEY `users_cover_photo_asset_id_foreign` (`cover_photo_asset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone_no`, `photo_asset_id`, `cover_photo_asset_id`, `verification_code`, `is_deleted`, `remember_token`, `created_at`, `updated_at`, `account_type`) VALUES
(9, NULL, 'itsdisposable008@gmail.com', NULL, '$2y$10$WsOLDSIoYZaTs43hb.ZU2OoJy8ZXKJlIU61I4c7nAx/t49CDUEWyS', '1234567890', NULL, NULL, NULL, 0, '0JeLU0oH5wdyDBjKGryh4X0av6G4MOtKDUE6E2xYIOx2f6Z7Ecem07m2tXk4VR2M', '2023-05-12 08:07:52', '2023-05-17 20:57:21', ''),
(10, NULL, 'test@email.com', NULL, '$2y$10$cv02zf54APStCEnusyU2IOHbBejKgOeGpx638qrFgej.hySdiyh96', '2', NULL, NULL, NULL, 0, NULL, '2023-05-19 08:06:29', '2023-05-19 08:06:29', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `lynk_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_user_id_foreign` (`user_id`),
  KEY `wishlist_lynk_id_foreign` (`lynk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catalog_products`
--
ALTER TABLE `catalog_products`
  ADD CONSTRAINT `catalog_products_catalog_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `catalogs_sections` (`id`),
  ADD CONSTRAINT `catalog_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `catalog_section_products`
--
ALTER TABLE `catalog_section_products`
  ADD CONSTRAINT `catalog_section_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `catalog_section_products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `catalogs_sections` (`id`);

--
-- Constraints for table `delivery_settings`
--
ALTER TABLE `delivery_settings`
  ADD CONSTRAINT `delivery_settings_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `exchange_requests`
--
ALTER TABLE `exchange_requests`
  ADD CONSTRAINT `exchange_requests_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `exchange_requests_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `order_products` (`id`),
  ADD CONSTRAINT `exchange_requests_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `exchange_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `login_activity`
--
ALTER TABLE `login_activity`
  ADD CONSTRAINT `login_activity_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lynks`
--
ALTER TABLE `lynks`
  ADD CONSTRAINT `lynks_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `lynk_products`
--
ALTER TABLE `lynk_products`
  ADD CONSTRAINT `lynk_products_lynk_id_foreign` FOREIGN KEY (`lynk_id`) REFERENCES `lynks` (`id`),
  ADD CONSTRAINT `lynk_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `measurements`
--
ALTER TABLE `measurements`
  ADD CONSTRAINT `measurements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_lynk_id_foreign` FOREIGN KEY (`lynk_id`) REFERENCES `lynks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_activity`
--
ALTER TABLE `order_activity`
  ADD CONSTRAINT `order_activity_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_img_id_foreign` FOREIGN KEY (`img_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order_requests` (`id`);

--
-- Constraints for table `order_requests`
--
ALTER TABLE `order_requests`
  ADD CONSTRAINT `order_requests_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `order_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_asset_id_foreign` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_store_header_cover_foreign` FOREIGN KEY (`store_header_cover`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `stores_store_logo_foreign` FOREIGN KEY (`store_logo`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_cover_photo_asset_id_foreign` FOREIGN KEY (`cover_photo_asset_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `users_photo_asset_id_foreign` FOREIGN KEY (`photo_asset_id`) REFERENCES `assets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
