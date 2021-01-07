-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 01:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recruit`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'General Adminstrators'),
(1, 'Super Administrators');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67),
(68, 1, 68),
(69, 1, 69),
(70, 1, 70),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(75, 1, 75),
(76, 1, 76),
(77, 1, 77),
(78, 1, 78),
(79, 1, 79),
(80, 1, 80),
(81, 1, 81),
(82, 1, 82),
(83, 1, 83),
(84, 1, 84),
(85, 1, 85),
(86, 1, 86),
(87, 1, 87),
(88, 1, 88),
(89, 1, 89),
(90, 1, 90),
(91, 1, 91),
(92, 1, 92),
(93, 1, 93),
(94, 1, 94),
(95, 1, 95),
(96, 1, 96),
(97, 1, 97),
(98, 1, 98),
(99, 1, 99),
(100, 1, 100),
(101, 1, 101),
(102, 1, 102),
(103, 1, 103),
(104, 1, 104),
(105, 1, 105),
(106, 1, 106),
(107, 1, 107),
(108, 1, 108),
(109, 1, 109),
(110, 1, 110),
(111, 1, 111),
(112, 1, 112),
(113, 1, 113),
(114, 1, 114),
(115, 1, 115),
(116, 1, 116),
(117, 1, 117),
(118, 1, 118),
(119, 1, 119),
(120, 1, 120),
(121, 1, 121),
(122, 1, 122),
(123, 1, 123),
(124, 1, 124),
(125, 1, 125),
(126, 1, 126),
(127, 1, 127),
(128, 1, 128),
(129, 1, 129),
(130, 1, 130),
(131, 1, 131),
(132, 1, 132),
(133, 1, 133),
(134, 1, 134),
(135, 1, 135),
(136, 1, 136),
(137, 1, 137),
(138, 1, 138),
(139, 1, 139),
(140, 1, 140),
(141, 1, 141),
(142, 1, 142),
(143, 1, 143),
(144, 1, 144),
(145, 1, 145),
(146, 1, 146),
(147, 1, 147),
(148, 1, 148),
(149, 1, 149),
(150, 1, 150),
(151, 1, 151),
(152, 1, 152),
(153, 1, 153),
(154, 1, 154),
(155, 1, 155),
(156, 1, 156),
(157, 2, 16),
(158, 2, 17),
(159, 2, 18),
(160, 2, 19),
(161, 2, 20),
(162, 2, 21),
(163, 2, 22),
(164, 2, 23),
(165, 2, 24),
(166, 2, 25),
(167, 2, 26),
(168, 2, 27),
(169, 2, 28),
(170, 2, 29),
(171, 2, 30),
(172, 2, 31),
(173, 2, 32),
(174, 2, 33),
(175, 2, 34),
(176, 2, 35),
(177, 2, 36),
(178, 2, 37),
(179, 2, 38),
(180, 2, 39),
(181, 2, 40),
(182, 2, 41),
(183, 2, 42),
(184, 2, 43),
(185, 2, 44),
(186, 2, 45),
(187, 2, 46),
(188, 2, 47),
(189, 2, 48),
(190, 2, 49),
(191, 2, 50),
(192, 2, 51),
(193, 2, 52),
(194, 2, 53),
(195, 2, 54),
(196, 2, 55),
(197, 2, 56),
(198, 2, 57),
(199, 2, 58),
(200, 2, 59),
(201, 2, 60),
(202, 2, 61),
(203, 2, 62),
(204, 2, 63),
(205, 2, 64),
(206, 2, 65),
(207, 2, 66),
(208, 2, 67),
(209, 2, 68),
(210, 2, 69),
(211, 2, 70),
(212, 2, 71),
(213, 2, 72),
(214, 2, 73),
(215, 2, 74),
(216, 2, 75),
(217, 2, 76),
(218, 2, 77),
(219, 2, 78),
(220, 2, 79),
(221, 2, 80),
(222, 2, 81),
(223, 2, 82),
(224, 2, 83),
(225, 2, 84),
(226, 2, 85),
(227, 2, 86),
(228, 2, 87),
(229, 2, 88),
(230, 2, 89),
(231, 2, 90),
(232, 2, 91),
(233, 2, 92),
(234, 2, 93),
(235, 2, 94),
(236, 2, 95),
(237, 2, 96),
(238, 2, 97),
(239, 2, 98),
(240, 2, 99),
(241, 2, 100),
(242, 2, 101),
(243, 2, 102),
(244, 2, 103),
(245, 2, 104),
(246, 2, 105),
(247, 2, 106),
(248, 2, 107),
(249, 2, 108),
(250, 2, 109),
(251, 2, 110),
(252, 2, 111),
(253, 2, 112),
(254, 2, 113),
(255, 2, 114),
(256, 2, 115),
(257, 2, 116),
(258, 2, 117),
(259, 2, 118),
(260, 2, 119),
(261, 2, 120),
(262, 2, 121),
(263, 2, 122),
(264, 2, 123),
(265, 2, 124),
(266, 2, 125),
(267, 2, 126),
(268, 2, 127),
(269, 2, 128),
(270, 2, 129),
(271, 2, 130),
(272, 2, 131),
(273, 2, 132),
(274, 2, 133),
(275, 2, 134),
(276, 2, 135),
(277, 2, 136),
(278, 2, 137),
(279, 2, 138),
(280, 2, 139),
(281, 2, 140),
(282, 2, 141),
(283, 2, 142),
(284, 2, 143),
(285, 2, 144),
(286, 2, 145),
(287, 2, 146),
(288, 2, 147),
(289, 2, 148),
(290, 2, 149),
(291, 2, 150),
(292, 2, 151),
(293, 2, 152),
(294, 2, 153),
(295, 2, 154),
(296, 2, 155),
(297, 2, 156);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add branch', 7, 'add_branch'),
(26, 'Can change branch', 7, 'change_branch'),
(27, 'Can delete branch', 7, 'delete_branch'),
(28, 'Can view branch', 7, 'view_branch'),
(29, 'Can add partner', 8, 'add_partner'),
(30, 'Can change partner', 8, 'change_partner'),
(31, 'Can delete partner', 8, 'delete_partner'),
(32, 'Can view partner', 8, 'view_partner'),
(33, 'Can add client', 9, 'add_client'),
(34, 'Can change client', 9, 'change_client'),
(35, 'Can delete client', 9, 'delete_client'),
(36, 'Can view client', 9, 'view_client'),
(37, 'Can add job', 10, 'add_job'),
(38, 'Can change job', 10, 'change_job'),
(39, 'Can delete job', 10, 'delete_job'),
(40, 'Can view job', 10, 'view_job'),
(41, 'Can add visa', 11, 'add_visa'),
(42, 'Can change visa', 11, 'change_visa'),
(43, 'Can delete visa', 11, 'delete_visa'),
(44, 'Can view visa', 11, 'view_visa'),
(45, 'Can add vetting', 12, 'add_vetting'),
(46, 'Can change vetting', 12, 'change_vetting'),
(47, 'Can delete vetting', 12, 'delete_vetting'),
(48, 'Can view vetting', 12, 'view_vetting'),
(49, 'Can add ticket', 13, 'add_ticket'),
(50, 'Can change ticket', 13, 'change_ticket'),
(51, 'Can delete ticket', 13, 'delete_ticket'),
(52, 'Can view ticket', 13, 'view_ticket'),
(53, 'Can add passport', 14, 'add_passport'),
(54, 'Can change passport', 14, 'change_passport'),
(55, 'Can delete passport', 14, 'delete_passport'),
(56, 'Can view passport', 14, 'view_passport'),
(57, 'Can add other operation', 15, 'add_otheroperation'),
(58, 'Can change other operation', 15, 'change_otheroperation'),
(59, 'Can delete other operation', 15, 'delete_otheroperation'),
(60, 'Can view other operation', 15, 'view_otheroperation'),
(61, 'Can add medical', 16, 'add_medical'),
(62, 'Can change medical', 16, 'change_medical'),
(63, 'Can delete medical', 16, 'delete_medical'),
(64, 'Can view medical', 16, 'view_medical'),
(65, 'Can add interview', 17, 'add_interview'),
(66, 'Can change interview', 17, 'change_interview'),
(67, 'Can delete interview', 17, 'delete_interview'),
(68, 'Can view interview', 17, 'view_interview'),
(69, 'Can add interpol', 18, 'add_interpol'),
(70, 'Can change interpol', 18, 'change_interpol'),
(71, 'Can delete interpol', 18, 'delete_interpol'),
(72, 'Can view interpol', 18, 'view_interpol'),
(73, 'Can add contract', 19, 'add_contract'),
(74, 'Can change contract', 19, 'change_contract'),
(75, 'Can delete contract', 19, 'delete_contract'),
(76, 'Can view contract', 19, 'view_contract'),
(77, 'Can add clearance', 20, 'add_clearance'),
(78, 'Can change clearance', 20, 'change_clearance'),
(79, 'Can delete clearance', 20, 'delete_clearance'),
(80, 'Can view clearance', 20, 'view_clearance'),
(81, 'Can add skill', 21, 'add_skill'),
(82, 'Can change skill', 21, 'change_skill'),
(83, 'Can delete skill', 21, 'delete_skill'),
(84, 'Can view skill', 21, 'view_skill'),
(85, 'Can add recruitment', 22, 'add_recruitment'),
(86, 'Can change recruitment', 22, 'change_recruitment'),
(87, 'Can delete recruitment', 22, 'delete_recruitment'),
(88, 'Can view recruitment', 22, 'view_recruitment'),
(89, 'Can add next of kin', 23, 'add_nextofkin'),
(90, 'Can change next of kin', 23, 'change_nextofkin'),
(91, 'Can delete next of kin', 23, 'delete_nextofkin'),
(92, 'Can view next of kin', 23, 'view_nextofkin'),
(93, 'Can add language', 24, 'add_language'),
(94, 'Can change language', 24, 'change_language'),
(95, 'Can delete language', 24, 'delete_language'),
(96, 'Can view language', 24, 'view_language'),
(97, 'Can add client training', 25, 'add_clienttraining'),
(98, 'Can change client training', 25, 'change_clienttraining'),
(99, 'Can delete client training', 25, 'delete_clienttraining'),
(100, 'Can view client training', 25, 'view_clienttraining'),
(101, 'Can add bio', 26, 'add_bio'),
(102, 'Can change bio', 26, 'change_bio'),
(103, 'Can delete bio', 26, 'delete_bio'),
(104, 'Can view bio', 26, 'view_bio'),
(105, 'Can add expense', 27, 'add_expense'),
(106, 'Can change expense', 27, 'change_expense'),
(107, 'Can delete expense', 27, 'delete_expense'),
(108, 'Can view expense', 27, 'view_expense'),
(109, 'Can add fee', 28, 'add_fee'),
(110, 'Can change fee', 28, 'change_fee'),
(111, 'Can delete fee', 28, 'delete_fee'),
(112, 'Can view fee', 28, 'view_fee'),
(113, 'Can add payment', 29, 'add_payment'),
(114, 'Can change payment', 29, 'change_payment'),
(115, 'Can delete payment', 29, 'delete_payment'),
(116, 'Can view payment', 29, 'view_payment'),
(117, 'Can add clearance file', 30, 'add_clearancefile'),
(118, 'Can change clearance file', 30, 'change_clearancefile'),
(119, 'Can delete clearance file', 30, 'delete_clearancefile'),
(120, 'Can view clearance file', 30, 'view_clearancefile'),
(121, 'Can add client file', 31, 'add_clientfile'),
(122, 'Can change client file', 31, 'change_clientfile'),
(123, 'Can delete client file', 31, 'delete_clientfile'),
(124, 'Can view client file', 31, 'view_clientfile'),
(125, 'Can add agent', 32, 'add_agent'),
(126, 'Can change agent', 32, 'change_agent'),
(127, 'Can delete agent', 32, 'delete_agent'),
(128, 'Can view agent', 32, 'view_agent'),
(129, 'Can add contact mode', 33, 'add_contactmode'),
(130, 'Can change contact mode', 33, 'change_contactmode'),
(131, 'Can delete contact mode', 33, 'delete_contactmode'),
(132, 'Can view contact mode', 33, 'view_contactmode'),
(133, 'Can add destination', 34, 'add_destination'),
(134, 'Can change destination', 34, 'change_destination'),
(135, 'Can delete destination', 34, 'delete_destination'),
(136, 'Can view destination', 34, 'view_destination'),
(137, 'Can add employer', 35, 'add_employer'),
(138, 'Can change employer', 35, 'change_employer'),
(139, 'Can delete employer', 35, 'delete_employer'),
(140, 'Can view employer', 35, 'view_employer'),
(141, 'Can add Job Category', 36, 'add_jobcategory'),
(142, 'Can change Job Category', 36, 'change_jobcategory'),
(143, 'Can delete Job Category', 36, 'delete_jobcategory'),
(144, 'Can view Job Category', 36, 'view_jobcategory'),
(145, 'Can add Publicity', 37, 'add_publicity'),
(146, 'Can change Publicity', 37, 'change_publicity'),
(147, 'Can delete Publicity', 37, 'delete_publicity'),
(148, 'Can view Publicity', 37, 'view_publicity'),
(149, 'Can add stage', 38, 'add_stage'),
(150, 'Can change stage', 38, 'change_stage'),
(151, 'Can delete stage', 38, 'delete_stage'),
(152, 'Can view stage', 38, 'view_stage'),
(153, 'Can add training', 39, 'add_training'),
(154, 'Can change training', 39, 'change_training'),
(155, 'Can delete training', 39, 'delete_training'),
(156, 'Can view training', 39, 'view_training'),
(157, 'Can add client stage', 40, 'add_clientstage'),
(158, 'Can change client stage', 40, 'change_clientstage'),
(159, 'Can delete client stage', 40, 'delete_clientstage'),
(160, 'Can view client stage', 40, 'view_clientstage'),
(161, 'Can add photo', 41, 'add_photo'),
(162, 'Can change photo', 41, 'change_photo'),
(163, 'Can delete photo', 41, 'delete_photo'),
(164, 'Can view photo', 41, 'view_photo'),
(165, 'Can add task', 42, 'add_task'),
(166, 'Can change task', 42, 'change_task'),
(167, 'Can delete task', 42, 'delete_task'),
(168, 'Can view task', 42, 'view_task');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$0Pu5tPuiMWak$5iGj5AlwfweLcl/FNDFC9fHdL5rIUwtg+iU1HNQkE1k=', '2021-01-05 08:47:02.050785', 1, 'admin', 'Admin', 'Number 1', 'admin@example.com', 1, 1, '2021-01-03 22:37:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 1, 61),
(62, 1, 62),
(63, 1, 63),
(64, 1, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67),
(68, 1, 68),
(69, 1, 69),
(70, 1, 70),
(71, 1, 71),
(72, 1, 72),
(73, 1, 73),
(74, 1, 74),
(75, 1, 75),
(76, 1, 76),
(77, 1, 77),
(78, 1, 78),
(79, 1, 79),
(80, 1, 80),
(81, 1, 81),
(82, 1, 82),
(83, 1, 83),
(84, 1, 84),
(85, 1, 85),
(86, 1, 86),
(87, 1, 87),
(88, 1, 88),
(89, 1, 89),
(90, 1, 90),
(91, 1, 91),
(92, 1, 92),
(93, 1, 93),
(94, 1, 94),
(95, 1, 95),
(96, 1, 96),
(97, 1, 97),
(98, 1, 98),
(99, 1, 99),
(100, 1, 100),
(101, 1, 101),
(102, 1, 102),
(103, 1, 103),
(104, 1, 104),
(105, 1, 105),
(106, 1, 106),
(107, 1, 107),
(108, 1, 108),
(109, 1, 109),
(110, 1, 110),
(111, 1, 111),
(112, 1, 112),
(113, 1, 113),
(114, 1, 114),
(115, 1, 115),
(116, 1, 116),
(117, 1, 117),
(118, 1, 118),
(119, 1, 119),
(120, 1, 120),
(121, 1, 121),
(122, 1, 122),
(123, 1, 123),
(124, 1, 124),
(125, 1, 125),
(126, 1, 126),
(127, 1, 127),
(128, 1, 128),
(129, 1, 129),
(130, 1, 130),
(131, 1, 131),
(132, 1, 132),
(133, 1, 133),
(134, 1, 134),
(135, 1, 135),
(136, 1, 136),
(137, 1, 137),
(138, 1, 138),
(139, 1, 139),
(140, 1, 140),
(141, 1, 141),
(142, 1, 142),
(143, 1, 143),
(144, 1, 144),
(145, 1, 145),
(146, 1, 146),
(147, 1, 147),
(148, 1, 148),
(149, 1, 149),
(150, 1, 150),
(151, 1, 151),
(152, 1, 152),
(153, 1, 153),
(154, 1, 154),
(155, 1, 155),
(156, 1, 156),
(157, 1, 157),
(158, 1, 158),
(159, 1, 159),
(160, 1, 160),
(161, 1, 161),
(162, 1, 162),
(163, 1, 163),
(164, 1, 164),
(165, 1, 165),
(166, 1, 166),
(167, 1, 167),
(168, 1, 168);

-- --------------------------------------------------------

--
-- Table structure for table `branches_branch`
--

CREATE TABLE `branches_branch` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `established` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches_branch`
--

