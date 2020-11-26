-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 10, 2020 at 03:32 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cultured_look`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sessionid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `sessionid`, `payload`, `created_at`, `updated_at`) VALUES
(1, 'YyiCAHbTK5MkGGBXSbzWrjFRg8ohBCh5Tqg3vmOe', '[[{\"id\":2,\"category_name\":\"Women\",\"image_path\":\"item-images/1587430615woman.jpeg\",\"created_at\":\"2020-04-21 00:56:55\",\"updated_at\":\"2020-05-07 12:51:04\",\"item_name\":\"Sleek dress\",\"description\":\"sleek dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"Trendy\",\"feature\":\"0\",\"item_image_id\":\"3\",\"available_sizes\":\"34\",\"available_colors\":null,\"item_id\":3,\"item_price\":200,\"currency_id\":1,\"is_default\":1,\"quantity_available\":1,\"frozen_quantity\":12,\"iid\":3,\"item_image_path\":\"item-images/1587430615woman.jpeg\",\"categoryid\":2},{\"quantity\":1}],[{\"id\":7,\"category_name\":\"Women\",\"image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"created_at\":\"2020-06-21 08:49:16\",\"updated_at\":\"2020-06-21 08:49:16\",\"item_name\":\"Silk Dress\",\"description\":\"Silk Dress. Smooth and soft. Can wear after washing and drying without ironing.\",\"category\":\"Women\",\"suitable_purposes\":\"0\",\"feature\":\"0\",\"item_image_id\":\"16\",\"available_sizes\":\"34,35,36\",\"available_colors\":\"light Green, sky blue, blue, grey\",\"item_id\":9,\"item_price\":70,\"currency_id\":1,\"is_default\":1,\"quantity_available\":15,\"frozen_quantity\":0,\"iid\":9,\"item_image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"categoryid\":2},{\"quantity\":2}],[{\"id\":1,\"category_name\":\"Women\",\"image_path\":\"item-images/1587429137ladyInYellow.jpg\",\"created_at\":\"2020-04-21 00:32:17\",\"updated_at\":\"2020-05-07 12:51:04\",\"item_name\":\"Yellow Dress\",\"description\":\"yellow dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"0\",\"feature\":\"0\",\"item_image_id\":\"2\",\"available_sizes\":\"34,35\",\"available_colors\":\"yellow\",\"item_id\":2,\"item_price\":150,\"currency_id\":1,\"is_default\":1,\"quantity_available\":9,\"frozen_quantity\":21,\"iid\":2,\"item_image_path\":\"item-images/1587429137ladyInYellow.jpg\",\"categoryid\":2},{\"quantity\":2}]]', '2020-06-21 11:39:12', '2020-06-21 15:21:55'),
(2, '123445', 'the boy', '2020-06-21 14:34:29', '2020-06-21 14:34:29'),
(3, '1234457', 'the boy grew', '2020-06-21 14:35:11', '2020-06-21 14:35:27'),
(4, 'gZFSUbBpX8ipoQTrjOWjg6nnhaSQXbp68yLgNeQz', '[[{\"id\":2,\"category_name\":\"Women\",\"image_path\":\"item-images/1587430615woman.jpeg\",\"created_at\":\"2020-04-21 00:56:55\",\"updated_at\":\"2020-05-07 12:51:04\",\"item_name\":\"Sleek dress\",\"description\":\"sleek dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"Trendy\",\"feature\":\"0\",\"item_image_id\":\"3\",\"available_sizes\":\"34\",\"available_colors\":null,\"item_id\":3,\"item_price\":200,\"currency_id\":1,\"is_default\":1,\"quantity_available\":1,\"frozen_quantity\":12,\"iid\":3,\"item_image_path\":\"item-images/1587430615woman.jpeg\",\"categoryid\":2},{\"quantity\":1}],[{\"id\":7,\"category_name\":\"Women\",\"image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"created_at\":\"2020-06-21 08:49:16\",\"updated_at\":\"2020-06-21 08:49:16\",\"item_name\":\"Silk Dress\",\"description\":\"Silk Dress. Smooth and soft. Can wear after washing and drying without ironing.\",\"category\":\"Women\",\"suitable_purposes\":\"0\",\"feature\":\"0\",\"item_image_id\":\"16\",\"available_sizes\":\"34,35,36\",\"available_colors\":\"light Green, sky blue, blue, grey\",\"item_id\":9,\"item_price\":70,\"currency_id\":1,\"is_default\":1,\"quantity_available\":15,\"frozen_quantity\":0,\"iid\":9,\"item_image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"categoryid\":2},{\"quantity\":8}]]', '2020-06-22 01:59:38', '2020-06-22 02:19:08'),
(5, 'czFykl9Y6x9bo7UGYejDOL6IjGUv7fCCWqis3Tws', '[[{\"id\":1,\"category_name\":\"Women\",\"image_path\":\"item-images/1587429137ladyInYellow.jpg\",\"created_at\":\"2020-04-21 00:32:17\",\"updated_at\":\"2020-05-07 12:51:04\",\"item_name\":\"Yellow Dress\",\"description\":\"yellow dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"0\",\"feature\":\"0\",\"item_image_id\":\"2\",\"available_sizes\":\"34,35\",\"available_colors\":\"yellow\",\"item_id\":2,\"item_price\":150,\"currency_id\":1,\"is_default\":1,\"quantity_available\":9,\"frozen_quantity\":21,\"iid\":2,\"item_image_path\":\"item-images/1587429137ladyInYellow.jpg\",\"categoryid\":2},{\"quantity\":5}],[{\"id\":2,\"category_name\":\"Women\",\"image_path\":\"item-images/1587430615woman.jpeg\",\"created_at\":\"2020-04-21 00:56:55\",\"updated_at\":\"2020-05-07 12:51:04\",\"item_name\":\"Sleek dress\",\"description\":\"sleek dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"Trendy\",\"feature\":\"0\",\"item_image_id\":\"3\",\"available_sizes\":\"34\",\"available_colors\":null,\"item_id\":3,\"item_price\":200,\"currency_id\":1,\"is_default\":1,\"quantity_available\":1,\"frozen_quantity\":12,\"iid\":3,\"item_image_path\":\"item-images/1587430615woman.jpeg\",\"categoryid\":2},{\"quantity\":1}],[{\"id\":7,\"category_name\":\"Women\",\"image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"created_at\":\"2020-06-21 08:49:16\",\"updated_at\":\"2020-06-21 08:49:16\",\"item_name\":\"Silk Dress\",\"description\":\"Silk Dress. Smooth and soft. Can wear after washing and drying without ironing.\",\"category\":\"Women\",\"suitable_purposes\":\"0\",\"feature\":\"0\",\"item_image_id\":\"16\",\"available_sizes\":\"34,35,36\",\"available_colors\":\"light Green, sky blue, blue, grey\",\"item_id\":9,\"item_price\":70,\"currency_id\":1,\"is_default\":1,\"quantity_available\":15,\"frozen_quantity\":0,\"iid\":9,\"item_image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"categoryid\":2},{\"quantity\":2}]]', '2020-06-22 22:14:54', '2020-06-23 02:12:49'),
(6, 'tUGHpmQFAxzxhUIqizVhKahZdBGR9lS5m3SD9CPX', NULL, '2020-06-23 13:13:22', '2020-06-23 13:13:22'),
(7, 'sfI6enk0INZUiSAjTrMIqG3PR7eSKzzw7bnW3Z0a', NULL, '2020-06-24 15:02:38', '2020-06-24 15:02:38'),
(8, 'iZKs8u7DzCx66aj3CZ4NirJLaTiGA2uYKtiBJ2ti', NULL, '2020-06-24 23:48:51', '2020-06-24 23:48:51'),
(9, '5rIhZbfzZbTsTM1XE7GRIWizj2RaQO0HRXpY57DJ', NULL, '2020-06-27 09:35:36', '2020-06-27 09:35:36'),
(10, 'fHh3JfgS7T93LQLscnJDkoAN2ozLSmxtCy5gYKUN', '[[{\"id\":2,\"category_name\":\"Women\",\"image_path\":\"item-images/1587430615woman.jpeg\",\"created_at\":\"2020-04-21 00:56:55\",\"updated_at\":\"2020-06-23 02:13:53\",\"item_name\":\"Sleek dress\",\"description\":\"sleek dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"Trendy\",\"feature\":\"0\",\"item_image_id\":\"3\",\"available_sizes\":\"34\",\"available_colors\":null,\"item_id\":3,\"item_price\":200,\"currency_id\":1,\"is_default\":1,\"quantity_available\":1,\"frozen_quantity\":13,\"iid\":3,\"item_image_path\":\"item-images/1587430615woman.jpeg\",\"categoryid\":2},{\"quantity\":1}],[{\"id\":8,\"item_name\":\"Polo Shirt\",\"description\":\"polo shirt\",\"category\":\"Men\",\"suitable_purposes\":\"official\",\"feature\":\"0\",\"item_image_id\":\"20\",\"available_sizes\":\"34,35\",\"available_colors\":\"black,blue\",\"created_at\":\"2020-06-27 11:47:51\",\"updated_at\":\"2020-06-27 11:47:51\",\"item_id\":10,\"image_path\":\"item-images/1593258471polo5.jpg\",\"is_default\":1,\"item_price\":300,\"currency_id\":1,\"quantity_available\":34,\"frozen_quantity\":0,\"iid\":10},{\"quantity\":5}]]', '2020-06-27 11:23:27', '2020-06-27 11:56:39'),
(11, 'GD5id7fMjflb9enX1HhNOMERcv3tmXkoo8ayARpj', '[]', '2020-06-28 10:30:06', '2020-06-28 11:50:03'),
(12, 'Kd0uTQQU3ZScuSTsm0hNYzIkMNpe3FL9iH2PevRV', NULL, '2020-06-28 17:42:07', '2020-06-28 17:42:07'),
(13, 'jhXYD9YoKhvBkYT2dJ0d3Ic9WoOmrlG2nmXsyh3X', NULL, '2020-06-29 03:07:59', '2020-06-29 03:07:59'),
(14, '8rv8uF0ugpidIeVl27Ooqzu0SBEOgAeenZXGY0Rm', NULL, '2020-06-30 17:12:44', '2020-06-30 17:12:44'),
(15, 'ABcwGSwHJTfbsrvck6ijBpWS4lLw96clapBd5pja', NULL, '2020-06-30 21:18:27', '2020-06-30 21:18:27'),
(16, 'ICfDawTbS0nSOmOvoGwdkAbElo937TA8dcJGRMIl', NULL, '2020-07-05 12:55:41', '2020-07-05 12:55:41'),
(17, '6yRiqeQkjPktfHQMntKSlYoxwGWFLYZAdN5ENNrf', NULL, '2020-07-06 11:49:08', '2020-07-06 11:49:08'),
(18, 'iQs1IC4IXemZpKJMttcwYaZt3BAFFMuCrBCG4C3r', NULL, '2020-07-06 23:24:17', '2020-07-06 23:24:17'),
(19, 'dc6pDnJcQ5CvYlAfg00AiZRKWTUqyUppnIFduHWs', NULL, '2020-07-12 09:48:18', '2020-07-12 09:48:18'),
(20, 'karwSdRJkHT28qnPf8Rd8F5U3qkgS7AoiaEDhntO', NULL, '2020-07-12 12:47:05', '2020-07-12 12:47:05'),
(21, 'EwUQzxfCLzT8UiAu9HObQcvseflsAsUucWwtOzZp', NULL, '2020-07-26 20:51:17', '2020-07-26 20:51:17'),
(22, 'peZU0evX8fe46wl6ALhBIKWzqTwmsjr4PbhBcaZE', '[[{\"id\":5,\"category_name\":\"Bags\",\"image_path\":\"item-images/1587430969BlackBag.jpg\",\"created_at\":\"2020-04-21 01:02:49\",\"updated_at\":\"2020-05-06 18:24:09\",\"item_name\":\"Black Bag\",\"description\":\"black bag. Big enough to carry essentials.\",\"category\":\"Bags\",\"suitable_purposes\":\"Worship\",\"feature\":\"0\",\"item_image_id\":\"6\",\"available_sizes\":null,\"available_colors\":\"Black\",\"item_id\":6,\"item_price\":80,\"currency_id\":1,\"is_default\":1,\"quantity_available\":10,\"frozen_quantity\":2,\"iid\":6,\"item_image_path\":\"item-images/1587430969BlackBag.jpg\",\"categoryid\":8},{\"quantity\":1}],[{\"id\":7,\"category_name\":\"Women\",\"image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"created_at\":\"2020-06-21 08:49:16\",\"updated_at\":\"2020-06-29 04:02:17\",\"item_name\":\"Silk Dress\",\"description\":\"Silk Dress. Smooth and soft. Can wear after washing and drying without ironing.\",\"category\":\"Women\",\"suitable_purposes\":\"0\",\"feature\":\"New Arrivals\",\"item_image_id\":\"16\",\"available_sizes\":\"34,35,36\",\"available_colors\":\"light Green, sky blue, blue, grey\",\"item_id\":9,\"item_price\":70,\"currency_id\":1,\"is_default\":1,\"quantity_available\":15,\"frozen_quantity\":4,\"iid\":9,\"item_image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"categoryid\":2},{\"quantity\":3}],[{\"id\":3,\"category_name\":\"Men\",\"image_path\":\"item-images/1587430680manModel.jpg\",\"created_at\":\"2020-04-21 00:58:00\",\"updated_at\":\"2020-05-07 11:43:48\",\"item_name\":\"Suit Jacket\",\"description\":\"Neat suit jackets\",\"category\":\"Men\",\"suitable_purposes\":\"Trendy\",\"feature\":\"0\",\"item_image_id\":\"4\",\"available_sizes\":\"41,42,43\",\"available_colors\":\"Brown,Black,Grey\",\"item_id\":4,\"item_price\":400,\"currency_id\":1,\"is_default\":1,\"quantity_available\":6,\"frozen_quantity\":4,\"iid\":4,\"item_image_path\":\"item-images/1587430680manModel.jpg\",\"categoryid\":1},{\"quantity\":2}],[{\"id\":2,\"item_name\":\"Sleek dress\",\"description\":\"sleek dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"Trendy\",\"feature\":\"0\",\"item_image_id\":\"3\",\"available_sizes\":\"34\",\"available_colors\":null,\"created_at\":\"2020-04-21 00:56:55\",\"updated_at\":\"2020-06-27 11:40:56\",\"item_id\":3,\"image_path\":\"item-images/1587430615woman.jpeg\",\"is_default\":1,\"item_price\":200,\"currency_id\":1,\"quantity_available\":0,\"frozen_quantity\":13,\"iid\":3},{\"quantity\":1}],[{\"id\":1,\"category_name\":\"Women\",\"image_path\":\"item-images/1587429137ladyInYellow.jpg\",\"created_at\":\"2020-04-21 00:32:17\",\"updated_at\":\"2020-06-29 04:03:12\",\"item_name\":\"Yellow Dress\",\"description\":\"yellow dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"Trendy\",\"feature\":\"New Arrivals\",\"item_image_id\":\"2\",\"available_sizes\":\"34,35\",\"available_colors\":\"yellow\",\"item_id\":2,\"item_price\":150,\"currency_id\":1,\"is_default\":1,\"quantity_available\":9,\"frozen_quantity\":27,\"iid\":2,\"item_image_path\":\"item-images/1587429137ladyInYellow.jpg\",\"categoryid\":2},{\"quantity\":1}]]', '2020-07-27 00:47:50', '2020-07-27 03:53:10'),
(23, 'YAA0CMrF1pO4mN9JCa7MPBjW9xIsVFq7Hqsk4KsB', '[[{\"id\":5,\"category_name\":\"Bags\",\"image_path\":\"item-images/1587430969BlackBag.jpg\",\"created_at\":\"2020-04-21 01:02:49\",\"updated_at\":\"2020-05-06 18:24:09\",\"item_name\":\"Black Bag\",\"description\":\"black bag. Big enough to carry essentials.\",\"category\":\"Bags\",\"suitable_purposes\":\"Worship\",\"feature\":\"0\",\"item_image_id\":\"6\",\"available_sizes\":null,\"available_colors\":\"Black\",\"item_id\":6,\"item_price\":80,\"currency_id\":1,\"is_default\":1,\"quantity_available\":10,\"frozen_quantity\":2,\"iid\":6,\"item_image_path\":\"item-images/1587430969BlackBag.jpg\",\"categoryid\":8},{\"quantity\":1}],[{\"id\":7,\"category_name\":\"Women\",\"image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"created_at\":\"2020-06-21 08:49:16\",\"updated_at\":\"2020-06-29 04:02:17\",\"item_name\":\"Silk Dress\",\"description\":\"Silk Dress. Smooth and soft. Can wear after washing and drying without ironing.\",\"category\":\"Women\",\"suitable_purposes\":\"0\",\"feature\":\"New Arrivals\",\"item_image_id\":\"16\",\"available_sizes\":\"34,35,36\",\"available_colors\":\"light Green, sky blue, blue, grey\",\"item_id\":9,\"item_price\":70,\"currency_id\":1,\"is_default\":1,\"quantity_available\":15,\"frozen_quantity\":4,\"iid\":9,\"item_image_path\":\"item-images/1592729356silkDressModel3.jpg\",\"categoryid\":2},{\"quantity\":1}],[{\"id\":3,\"item_name\":\"Suit Jacket\",\"description\":\"Neat suit jackets\",\"category\":\"Men\",\"suitable_purposes\":\"Trendy\",\"feature\":\"0\",\"item_image_id\":\"4\",\"available_sizes\":\"41,42,43\",\"available_colors\":\"Brown,Black,Grey\",\"created_at\":\"2020-04-21 00:58:00\",\"updated_at\":\"2020-05-07 11:43:48\",\"item_id\":4,\"image_path\":\"item-images/1587430680manModel.jpg\",\"is_default\":1,\"item_price\":400,\"currency_id\":1,\"quantity_available\":6,\"frozen_quantity\":4,\"iid\":4},{\"quantity\":1}],[{\"id\":8,\"item_name\":\"Polo Shirt\",\"description\":\"polo shirt\",\"category\":\"Men\",\"suitable_purposes\":\"official\",\"feature\":\"New Arrivals\",\"item_image_id\":\"20\",\"available_sizes\":\"34,35\",\"available_colors\":\"black,blue\",\"created_at\":\"2020-06-27 11:47:51\",\"updated_at\":\"2020-06-29 04:04:19\",\"item_id\":10,\"image_path\":\"item-images/1593258471polo5.jpg\",\"is_default\":1,\"item_price\":400,\"currency_id\":1,\"quantity_available\":34,\"frozen_quantity\":0,\"iid\":10},{\"quantity\":1}]]', '2020-07-27 12:39:20', '2020-07-27 12:56:59'),
(24, 'BNaW2w2xDHvQUTUE0mamFklTV45umfYeFF2Ts9Rq', NULL, '2020-07-27 21:54:03', '2020-07-27 21:54:03'),
(25, 'uJ8NcXPTXyhJl3UumtW5NzHxzF7tQCZYavwmJerA', '[[{\"id\":3,\"category_name\":\"Men\",\"image_path\":\"item-images/1587430680manModel.jpg\",\"created_at\":\"2020-04-21 00:58:00\",\"updated_at\":\"2020-05-07 11:43:48\",\"item_name\":\"Suit Jacket\",\"description\":\"Neat suit jackets\",\"category\":\"Men\",\"suitable_purposes\":\"Trendy\",\"feature\":\"0\",\"item_image_id\":\"4\",\"available_sizes\":\"41,42,43\",\"available_colors\":\"Brown,Black,Grey\",\"item_id\":4,\"item_price\":400,\"currency_id\":1,\"is_default\":1,\"quantity_available\":6,\"frozen_quantity\":4,\"iid\":4,\"item_image_path\":\"item-images/1587430680manModel.jpg\",\"categoryid\":1},{\"quantity\":2}],[{\"id\":8,\"category_name\":\"Men\",\"image_path\":\"item-images/1593258471polo5.jpg\",\"created_at\":\"2020-06-27 11:47:51\",\"updated_at\":\"2020-06-29 04:04:19\",\"item_name\":\"Polo Shirt\",\"description\":\"polo shirt\",\"category\":\"Men\",\"suitable_purposes\":\"official\",\"feature\":\"New Arrivals\",\"item_image_id\":\"20\",\"available_sizes\":\"34,35\",\"available_colors\":\"black,blue\",\"item_id\":10,\"item_price\":400,\"currency_id\":1,\"is_default\":1,\"quantity_available\":34,\"frozen_quantity\":0,\"iid\":10,\"item_image_path\":\"item-images/1593258471polo5.jpg\",\"categoryid\":1},{\"quantity\":1}]]', '2020-11-04 23:22:03', '2020-11-04 23:27:53'),
(26, 'pSZ788QQci0ITW5ovW5V1OG84cr0SWuQ8TjbmSx4', NULL, '2020-11-05 18:35:14', '2020-11-05 18:35:14'),
(27, 'Txw5bCgaoARaHRceg6wOmzIqnDXu9fZ4M9k8QlYQ', '[[{\"id\":5,\"category_name\":\"Bags\",\"image_path\":\"item-images/1587430969BlackBag.jpg\",\"created_at\":\"2020-04-21 01:02:49\",\"updated_at\":\"2020-05-06 18:24:09\",\"item_name\":\"Black Bag\",\"description\":\"black bag. Big enough to carry essentials.\",\"category\":\"Bags\",\"suitable_purposes\":\"Worship\",\"feature\":\"0\",\"item_image_id\":\"6\",\"available_sizes\":null,\"available_colors\":\"Black\",\"item_id\":6,\"item_price\":80,\"currency_id\":1,\"is_default\":1,\"quantity_available\":10,\"frozen_quantity\":2,\"iid\":6,\"item_image_path\":\"item-images/1587430969BlackBag.jpg\",\"categoryid\":8},{\"quantity\":1}],[{\"id\":1,\"item_name\":\"Yellow Dress\",\"description\":\"yellow dress to fit\",\"category\":\"Women\",\"suitable_purposes\":\"Trendy\",\"feature\":\"New Arrivals\",\"item_image_id\":\"2\",\"available_sizes\":\"34,35\",\"available_colors\":\"yellow\",\"created_at\":\"2020-04-21 00:32:17\",\"updated_at\":\"2020-06-29 04:03:12\",\"item_id\":2,\"image_path\":\"item-images/1587429137ladyInYellow.jpg\",\"is_default\":1,\"item_price\":150,\"currency_id\":1,\"quantity_available\":9,\"frozen_quantity\":27,\"iid\":2},{\"quantity\":3}]]', '2020-11-06 04:25:10', '2020-11-06 06:26:34'),
(28, 'mUIeIDUIfgcmO9XzPAxlzFixga0ofOtflbV45xcy', NULL, '2020-11-06 09:10:53', '2020-11-06 09:10:53'),
(29, 'YM9xdOWOE2A4781EOg8co34XBlom1MF7VuE3YlkH', NULL, '2020-11-06 23:32:00', '2020-11-06 23:32:00'),
(30, 'nDYW5QA73NrPPecBEJKU9fzLEjEwGnW9qqgBUIHU', NULL, '2020-11-07 08:32:13', '2020-11-07 08:32:13'),
(31, 'NoiwpgDLQn7fmMGUpx4AP75AOCFnflrvArOnv3c0', NULL, '2020-11-08 12:42:26', '2020-11-08 12:42:26'),
(32, 'NawVm8vJPZK9pwyoIg0dc53b0hoKmbCvLYWZqNDM', NULL, '2020-11-08 12:59:23', '2020-11-08 12:59:23'),
(33, 'W5rgEeZ2rbIwpk9WPhtqvr8Jdae4akso6fFepLq3', '[[{\"id\":5,\"category_name\":\"Bags\",\"image_path\":\"item-images/1587430969BlackBag.jpg\",\"created_at\":\"2020-04-21 01:02:49\",\"updated_at\":\"2020-05-06 18:24:09\",\"item_name\":\"Black Bag\",\"description\":\"black bag. Big enough to carry essentials.\",\"category\":\"Bags\",\"suitable_purposes\":\"Worship\",\"feature\":\"0\",\"item_image_id\":\"6\",\"available_sizes\":null,\"available_colors\":\"Black\",\"item_id\":6,\"item_price\":80,\"currency_id\":1,\"is_default\":1,\"quantity_available\":10,\"frozen_quantity\":2,\"iid\":6,\"item_image_path\":\"item-images/1587430969BlackBag.jpg\",\"categoryid\":8},{\"quantity\":1}]]', '2020-11-10 01:31:29', '2020-11-10 01:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'category-images/1587428282fashionMan.jpg', '2020-04-21 00:18:02', '2020-04-21 00:18:02'),
(2, 'Women', 'category-images/1587428652africanLady.jpg', '2020-04-21 00:24:12', '2020-04-21 00:24:12'),
(4, 'Elegant wear', 'category-images/1587428717manModel.jpg', '2020-04-21 00:25:17', '2020-04-21 00:25:17'),
(5, 'Social', 'category-images/1587428839big-slider.jpg', '2020-04-21 00:27:19', '2020-04-21 00:27:19'),
(6, 'Casual', 'category-images/1587428860ladyInYellow.jpg', '2020-04-21 00:27:40', '2020-04-21 00:27:40'),
(7, 'Hats', 'category-images/1587429684hats.jpg', '2020-04-21 00:41:24', '2020-04-21 00:41:24'),
(8, 'Bags', 'category-images/1587429903Bags.jpg', '2020-04-21 00:45:03', '2020-04-21 00:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `symbol`, `currency`, `created_at`, `updated_at`) VALUES
(1, '₵', 'Cedi', '2020-04-21 00:35:18', '2020-04-21 00:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FAQs`
--

