-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 11:58 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(90) NOT NULL,
  `last_name` varchar(90) NOT NULL,
  `address` text,
  `mobile_no` int(20) DEFAULT NULL,
  `landline_no` int(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `nic` varchar(45) DEFAULT NULL,
  `short_code` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `first_name`, `last_name`, `address`, `mobile_no`, `landline_no`, `email`, `status`, `nic`, `short_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super', 'Admin', NULL, NULL, NULL, NULL, 1, NULL, 'E001', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_icon`
--

CREATE TABLE `tbl_icon` (
  `id` int(15) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `unicode` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_icon`
--

INSERT INTO `tbl_icon` (`id`, `type`, `icon`, `unicode`, `created_at`, `updated_at`) VALUES
(2, 'fa', 'fa-adjust', '&#xf042;', NULL, NULL),
(3, 'fa', 'fa-adn', '&#xf170;', NULL, NULL),
(4, 'fa', 'fa-align-center', '&#xf037;', NULL, NULL),
(5, 'fa', 'fa-align-justify', '&#xf039;', NULL, NULL),
(6, 'fa', 'fa-align-left', '&#xf036;', NULL, NULL),
(7, 'fa', 'fa-align-right', '&#xf038;', NULL, NULL),
(8, 'fa', 'fa-amazon', '&#xf270;', NULL, NULL),
(9, 'fa', 'fa-ambulance', '&#xf0f9;', NULL, NULL),
(10, 'fa', 'fa-anchor', '&#xf13d;', NULL, NULL),
(11, 'fa', 'fa-android', '&#xf17b;', NULL, NULL),
(12, 'fa', 'fa-angellist', '&#xf209;', NULL, NULL),
(13, 'fa', 'fa-angle-double-down', '&#xf103;', NULL, NULL),
(14, 'fa', 'fa-angle-double-left', '&#xf100;', NULL, NULL),
(15, 'fa', 'fa-angle-double-right', '&#xf101;', NULL, NULL),
(16, 'fa', 'fa-angle-double-up', '&#xf102;', NULL, NULL),
(17, 'fa', 'fa-angle-down', '&#xf107;', NULL, NULL),
(18, 'fa', 'fa-angle-left', '&#xf104;', NULL, NULL),
(19, 'fa', 'fa-angle-right', '&#xf105;', NULL, NULL),
(20, 'fa', 'fa-angle-up', '&#xf106;', NULL, NULL),
(21, 'fa', 'fa-apple', '&#xf179;', NULL, NULL),
(22, 'fa', 'fa-archive', '&#xf187;', NULL, NULL),
(23, 'fa', 'fa-area-chart', '&#xf1fe;', NULL, NULL),
(24, 'fa', 'fa-arrow-circle-down', '&#xf0ab;', NULL, NULL),
(25, 'fa', 'fa-arrow-circle-left', '&#xf0a8;', NULL, NULL),
(26, 'fa', 'fa-arrow-circle-o-down', '&#xf01a;', NULL, NULL),
(27, 'fa', 'fa-arrow-circle-o-left', '&#xf190;', NULL, NULL),
(28, 'fa', 'fa-arrow-circle-o-right', '&#xf18e;', NULL, NULL),
(29, 'fa', 'fa-arrow-circle-o-up', '&#xf01b;', NULL, NULL),
(30, 'fa', 'fa-arrow-circle-right', '&#xf0a9;', NULL, NULL),
(31, 'fa', 'fa-arrow-circle-up', '&#xf0aa;', NULL, NULL),
(32, 'fa', 'fa-arrow-down', '&#xf063;', NULL, NULL),
(33, 'fa', 'fa-arrow-left', '&#xf060;', NULL, NULL),
(34, 'fa', 'fa-arrow-right', '&#xf061;', NULL, NULL),
(35, 'fa', 'fa-arrow-up', '&#xf062;', NULL, NULL),
(36, 'fa', 'fa-arrows', '&#xf047;', NULL, NULL),
(37, 'fa', 'fa-arrows-alt', '&#xf0b2;', NULL, NULL),
(38, 'fa', 'fa-arrows-h', '&#xf07e;', NULL, NULL),
(39, 'fa', 'fa-arrows-v', '&#xf07d;', NULL, NULL),
(40, 'fa', 'fa-asterisk', '&#xf069;', NULL, NULL),
(41, 'fa', 'fa-at', '&#xf1fa;', NULL, NULL),
(42, 'fa', 'fa-backward', '&#xf04a;', NULL, NULL),
(43, 'fa', 'fa-balance-scale', '&#xf24e;', NULL, NULL),
(44, 'fa', 'fa-ban', '&#xf05e;', NULL, NULL),
(45, 'fa', 'fa-bar-chart', '&#xf080;', NULL, NULL),
(46, 'fa', 'fa-barcode', '&#xf02a;', NULL, NULL),
(47, 'fa', 'fa-bars', '&#xf0c9;', NULL, NULL),
(48, 'fa', 'fa-battery-empty', '&#xf244;', NULL, NULL),
(49, 'fa', 'fa-battery-full', '&#xf240;', NULL, NULL),
(50, 'fa', 'fa-battery-half', '&#xf242;', NULL, NULL),
(51, 'fa', 'fa-battery-quarter', '&#xf243;', NULL, NULL),
(52, 'fa', 'fa-battery-three-quarters', '&#xf241;', NULL, NULL),
(53, 'fa', 'fa-bed', '&#xf236;', NULL, NULL),
(54, 'fa', 'fa-beer', '&#xf0fc;', NULL, NULL),
(55, 'fa', 'fa-behance', '&#xf1b4;', NULL, NULL),
(56, 'fa', 'fa-behance-square', '&#xf1b5;', NULL, NULL),
(57, 'fa', 'fa-bell', '&#xf0f3;', NULL, NULL),
(58, 'fa', 'fa-bell-o', '&#xf0a2;', NULL, NULL),
(59, 'fa', 'fa-bell-slash', '&#xf1f6;', NULL, NULL),
(60, 'fa', 'fa-bell-slash-o', '&#xf1f7;', NULL, NULL),
(61, 'fa', 'fa-bicycle', '&#xf206;', NULL, NULL),
(62, 'fa', 'fa-binoculars', '&#xf1e5;', NULL, NULL),
(63, 'fa', 'fa-birthday-cake', '&#xf1fd;', NULL, NULL),
(64, 'fa', 'fa-bitbucket', '&#xf171;', NULL, NULL),
(65, 'fa', 'fa-bitbucket-square', '&#xf172;', NULL, NULL),
(66, 'fa', 'fa-black-tie', '&#xf27e;', NULL, NULL),
(67, 'fa', 'fa-bluetooth', '&#xf293;', NULL, NULL),
(68, 'fa', 'fa-bluetooth-b', '&#xf294;', NULL, NULL),
(69, 'fa', 'fa-bold', '&#xf032;', NULL, NULL),
(70, 'fa', 'fa-bolt', '&#xf0e7;', NULL, NULL),
(71, 'fa', 'fa-bomb', '&#xf1e2;', NULL, NULL),
(72, 'fa', 'fa-book', '&#xf02d;', NULL, NULL),
(73, 'fa', 'fa-bookmark', '&#xf02e;', NULL, NULL),
(74, 'fa', 'fa-bookmark-o', '&#xf097;', NULL, NULL),
(75, 'fa', 'fa-briefcase', '&#xf0b1;', NULL, NULL),
(76, 'fa', 'fa-btc', '&#xf15a;', NULL, NULL),
(77, 'fa', 'fa-bug', '&#xf188;', NULL, NULL),
(78, 'fa', 'fa-building', '&#xf1ad;', NULL, NULL),
(79, 'fa', 'fa-building-o', '&#xf0f7;', NULL, NULL),
(80, 'fa', 'fa-bullhorn', '&#xf0a1;', NULL, NULL),
(81, 'fa', 'fa-bullseye', '&#xf140;', NULL, NULL),
(82, 'fa', 'fa-bus', '&#xf207;', NULL, NULL),
(83, 'fa', 'fa-buysellads', '&#xf20d;', NULL, NULL),
(84, 'fa', 'fa-calculator', '&#xf1ec;', NULL, NULL),
(85, 'fa', 'fa-calendar', '&#xf073;', NULL, NULL),
(86, 'fa', 'fa-calendar-check-o', '&#xf274;', NULL, NULL),
(87, 'fa', 'fa-calendar-minus-o', '&#xf272;', NULL, NULL),
(88, 'fa', 'fa-calendar-o', '&#xf133;', NULL, NULL),
(89, 'fa', 'fa-calendar-plus-o', '&#xf271;', NULL, NULL),
(90, 'fa', 'fa-calendar-times-o', '&#xf273;', NULL, NULL),
(91, 'fa', 'fa-camera', '&#xf030;', NULL, NULL),
(92, 'fa', 'fa-camera-retro', '&#xf083;', NULL, NULL),
(93, 'fa', 'fa-car', '&#xf1b9;', NULL, NULL),
(94, 'fa', 'fa-caret-down', '&#xf0d7;', NULL, NULL),
(95, 'fa', 'fa-caret-left', '&#xf0d9;', NULL, NULL),
(96, 'fa', 'fa-caret-right', '&#xf0da;', NULL, NULL),
(97, 'fa', 'fa-caret-square-o-down', '&#xf150;', NULL, NULL),
(98, 'fa', 'fa-caret-square-o-left', '&#xf191;', NULL, NULL),
(99, 'fa', 'fa-caret-square-o-right', '&#xf152;', NULL, NULL),
(100, 'fa', 'fa-caret-square-o-up', '&#xf151;', NULL, NULL),
(101, 'fa', 'fa-caret-up', '&#xf0d8;', NULL, NULL),
(102, 'fa', 'fa-cart-arrow-down', '&#xf218;', NULL, NULL),
(103, 'fa', 'fa-cart-plus', '&#xf217;', NULL, NULL),
(104, 'fa', 'fa-cc', '&#xf20a;', NULL, NULL),
(105, 'fa', 'fa-cc-amex', '&#xf1f3;', NULL, NULL),
(106, 'fa', 'fa-cc-diners-club', '&#xf24c;', NULL, NULL),
(107, 'fa', 'fa-cc-discover', '&#xf1f2;', NULL, NULL),
(108, 'fa', 'fa-cc-jcb', '&#xf24b;', NULL, NULL),
(109, 'fa', 'fa-cc-mastercard', '&#xf1f1;', NULL, NULL),
(110, 'fa', 'fa-cc-paypal', '&#xf1f4;', NULL, NULL),
(111, 'fa', 'fa-cc-stripe', '&#xf1f5;', NULL, NULL),
(112, 'fa', 'fa-cc-visa', '&#xf1f0;', NULL, NULL),
(113, 'fa', 'fa-certificate', '&#xf0a3;', NULL, NULL),
(114, 'fa', 'fa-chain-broken', '&#xf127;', NULL, NULL),
(115, 'fa', 'fa-check', '&#xf00c;', NULL, NULL),
(116, 'fa', 'fa-check-circle', '&#xf058;', NULL, NULL),
(117, 'fa', 'fa-check-circle-o', '&#xf05d;', NULL, NULL),
(118, 'fa', 'fa-check-square', '&#xf14a;', NULL, NULL),
(119, 'fa', 'fa-check-square-o', '&#xf046;', NULL, NULL),
(120, 'fa', 'fa-chevron-circle-down', '&#xf13a;', NULL, NULL),
(121, 'fa', 'fa-chevron-circle-left', '&#xf137;', NULL, NULL),
(122, 'fa', 'fa-chevron-circle-right', '&#xf138;', NULL, NULL),
(123, 'fa', 'fa-chevron-circle-up', '&#xf139;', NULL, NULL),
(124, 'fa', 'fa-chevron-down', '&#xf078;', NULL, NULL),
(125, 'fa', 'fa-chevron-left', '&#xf053;', NULL, NULL),
(126, 'fa', 'fa-chevron-right', '&#xf054;', NULL, NULL),
(127, 'fa', 'fa-chevron-up', '&#xf077;', NULL, NULL),
(128, 'fa', 'fa-child', '&#xf1ae;', NULL, NULL),
(129, 'fa', 'fa-chrome', '&#xf268;', NULL, NULL),
(130, 'fa', 'fa-circle', '&#xf111;', NULL, NULL),
(131, 'fa', 'fa-circle-o', '&#xf10c;', NULL, NULL),
(132, 'fa', 'fa-circle-o-notch', '&#xf1ce;', NULL, NULL),
(133, 'fa', 'fa-circle-thin', '&#xf1db;', NULL, NULL),
(134, 'fa', 'fa-clipboard', '&#xf0ea;', NULL, NULL),
(135, 'fa', 'fa-clock-o', '&#xf017;', NULL, NULL),
(136, 'fa', 'fa-clone', '&#xf24d;', NULL, NULL),
(137, 'fa', 'fa-cloud', '&#xf0c2;', NULL, NULL),
(138, 'fa', 'fa-cloud-download', '&#xf0ed;', NULL, NULL),
(139, 'fa', 'fa-cloud-upload', '&#xf0ee;', NULL, NULL),
(140, 'fa', 'fa-code', '&#xf121;', NULL, NULL),
(141, 'fa', 'fa-code-fork', '&#xf126;', NULL, NULL),
(142, 'fa', 'fa-codepen', '&#xf1cb;', NULL, NULL),
(143, 'fa', 'fa-codiepie', '&#xf284;', NULL, NULL),
(144, 'fa', 'fa-coffee', '&#xf0f4;', NULL, NULL),
(145, 'fa', 'fa-cog', '&#xf013;', NULL, NULL),
(146, 'fa', 'fa-cogs', '&#xf085;', NULL, NULL),
(147, 'fa', 'fa-columns', '&#xf0db;', NULL, NULL),
(148, 'fa', 'fa-comment', '&#xf075;', NULL, NULL),
(149, 'fa', 'fa-comment-o', '&#xf0e5;', NULL, NULL),
(150, 'fa', 'fa-commenting', '&#xf27a;', NULL, NULL),
(151, 'fa', 'fa-commenting-o', '&#xf27b;', NULL, NULL),
(152, 'fa', 'fa-comments', '&#xf086;', NULL, NULL),
(153, 'fa', 'fa-comments-o', '&#xf0e6;', NULL, NULL),
(154, 'fa', 'fa-compass', '&#xf14e;', NULL, NULL),
(155, 'fa', 'fa-compress', '&#xf066;', NULL, NULL),
(156, 'fa', 'fa-connectdevelop', '&#xf20e;', NULL, NULL),
(157, 'fa', 'fa-contao', '&#xf26d;', NULL, NULL),
(158, 'fa', 'fa-copyright', '&#xf1f9;', NULL, NULL),
(159, 'fa', 'fa-creative-commons', '&#xf25e;', NULL, NULL),
(160, 'fa', 'fa-credit-card', '&#xf09d;', NULL, NULL),
(161, 'fa', 'fa-credit-card-alt', '&#xf283;', NULL, NULL),
(162, 'fa', 'fa-crop', '&#xf125;', NULL, NULL),
(163, 'fa', 'fa-crosshairs', '&#xf05b;', NULL, NULL),
(164, 'fa', 'fa-css3', '&#xf13c;', NULL, NULL),
(165, 'fa', 'fa-cube', '&#xf1b2;', NULL, NULL),
(166, 'fa', 'fa-cubes', '&#xf1b3;', NULL, NULL),
(167, 'fa', 'fa-cutlery', '&#xf0f5;', NULL, NULL),
(168, 'fa', 'fa-dashcube', '&#xf210;', NULL, NULL),
(169, 'fa', 'fa-database', '&#xf1c0;', NULL, NULL),
(170, 'fa', 'fa-delicious', '&#xf1a5;', NULL, NULL),
(171, 'fa', 'fa-desktop', '&#xf108;', NULL, NULL),
(172, 'fa', 'fa-deviantart', '&#xf1bd;', NULL, NULL),
(173, 'fa', 'fa-diamond', '&#xf219;', NULL, NULL),
(174, 'fa', 'fa-digg', '&#xf1a6;', NULL, NULL),
(175, 'fa', 'fa-dot-circle-o', '&#xf192;', NULL, NULL),
(176, 'fa', 'fa-download', '&#xf019;', NULL, NULL),
(177, 'fa', 'fa-dribbble', '&#xf17d;', NULL, NULL),
(178, 'fa', 'fa-dropbox', '&#xf16b;', NULL, NULL),
(179, 'fa', 'fa-drupal', '&#xf1a9;', NULL, NULL),
(180, 'fa', 'fa-edge', '&#xf282;', NULL, NULL),
(181, 'fa', 'fa-eject', '&#xf052;', NULL, NULL),
(182, 'fa', 'fa-ellipsis-h', '&#xf141;', NULL, NULL),
(183, 'fa', 'fa-ellipsis-v', '&#xf142;', NULL, NULL),
(184, 'fa', 'fa-empire', '&#xf1d1;', NULL, NULL),
(185, 'fa', 'fa-envelope', '&#xf0e0;', NULL, NULL),
(186, 'fa', 'fa-envelope-o', '&#xf003;', NULL, NULL),
(187, 'fa', 'fa-envelope-square', '&#xf199;', NULL, NULL),
(188, 'fa', 'fa-eraser', '&#xf12d;', NULL, NULL),
(189, 'fa', 'fa-eur', '&#xf153;', NULL, NULL),
(190, 'fa', 'fa-exchange', '&#xf0ec;', NULL, NULL),
(191, 'fa', 'fa-exclamation', '&#xf12a;', NULL, NULL),
(192, 'fa', 'fa-exclamation-circle', '&#xf06a;', NULL, NULL),
(193, 'fa', 'fa-exclamation-triangle', '&#xf071;', NULL, NULL),
(194, 'fa', 'fa-expand', '&#xf065;', NULL, NULL),
(195, 'fa', 'fa-expeditedssl', '&#xf23e;', NULL, NULL),
(196, 'fa', 'fa-external-link', '&#xf08e;', NULL, NULL),
(197, 'fa', 'fa-external-link-square', '&#xf14c;', NULL, NULL),
(198, 'fa', 'fa-eye', '&#xf06e;', NULL, NULL),
(199, 'fa', 'fa-eye-slash', '&#xf070;', NULL, NULL),
(200, 'fa', 'fa-eyedropper', '&#xf1fb;', NULL, NULL),
(201, 'fa', 'fa-facebook', '&#xf09a;', NULL, NULL),
(202, 'fa', 'fa-facebook-official', '&#xf230;', NULL, NULL),
(203, 'fa', 'fa-facebook-square', '&#xf082;', NULL, NULL),
(204, 'fa', 'fa-fast-backward', '&#xf049;', NULL, NULL),
(205, 'fa', 'fa-fast-forward', '&#xf050;', NULL, NULL),
(206, 'fa', 'fa-fax', '&#xf1ac;', NULL, NULL),
(207, 'fa', 'fa-female', '&#xf182;', NULL, NULL),
(208, 'fa', 'fa-fighter-jet', '&#xf0fb;', NULL, NULL),
(209, 'fa', 'fa-file', '&#xf15b;', NULL, NULL),
(210, 'fa', 'fa-file-archive-o', '&#xf1c6;', NULL, NULL),
(211, 'fa', 'fa-file-audio-o', '&#xf1c7;', NULL, NULL),
(212, 'fa', 'fa-file-code-o', '&#xf1c9;', NULL, NULL),
(213, 'fa', 'fa-file-excel-o', '&#xf1c3;', NULL, NULL),
(214, 'fa', 'fa-file-image-o', '&#xf1c5;', NULL, NULL),
(215, 'fa', 'fa-file-o', '&#xf016;', NULL, NULL),
(216, 'fa', 'fa-file-pdf-o', '&#xf1c1;', NULL, NULL),
(217, 'fa', 'fa-file-powerpoint-o', '&#xf1c4;', NULL, NULL),
(218, 'fa', 'fa-file-text', '&#xf15c;', NULL, NULL),
(219, 'fa', 'fa-file-text-o', '&#xf0f6;', NULL, NULL),
(220, 'fa', 'fa-file-video-o', '&#xf1c8;', NULL, NULL),
(221, 'fa', 'fa-file-word-o', '&#xf1c2;', NULL, NULL),
(222, 'fa', 'fa-files-o', '&#xf0c5;', NULL, NULL),
(223, 'fa', 'fa-film', '&#xf008;', NULL, NULL),
(224, 'fa', 'fa-filter', '&#xf0b0;', NULL, NULL),
(225, 'fa', 'fa-fire', '&#xf06d;', NULL, NULL),
(226, 'fa', 'fa-fire-extinguisher', '&#xf134;', NULL, NULL),
(227, 'fa', 'fa-firefox', '&#xf269;', NULL, NULL),
(228, 'fa', 'fa-flag', '&#xf024;', NULL, NULL),
(229, 'fa', 'fa-flag-checkered', '&#xf11e;', NULL, NULL),
(230, 'fa', 'fa-flag-o', '&#xf11d;', NULL, NULL),
(231, 'fa', 'fa-flask', '&#xf0c3;', NULL, NULL),
(232, 'fa', 'fa-flickr', '&#xf16e;', NULL, NULL),
(233, 'fa', 'fa-floppy-o', '&#xf0c7;', NULL, NULL),
(234, 'fa', 'fa-folder', '&#xf07b;', NULL, NULL),
(235, 'fa', 'fa-folder-o', '&#xf114;', NULL, NULL),
(236, 'fa', 'fa-folder-open', '&#xf07c;', NULL, NULL),
(237, 'fa', 'fa-folder-open-o', '&#xf115;', NULL, NULL),
(238, 'fa', 'fa-font', '&#xf031;', NULL, NULL),
(239, 'fa', 'fa-fonticons', '&#xf280;', NULL, NULL),
(240, 'fa', 'fa-fort-awesome', '&#xf286;', NULL, NULL),
(241, 'fa', 'fa-forumbee', '&#xf211;', NULL, NULL),
(242, 'fa', 'fa-forward', '&#xf04e;', NULL, NULL),
(243, 'fa', 'fa-foursquare', '&#xf180;', NULL, NULL),
(244, 'fa', 'fa-frown-o', '&#xf119;', NULL, NULL),
(245, 'fa', 'fa-futbol-o', '&#xf1e3;', NULL, NULL),
(246, 'fa', 'fa-gamepad', '&#xf11b;', NULL, NULL),
(247, 'fa', 'fa-gavel', '&#xf0e3;', NULL, NULL),
(248, 'fa', 'fa-gbp', '&#xf154;', NULL, NULL),
(249, 'fa', 'fa-genderless', '&#xf22d;', NULL, NULL),
(250, 'fa', 'fa-get-pocket', '&#xf265;', NULL, NULL),
(251, 'fa', 'fa-gg', '&#xf260;', NULL, NULL),
(252, 'fa', 'fa-gg-circle', '&#xf261;', NULL, NULL),
(253, 'fa', 'fa-gift', '&#xf06b;', NULL, NULL),
(254, 'fa', 'fa-git', '&#xf1d3;', NULL, NULL),
(255, 'fa', 'fa-git-square', '&#xf1d2;', NULL, NULL),
(256, 'fa', 'fa-github', '&#xf09b;', NULL, NULL),
(257, 'fa', 'fa-github-alt', '&#xf113;', NULL, NULL),
(258, 'fa', 'fa-github-square', '&#xf092;', NULL, NULL),
(259, 'fa', 'fa-glass', '&#xf000;', NULL, NULL),
(260, 'fa', 'fa-globe', '&#xf0ac;', NULL, NULL),
(261, 'fa', 'fa-google', '&#xf1a0;', NULL, NULL),
(262, 'fa', 'fa-google-plus', '&#xf0d5;', NULL, NULL),
(263, 'fa', 'fa-google-plus-square', '&#xf0d4;', NULL, NULL),
(264, 'fa', 'fa-google-wallet', '&#xf1ee;', NULL, NULL),
(265, 'fa', 'fa-graduation-cap', '&#xf19d;', NULL, NULL),
(266, 'fa', 'fa-gratipay', '&#xf184;', NULL, NULL),
(267, 'fa', 'fa-h-square', '&#xf0fd;', NULL, NULL),
(268, 'fa', 'fa-hacker-news', '&#xf1d4;', NULL, NULL),
(269, 'fa', 'fa-hand-lizard-o', '&#xf258;', NULL, NULL),
(270, 'fa', 'fa-hand-o-down', '&#xf0a7;', NULL, NULL),
(271, 'fa', 'fa-hand-o-left', '&#xf0a5;', NULL, NULL),
(272, 'fa', 'fa-hand-o-right', '&#xf0a4;', NULL, NULL),
(273, 'fa', 'fa-hand-o-up', '&#xf0a6;', NULL, NULL),
(274, 'fa', 'fa-hand-paper-o', '&#xf256;', NULL, NULL),
(275, 'fa', 'fa-hand-peace-o', '&#xf25b;', NULL, NULL),
(276, 'fa', 'fa-hand-pointer-o', '&#xf25a;', NULL, NULL),
(277, 'fa', 'fa-hand-rock-o', '&#xf255;', NULL, NULL),
(278, 'fa', 'fa-hand-scissors-o', '&#xf257;', NULL, NULL),
(279, 'fa', 'fa-hand-spock-o', '&#xf259;', NULL, NULL),
(280, 'fa', 'fa-hashtag', '&#xf292;', NULL, NULL),
(281, 'fa', 'fa-hdd-o', '&#xf0a0;', NULL, NULL),
(282, 'fa', 'fa-header', '&#xf1dc;', NULL, NULL),
(283, 'fa', 'fa-headphones', '&#xf025;', NULL, NULL),
(284, 'fa', 'fa-heart', '&#xf004;', NULL, NULL),
(285, 'fa', 'fa-heart-o', '&#xf08a;', NULL, NULL),
(286, 'fa', 'fa-heartbeat', '&#xf21e;', NULL, NULL),
(287, 'fa', 'fa-history', '&#xf1da;', NULL, NULL),
(288, 'fa', 'fa-home', '&#xf015;', NULL, NULL),
(289, 'fa', 'fa-hospital-o', '&#xf0f8;', NULL, NULL),
(290, 'fa', 'fa-hourglass', '&#xf254;', NULL, NULL),
(291, 'fa', 'fa-hourglass-end', '&#xf253;', NULL, NULL),
(292, 'fa', 'fa-hourglass-half', '&#xf252;', NULL, NULL),
(293, 'fa', 'fa-hourglass-o', '&#xf250;', NULL, NULL),
(294, 'fa', 'fa-hourglass-start', '&#xf251;', NULL, NULL),
(295, 'fa', 'fa-houzz', '&#xf27c;', NULL, NULL),
(296, 'fa', 'fa-html5', '&#xf13b;', NULL, NULL),
(297, 'fa', 'fa-i-cursor', '&#xf246;', NULL, NULL),
(298, 'fa', 'fa-ils', '&#xf20b;', NULL, NULL),
(299, 'fa', 'fa-inbox', '&#xf01c;', NULL, NULL),
(300, 'fa', 'fa-indent', '&#xf03c;', NULL, NULL),
(301, 'fa', 'fa-industry', '&#xf275;', NULL, NULL),
(302, 'fa', 'fa-info', '&#xf129;', NULL, NULL),
(303, 'fa', 'fa-info-circle', '&#xf05a;', NULL, NULL),
(304, 'fa', 'fa-inr', '&#xf156;', NULL, NULL),
(305, 'fa', 'fa-instagram', '&#xf16d;', NULL, NULL),
(306, 'fa', 'fa-internet-explorer', '&#xf26b;', NULL, NULL),
(307, 'fa', 'fa-ioxhost', '&#xf208;', NULL, NULL),
(308, 'fa', 'fa-italic', '&#xf033;', NULL, NULL),
(309, 'fa', 'fa-joomla', '&#xf1aa;', NULL, NULL),
(310, 'fa', 'fa-jpy', '&#xf157;', NULL, NULL),
(311, 'fa', 'fa-jsfiddle', '&#xf1cc;', NULL, NULL),
(312, 'fa', 'fa-key', '&#xf084;', NULL, NULL),
(313, 'fa', 'fa-keyboard-o', '&#xf11c;', NULL, NULL),
(314, 'fa', 'fa-krw', '&#xf159;', NULL, NULL),
(315, 'fa', 'fa-language', '&#xf1ab;', NULL, NULL),
(316, 'fa', 'fa-laptop', '&#xf109;', NULL, NULL),
(317, 'fa', 'fa-lastfm', '&#xf202;', NULL, NULL),
(318, 'fa', 'fa-lastfm-square', '&#xf203;', NULL, NULL),
(319, 'fa', 'fa-leaf', '&#xf06c;', NULL, NULL),
(320, 'fa', 'fa-leanpub', '&#xf212;', NULL, NULL),
(321, 'fa', 'fa-lemon-o', '&#xf094;', NULL, NULL),
(322, 'fa', 'fa-level-down', '&#xf149;', NULL, NULL),
(323, 'fa', 'fa-level-up', '&#xf148;', NULL, NULL),
(324, 'fa', 'fa-life-ring', '&#xf1cd;', NULL, NULL),
(325, 'fa', 'fa-lightbulb-o', '&#xf0eb;', NULL, NULL),
(326, 'fa', 'fa-line-chart', '&#xf201;', NULL, NULL),
(327, 'fa', 'fa-link', '&#xf0c1;', NULL, NULL),
(328, 'fa', 'fa-linkedin', '&#xf0e1;', NULL, NULL),
(329, 'fa', 'fa-linkedin-square', '&#xf08c;', NULL, NULL),
(330, 'fa', 'fa-linux', '&#xf17c;', NULL, NULL),
(331, 'fa', 'fa-list', '&#xf03a;', NULL, NULL),
(332, 'fa', 'fa-list-alt', '&#xf022;', NULL, NULL),
(333, 'fa', 'fa-list-ol', '&#xf0cb;', NULL, NULL),
(334, 'fa', 'fa-list-ul', '&#xf0ca;', NULL, NULL),
(335, 'fa', 'fa-location-arrow', '&#xf124;', NULL, NULL),
(336, 'fa', 'fa-lock', '&#xf023;', NULL, NULL),
(337, 'fa', 'fa-long-arrow-down', '&#xf175;', NULL, NULL),
(338, 'fa', 'fa-long-arrow-left', '&#xf177;', NULL, NULL),
(339, 'fa', 'fa-long-arrow-right', '&#xf178;', NULL, NULL),
(340, 'fa', 'fa-long-arrow-up', '&#xf176;', NULL, NULL),
(341, 'fa', 'fa-magic', '&#xf0d0;', NULL, NULL),
(342, 'fa', 'fa-magnet', '&#xf076;', NULL, NULL),
(343, 'fa', 'fa-male', '&#xf183;', NULL, NULL),
(344, 'fa', 'fa-map', '&#xf279;', NULL, NULL),
(345, 'fa', 'fa-map-marker', '&#xf041;', NULL, NULL),
(346, 'fa', 'fa-map-o', '&#xf278;', NULL, NULL),
(347, 'fa', 'fa-map-pin', '&#xf276;', NULL, NULL),
(348, 'fa', 'fa-map-signs', '&#xf277;', NULL, NULL),
(349, 'fa', 'fa-mars', '&#xf222;', NULL, NULL),
(350, 'fa', 'fa-mars-double', '&#xf227;', NULL, NULL),
(351, 'fa', 'fa-mars-stroke', '&#xf229;', NULL, NULL),
(352, 'fa', 'fa-mars-stroke-h', '&#xf22b;', NULL, NULL),
(353, 'fa', 'fa-mars-stroke-v', '&#xf22a;', NULL, NULL),
(354, 'fa', 'fa-maxcdn', '&#xf136;', NULL, NULL),
(355, 'fa', 'fa-meanpath', '&#xf20c;', NULL, NULL),
(356, 'fa', 'fa-medium', '&#xf23a;', NULL, NULL),
(357, 'fa', 'fa-medkit', '&#xf0fa;', NULL, NULL),
(358, 'fa', 'fa-meh-o', '&#xf11a;', NULL, NULL),
(359, 'fa', 'fa-mercury', '&#xf223;', NULL, NULL),
(360, 'fa', 'fa-microphone', '&#xf130;', NULL, NULL),
(361, 'fa', 'fa-microphone-slash', '&#xf131;', NULL, NULL),
(362, 'fa', 'fa-minus', '&#xf068;', NULL, NULL),
(363, 'fa', 'fa-minus-circle', '&#xf056;', NULL, NULL),
(364, 'fa', 'fa-minus-square', '&#xf146;', NULL, NULL),
(365, 'fa', 'fa-minus-square-o', '&#xf147;', NULL, NULL),
(366, 'fa', 'fa-mixcloud', '&#xf289;', NULL, NULL),
(367, 'fa', 'fa-mobile', '&#xf10b;', NULL, NULL),
(368, 'fa', 'fa-modx', '&#xf285;', NULL, NULL),
(369, 'fa', 'fa-money', '&#xf0d6;', NULL, NULL),
(370, 'fa', 'fa-moon-o', '&#xf186;', NULL, NULL),
(371, 'fa', 'fa-motorcycle', '&#xf21c;', NULL, NULL),
(372, 'fa', 'fa-mouse-pointer', '&#xf245;', NULL, NULL),
(373, 'fa', 'fa-music', '&#xf001;', NULL, NULL),
(374, 'fa', 'fa-neuter', '&#xf22c;', NULL, NULL),
(375, 'fa', 'fa-newspaper-o', '&#xf1ea;', NULL, NULL),
(376, 'fa', 'fa-object-group', '&#xf247;', NULL, NULL),
(377, 'fa', 'fa-object-ungroup', '&#xf248;', NULL, NULL),
(378, 'fa', 'fa-odnoklassniki', '&#xf263;', NULL, NULL),
(379, 'fa', 'fa-odnoklassniki-square', '&#xf264;', NULL, NULL),
(380, 'fa', 'fa-opencart', '&#xf23d;', NULL, NULL),
(381, 'fa', 'fa-openid', '&#xf19b;', NULL, NULL),
(382, 'fa', 'fa-opera', '&#xf26a;', NULL, NULL),
(383, 'fa', 'fa-optin-monster', '&#xf23c;', NULL, NULL),
(384, 'fa', 'fa-outdent', '&#xf03b;', NULL, NULL),
(385, 'fa', 'fa-pagelines', '&#xf18c;', NULL, NULL),
(386, 'fa', 'fa-paint-brush', '&#xf1fc;', NULL, NULL),
(387, 'fa', 'fa-paper-plane', '&#xf1d8;', NULL, NULL),
(388, 'fa', 'fa-paper-plane-o', '&#xf1d9;', NULL, NULL),
(389, 'fa', 'fa-paperclip', '&#xf0c6;', NULL, NULL),
(390, 'fa', 'fa-paragraph', '&#xf1dd;', NULL, NULL),
(391, 'fa', 'fa-pause', '&#xf04c;', NULL, NULL),
(392, 'fa', 'fa-pause-circle', '&#xf28b;', NULL, NULL),
(393, 'fa', 'fa-pause-circle-o', '&#xf28c;', NULL, NULL),
(394, 'fa', 'fa-paw', '&#xf1b0;', NULL, NULL),
(395, 'fa', 'fa-paypal', '&#xf1ed;', NULL, NULL),
(396, 'fa', 'fa-pencil', '&#xf040;', NULL, NULL),
(397, 'fa', 'fa-pencil-square', '&#xf14b;', NULL, NULL),
(398, 'fa', 'fa-pencil-square-o', '&#xf044;', NULL, NULL),
(399, 'fa', 'fa-percent', '&#xf295;', NULL, NULL),
(400, 'fa', 'fa-phone', '&#xf095;', NULL, NULL),
(401, 'fa', 'fa-phone-square', '&#xf098;', NULL, NULL),
(402, 'fa', 'fa-picture-o', '&#xf03e;', NULL, NULL),
(403, 'fa', 'fa-pie-chart', '&#xf200;', NULL, NULL),
(404, 'fa', 'fa-pied-piper', '&#xf1a7;', NULL, NULL),
(405, 'fa', 'fa-pied-piper-alt', '&#xf1a8;', NULL, NULL),
(406, 'fa', 'fa-pinterest', '&#xf0d2;', NULL, NULL),
(407, 'fa', 'fa-pinterest-p', '&#xf231;', NULL, NULL),
(408, 'fa', 'fa-pinterest-square', '&#xf0d3;', NULL, NULL),
(409, 'fa', 'fa-plane', '&#xf072;', NULL, NULL),
(410, 'fa', 'fa-play', '&#xf04b;', NULL, NULL),
(411, 'fa', 'fa-play-circle', '&#xf144;', NULL, NULL),
(412, 'fa', 'fa-play-circle-o', '&#xf01d;', NULL, NULL),
(413, 'fa', 'fa-plug', '&#xf1e6;', NULL, NULL),
(414, 'fa', 'fa-plus', '&#xf067;', NULL, NULL),
(415, 'fa', 'fa-plus-circle', '&#xf055;', NULL, NULL),
(416, 'fa', 'fa-plus-square', '&#xf0fe;', NULL, NULL),
(417, 'fa', 'fa-plus-square-o', '&#xf196;', NULL, NULL),
(418, 'fa', 'fa-power-off', '&#xf011;', NULL, NULL),
(419, 'fa', 'fa-print', '&#xf02f;', NULL, NULL),
(420, 'fa', 'fa-product-hunt', '&#xf288;', NULL, NULL),
(421, 'fa', 'fa-puzzle-piece', '&#xf12e;', NULL, NULL),
(422, 'fa', 'fa-qq', '&#xf1d6;', NULL, NULL),
(423, 'fa', 'fa-qrcode', '&#xf029;', NULL, NULL),
(424, 'fa', 'fa-question', '&#xf128;', NULL, NULL),
(425, 'fa', 'fa-question-circle', '&#xf059;', NULL, NULL),
(426, 'fa', 'fa-quote-left', '&#xf10d;', NULL, NULL),
(427, 'fa', 'fa-quote-right', '&#xf10e;', NULL, NULL),
(428, 'fa', 'fa-random', '&#xf074;', NULL, NULL),
(429, 'fa', 'fa-rebel', '&#xf1d0;', NULL, NULL),
(430, 'fa', 'fa-recycle', '&#xf1b8;', NULL, NULL),
(431, 'fa', 'fa-reddit', '&#xf1a1;', NULL, NULL),
(432, 'fa', 'fa-reddit-alien', '&#xf281;', NULL, NULL),
(433, 'fa', 'fa-reddit-square', '&#xf1a2;', NULL, NULL),
(434, 'fa', 'fa-refresh', '&#xf021;', NULL, NULL),
(435, 'fa', 'fa-registered', '&#xf25d;', NULL, NULL),
(436, 'fa', 'fa-renren', '&#xf18b;', NULL, NULL),
(437, 'fa', 'fa-repeat', '&#xf01e;', NULL, NULL),
(438, 'fa', 'fa-reply', '&#xf112;', NULL, NULL),
(439, 'fa', 'fa-reply-all', '&#xf122;', NULL, NULL),
(440, 'fa', 'fa-retweet', '&#xf079;', NULL, NULL),
(441, 'fa', 'fa-road', '&#xf018;', NULL, NULL),
(442, 'fa', 'fa-rocket', '&#xf135;', NULL, NULL),
(443, 'fa', 'fa-rss', '&#xf09e;', NULL, NULL),
(444, 'fa', 'fa-rss-square', '&#xf143;', NULL, NULL),
(445, 'fa', 'fa-rub', '&#xf158;', NULL, NULL),
(446, 'fa', 'fa-safari', '&#xf267;', NULL, NULL),
(447, 'fa', 'fa-scissors', '&#xf0c4;', NULL, NULL),
(448, 'fa', 'fa-scribd', '&#xf28a;', NULL, NULL),
(449, 'fa', 'fa-search', '&#xf002;', NULL, NULL),
(450, 'fa', 'fa-search-minus', '&#xf010;', NULL, NULL),
(451, 'fa', 'fa-search-plus', '&#xf00e;', NULL, NULL),
(452, 'fa', 'fa-sellsy', '&#xf213;', NULL, NULL),
(453, 'fa', 'fa-server', '&#xf233;', NULL, NULL),
(454, 'fa', 'fa-share', '&#xf064;', NULL, NULL),
(455, 'fa', 'fa-share-alt', '&#xf1e0;', NULL, NULL),
(456, 'fa', 'fa-share-alt-square', '&#xf1e1;', NULL, NULL),
(457, 'fa', 'fa-share-square', '&#xf14d;', NULL, NULL),
(458, 'fa', 'fa-share-square-o', '&#xf045;', NULL, NULL),
(459, 'fa', 'fa-shield', '&#xf132;', NULL, NULL),
(460, 'fa', 'fa-ship', '&#xf21a;', NULL, NULL),
(461, 'fa', 'fa-shirtsinbulk', '&#xf214;', NULL, NULL),
(462, 'fa', 'fa-shopping-bag', '&#xf290;', NULL, NULL),
(463, 'fa', 'fa-shopping-basket', '&#xf291;', NULL, NULL),
(464, 'fa', 'fa-shopping-cart', '&#xf07a;', NULL, NULL),
(465, 'fa', 'fa-sign-in', '&#xf090;', NULL, NULL),
(466, 'fa', 'fa-sign-out', '&#xf08b;', NULL, NULL),
(467, 'fa', 'fa-signal', '&#xf012;', NULL, NULL),
(468, 'fa', 'fa-simplybuilt', '&#xf215;', NULL, NULL),
(469, 'fa', 'fa-sitemap', '&#xf0e8;', NULL, NULL),
(470, 'fa', 'fa-skyatlas', '&#xf216;', NULL, NULL),
(471, 'fa', 'fa-skype', '&#xf17e;', NULL, NULL),
(472, 'fa', 'fa-slack', '&#xf198;', NULL, NULL),
(473, 'fa', 'fa-sliders', '&#xf1de;', NULL, NULL),
(474, 'fa', 'fa-slideshare', '&#xf1e7;', NULL, NULL),
(475, 'fa', 'fa-smile-o', '&#xf118;', NULL, NULL),
(476, 'fa', 'fa-sort', '&#xf0dc;', NULL, NULL),
(477, 'fa', 'fa-sort-alpha-asc', '&#xf15d;', NULL, NULL),
(478, 'fa', 'fa-sort-alpha-desc', '&#xf15e;', NULL, NULL),
(479, 'fa', 'fa-sort-amount-asc', '&#xf160;', NULL, NULL),
(480, 'fa', 'fa-sort-amount-desc', '&#xf161;', NULL, NULL),
(481, 'fa', 'fa-sort-asc', '&#xf0de;', NULL, NULL),
(482, 'fa', 'fa-sort-desc', '&#xf0dd;', NULL, NULL),
(483, 'fa', 'fa-sort-numeric-asc', '&#xf162;', NULL, NULL),
(484, 'fa', 'fa-sort-numeric-desc', '&#xf163;', NULL, NULL),
(485, 'fa', 'fa-soundcloud', '&#xf1be;', NULL, NULL),
(486, 'fa', 'fa-space-shuttle', '&#xf197;', NULL, NULL),
(487, 'fa', 'fa-spinner', '&#xf110;', NULL, NULL),
(488, 'fa', 'fa-spoon', '&#xf1b1;', NULL, NULL),
(489, 'fa', 'fa-spotify', '&#xf1bc;', NULL, NULL),
(490, 'fa', 'fa-square', '&#xf0c8;', NULL, NULL),
(491, 'fa', 'fa-square-o', '&#xf096;', NULL, NULL),
(492, 'fa', 'fa-stack-exchange', '&#xf18d;', NULL, NULL),
(493, 'fa', 'fa-stack-overflow', '&#xf16c;', NULL, NULL),
(494, 'fa', 'fa-star', '&#xf005;', NULL, NULL),
(495, 'fa', 'fa-star-half', '&#xf089;', NULL, NULL),
(496, 'fa', 'fa-star-half-o', '&#xf123;', NULL, NULL),
(497, 'fa', 'fa-star-o', '&#xf006;', NULL, NULL),
(498, 'fa', 'fa-steam', '&#xf1b6;', NULL, NULL),
(499, 'fa', 'fa-steam-square', '&#xf1b7;', NULL, NULL),
(500, 'fa', 'fa-step-backward', '&#xf048;', NULL, NULL),
(501, 'fa', 'fa-step-forward', '&#xf051;', NULL, NULL),
(502, 'fa', 'fa-stethoscope', '&#xf0f1;', NULL, NULL),
(503, 'fa', 'fa-sticky-note', '&#xf249;', NULL, NULL),
(504, 'fa', 'fa-sticky-note-o', '&#xf24a;', NULL, NULL),
(505, 'fa', 'fa-stop', '&#xf04d;', NULL, NULL),
(506, 'fa', 'fa-stop-circle', '&#xf28d;', NULL, NULL),
(507, 'fa', 'fa-stop-circle-o', '&#xf28e;', NULL, NULL),
(508, 'fa', 'fa-street-view', '&#xf21d;', NULL, NULL),
(509, 'fa', 'fa-strikethrough', '&#xf0cc;', NULL, NULL),
(510, 'fa', 'fa-stumbleupon', '&#xf1a4;', NULL, NULL),
(511, 'fa', 'fa-stumbleupon-circle', '&#xf1a3;', NULL, NULL),
(512, 'fa', 'fa-subscript', '&#xf12c;', NULL, NULL),
(513, 'fa', 'fa-subway', '&#xf239;', NULL, NULL),
(514, 'fa', 'fa-suitcase', '&#xf0f2;', NULL, NULL),
(515, 'fa', 'fa-sun-o', '&#xf185;', NULL, NULL),
(516, 'fa', 'fa-superscript', '&#xf12b;', NULL, NULL),
(517, 'fa', 'fa-table', '&#xf0ce;', NULL, NULL),
(518, 'fa', 'fa-tablet', '&#xf10a;', NULL, NULL),
(519, 'fa', 'fa-tachometer', '&#xf0e4;', NULL, NULL),
(520, 'fa', 'fa-tag', '&#xf02b;', NULL, NULL),
(521, 'fa', 'fa-tags', '&#xf02c;', NULL, NULL),
(522, 'fa', 'fa-tasks', '&#xf0ae;', NULL, NULL),
(523, 'fa', 'fa-taxi', '&#xf1ba;', NULL, NULL),
(524, 'fa', 'fa-television', '&#xf26c;', NULL, NULL),
(525, 'fa', 'fa-tencent-weibo', '&#xf1d5;', NULL, NULL),
(526, 'fa', 'fa-terminal', '&#xf120;', NULL, NULL),
(527, 'fa', 'fa-text-height', '&#xf034;', NULL, NULL),
(528, 'fa', 'fa-text-width', '&#xf035;', NULL, NULL),
(529, 'fa', 'fa-th', '&#xf00a;', NULL, NULL),
(530, 'fa', 'fa-th-large', '&#xf009;', NULL, NULL),
(531, 'fa', 'fa-th-list', '&#xf00b;', NULL, NULL),
(532, 'fa', 'fa-thumb-tack', '&#xf08d;', NULL, NULL),
(533, 'fa', 'fa-thumbs-down', '&#xf165;', NULL, NULL),
(534, 'fa', 'fa-thumbs-o-down', '&#xf088;', NULL, NULL),
(535, 'fa', 'fa-thumbs-o-up', '&#xf087;', NULL, NULL),
(536, 'fa', 'fa-thumbs-up', '&#xf164;', NULL, NULL),
(537, 'fa', 'fa-ticket', '&#xf145;', NULL, NULL),
(538, 'fa', 'fa-times', '&#xf00d;', NULL, NULL),
(539, 'fa', 'fa-times-circle', '&#xf057;', NULL, NULL),
(540, 'fa', 'fa-times-circle-o', '&#xf05c;', NULL, NULL),
(541, 'fa', 'fa-tint', '&#xf043;', NULL, NULL),
(542, 'fa', 'fa-toggle-off', '&#xf204;', NULL, NULL),
(543, 'fa', 'fa-toggle-on', '&#xf205;', NULL, NULL),
(544, 'fa', 'fa-trademark', '&#xf25c;', NULL, NULL),
(545, 'fa', 'fa-train', '&#xf238;', NULL, NULL),
(546, 'fa', 'fa-transgender', '&#xf224;', NULL, NULL),
(547, 'fa', 'fa-transgender-alt', '&#xf225;', NULL, NULL),
(548, 'fa', 'fa-trash', '&#xf1f8;', NULL, NULL),
(549, 'fa', 'fa-trash-o', '&#xf014;', NULL, NULL),
(550, 'fa', 'fa-tree', '&#xf1bb;', NULL, NULL),
(551, 'fa', 'fa-trello', '&#xf181;', NULL, NULL),
(552, 'fa', 'fa-tripadvisor', '&#xf262;', NULL, NULL),
(553, 'fa', 'fa-trophy', '&#xf091;', NULL, NULL),
(554, 'fa', 'fa-truck', '&#xf0d1;', NULL, NULL),
(555, 'fa', 'fa-try', '&#xf195;', NULL, NULL),
(556, 'fa', 'fa-tty', '&#xf1e4;', NULL, NULL),
(557, 'fa', 'fa-tumblr', '&#xf173;', NULL, NULL),
(558, 'fa', 'fa-tumblr-square', '&#xf174;', NULL, NULL),
(559, 'fa', 'fa-twitch', '&#xf1e8;', NULL, NULL),
(560, 'fa', 'fa-twitter', '&#xf099;', NULL, NULL),
(561, 'fa', 'fa-twitter-square', '&#xf081;', NULL, NULL),
(562, 'fa', 'fa-umbrella', '&#xf0e9;', NULL, NULL),
(563, 'fa', 'fa-underline', '&#xf0cd;', NULL, NULL),
(564, 'fa', 'fa-undo', '&#xf0e2;', NULL, NULL),
(565, 'fa', 'fa-university', '&#xf19c;', NULL, NULL),
(566, 'fa', 'fa-unlock', '&#xf09c;', NULL, NULL),
(567, 'fa', 'fa-unlock-alt', '&#xf13e;', NULL, NULL),
(568, 'fa', 'fa-upload', '&#xf093;', NULL, NULL),
(569, 'fa', 'fa-usb', '&#xf287;', NULL, NULL),
(570, 'fa', 'fa-usd', '&#xf155;', NULL, NULL),
(571, 'fa', 'fa-user', '&#xf007;', NULL, NULL),
(572, 'fa', 'fa-user-md', '&#xf0f0;', NULL, NULL),
(573, 'fa', 'fa-user-plus', '&#xf234;', NULL, NULL),
(574, 'fa', 'fa-user-secret', '&#xf21b;', NULL, NULL),
(575, 'fa', 'fa-user-times', '&#xf235;', NULL, NULL),
(576, 'fa', 'fa-users', '&#xf0c0;', NULL, NULL),
(577, 'fa', 'fa-venus', '&#xf221;', NULL, NULL),
(578, 'fa', 'fa-venus-double', '&#xf226;', NULL, NULL),
(579, 'fa', 'fa-venus-mars', '&#xf228;', NULL, NULL),
(580, 'fa', 'fa-viacoin', '&#xf237;', NULL, NULL),
(581, 'fa', 'fa-video-camera', '&#xf03d;', NULL, NULL),
(582, 'fa', 'fa-vimeo', '&#xf27d;', NULL, NULL),
(583, 'fa', 'fa-vimeo-square', '&#xf194;', NULL, NULL),
(584, 'fa', 'fa-vine', '&#xf1ca;', NULL, NULL),
(585, 'fa', 'fa-vk', '&#xf189;', NULL, NULL),
(586, 'fa', 'fa-volume-down', '&#xf027;', NULL, NULL),
(587, 'fa', 'fa-volume-off', '&#xf026;', NULL, NULL),
(588, 'fa', 'fa-volume-up', '&#xf028;', NULL, NULL),
(589, 'fa', 'fa-weibo', '&#xf18a;', NULL, NULL),
(590, 'fa', 'fa-weixin', '&#xf1d7;', NULL, NULL),
(591, 'fa', 'fa-whatsapp', '&#xf232;', NULL, NULL),
(592, 'fa', 'fa-wheelchair', '&#xf193;', NULL, NULL),
(593, 'fa', 'fa-wifi', '&#xf1eb;', NULL, NULL),
(594, 'fa', 'fa-wikipedia-w', '&#xf266;', NULL, NULL),
(595, 'fa', 'fa-windows', '&#xf17a;', NULL, NULL),
(596, 'fa', 'fa-wordpress', '&#xf19a;', NULL, NULL),
(597, 'fa', 'fa-wrench', '&#xf0ad;', NULL, NULL),
(598, 'fa', 'fa-xing', '&#xf168;', NULL, NULL),
(599, 'fa', 'fa-xing-square', '&#xf169;', NULL, NULL),
(600, 'fa', 'fa-y-combinator', '&#xf23b;', NULL, NULL),
(601, 'fa', 'fa-yahoo', '&#xf19e;', NULL, NULL),
(602, 'fa', 'fa-yelp', '&#xf1e9;', NULL, NULL),
(603, 'fa', 'fa-youtube', '&#xf167;', NULL, NULL),
(604, 'fa', 'fa-youtube-play', '&#xf16a;', NULL, NULL),
(605, 'fa', 'fa-youtube-square', '&#xf166;', NULL, NULL),
(606, 'fa', 'fa-tachometer', '&#xf0e4;', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(45) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `icon_id` int(11) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `menu_name`, `url`, `parent_id`, `icon`, `icon_id`, `sequence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', '/', 0, 'fa fa-tachometer', 606, 1, 1, '0000-00-00 00:00:00', '2018-04-17 03:59:04'),
(2, 'Menu Management', '#', 0, 'fa fa-bars', 47, 2, 1, '0000-00-00 00:00:00', '2018-04-17 04:01:11'),
(3, 'Add Menu', 'menu/add', 2, 'fa fa-angle-double-right', 15, 1, 1, '0000-00-00 00:00:00', '2018-04-11 07:02:45'),
(4, 'List Menu', 'menu/list', 2, 'fa fa-angle-double-right', 15, 2, 1, '0000-00-00 00:00:00', '2018-04-17 04:00:57'),
(5, 'Employee Management', '#', 0, 'fa fa-android', 11, 3, 1, '2018-04-10 09:43:04', '2018-04-10 09:43:04'),
(6, 'Add Employee', 'employee/add', 5, 'fa fa-angle-double-right', 15, 1, 1, '2018-04-10 09:46:04', '2018-04-10 09:46:04'),
(12, 'List Employee', 'employee/list', 5, 'fa fa-angle-double-right', 15, 2, 1, '2018-04-10 09:57:16', '2018-04-10 09:57:16'),
(13, 'User Management', '#', 0, 'fa fa-male', 343, 4, 1, '2018-04-23 03:53:32', '2018-04-23 03:53:32'),
(14, 'Add User', 'user/add', 13, 'fa fa-angle-double-right', 15, 1, 1, '2018-04-23 03:54:14', '2018-04-23 03:54:14'),
(15, 'List User', 'user/list', 13, 'fa fa-angle-double-right', 15, 2, 1, '2018-04-23 03:57:15', '2018-04-23 03:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permissions`
--

CREATE TABLE `tbl_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permissions`
--

INSERT INTO `tbl_permissions` (`id`, `role_id`, `menu_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2018-04-02 10:50:00', '2018-04-16 03:25:38'),
(2, 2, 1, 0, '2018-04-02 10:50:00', '2018-04-16 03:25:38'),
(3, 1, 2, 1, '2018-04-02 10:50:00', '2018-04-02 10:50:00'),
(4, 2, 2, 1, '2018-04-02 10:50:00', '2018-04-02 10:50:00'),
(5, 1, 3, 0, '2018-04-02 10:50:00', '2018-04-11 07:02:45'),
(6, 2, 3, 0, '2018-04-02 10:50:00', '2018-04-11 07:02:45'),
(7, 1, 4, 1, '2018-04-02 10:50:00', '2018-04-02 10:50:00'),
(8, 2, 4, 1, '2018-04-02 10:50:00', '2018-04-02 10:50:00'),
(9, 2, 5, 1, '2018-04-10 09:43:04', '2018-04-10 09:43:04'),
(10, 2, 6, 1, '2018-04-10 09:46:04', '2018-04-10 09:46:04'),
(11, 2, 12, 1, '2018-04-10 09:57:16', '2018-04-10 09:57:16'),
(13, 2, 3, 0, '2018-04-11 07:01:34', '2018-04-11 07:02:45'),
(14, 2, 3, 0, '2018-04-11 07:02:27', '2018-04-11 07:02:45'),
(15, 2, 3, 0, '2018-04-11 07:02:36', '2018-04-11 07:02:45'),
(16, 2, 3, 1, '2018-04-11 07:02:45', '2018-04-11 07:02:45'),
(17, 2, 1, 0, '2018-04-16 03:25:28', '2018-04-16 03:25:38'),
(18, 2, 1, 1, '2018-04-16 03:25:38', '2018-04-16 03:25:38'),
(19, 2, 13, 1, '2018-04-23 03:53:32', '2018-04-23 03:53:32'),
(20, 2, 14, 1, '2018-04-23 03:54:14', '2018-04-23 03:54:14'),
(21, 2, 15, 1, '2018-04-23 03:57:15', '2018-04-23 03:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`role_id`, `role_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, NULL, NULL),
(2, 'Admin', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_user`
--

CREATE TABLE `tbl_web_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `remember_token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_web_user`
--

INSERT INTO `tbl_web_user` (`id`, `user_name`, `password`, `last_login`, `role_id`, `status`, `created_at`, `updated_at`, `deleted_at`, `employee_id`, `remember_token`) VALUES
(1, 'super.admin', '$2y$10$yNhn/YXiPP0M0.XxjuzKO.rVdLSZ.cx/cR6Liubfd.BN8jGG64Tim', NULL, 1, 1, '2018-04-03 06:21:04', '2018-04-24 09:57:28', NULL, 1, '3XYps4YNYUoWdI9HSKVY2jnnJ7JWRnxHPTRlCmg8Nsa4HcPw0FIGGcq5tJee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_icon`
--
ALTER TABLE `tbl_icon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_web_user`
--
ALTER TABLE `tbl_web_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_employee1_idx` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_icon`
--
ALTER TABLE `tbl_icon`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_web_user`
--
ALTER TABLE `tbl_web_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