INSERT INTO `branches_branch` (`id`, `title`, `address`, `description`, `is_active`, `established`) VALUES
(1, 'Main Branch', 'Kampala, Uganda', '', 1, '2021-01-03 22:54:11.000000'),
(2, 'Subsidiary Branch', 'Plot *, Entebbe', '', 1, '2021-01-05 07:19:44.000000');

-- --------------------------------------------------------

--
-- Table structure for table `clients_client`
--

CREATE TABLE `clients_client` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reason` longtext NOT NULL,
  `address` varchar(50) NOT NULL,
  `registered` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `contact_mode_id` int(11) DEFAULT NULL,
  `job_id` int(11) NOT NULL,
  `publicity_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-01-03 22:54:17.339687', '1', 'Branch object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-01-03 23:22:33.728492', '1', 'Paphra Reruiters', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-01-03 23:31:02.702667', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1),
(4, '2021-01-03 23:32:20.060931', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1),
(5, '2021-01-03 23:49:30.918124', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1),
(6, '2021-01-03 23:53:47.652283', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1),
(7, '2021-01-04 00:01:49.053350', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1),
(8, '2021-01-04 00:03:03.652484', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1),
(9, '2021-01-04 00:10:39.217323', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1),
(10, '2021-01-04 00:12:05.754421', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1),
(11, '2021-01-04 11:37:20.738234', '1', 'Office Visit', 1, '[{\"added\": {}}]', 33, 1),
(12, '2021-01-04 11:40:40.244518', '1', 'Super Administrators', 1, '[{\"added\": {}}]', 3, 1),
(13, '2021-01-04 11:42:02.235123', '2', 'General Adminstrators', 1, '[{\"added\": {}}]', 3, 1),
(14, '2021-01-04 18:40:10.860322', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\"]}}]', 4, 1),
(15, '2021-01-04 18:42:05.007115', '1', 'Registration', 1, '[{\"added\": {}}]', 38, 1),
(16, '2021-01-04 18:42:32.030686', '2', 'Interview', 1, '[{\"added\": {}}]', 38, 1),
(17, '2021-01-04 18:55:01.165107', '3', 'Pre-Medical', 1, '[{\"added\": {}}]', 38, 1),
(18, '2021-01-04 20:52:13.617217', '2', 'Phone call', 1, '[{\"added\": {}}]', 33, 1),
(19, '2021-01-04 20:53:40.369595', '3', 'Email Consultation', 1, '[{\"added\": {}}]', 33, 1),
(20, '2021-01-04 20:55:20.914255', '4', 'Social Media', 1, '[{\"added\": {}}]', 33, 1),
(21, '2021-01-04 20:55:52.418230', '5', 'Others', 1, '[{\"added\": {}}]', 33, 1),
(22, '2021-01-04 20:59:52.163208', '4', 'Deployment Agreement', 1, '[{\"added\": {}}]', 38, 1),
(23, '2021-01-04 21:00:36.876230', '5', 'Training', 1, '[{\"added\": {}}]', 38, 1),
(24, '2021-01-04 21:01:25.857485', '6', 'Passport', 1, '[{\"added\": {}}]', 38, 1),
(25, '2021-01-04 21:01:51.290638', '7', 'Interpol', 1, '[{\"added\": {}}]', 38, 1),
(26, '2021-01-04 21:02:14.989223', '8', 'Vetting', 1, '[{\"added\": {}}]', 38, 1),
(27, '2021-01-04 21:02:48.062019', '9', 'CV Submission', 1, '[{\"added\": {}}]', 38, 1),
(28, '2021-01-04 21:03:11.271035', '10', 'Visa', 1, '[{\"added\": {}}]', 38, 1),
(29, '2021-01-04 21:03:53.688040', '11', 'Destination & Tickets', 1, '[{\"added\": {}}]', 38, 1),
(30, '2021-01-04 21:04:24.958148', '12', 'Flight', 1, '[{\"added\": {}}]', 38, 1),
(31, '2021-01-04 21:05:09.839536', '13', 'Recruitee Monitoring', 1, '[{\"added\": {}}]', 38, 1),
(32, '2021-01-04 21:05:47.351702', '14', 'Contract Expiration', 1, '[{\"added\": {}}]', 38, 1),
(33, '2021-01-04 21:07:04.757377', '7', 'Interpol', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 38, 1),
(34, '2021-01-05 07:15:03.807793', '1', 'Cleaning', 1, '[{\"added\": {}}]', 36, 1),
(35, '2021-01-05 07:15:20.779285', '2', 'Maids', 1, '[{\"added\": {}}]', 36, 1),
(36, '2021-01-05 07:15:37.616685', '3', 'Security', 1, '[{\"added\": {}}]', 36, 1),
(37, '2021-01-05 07:15:58.628995', '4', 'Construction', 1, '[{\"added\": {}}]', 36, 1),
(38, '2021-01-05 07:16:21.186587', '5', 'Heavy Lifting and Packing', 1, '[{\"added\": {}}]', 36, 1),
(39, '2021-01-05 07:16:33.896039', '6', 'Others', 1, '[{\"added\": {}}]', 36, 1),
(40, '2021-01-05 07:16:55.503845', '3', 'Security Guard [Unarmed]', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 36, 1),
(41, '2021-01-05 07:18:08.682099', '7', 'Security Guards [Armed]', 1, '[{\"added\": {}}]', 36, 1),
(42, '2021-01-05 07:18:32.977900', '6', 'Others', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 36, 1),
(43, '2021-01-05 07:19:47.218754', '2', 'Subsidiary Branch', 1, '[{\"added\": {}}]', 7, 1),
(44, '2021-01-05 07:40:28.590913', '6', 'Others', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 36, 1),
(45, '2021-01-05 07:40:34.961035', '6', 'Others', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 36, 1),
(46, '2021-01-05 07:43:38.846467', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(47, '2021-01-05 11:31:09.763590', '1', 'Paphra Reruiters', 2, '[{\"changed\": {\"fields\": [\"Document\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'branches', 'branch'),
(9, 'clients', 'client'),
(5, 'contenttypes', 'contenttype'),
(30, 'files', 'clearancefile'),
(31, 'files', 'clientfile'),
(41, 'files', 'photo'),
(27, 'finances', 'expense'),
(28, 'finances', 'fee'),
(29, 'finances', 'payment'),
(10, 'jobs', 'job'),
(20, 'operations', 'clearance'),
(19, 'operations', 'contract'),
(18, 'operations', 'interpol'),
(17, 'operations', 'interview'),
(16, 'operations', 'medical'),
(15, 'operations', 'otheroperation'),
(14, 'operations', 'passport'),
(13, 'operations', 'ticket'),
(12, 'operations', 'vetting'),
(11, 'operations', 'visa'),
(42, 'others', 'task'),
(26, 'reports', 'bio'),
(40, 'reports', 'clientstage'),
(25, 'reports', 'clienttraining'),
(24, 'reports', 'language'),
(23, 'reports', 'nextofkin'),
(22, 'reports', 'recruitment'),
(21, 'reports', 'skill'),
(6, 'sessions', 'session'),
(32, 'settings', 'agent'),
(33, 'settings', 'contactmode'),
(34, 'settings', 'destination'),
(35, 'settings', 'employer'),
(36, 'settings', 'jobcategory'),
(8, 'settings', 'partner'),
(37, 'settings', 'publicity'),
(38, 'settings', 'stage'),
(39, 'settings', 'training');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-03 22:35:30.942682'),
(2, 'auth', '0001_initial', '2021-01-03 22:35:31.751599'),
(3, 'admin', '0001_initial', '2021-01-03 22:35:34.063745'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-03 22:35:34.587146'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-03 22:35:34.654294'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-03 22:35:35.081515'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-03 22:35:35.371659'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-03 22:35:35.451528'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-03 22:35:35.489466'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-03 22:35:35.852342'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-03 22:35:35.869322'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-03 22:35:35.951188'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-03 22:35:36.056024'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-03 22:35:36.140894'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-03 22:35:36.228043'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-03 22:35:36.267432'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-03 22:35:36.368280'),
(18, 'sessions', '0001_initial', '2021-01-03 22:35:36.467115'),
(19, 'branches', '0001_initial', '2021-01-03 22:51:07.316944'),
(20, 'settings', '0001_initial', '2021-01-03 23:19:40.399373'),
(21, 'branches', '0002_auto_20210104_1349', '2021-01-04 10:53:03.000038'),
(22, 'jobs', '0001_initial', '2021-01-04 10:53:03.521970'),
(23, 'settings', '0002_auto_20210104_1349', '2021-01-04 10:53:04.873890'),
(24, 'clients', '0001_initial', '2021-01-04 10:53:05.334810'),
(25, 'clients', '0002_auto_20210104_1349', '2021-01-04 10:53:06.935277'),
(26, 'files', '0001_initial', '2021-01-04 10:53:07.256854'),
(27, 'finances', '0001_initial', '2021-01-04 10:53:08.068193'),
(28, 'finances', '0002_auto_20210104_1349', '2021-01-04 10:53:09.573456'),
(29, 'jobs', '0002_auto_20210104_1349', '2021-01-04 10:53:10.958535'),
(30, 'operations', '0001_initial', '2021-01-04 10:53:13.559369'),
(31, 'reports', '0001_initial', '2021-01-04 10:53:19.556401'),
(32, 'files', '0002_photo', '2021-01-04 18:53:45.079079'),
(33, 'others', '0001_initial', '2021-01-04 18:53:45.662584'),
(34, 'reports', '0002_clientstage', '2021-01-04 18:53:46.237575'),
(35, 'clients', '0003_auto_20210105_1029', '2021-01-05 07:30:05.714965'),
(36, 'jobs', '0003_auto_20210105_1034', '2021-01-05 07:35:08.568975'),
(37, 'files', '0003_auto_20210105_1951', '2021-01-05 16:51:39.131487'),
(38, 'finances', '0003_auto_20210105_1951', '2021-01-05 16:51:39.895905'),
(39, 'operations', '0002_auto_20210105_1951', '2021-01-05 16:51:47.355035'),
(40, 'reports', '0003_auto_20210105_1951', '2021-01-05 16:51:52.141994'),
(41, 'files', '0004_auto_20210105_1956', '2021-01-05 16:56:48.001955'),
(42, 'finances', '0004_auto_20210105_1956', '2021-01-05 16:56:48.803752'),
(43, 'operations', '0003_auto_20210105_1956', '2021-01-05 16:56:50.224501'),
(44, 'reports', '0004_auto_20210105_1956', '2021-01-05 16:56:54.355627');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('om80wdls562rfstamgygcw54a7l089gk', '.eJxVjMsOwiAQRf-FtSE8BIpL9_0GMsxMpWogKe3K-O_apAvd3nPOfYkE21rS1nlJM4mL0OL0u2XAB9cd0B3qrUlsdV3mLHdFHrTLsRE_r4f7d1Cgl2_tjM-MVoVMMUQYDNlwVjB5hhg86YGNQfAUVI40GY-ZyDrFzgfQzqF4fwDr2Tg2:1kwhza:3TLqr7k9UFjsMU_xASE9o4f3tr7qiOurtWrWD6GXQKE', '2021-01-19 08:47:02.081231');

-- --------------------------------------------------------

--
-- Table structure for table `files_clearancefile`
--

CREATE TABLE `files_clearancefile` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `clearance_no` varchar(100) NOT NULL,
  `submission_date` datetime(6) NOT NULL,
  `clearance_date` datetime(6) NOT NULL,
  `client_count` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `files_clientfile`
--

CREATE TABLE `files_clientfile` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `files_photo`
--

CREATE TABLE `files_photo` (
  `id` int(11) NOT NULL,
  `passport` varchar(100) NOT NULL,
  `full` varchar(100) NOT NULL,
  `others` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `finances_expense`
--

CREATE TABLE `finances_expense` (
  `id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `finances_fee`
--

CREATE TABLE `finances_fee` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `amount` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `job_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `finances_payment`
--

CREATE TABLE `finances_payment` (
  `id` int(11) NOT NULL,
  `amount_paid` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `client_id` int(11) NOT NULL,
  `fee_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_job`
--

CREATE TABLE `jobs_job` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `application_fee` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `demnd_letter` varchar(100) NOT NULL,
  `sample_contract` varchar(100) NOT NULL,
  `powers_of_attoney` varchar(100) NOT NULL,
  `order_approval` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `partner_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_clearance`
--

CREATE TABLE `operations_clearance` (
  `id` int(11) NOT NULL,
  `submission_date` datetime(6) NOT NULL,
  `position_on_clearance` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  `created` date NOT NULL,
  `clearance_file_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_contract`
--

CREATE TABLE `operations_contract` (
  `id` int(11) NOT NULL,
  `submission_date` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_interpol`
--

CREATE TABLE `operations_interpol` (
  `id` int(11) NOT NULL,
  `submission_date` datetime(6) NOT NULL,
  `clearance_date` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_interview`
--

CREATE TABLE `operations_interview` (
  `id` int(11) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `place_ob` varchar(100) NOT NULL,
  `date_ob` date NOT NULL,
  `married` tinyint(1) NOT NULL,
  `spouse_name` varchar(100) NOT NULL,
  `spouse_contact` varchar(100) NOT NULL,
  `num_children` int(11) NOT NULL,
  `home_town` varchar(100) NOT NULL,
  `prev_job` varchar(100) NOT NULL,
  `prev_employer` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_medical`
--

CREATE TABLE `operations_medical` (
  `id` int(11) NOT NULL,
  `medical_type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_otheroperation`
--

CREATE TABLE `operations_otheroperation` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_passport`
--

CREATE TABLE `operations_passport` (
  `id` int(11) NOT NULL,
  `passport_no` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `place_ob` varchar(100) NOT NULL,
  `date_ob` date NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_ticket`
--

CREATE TABLE `operations_ticket` (
  `id` int(11) NOT NULL,
  `ticket_no` varchar(100) NOT NULL,
  `airline` varchar(100) NOT NULL,
  `checkin` varchar(100) NOT NULL,
  `issue_date` datetime(6) NOT NULL,
  `departure_date` datetime(6) NOT NULL,
  `arrival_date` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_vetting`
--

CREATE TABLE `operations_vetting` (
  `id` int(11) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `county` varchar(100) NOT NULL,
  `subcounty` varchar(100) NOT NULL,
  `parish` varchar(100) NOT NULL,
  `village` varchar(100) NOT NULL,
  `date_ob` date NOT NULL,
  `diso` tinyint(1) NOT NULL,
  `giso` tinyint(1) NOT NULL,
  `training` tinyint(1) NOT NULL,
  `ministry` tinyint(1) NOT NULL,
  `musaned` tinyint(1) NOT NULL,
  `waqala` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL,
  `employer_id` int(11) DEFAULT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `operations_visa`
--

CREATE TABLE `operations_visa` (
  `id` int(11) NOT NULL,
  `visa_no` varchar(100) NOT NULL,
  `issue_date` datetime(6) NOT NULL,
  `validity` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `others_task`
--

CREATE TABLE `others_task` (
  `id` int(11) NOT NULL,
  `task` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `receiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_bio`
--

CREATE TABLE `reports_bio` (
  `id` int(11) NOT NULL,
  `bio_key` varchar(100) NOT NULL,
  `bio_value` varchar(200) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_clientstage`
--

CREATE TABLE `reports_clientstage` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_clienttraining`
--

CREATE TABLE `reports_clienttraining` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_language`
--

CREATE TABLE `reports_language` (
  `id` int(11) NOT NULL,
  `language` varchar(100) NOT NULL,
  `fluence` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_nextofkin`
--

CREATE TABLE `reports_nextofkin` (
  `id` int(11) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_recruitment`
--

CREATE TABLE `reports_recruitment` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL,
  `employer_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `partner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reports_skill`
--

CREATE TABLE `reports_skill` (
  `id` int(11) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `fluence` int(11) NOT NULL,
  `document` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings_agent`
--

CREATE TABLE `settings_agent` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings_contactmode`
--

CREATE TABLE `settings_contactmode` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings_contactmode`
--

INSERT INTO `settings_contactmode` (`id`, `title`, `description`, `is_active`, `created`) VALUES
(1, 'Office Visit', 'Client Visited the Office', 1, '2021-01-04'),
(2, 'Phone call', 'client call the receiption', 1, '2021-01-04'),
(3, 'Email Consultation', 'Client sends email for consultation', 1, '2021-01-04'),
(4, 'Social Media', 'Client contacts company via social media', 1, '2021-01-04'),
(5, 'Others', 'Other means of consultations', 1, '2021-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `settings_destination`
--

CREATE TABLE `settings_destination` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings_employer`
--

CREATE TABLE `settings_employer` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings_jobcategory`
--

CREATE TABLE `settings_jobcategory` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings_jobcategory`
--

INSERT INTO `settings_jobcategory` (`id`, `title`, `description`, `is_active`, `created`) VALUES
(1, 'Cleaning', 'Handling cleaning activities in the assigned location', 1, '2021-01-05 07:14:14.000000'),
(2, 'Maids', 'House Girls and House Boys', 1, '2021-01-05 07:15:04.000000'),
(3, 'Security Guard [Unarmed]', 'Handling security activities and routines in the assigned location.', 1, '2021-01-05 07:15:20.000000'),
(4, 'Construction', 'Doing construction related activies at the destination', 1, '2021-01-05 07:15:37.000000'),
(5, 'Heavy Lifting and Packing', 'This is usually at the airports and other places', 1, '2021-01-05 07:15:58.000000'),
(6, 'Others', 'Other jobs', 0, '2021-01-05 07:16:21.000000'),
(7, 'Security Guards [Armed]', 'Handling security activities and routines in the assigned location.', 1, '2021-01-05 07:17:39.000000');

-- --------------------------------------------------------

--
-- Table structure for table `settings_partner`
--

CREATE TABLE `settings_partner` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings_partner`
--

INSERT INTO `settings_partner` (`id`, `title`, `phone`, `email`, `address`, `country`, `city`, `description`, `document`, `is_active`, `created`) VALUES
(1, 'Paphra Reruiters', '0701822382', 'paphra@gmail.com', 'Entebbe, Uganda', 'Uganda', 'Entebbe', '', 'uploads/2021/01/05/JobCategory-2021-01-05.xlsx', 1, '2021-01-03 23:21:07.000000');

-- --------------------------------------------------------

--
-- Table structure for table `settings_publicity`
--

CREATE TABLE `settings_publicity` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `settings_stage`
--

CREATE TABLE `settings_stage` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings_stage`
--

INSERT INTO `settings_stage` (`id`, `title`, `description`, `is_active`, `created`) VALUES
(1, 'Registration', 'Registration Fee, Passport application forms', 1, '2021-01-04'),
(2, 'Interview', 'Determine candidate\'s eligibility', 1, '2021-01-04'),
(3, 'Pre-Medical', 'Determine candidte\'s medical fitness', 1, '2021-01-04'),
(4, 'Deployment Agreement', 'The next of kin Agreement', 1, '2021-01-04'),
(5, 'Training', 'Training departure Agreement. Candidate Training', 1, '2021-01-04'),
(6, 'Passport', 'International travel documentation/identity', 1, '2021-01-04'),
(7, 'Interpol', 'International police record processing', 0, '2021-01-04'),
(8, 'Vetting', 'Local Council Documentation, UAER submissions', 1, '2021-01-04'),
(9, 'CV Submission', 'To facilitate visa application', 1, '2021-01-04'),
(10, 'Visa', 'Visa Submission', 1, '2021-01-04'),
(11, 'Destination & Tickets', 'Destination and Ticket requests', 1, '2021-01-04'),
(12, 'Flight', 'Destination travel Process', 1, '2021-01-04'),
(13, 'Recruitee Monitoring', 'Monitoring of those who are deployed', 1, '2021-01-04'),
(14, 'Contract Expiration', 'Status of the current Contract for the Recruitee', 1, '2021-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `settings_training`
--

CREATE TABLE `settings_training` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` longtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created` date NOT NULL,
  `job_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `branches_branch`
--
ALTER TABLE `branches_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_client`
--
ALTER TABLE `clients_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_client_branch_id_bfe239b1_fk_branches_branch_id` (`branch_id`),
  ADD KEY `clients_client_contact_mode_id_a7335e6c_fk_settings_` (`contact_mode_id`),
  ADD KEY `clients_client_job_id_3a9eea00_fk_jobs_job_id` (`job_id`),
  ADD KEY `clients_client_publicity_id_e6a97b4d_fk_settings_publicity_id` (`publicity_id`),
  ADD KEY `clients_client_user_id_57c8fc4a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `files_clearancefile`
--
ALTER TABLE `files_clearancefile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `clearance_no` (`clearance_no`);

--
-- Indexes for table `files_clientfile`
--
ALTER TABLE `files_clientfile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `files_clientfile_client_id_eccbba13` (`client_id`);

--
-- Indexes for table `files_photo`
--
ALTER TABLE `files_photo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_photo_client_id_109a3fbc_uniq` (`client_id`);

--
-- Indexes for table `finances_expense`
--
ALTER TABLE `finances_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finances_expense_user_id_30495bc6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `finances_fee`
--
ALTER TABLE `finances_fee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `finances_fee_job_id_6d99931e_fk_jobs_job_id` (`job_id`);

--
-- Indexes for table `finances_payment`
--
ALTER TABLE `finances_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finances_payment_fee_id_508d3030_fk_finances_fee_id` (`fee_id`),
  ADD KEY `finances_payment_user_id_45a262bb_fk_auth_user_id` (`user_id`),
  ADD KEY `finances_payment_client_id_ef5ec9e4` (`client_id`);

--
-- Indexes for table `jobs_job`
--
ALTER TABLE `jobs_job`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `jobs_job_category_id_fd8331ed_fk_settings_jobcategory_id` (`category_id`),
  ADD KEY `jobs_job_destination_id_306756aa_fk_settings_destination_id` (`destination_id`),
  ADD KEY `jobs_job_employer_id_b5c64567_fk_settings_employer_id` (`employer_id`),
  ADD KEY `jobs_job_partner_id_085fc6bf_fk_settings_partner_id` (`partner_id`);

--
-- Indexes for table `operations_clearance`
--
ALTER TABLE `operations_clearance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `operations_clearance_client_id_7eed4b1a_uniq` (`client_id`),
  ADD KEY `operations_clearance_clearance_file_id_95370cda_fk_files_cle` (`clearance_file_id`);

--
-- Indexes for table `operations_contract`
--
ALTER TABLE `operations_contract`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `operations_contract_client_id_640e8104_uniq` (`client_id`),
  ADD KEY `operations_contract_employer_id_6b9a82d7_fk_settings_employer_id` (`employer_id`);

--
-- Indexes for table `operations_interpol`
--
ALTER TABLE `operations_interpol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `operations_interpol_client_id_2b959eeb_uniq` (`client_id`);

--
-- Indexes for table `operations_interview`
--
ALTER TABLE `operations_interview`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `operations_interview_client_id_fcfd8c4a_uniq` (`client_id`);

--
-- Indexes for table `operations_medical`
--
ALTER TABLE `operations_medical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operations_medical_client_id_0bf23879` (`client_id`);

--
-- Indexes for table `operations_otheroperation`
--
ALTER TABLE `operations_otheroperation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operations_otheroperation_client_id_3500b7ff` (`client_id`);

--
-- Indexes for table `operations_passport`
--
ALTER TABLE `operations_passport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `passport_no` (`passport_no`),
  ADD UNIQUE KEY `operations_passport_client_id_71a51a68_uniq` (`client_id`),
  ADD KEY `operations_passport_agent_id_d46778e5_fk_settings_agent_id` (`agent_id`);

--
-- Indexes for table `operations_ticket`
--
ALTER TABLE `operations_ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_no` (`ticket_no`),
  ADD UNIQUE KEY `operations_ticket_client_id_ef9ee5bb_uniq` (`client_id`),
  ADD KEY `operations_ticket_agent_id_03d48dc3_fk_settings_agent_id` (`agent_id`);

--
-- Indexes for table `operations_vetting`
--
ALTER TABLE `operations_vetting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `operations_vetting_client_id_1c65528f_uniq` (`client_id`),
  ADD KEY `operations_vetting_destination_id_e7207a0e_fk_settings_` (`destination_id`),
  ADD KEY `operations_vetting_employer_id_89813f11_fk_settings_employer_id` (`employer_id`),
  ADD KEY `operations_vetting_job_id_e651fe2a_fk_jobs_job_id` (`job_id`);

--
-- Indexes for table `operations_visa`
--
ALTER TABLE `operations_visa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visa_no` (`visa_no`),
  ADD UNIQUE KEY `operations_visa_client_id_26220b35_uniq` (`client_id`),
  ADD KEY `operations_visa_agent_id_7939c602_fk_settings_agent_id` (`agent_id`);

--
-- Indexes for table `others_task`
--
ALTER TABLE `others_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `others_task_receiver_id_da3ed860_fk_auth_user_id` (`receiver_id`);

--
-- Indexes for table `reports_bio`
--
ALTER TABLE `reports_bio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_bio_client_id_57c78f51` (`client_id`);

--
-- Indexes for table `reports_clientstage`
--
ALTER TABLE `reports_clientstage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_clientstage_stage_id_20d8a382_fk_settings_stage_id` (`stage_id`),
  ADD KEY `reports_clientstage_client_id_70c8905f` (`client_id`);

--
-- Indexes for table `reports_clienttraining`
--
ALTER TABLE `reports_clienttraining`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_clienttraini_training_id_7ae3aa96_fk_settings_` (`training_id`),
  ADD KEY `reports_clienttraining_client_id_792082ce` (`client_id`);

--
-- Indexes for table `reports_language`
--
ALTER TABLE `reports_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_language_client_id_9f84b1b6` (`client_id`);

--
-- Indexes for table `reports_nextofkin`
--
ALTER TABLE `reports_nextofkin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reports_nextofkin_client_id_044a90cc_uniq` (`client_id`);

--
-- Indexes for table `reports_recruitment`
--
ALTER TABLE `reports_recruitment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reports_recruitment_client_id_e1c28164_uniq` (`client_id`),
  ADD KEY `reports_recruitment_destination_id_fff13d62_fk_settings_` (`destination_id`),
  ADD KEY `reports_recruitment_employer_id_db6e4c49_fk_settings_employer_id` (`employer_id`),
  ADD KEY `reports_recruitment_job_id_76f448a9_fk_jobs_job_id` (`job_id`),
  ADD KEY `reports_recruitment_partner_id_ce0850e8_fk_settings_partner_id` (`partner_id`);

--
-- Indexes for table `reports_skill`
--
ALTER TABLE `reports_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_skill_client_id_1eeb7de4` (`client_id`);

--
-- Indexes for table `settings_agent`
--
ALTER TABLE `settings_agent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `settings_contactmode`
--
ALTER TABLE `settings_contactmode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `settings_destination`
--
ALTER TABLE `settings_destination`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `settings_employer`
--
ALTER TABLE `settings_employer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `settings_jobcategory`
--
ALTER TABLE `settings_jobcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `settings_partner`
--
ALTER TABLE `settings_partner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_partner_title_344fac62_uniq` (`title`);

--
-- Indexes for table `settings_publicity`
--
ALTER TABLE `settings_publicity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `settings_stage`
--
ALTER TABLE `settings_stage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `settings_training`
--
ALTER TABLE `settings_training`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `settings_training_job_id_365966a4_fk_jobs_job_id` (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `branches_branch`
--
ALTER TABLE `branches_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients_client`
--
ALTER TABLE `clients_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `files_clearancefile`
--
ALTER TABLE `files_clearancefile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_clientfile`
--
ALTER TABLE `files_clientfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_photo`
--
ALTER TABLE `files_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finances_expense`
--
ALTER TABLE `finances_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finances_fee`
--
ALTER TABLE `finances_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finances_payment`
--
ALTER TABLE `finances_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs_job`
--
ALTER TABLE `jobs_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_clearance`
--
ALTER TABLE `operations_clearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_contract`
--
ALTER TABLE `operations_contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_interpol`
--
ALTER TABLE `operations_interpol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_interview`
--
ALTER TABLE `operations_interview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_medical`
--
ALTER TABLE `operations_medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_otheroperation`
--
ALTER TABLE `operations_otheroperation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_passport`
--
ALTER TABLE `operations_passport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_ticket`
--
ALTER TABLE `operations_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_vetting`
--
ALTER TABLE `operations_vetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operations_visa`
--
ALTER TABLE `operations_visa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `others_task`
--
ALTER TABLE `others_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_bio`
--
ALTER TABLE `reports_bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_clientstage`
--
ALTER TABLE `reports_clientstage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_clienttraining`
--
ALTER TABLE `reports_clienttraining`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_language`
--
ALTER TABLE `reports_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_nextofkin`
--
ALTER TABLE `reports_nextofkin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_recruitment`
--
ALTER TABLE `reports_recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports_skill`
--
ALTER TABLE `reports_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings_agent`
--
ALTER TABLE `settings_agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings_contactmode`
--
ALTER TABLE `settings_contactmode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings_destination`
--
ALTER TABLE `settings_destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings_employer`
--
ALTER TABLE `settings_employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings_jobcategory`
--
ALTER TABLE `settings_jobcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings_partner`
--
ALTER TABLE `settings_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_publicity`
--
ALTER TABLE `settings_publicity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings_stage`
--
ALTER TABLE `settings_stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `settings_training`
--
ALTER TABLE `settings_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `clients_client`
--
ALTER TABLE `clients_client`
  ADD CONSTRAINT `clients_client_branch_id_bfe239b1_fk_branches_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branches_branch` (`id`),
  ADD CONSTRAINT `clients_client_contact_mode_id_a7335e6c_fk_settings_` FOREIGN KEY (`contact_mode_id`) REFERENCES `settings_contactmode` (`id`),
  ADD CONSTRAINT `clients_client_job_id_3a9eea00_fk_jobs_job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs_job` (`id`),
  ADD CONSTRAINT `clients_client_publicity_id_e6a97b4d_fk_settings_publicity_id` FOREIGN KEY (`publicity_id`) REFERENCES `settings_publicity` (`id`),
  ADD CONSTRAINT `clients_client_user_id_57c8fc4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `files_clientfile`
--
ALTER TABLE `files_clientfile`
  ADD CONSTRAINT `files_clientfile_client_id_eccbba13_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `files_photo`
--
ALTER TABLE `files_photo`
  ADD CONSTRAINT `files_photo_client_id_109a3fbc_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `finances_expense`
--
ALTER TABLE `finances_expense`
  ADD CONSTRAINT `finances_expense_user_id_30495bc6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `finances_fee`
--
ALTER TABLE `finances_fee`
  ADD CONSTRAINT `finances_fee_job_id_6d99931e_fk_jobs_job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs_job` (`id`);

--
-- Constraints for table `finances_payment`
--
ALTER TABLE `finances_payment`
  ADD CONSTRAINT `finances_payment_client_id_ef5ec9e4_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  ADD CONSTRAINT `finances_payment_fee_id_508d3030_fk_finances_fee_id` FOREIGN KEY (`fee_id`) REFERENCES `finances_fee` (`id`),
  ADD CONSTRAINT `finances_payment_user_id_45a262bb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `jobs_job`
--
ALTER TABLE `jobs_job`
  ADD CONSTRAINT `jobs_job_category_id_fd8331ed_fk_settings_jobcategory_id` FOREIGN KEY (`category_id`) REFERENCES `settings_jobcategory` (`id`),
  ADD CONSTRAINT `jobs_job_destination_id_306756aa_fk_settings_destination_id` FOREIGN KEY (`destination_id`) REFERENCES `settings_destination` (`id`),
  ADD CONSTRAINT `jobs_job_employer_id_b5c64567_fk_settings_employer_id` FOREIGN KEY (`employer_id`) REFERENCES `settings_employer` (`id`),
  ADD CONSTRAINT `jobs_job_partner_id_085fc6bf_fk_settings_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `settings_partner` (`id`);

--
-- Constraints for table `operations_clearance`
--
ALTER TABLE `operations_clearance`
  ADD CONSTRAINT `operations_clearance_clearance_file_id_95370cda_fk_files_cle` FOREIGN KEY (`clearance_file_id`) REFERENCES `files_clearancefile` (`id`),
  ADD CONSTRAINT `operations_clearance_client_id_7eed4b1a_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `operations_contract`
--
ALTER TABLE `operations_contract`
  ADD CONSTRAINT `operations_contract_client_id_640e8104_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  ADD CONSTRAINT `operations_contract_employer_id_6b9a82d7_fk_settings_employer_id` FOREIGN KEY (`employer_id`) REFERENCES `settings_employer` (`id`);

--
-- Constraints for table `operations_interpol`
--
ALTER TABLE `operations_interpol`
  ADD CONSTRAINT `operations_interpol_client_id_2b959eeb_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `operations_interview`
--
ALTER TABLE `operations_interview`
  ADD CONSTRAINT `operations_interview_client_id_fcfd8c4a_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `operations_medical`
--
ALTER TABLE `operations_medical`
  ADD CONSTRAINT `operations_medical_client_id_0bf23879_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `operations_otheroperation`
--
ALTER TABLE `operations_otheroperation`
  ADD CONSTRAINT `operations_otheroper_client_id_3500b7ff_fk_clients_c` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `operations_passport`
--
ALTER TABLE `operations_passport`
  ADD CONSTRAINT `operations_passport_agent_id_d46778e5_fk_settings_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `settings_agent` (`id`),
  ADD CONSTRAINT `operations_passport_client_id_71a51a68_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `operations_ticket`
--
ALTER TABLE `operations_ticket`
  ADD CONSTRAINT `operations_ticket_agent_id_03d48dc3_fk_settings_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `settings_agent` (`id`),
  ADD CONSTRAINT `operations_ticket_client_id_ef9ee5bb_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `operations_vetting`
--
ALTER TABLE `operations_vetting`
  ADD CONSTRAINT `operations_vetting_client_id_1c65528f_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  ADD CONSTRAINT `operations_vetting_destination_id_e7207a0e_fk_settings_` FOREIGN KEY (`destination_id`) REFERENCES `settings_destination` (`id`),
  ADD CONSTRAINT `operations_vetting_employer_id_89813f11_fk_settings_employer_id` FOREIGN KEY (`employer_id`) REFERENCES `settings_employer` (`id`),
  ADD CONSTRAINT `operations_vetting_job_id_e651fe2a_fk_jobs_job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs_job` (`id`);

--
-- Constraints for table `operations_visa`
--
ALTER TABLE `operations_visa`
  ADD CONSTRAINT `operations_visa_agent_id_7939c602_fk_settings_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `settings_agent` (`id`),
  ADD CONSTRAINT `operations_visa_client_id_26220b35_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `others_task`
--
ALTER TABLE `others_task`
  ADD CONSTRAINT `others_task_receiver_id_da3ed860_fk_auth_user_id` FOREIGN KEY (`receiver_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `reports_bio`
--
ALTER TABLE `reports_bio`
  ADD CONSTRAINT `reports_bio_client_id_57c78f51_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `reports_clientstage`
--
ALTER TABLE `reports_clientstage`
  ADD CONSTRAINT `reports_clientstage_client_id_70c8905f_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  ADD CONSTRAINT `reports_clientstage_stage_id_20d8a382_fk_settings_stage_id` FOREIGN KEY (`stage_id`) REFERENCES `settings_stage` (`id`);

--
-- Constraints for table `reports_clienttraining`
--
ALTER TABLE `reports_clienttraining`
  ADD CONSTRAINT `reports_clienttraini_training_id_7ae3aa96_fk_settings_` FOREIGN KEY (`training_id`) REFERENCES `settings_training` (`id`),
  ADD CONSTRAINT `reports_clienttraining_client_id_792082ce_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `reports_language`
--
ALTER TABLE `reports_language`
  ADD CONSTRAINT `reports_language_client_id_9f84b1b6_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `reports_nextofkin`
--
ALTER TABLE `reports_nextofkin`
  ADD CONSTRAINT `reports_nextofkin_client_id_044a90cc_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `reports_recruitment`
--
ALTER TABLE `reports_recruitment`
  ADD CONSTRAINT `reports_recruitment_client_id_e1c28164_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`),
  ADD CONSTRAINT `reports_recruitment_destination_id_fff13d62_fk_settings_` FOREIGN KEY (`destination_id`) REFERENCES `settings_destination` (`id`),
  ADD CONSTRAINT `reports_recruitment_employer_id_db6e4c49_fk_settings_employer_id` FOREIGN KEY (`employer_id`) REFERENCES `settings_employer` (`id`),
  ADD CONSTRAINT `reports_recruitment_job_id_76f448a9_fk_jobs_job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs_job` (`id`),
  ADD CONSTRAINT `reports_recruitment_partner_id_ce0850e8_fk_settings_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `settings_partner` (`id`);

--
-- Constraints for table `reports_skill`
--
ALTER TABLE `reports_skill`
  ADD CONSTRAINT `reports_skill_client_id_1eeb7de4_fk_clients_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients_client` (`id`);

--
-- Constraints for table `settings_training`
--
ALTER TABLE `settings_training`
  ADD CONSTRAINT `settings_training_job_id_365966a4_fk_jobs_job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs_job` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