CREATE TABLE `FAQs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FAQs`
--

INSERT INTO `FAQs` (`id`, `first_name`, `lastname`, `email`, `contact`, `comment`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Noelyn', NULL, 'noelyn@gmail.com', '233557881327', 'How do I know of new arrivals before they arrive?', '1', '2020-05-07 18:24:42', '2020-05-07 19:01:35'),
(2, 'Noelyn', NULL, 'noelyn@gmail.com', '233557881327', 'How do I know of new arrivals before they arrive?', NULL, '2020-05-07 18:25:55', '2020-05-07 18:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `image_path`, `feature`, `created_at`, `updated_at`) VALUES
(1, 'feature-images/1593403295glitterdress.jpg', 'New Arrivals', '2020-06-29 04:01:35', '2020-06-29 04:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suitable_purposes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_image_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_sizes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_colors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `description`, `category`, `suitable_purposes`, `feature`, `item_image_id`, `available_sizes`, `available_colors`, `created_at`, `updated_at`) VALUES
(2, 'Yellow Dress', 'yellow dress to fit', 'Women', 'Trendy', 'New Arrivals', '2', '34,35', 'yellow', '2020-04-21 00:32:17', '2020-06-29 04:03:12'),
(3, 'Sleek dress', 'sleek dress to fit', 'Women', 'Trendy', '0', '3', '34', NULL, '2020-04-21 00:56:55', '2020-04-21 00:56:55'),
(4, 'Suit Jacket', 'Neat suit jackets', 'Men', 'Trendy', '0', '4', '41,42,43', 'Brown,Black,Grey', '2020-04-21 00:58:00', '2020-06-29 04:02:46'),
(5, 'Elegant hat', 'Elegant hats', 'Hats', 'Worship', '0', '5', NULL, 'Red', '2020-04-21 01:00:26', '2020-04-21 01:00:26'),
(6, 'Black Bag', 'black bag. Big enough to carry essentials.', 'Bags', 'Worship', '0', '6', NULL, 'Black', '2020-04-21 01:02:49', '2020-04-21 01:02:49'),
(8, 'Silk Dress', 'Silk Dress. Smooth and soft. Can wear after washing and drying without ironing.', 'Women', '0', '0', '12', '34,35,36', 'light Green, sky blue, blue, grey', '2020-06-21 08:46:54', '2020-06-21 08:46:54'),
(9, 'Silk Dress', 'Silk Dress. Smooth and soft. Can wear after washing and drying without ironing.', 'Women', '0', 'New Arrivals', '16', '34,35,36', 'light Green, sky blue, blue, grey', '2020-06-21 08:49:16', '2020-06-29 04:02:17'),
(10, 'Polo Shirt', 'polo shirt', 'Men', 'official', 'New Arrivals', '20', '34,35', 'black,blue', '2020-06-27 11:47:51', '2020-06-29 04:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `image_path`, `is_default`, `created_at`, `updated_at`) VALUES
(2, 2, 'item-images/1587429137ladyInYellow.jpg', 1, NULL, NULL),
(3, 3, 'item-images/1587430615woman.jpeg', 1, NULL, NULL),
(4, 4, 'item-images/1587430680manModel.jpg', 1, NULL, NULL),
(5, 5, 'item-images/1587430826redHat.jpg', 1, NULL, NULL),
(6, 6, 'item-images/1587430969BlackBag.jpg', 1, NULL, NULL),
(12, 8, 'item-images/1592729214silkDressModel3.jpg', 1, NULL, NULL),
(13, 8, 'item-images/1592729214silkDressModel2.jpg', 0, NULL, NULL),
(14, 8, 'item-images/1592729214silkDressModel.jpg', 0, NULL, NULL),
(15, 8, 'item-images/1592729214silkDress.png', 0, NULL, NULL),
(16, 9, 'item-images/1592729356silkDressModel3.jpg', 1, NULL, NULL),
(17, 9, 'item-images/1592729356silkDressModel2.jpg', 0, NULL, NULL),
(18, 9, 'item-images/1592729356silkDressModel.jpg', 0, NULL, NULL),
(19, 9, 'item-images/1592729356silkDress.png', 0, NULL, NULL),
(20, 10, 'item-images/1593258471polo5.jpg', 1, NULL, NULL),
(21, 10, 'item-images/1593258471polo4.jpg', 0, NULL, NULL),
(22, 10, 'item-images/1593258471polo3.jpg', 0, NULL, NULL),
(23, 10, 'item-images/1593258471polo2.jpg', 0, NULL, NULL),
(24, 10, 'item-images/1593258471polo1.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_prices`
--

CREATE TABLE `item_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_price` bigint(20) NOT NULL,
  `currency_id` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_prices`
--

INSERT INTO `item_prices` (`id`, `item_id`, `item_price`, `currency_id`, `created_at`, `updated_at`) VALUES
(2, 2, 150, 1, '2020-04-21 00:32:17', '2020-06-29 04:03:12'),
(3, 3, 200, 1, '2020-04-21 00:56:55', '2020-04-21 01:01:03'),
(4, 4, 400, 1, '2020-04-21 00:58:00', '2020-04-21 00:58:00'),
(5, 5, 50, 1, '2020-04-21 01:00:26', '2020-04-21 01:00:26'),
(6, 6, 80, 1, '2020-04-21 01:02:49', '2020-04-21 01:02:49'),
(8, 9, 70, 1, '2020-06-21 08:49:16', '2020-06-29 04:02:17'),
(9, 10, 400, 1, '2020-06-27 11:47:51', '2020-06-29 04:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `item_quantity`
--

CREATE TABLE `item_quantity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity_available` bigint(20) NOT NULL,
  `frozen_quantity` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_quantity`
--

INSERT INTO `item_quantity` (`id`, `item_id`, `quantity_available`, `frozen_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 9, 27, '2020-04-21 00:32:17', '2020-06-29 04:03:12'),
(2, 3, 0, 13, '2020-04-21 00:56:55', '2020-06-27 11:40:56'),
(3, 4, 6, 4, '2020-04-21 00:58:00', '2020-05-07 11:43:48'),
(4, 5, 12, 1, '2020-04-21 01:00:26', '2020-05-06 18:24:09'),
(5, 6, 10, 2, '2020-04-21 01:02:49', '2020-05-06 18:24:09'),
(7, 9, 15, 4, '2020-06-21 08:49:16', '2020-06-29 04:02:17'),
(8, 10, 34, 0, '2020-06-27 11:47:51', '2020-06-29 04:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `path`, `media_type`, `created_at`, `updated_at`) VALUES
(1, 'media-images/1593010730silkDressModel3.jpg', 'picture', '2020-06-24 14:58:50', '2020-06-24 14:58:50'),
(2, 'media-images/1593010730silkDressModel2.jpg', 'picture', '2020-06-24 14:58:50', '2020-06-24 14:58:50'),
(3, 'media-images/1593010730silkDressModel.jpg', 'picture', '2020-06-24 14:58:50', '2020-06-24 14:58:50'),
(4, 'media-images/1593010730silkDress.png', 'picture', '2020-06-24 14:58:50', '2020-06-24 14:58:50'),
(5, 'media-images/1593010868silkDressModel3.jpg', 'picture', '2020-06-24 15:01:08', '2020-06-24 15:01:08'),
(6, 'media-images/1593010868silkDressModel2.jpg', 'picture', '2020-06-24 15:01:08', '2020-06-24 15:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_02_28_021357_items', 1),
(25, '2020_02_28_022953_item_images', 1),
(26, '2020_02_28_023320_item_quantity', 1),
(27, '2020_02_29_152334_rename_image_id_in_item_images_table', 1),
(28, '2020_03_06_100523_add_categories_column', 1),
(29, '2020_03_06_100946_create_categories_table', 1),
(30, '2020_03_06_101001_create_purposes_table', 1),
(31, '2020_03_06_101038_create_item_prices_table', 1),
(32, '2020_03_06_101404_create_currencies_table', 1),
(33, '2020_03_06_102524_add_currency_symbol', 1),
(34, '2020_03_06_113856_add_flag_symbol2', 1),
(35, '2020_03_06_114507_remove_flag_column', 1),
(36, '2020_03_06_192251_features', 1),
(37, '2020_03_06_192338_add_features_column', 1),
(38, '2020_03_06_193818_make_feature_column_nullable', 1),
(39, '2020_03_09_233304_add_is_default_column', 1),
(40, '2020_03_17_231955_create_purchased_items_table', 1),
(41, '2020_03_17_232030_create_transactions_table', 1),
(42, '2020_03_17_232059_create_payment_methods_table', 1),
(43, '2020_03_21_190546_change_unique_quantity_column_name', 1),
(44, '2020_03_21_191012_change_unique_quantity_column_name2', 1),
(45, '2020_03_22_032757_drop_timestamp_columns_in_transactions', 1),
(46, '2020_03_22_032940_add_timestamp_columns_in_transactions', 1),
(47, '2020_03_22_041602_drop_timestamp_columns_in_purchased_items', 1),
(48, '2020_03_22_041704_add_timestamp_columns_in_purchased_items', 1),
(49, '2020_03_22_043728_alter_size_column_in_purchased_items', 1),
(50, '2020_03_31_165620_modify_items_table', 1),
(51, '2020_03_31_165907_add_timestamps_to_items', 1),
(52, '2020_03_31_182958_modify_item_image_id_column_in_items', 1),
(53, '2020_03_31_211613_drop_timestamp_columns_in_item_prices', 1),
(54, '2020_03_31_211627_drop_timestamp_columns_in_item_quantity', 1),
(55, '2020_03_31_211832_add_timestamp_columns_in_item_quantity', 1),
(56, '2020_03_31_211841_add_timestamp_columns_in_item_prices', 1),
(57, '2020_04_01_103150_remove_column_on_item_images', 1),
(58, '2020_04_01_103201_remove_column_on_item_prices', 1),
(59, '2020_04_01_103212_remove_column_on_item_quantity', 1),
(60, '2020_04_01_103338_add_column_on_item_quantity', 1),
(61, '2020_04_01_103350_add_column_on_item_prices', 1),
(62, '2020_04_01_103405_add_column_on_item_images', 1),
(63, '2020_04_01_104132_remove_column_on_item_images2', 1),
(64, '2020_04_01_104142_remove_column_on_item_prices2', 1),
(65, '2020_04_01_104153_remove_column_on_item_quantity2', 1),
(66, '2020_04_01_104251_add_column_on_item_images2', 1),
(67, '2020_04_01_104259_add_column_on_item_prices2', 1),
(68, '2020_04_01_104307_add_column_on_item_quantity2', 1),
(69, '2020_04_01_104430_add_index_to_items', 1),
(70, '2020_04_01_104544_add_index_to_item_images', 1),
(71, '2020_04_01_143002_add_unsigned_item_images', 1),
(72, '2020_04_01_143202_add_foreign_key_item_images', 1),
(73, '2020_04_01_145844_unsigned_item_prices', 1),
(74, '2020_04_01_145859_unsigned_item_quantity', 1),
(75, '2020_04_01_145955_foreign_key_configure_item_prices', 1),
(76, '2020_04_01_150008_foreign_key_configure_item_quantity', 1),
(77, '2020_04_08_220120_drop_columns_in_categories', 1),
(78, '2020_04_08_220248_add_timestamp_columns_to_categories', 1),
(79, '2020_04_08_220607_add_image_column_to_categories', 1),
(80, '2020_04_08_220915_drop_image_column_to_categories', 1),
(81, '2020_04_08_220957_add_images_column_to_categories', 1),
(82, '2020_04_11_012341_drop_timestamp_columns_in_features', 1),
(83, '2020_04_11_012350_drop_timestamp_columns_in_purposes', 1),
(84, '2020_04_11_012509_add_columns_in_features', 1),
(85, '2020_04_11_012518_add_columns_in_purposes', 1),
(86, '2020_04_11_133941_create_shop_details_table', 1),
(87, '2020_04_11_235548_create_payment_details_table', 1),
(88, '2020_04_12_001530_add_unsigned_to_payment_details', 1),
(89, '2020_04_12_001725_add_foreign_key_to_payment_details', 1),
(90, '2020_04_12_001901_make_column_nullable_in_payment_details', 1),
(91, '2020_04_12_022943_add_frozen_column_to_item_quantity', 1),
(92, '2020_04_21_005150_add_nullable_to_items', 2),
(93, '2020_04_21_005509_add_nullable_to_items', 3),
(94, '2020_04_21_005626_add_nullable_to_items', 4),
(95, '2020_04_21_005950_add_nullable_to_items', 5),
(96, '2020_05_03_061957_create_payment_information', 6),
(97, '2020_05_03_230631_create_payment_information', 7),
(98, '2020_05_04_004258_make_column_nullable_in_purchased_items', 8),
(99, '2020_05_06_160522_add_column_to_transactions', 9),
(100, '2020_05_07_062122_change_and_add_columns_to_users', 10),
(101, '2020_05_07_132201_add_colunns_to_shop_details', 11),
(102, '2020_05_07_164539_create__f_a_q_table', 12),
(103, '2020_05_07_165422_create__f_a_qs_table', 13),
(104, '2020_06_21_111344_create_carts_table', 14),
(105, '2020_06_23_025921_create_media_table', 15),
(106, '2020_06_23_030058_create_newsletters_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shopid` bigint(20) UNSIGNED NOT NULL,
  `collection_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `shopid`, `collection_account`, `extra_details`, `created_at`, `updated_at`) VALUES
(1, 1, '233507064062', NULL, '2020-04-21 01:19:17', '2020-04-21 01:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `payment_information`
--

CREATE TABLE `payment_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_information`
--

INSERT INTO `payment_information` (`id`, `transaction_id`, `first_name`, `last_name`, `country`, `state`, `zip_code`, `phone_number`, `email_address`, `payment_method`, `created_at`, `updated_at`) VALUES
(1, 18, 'Bede', 'Abbe', 'Ghana', 'Greater Accra', '2222', '233557881327', 'bede.abbe91@gmail.com', 1, '2020-05-04 10:28:56', '2020-05-04 10:28:56'),
(2, 19, 'Bede', 'Abbe', 'Ghana', 'Greater Accra', '2222', '233557881327', 'bede.abbe91@gmail.com', 1, '2020-05-04 10:42:34', '2020-05-04 10:42:34'),
(3, 20, 'Bede', 'Abbe', 'Ghana', 'Greater Accra', '2222', '233557881327', 'bede.abbe91@gmail.com', 1, '2020-05-04 10:49:46', '2020-05-04 10:49:46'),
(4, 21, 'Bede', 'Abbe', 'Ghana', 'Greater Accra', '2222', '233557881327', 'bede.abbe91@gmail.com', 1, '2020-05-04 10:50:08', '2020-05-04 10:50:08'),
(5, 22, 'John', 'Wick', 'Ghana', 'Greater Accra', '2222', '233557881327', 'bede.abbe91@gmail.com', 1, '2020-05-04 13:30:41', '2020-05-04 13:30:41'),
(6, 23, 'John', 'Wick', 'Ghana', 'Greater Accra', '2222', '233557881327', 'bede.abbe91@gmail.com', 1, '2020-05-04 13:32:45', '2020-05-04 13:32:45'),
(7, 24, 'John', 'Wick', 'Ghana', 'Greater Accra', '2222', '233557881327', 'bede.abbe91@gmail.com', 1, '2020-05-04 13:33:10', '2020-05-04 13:33:10'),
(8, 25, 'Terminal', 'Abbe', 'Ghana', 'Accra', '12343', '23233234233432', 'bede.abbe91@gmail.com', 1, '2020-05-06 01:13:37', '2020-05-06 01:13:37'),
(9, 26, 'Noelyn', 'A', 'Ghana', 'Greater Accra', '2222', '2222', 'noelyn@gmail.com', 1, '2020-05-06 18:24:09', '2020-05-06 18:24:09'),
(10, 27, 'Noelyn', 'A', 'Ghana', 'Greater Accra', '2222', '2349353', 'noelyn@gmail.com', 1, '2020-05-06 18:36:33', '2020-05-06 18:36:33'),
(11, 28, 'Bede', 'Abbe', 'Ghana', 'Greater Accra', '22222', '2222', 'bede.abbe91@gmail.com', 1, '2020-05-06 18:52:15', '2020-05-06 18:52:15'),
(12, 29, 'Noelyn', 'A', 'Ghana', 'Greater Accra', '2222', '233203959533', 'noelyn@gmail.com', 1, '2020-05-06 19:08:23', '2020-05-06 19:08:23'),
(13, 31, 'Noelyn', NULL, 'Ghana', 'Greater Accra', NULL, '3456', 'noelyn@gmail.com', 2, '2020-05-07 11:42:54', '2020-05-07 11:42:54'),
(14, 32, 'Term', NULL, 'Ghana', 'Greater Accra', '2222', '23323294925', 'terminal@gmail.com', 2, '2020-05-07 12:51:04', '2020-05-07 12:51:04'),
(15, 33, 'fdf', NULL, 'dfd', 'dfd', NULL, '232', 'dfd@gmail.com', 2, '2020-05-07 12:51:40', '2020-05-07 12:51:40'),
(16, 34, 'Bede', 'Abbe', 'Ghana', 'Accra', '2222', '23329392323', 'admin@admin.com', 1, '2020-06-23 02:13:53', '2020-06-23 02:13:53'),
(17, 35, 'Abbe', 'Abbe', 'Ghana', 'Greater Accra', '222222', '233557881327', 'bede.abbe91@gmail.com', 1, '2020-06-27 11:34:50', '2020-06-27 11:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `payment_method`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Money', '2020-05-03 00:00:00', NULL),
(2, 'cash on delivery', '2020-05-07 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchased_items`
--

CREATE TABLE `purchased_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchased_items`
--

INSERT INTO `purchased_items` (`id`, `transaction_id`, `item_id`, `quantity`, `size`, `color`, `price`, `created_at`, `updated_at`) VALUES
(1, 14, 2, 1, '34', NULL, 200, '2020-05-04 00:53:24', '2020-05-04 00:53:24'),
(3, 15, 2, 1, '34', NULL, 200, '2020-05-04 01:09:21', '2020-05-04 01:09:21'),
(5, 16, 2, 1, '34', NULL, 200, '2020-05-04 01:17:55', '2020-05-04 01:17:55'),
(7, 17, 2, 2, '34', NULL, 400, '2020-05-04 10:15:51', '2020-05-04 10:15:51'),
(9, 18, 3, 1, '34', NULL, 200, '2020-05-04 10:28:56', '2020-05-04 10:28:56'),
(10, 18, 2, 1, '34,35', 'yellow', 150, '2020-05-04 10:28:56', '2020-05-04 10:28:56'),
(11, 19, 3, 1, '34', NULL, 200, '2020-05-04 10:42:34', '2020-05-04 10:42:34'),
(12, 19, 2, 1, '34,35', 'yellow', 150, '2020-05-04 10:42:34', '2020-05-04 10:42:34'),
(13, 20, 3, 1, '34', NULL, 200, '2020-05-04 10:49:46', '2020-05-04 10:49:46'),
(14, 20, 2, 1, '34,35', 'yellow', 150, '2020-05-04 10:49:46', '2020-05-04 10:49:46'),
(15, 21, 3, 1, '34', NULL, 200, '2020-05-04 10:50:08', '2020-05-04 10:50:08'),
(16, 21, 2, 1, '34,35', 'yellow', 150, '2020-05-04 10:50:08', '2020-05-04 10:50:08'),
(17, 22, 3, 1, '34', NULL, 200, '2020-05-04 13:30:41', '2020-05-04 13:30:41'),
(18, 22, 2, 2, '34,35', 'yellow', 300, '2020-05-04 13:30:41', '2020-05-04 13:30:41'),
(19, 23, 3, 1, '34', NULL, 200, '2020-05-04 13:32:45', '2020-05-04 13:32:45'),
(20, 23, 2, 2, '34,35', 'yellow', 300, '2020-05-04 13:32:45', '2020-05-04 13:32:45'),
(21, 24, 3, 1, '34', NULL, 200, '2020-05-04 13:33:10', '2020-05-04 13:33:10'),
(22, 24, 2, 2, '34,35', 'yellow', 300, '2020-05-04 13:33:10', '2020-05-04 13:33:10'),
(23, 25, 4, 1, '41,42,43', 'Brown,Black,Grey', 400, '2020-05-06 01:13:37', '2020-05-06 01:13:37'),
(24, 25, 3, 1, '34', NULL, 200, '2020-05-06 01:13:37', '2020-05-06 01:13:37'),
(25, 25, 2, 2, '34,35', 'yellow', 300, '2020-05-06 01:13:37', '2020-05-06 01:13:37'),
(27, 25, 6, 1, NULL, 'Black', 80, '2020-05-06 01:13:37', '2020-05-06 01:13:37'),
(28, 26, 3, 2, '34', NULL, 400, '2020-05-06 18:24:09', '2020-05-06 18:24:09'),
(29, 26, 2, 3, '34,35', 'yellow', 450, '2020-05-06 18:24:09', '2020-05-06 18:24:09'),
(30, 26, 5, 1, NULL, 'Red', 50, '2020-05-06 18:24:09', '2020-05-06 18:24:09'),
(32, 26, 6, 1, NULL, 'Black', 80, '2020-05-06 18:24:09', '2020-05-06 18:24:09'),
(33, 27, 4, 1, '41,42,43', 'Brown,Black,Grey', 400, '2020-05-06 18:36:33', '2020-05-06 18:36:33'),
(34, 28, 4, 1, '41,42,43', 'Brown,Black,Grey', 400, '2020-05-06 18:52:15', '2020-05-06 18:52:15'),
(35, 28, 3, 1, '34', NULL, 200, '2020-05-06 18:52:15', '2020-05-06 18:52:15'),
(36, 28, 2, 1, '34,35', 'yellow', 150, '2020-05-06 18:52:15', '2020-05-06 18:52:15'),
(37, 29, 4, 2, '41,42,43', 'Brown,Black,Grey', 800, '2020-05-06 19:08:23', '2020-05-06 19:08:23'),
(38, 29, 3, 1, '34', NULL, 200, '2020-05-06 19:08:23', '2020-05-06 19:08:23'),
(39, 31, 3, 1, '34', NULL, 200, '2020-05-07 11:42:54', '2020-05-07 11:42:54'),
(40, 31, 4, 1, '41,42,43', 'Brown,Black,Grey', 400, '2020-05-07 11:42:54', '2020-05-07 11:42:54'),
(42, 31, 2, 2, '34,35', 'yellow', 300, '2020-05-07 11:42:54', '2020-05-07 11:42:54'),
(43, 32, 2, 1, '34,35', 'yellow', 150, '2020-05-07 12:51:04', '2020-05-07 12:51:04'),
(44, 32, 3, 1, '34', NULL, 200, '2020-05-07 12:51:04', '2020-05-07 12:51:04'),
(45, 34, 2, 6, '34,35', 'yellow', 900, '2020-06-23 02:13:53', '2020-06-23 02:13:53'),
(46, 34, 3, 1, '34', NULL, 200, '2020-06-23 02:13:53', '2020-06-23 02:13:53'),
(47, 34, 9, 4, '34,35,36', 'light Green, sky blue, blue, grey', 280, '2020-06-23 02:13:53', '2020-06-23 02:13:53'),
(48, 35, 3, 1, '34', NULL, 200, '2020-06-27 11:34:50', '2020-06-27 11:34:50');

-- --------------------------------------------------------

--
-- Table structure for table `purposes`
--

CREATE TABLE `purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purposes`
--

INSERT INTO `purposes` (`id`, `image_path`, `purpose`, `created_at`, `updated_at`) VALUES
(1, 'purpose-images/1587430055sunglasses.jpg', 'Trendy', '2020-04-21 00:47:35', '2020-04-21 00:47:35'),
(2, 'purpose-images/1587430135suitWoman.jpg', 'official', '2020-04-21 00:48:55', '2020-04-21 00:48:55'),
(3, '', 'Worship', '2020-04-21 00:49:08', '2020-04-21 00:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_details`
--

CREATE TABLE `shop_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` bigint(20) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `terms_and_conditions` text COLLATE utf8mb4_unicode_ci,
  `privacy_policy` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_details`
--

INSERT INTO `shop_details` (`id`, `shop_name`, `contact_number`, `address`, `about`, `terms_and_conditions`, `privacy_policy`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Cultured Look', 233557881327, '33 lane', 'We sell the latest things', NULL, NULL, 'shop-details/1593251074culturedlogo.jpg', '2020-04-21 00:05:31', '2020-06-27 11:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `unique_item_quantity` bigint(20) NOT NULL,
  `payment_method_id` smallint(6) NOT NULL,
  `total_price` bigint(20) NOT NULL,
  `processed` smallint(6) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `quantity`, `unique_item_quantity`, `payment_method_id`, `total_price`, `processed`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 2, 350, 0, 0, '2020-05-03 23:56:22', '2020-05-06 16:12:51'),
(2, 2, 2, 2, 350, 0, 0, '2020-05-03 23:56:51', '2020-05-06 16:12:51'),
(3, 2, 2, 1, 350, 0, 0, '2020-05-04 00:10:38', '2020-05-06 16:12:51'),
(4, 2, 2, 1, 350, 0, 0, '2020-05-04 00:12:54', '2020-05-06 16:12:51'),
(5, 2, 2, 1, 350, 0, 0, '2020-05-04 00:13:07', '2020-05-06 16:12:51'),
(6, 2, 2, 1, 350, 0, 0, '2020-05-04 00:21:15', '2020-05-06 16:12:51'),
(7, 2, 2, 1, 350, 0, 0, '2020-05-04 00:23:06', '2020-05-06 16:12:51'),
(8, 2, 2, 1, 350, 0, 0, '2020-05-04 00:25:12', '2020-05-06 16:12:51'),
(9, 2, 2, 1, 350, 0, 0, '2020-05-04 00:27:42', '2020-05-06 16:12:51'),
(10, 2, 2, 1, 350, 0, 0, '2020-05-04 00:27:58', '2020-05-06 16:12:51'),
(11, 2, 2, 1, 350, 0, 0, '2020-05-04 00:28:16', '2020-05-06 16:12:51'),
(12, 2, 2, 1, 350, 0, 0, '2020-05-04 00:31:49', '2020-05-06 16:12:51'),
(13, 2, 2, 1, 350, 0, 0, '2020-05-04 00:32:08', '2020-05-06 16:12:51'),
(14, 2, 2, 1, 350, 0, 0, '2020-05-04 00:53:24', '2020-05-06 16:12:51'),
(15, 2, 2, 1, 350, 0, 0, '2020-05-04 01:09:21', '2020-05-06 16:12:51'),
(16, 2, 2, 1, 350, 0, 0, '2020-05-04 01:17:55', '2020-05-06 16:12:51'),
(17, 3, 2, 1, 350, 0, 0, '2020-05-04 10:15:51', '2020-05-06 16:12:51'),
(18, 2, 2, 1, 350, 0, 0, '2020-05-04 10:28:56', '2020-05-06 16:12:51'),
(19, 2, 2, 1, 350, 0, 0, '2020-05-04 10:42:34', '2020-05-06 16:12:51'),
(20, 2, 2, 1, 350, 0, 0, '2020-05-04 10:49:46', '2020-05-06 16:12:51'),
(21, 2, 2, 1, 350, 0, 0, '2020-05-04 10:50:08', '2020-05-06 16:12:51'),
(22, 3, 2, 1, 350, 0, 0, '2020-05-04 13:30:41', '2020-05-06 16:12:51'),
(23, 3, 2, 1, 350, 0, 0, '2020-05-04 13:32:45', '2020-05-06 16:12:51'),
(24, 3, 2, 1, 350, 0, 0, '2020-05-04 13:33:10', '2020-05-06 16:12:51'),
(25, 6, 5, 1, 980, 0, 0, '2020-05-06 01:13:37', '2020-05-06 16:12:51'),
(26, 8, 5, 1, 630, 0, 1, '2020-05-06 18:24:09', '2020-05-06 18:24:09'),
(27, 1, 1, 1, 400, 0, 1, '2020-05-06 18:36:33', '2020-05-06 18:36:33'),
(28, 3, 3, 1, 750, 1, 1, '2020-05-06 18:52:15', '2020-05-06 18:52:38'),
(29, 3, 2, 1, 600, 0, 1, '2020-05-06 19:08:23', '2020-05-06 19:08:23'),
(31, 6, 4, 2, 900, 1, 1, '2020-05-07 11:42:54', '2020-05-07 11:43:48'),
(32, 2, 2, 2, 350, 0, 2, '2020-05-07 12:51:04', '2020-05-07 12:51:04'),
(33, 0, 0, 2, 0, 0, 2, '2020-05-07 12:51:40', '2020-05-07 12:51:40'),
(34, 11, 3, 1, 1380, 0, 2, '2020-06-23 02:13:53', '2020-06-23 02:13:53'),
(35, 1, 1, 1, 200, 1, 2, '2020-06-27 11:34:50', '2020-06-27 11:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `contact_number`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(2, NULL, 'guest', 'guest@culturedlook.com', NULL, 'users/default.png', NULL, '$2y$10$tG.kwt1f9X2SAFxD1HdLeeZLZq6Eub4CC2F7xWPafz41f5LSZXrxq', NULL, NULL, '2020-05-07 12:44:18', '2020-05-07 12:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FAQs`
--
ALTER TABLE `FAQs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_id_index` (`id`),
  ADD KEY `items_item_image_id_index` (`item_image_id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_images_item_id_index` (`item_id`);

--
-- Indexes for table `item_prices`
--
ALTER TABLE `item_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_prices_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_quantity`
--
ALTER TABLE `item_quantity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_quantity_item_id_foreign` (`item_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

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
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_details_shopid_foreign` (`shopid`);

--
-- Indexes for table `payment_information`
--
ALTER TABLE `payment_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_information_transaction_id_foreign` (`transaction_id`),
  ADD KEY `payment_information_payment_method_foreign` (`payment_method`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `purchased_items`
--
ALTER TABLE `purchased_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchased_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `purposes`
--
ALTER TABLE `purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shop_details`
--
ALTER TABLE `shop_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FAQs`
--
ALTER TABLE `FAQs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `item_prices`
--
ALTER TABLE `item_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `item_quantity`
--
ALTER TABLE `item_quantity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_information`
--
ALTER TABLE `payment_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchased_items`
--
ALTER TABLE `purchased_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `purposes`
--
ALTER TABLE `purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_details`
--
ALTER TABLE `shop_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_images`
--
ALTER TABLE `item_images`
  ADD CONSTRAINT `item_images_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_prices`
--
ALTER TABLE `item_prices`
  ADD CONSTRAINT `item_prices_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_quantity`
--
ALTER TABLE `item_quantity`
  ADD CONSTRAINT `item_quantity_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_shopid_foreign` FOREIGN KEY (`shopid`) REFERENCES `shop_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_information`
--
ALTER TABLE `payment_information`
  ADD CONSTRAINT `payment_information_payment_method_foreign` FOREIGN KEY (`payment_method`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_information_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchased_items`
--
ALTER TABLE `purchased_items`
  ADD CONSTRAINT `purchased_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
