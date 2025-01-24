-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `added_on` varchar(15) NOT NULL,
  `updated_on` varchar(15) NOT NULL,
  `added_by` varchar(15) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `details`, `added_on`, `updated_on`, `added_by`, `status`) VALUES
('64441dc980a91', 'Brief Introduction', 'Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.Let success motivate you. Find a picture of what epitomizes success to you and then pull it out when you are in need of motivation.', '1682185673', '1736339032', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_notification` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phoneNumber`, `password`, `last_notification`, `image`, `status`) VALUES
(1, 'Dhrubo Raj Roy', 'Dhruborajroy3@gmail.com', '01705927257', '$2y$10$3xSV8g1xd.7b6leqDI08MOZS6CMMiYKfsL32wzasO7Sp9BqqF92im', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `depts_lab_list`
--

CREATE TABLE `depts_lab_list` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `name_bn` text NOT NULL,
  `short_form` varchar(20) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `depts_lab_list`
--

INSERT INTO `depts_lab_list` (`id`, `name`, `name_bn`, `short_form`, `status`) VALUES
(1, 'Civil Engineering', 'সিভিল ইঞ্জিনিয়ারিং', 'CE', 1),
(2, 'Electrical and Electronics Engineering', 'ইলেকট্রিক্যাল এন্ড ইলেকট্রনিক ইঞ্জিনিয়ারিং', 'EEE', 1),
(3, 'Naval Architecture & Marine Engineering ', 'নেভাল আর্কিটেকচার এন্ড মেরিন ইঞ্জিনিয়ারিং', 'NAME ', 1),
(4, 'General Science & Humanities', 'জেনারেল সায়েন্স এন্ড হিউম্যানিটিস\r\n', 'GSH', 1),
(5, 'Hostels', 'হোস্টেল সুপার', 'HS', 1),
(6, 'Cenreal Computer Center', 'সেন্ট্রাল কম্পিউটার সেন্টার', 'CCC', 1),
(7, 'Office', 'অফিস', 'Office', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dept_general_info`
--

CREATE TABLE `dept_general_info` (
  `id` varchar(20) NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `dept_publication` text DEFAULT NULL,
  `dept_research` text DEFAULT NULL,
  `dept_scholarships` text DEFAULT NULL,
  `dept_about` text DEFAULT NULL,
  `dept_vision_mission` text DEFAULT NULL,
  `dept_head_msg` text DEFAULT NULL,
  `dept_booklet` text DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_general_info`
--

INSERT INTO `dept_general_info` (`id`, `dept_id`, `dept_publication`, `dept_research`, `dept_scholarships`, `dept_about`, `dept_vision_mission`, `dept_head_msg`, `dept_booklet`, `status`) VALUES
('1', 'CE', 'Publication What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nReseatch Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active'),
('2', 'EEE', 'Publication What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nReseatch Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active'),
('3', 'GSH', 'Publication What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nReseatch Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `dept_sliders`
--

CREATE TABLE `dept_sliders` (
  `id` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `button_text` varchar(20) NOT NULL,
  `button_link` text NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `added_on` varchar(15) NOT NULL,
  `updated_on` varchar(15) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_sliders`
--

INSERT INTO `dept_sliders` (`id`, `image`, `title`, `dept`, `sub_title`, `button_text`, `button_link`, `added_by`, `added_on`, `updated_on`, `status`) VALUES
('644418d0c8a24', '02.jpg', ' Welcome to dept of ce ', 'CE', 'An Affiliated Engineering College', 'Get Started', '#', '1', '1682184400', '1736177754', 1),
('677b8d3942950', '01.jpg', ' ', 'EEE', ' ', ' ', ' ', '1', '1736150329', '', 1),
('677bf78cda77b', '03.jpg', '', 'GSH', '', '', '', '1', '1736177548', '', 1),
('677bf78cda77e', '03.jpg', '', 'EEE', '', '', '', '1', '1736177548', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `research_interest` text DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linked_in` varchar(255) DEFAULT NULL,
  `education` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `publication` text DEFAULT NULL,
  `scholarship_award` text DEFAULT NULL,
  `research` text DEFAULT NULL,
  `teaching_supervision` text DEFAULT NULL,
  `joined_at` date NOT NULL,
  `visibility` enum('public','private') DEFAULT 'public',
  `type` varchar(20) NOT NULL,
  `dept_head` tinyint(1) DEFAULT 0,
  `status` enum('active','inactive','retired') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `image`, `designation`, `phone`, `email`, `dept`, `research_interest`, `bio`, `facebook`, `linked_in`, `education`, `experience`, `publication`, `scholarship_award`, `research`, `teaching_supervision`, `joined_at`, `visibility`, `type`, `dept_head`, `status`) VALUES
('008457df88f46', 'Dr. Shahriar Rahman', 'default.jpg', 'Lecturer', '+8801891731717', 'dr._shahriar_rahman38@ce.kuet.ac.bd', 'ME', 'Geotechnical Engineering', '<p><strong>Dr. Shahriar Rahman</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2021-03-12', 'public', '', 1, ''),
('035aaf47513ab', 'Dr. Shahriar Chowdhury', 'default.jpg', 'Professor', '+8801706927336', 'dr._shahriar_chowdhury73@faculty.com', 'EEE', 'Construction Management', '<p><strong>Dr. Shahriar Chowdhury</strong> is an esteemed faculty member specializing in Construction Management.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Construction Management</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2002-02-18', 'public', '', 0, ''),
('0f557e3f1c099', 'Dr. Rafi Kabir', 'default.jpg', 'Associate Professor', '+8801630388154', 'dr._rafi_kabir90@univ.ac.bd', 'IPE', 'Transportation Engineering', '<p><strong>Dr. Rafi Kabir</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2013-09-12', 'public', '', 1, ''),
('10d98b171b135', 'Dr. Shahriar Alam', 'default.jpg', 'Professor', '+8801765605210', 'dr._shahriar_alam86@civil.edu.bd', 'EEE', 'Water Resources Engineering', '<p><strong>Dr. Shahriar Alam</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2002-05-30', 'public', '', 1, ''),
('161094c79c9e0', 'Dr. Md. Faruque', 'default.jpg', 'Professor', '+8801568192456', 'dr._md._faruque9@ce.kuet.ac.bd', 'ME', 'Geotechnical Engineering', '<p><strong>Dr. Md. Faruque</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2000-09-21', 'public', '', 1, ''),
('21b5122816336', 'Dr. Rafi Sikder', 'default.jpg', 'Assistant Professor', '+8801945506950', 'dr._rafi_sikder75@ce.kuet.ac.bd', 'EEE', 'Construction Management', '<p><strong>Dr. Rafi Sikder</strong> is an esteemed faculty member specializing in Construction Management.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Construction Management</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2018-05-01', 'public', '', 1, ''),
('224a7924473e9', 'Dr. Shams Hossain', 'default.jpg', 'Professor', '+8801695510304', 'dr._shams_hossain77@univ.ac.bd', 'IPE', 'Transportation Engineering', '<p><strong>Dr. Shams Hossain</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2010-10-30', 'public', '', 0, ''),
('22d59403c9317', 'Dr. Arif Ahmed', 'default.jpg', 'Professor', '+8801536270526', 'dr._arif_ahmed70@faculty.com', 'IPE', 'Water Resources Engineering', '<p><strong>Dr. Arif Ahmed</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2017-08-27', 'public', '', 1, ''),
('28948f85b82c5', 'Dr. Nayeem Islam', 'default.jpg', 'Assistant Professor', '+8801969719713', 'dr._nayeem_islam44@ce.kuet.ac.bd', 'URP', 'Construction Management', '<p><strong>Dr. Nayeem Islam</strong> is an esteemed faculty member specializing in Construction Management.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Construction Management</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2012-08-01', 'public', '', 1, ''),
('28c5798f0085e', 'Dr. Nayeem Alam', 'default.jpg', 'Assistant Professor', '+8801879722063', 'dr._nayeem_alam8@univ.ac.bd', 'EEE', 'Construction Management', '<p><strong>Dr. Nayeem Alam</strong> is an esteemed faculty member specializing in Construction Management.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Construction Management</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2023-02-01', 'public', '', 0, ''),
('2ab670d3942cb', 'Dr. Nayeem Kabir', 'default.jpg', 'Assistant Professor', '+8801630090142', 'dr._nayeem_kabir90@univ.ac.bd', 'CSE', 'Environmental Engineering', '<p><strong>Dr. Nayeem Kabir</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2006-03-20', 'public', '', 1, ''),
('2bdd16bfe81f0', 'Dr. Md. Rahman', 'default.jpg', 'Professor', '+8801762867302', 'dr._md._rahman59@faculty.com', 'IPE', 'Coastal Engineering', '<p><strong>Dr. Md. Rahman</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2014-06-07', 'public', '', 1, ''),
('2d09b324708ee', 'Dr. Rafi Faruque', 'default.jpg', 'Professor', '+8801536955212', 'dr._rafi_faruque40@univ.ac.bd', 'ME', 'Transportation Engineering', '<p><strong>Dr. Rafi Faruque</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2013-10-09', 'public', '', 1, ''),
('2dd396adcd116', 'Dr. Rafi Kabir', 'default.jpg', 'Assistant Professor', '+8801963855699', 'dr._rafi_kabir90@faculty.com', 'URP', 'Water Resources Engineering', '<p><strong>Dr. Rafi Kabir</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2007-05-04', 'public', '', 1, ''),
('2de7cd5014f38', 'Dr. Imran Islam', 'default.jpg', 'Professor', '+8801621498554', 'dr._imran_islam55@civil.edu.bd', 'IPE', 'Water Resources Engineering', '<p><strong>Dr. Imran Islam</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2009-08-06', 'public', '', 1, ''),
('2ec0c039f5828', 'Dr. Hasan Chowdhury', 'default.jpg', 'Associate Professor', '+8801520048715', 'dr._hasan_chowdhury35@ce.kuet.ac.bd', 'URP', 'Water Resources Engineering', '<p><strong>Dr. Hasan Chowdhury</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2023-09-07', 'public', '', 0, ''),
('32765d8d691ef', 'Dr. Tariq Khan', 'default.jpg', 'Professor', '+8801610868703', 'dr._tariq_khan1@civil.edu.bd', 'IPE', 'Structural Engineering', '<p><strong>Dr. Tariq Khan</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2008-10-18', 'public', '', 0, ''),
('378bfadec79ec', 'Dr. Tariq Alam', 'default.jpg', 'Professor', '+8801758207476', 'dr._tariq_alam46@univ.ac.bd', 'IPE', 'Geotechnical Engineering', '<p><strong>Dr. Tariq Alam</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2009-03-22', 'public', '', 1, ''),
('38cf707bc2063', 'Dr. Hasan Faruque', 'default.jpg', 'Professor', '+8801738367514', 'dr._hasan_faruque9@univ.ac.bd', 'URP', 'Water Resources Engineering', '<p><strong>Dr. Hasan Faruque</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2017-11-07', 'public', '', 0, ''),
('3a616b306c6be', 'Dr. Md. Alam', 'default.jpg', 'Assistant Professor', '+8801542883928', 'dr._md._alam58@univ.ac.bd', 'URP', 'Earthquake Engineering', '<p><strong>Dr. Md. Alam</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2001-03-14', 'public', '', 1, ''),
('3aa631f48542e', 'Dr. Arif Islam', 'default.jpg', 'Professor', '+8801816265905', 'dr._arif_islam26@univ.ac.bd', 'ME', 'Environmental Engineering', '<p><strong>Dr. Arif Islam</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2014-07-08', 'public', '', 1, ''),
('3de8c9f24d630', 'Dr. Shams Kabir', 'default.jpg', 'Associate Professor', '+8801635989074', 'dr._shams_kabir54@ce.kuet.ac.bd', 'EEE', 'Geotechnical Engineering', '<p><strong>Dr. Shams Kabir</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2023-09-08', 'public', '', 1, ''),
('3e13988719f6d', 'Dr. Shams Hossain', 'default.jpg', 'Assistant Professor', '+8801975840127', 'dr._shams_hossain81@ce.kuet.ac.bd', 'URP', 'Earthquake Engineering', '<p><strong>Dr. Shams Hossain</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2018-03-01', 'public', '', 1, ''),
('3fdc4c07187bc', 'Dr. Shams Ahmed', 'default.jpg', 'Assistant Professor', '+8801970497661', 'dr._shams_ahmed46@faculty.com', 'EEE', 'Structural Engineering', '<p><strong>Dr. Shams Ahmed</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2019-01-21', 'public', '', 0, ''),
('47ce6b552977f', 'Dr. Md. Ahmed', 'default.jpg', 'Assistant Professor', '+8801504227305', 'dr._md._ahmed47@univ.ac.bd', 'ME', 'Coastal Engineering', '<p><strong>Dr. Md. Ahmed</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2002-07-22', 'public', '', 1, ''),
('49a04e50c326d', 'Dr. Rafi Rahman', 'default.jpg', 'Associate Professor', '+8801638220509', 'dr._rafi_rahman76@ce.kuet.ac.bd', 'CE', 'Material Science', '<p><strong>Dr. Rafi Rahman</strong> is an esteemed faculty member specializing in Material Science.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Material Science</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2013-04-15', 'public', '', 1, ''),
('49f30908de59c', 'Dr. Md. Ahmed', 'default.jpg', 'Professor', '+8801977639326', 'dr._md._ahmed80@faculty.com', 'ME', 'Water Resources Engineering', '<p><strong>Dr. Md. Ahmed</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2001-09-15', 'public', '', 1, ''),
('4bbea063f618d', 'Dr. Hasan Chowdhury', 'default.jpg', 'Assistant Professor', '+8801902135349', 'dr._hasan_chowdhury5@univ.ac.bd', 'CSE', 'Environmental Engineering', '<p><strong>Dr. Hasan Chowdhury</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2015-09-08', 'public', '', 0, ''),
('4fec69bd1c48c', 'Dr. Arif Chowdhury', 'default.jpg', 'Professor', '+8801750777015', 'dr._arif_chowdhury67@faculty.com', 'IPE', 'Earthquake Engineering', '<p><strong>Dr. Arif Chowdhury</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2013-11-02', 'public', '', 0, ''),
('5101500239ed3', 'Dr. Shahriar Hossain', 'default.jpg', 'Professor', '+8801844708584', 'dr._shahriar_hossain85@ce.kuet.ac.bd', 'URP', 'Water Resources Engineering', '<p><strong>Dr. Shahriar Hossain</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2020-01-12', 'public', '', 1, ''),
('51952c2464641', 'Dr. Abdul Ahmed', 'default.jpg', 'Professor', '+8801570356356', 'dr._abdul_ahmed17@faculty.com', 'CSE', 'Earthquake Engineering', '<p><strong>Dr. Abdul Ahmed</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2020-03-16', 'public', '', 0, ''),
('5244bb142ff42', 'Dr. Imran Hossain', 'default.jpg', 'Assistant Professor', '+8801879686114', 'dr._imran_hossain30@faculty.com', 'CE', 'Transportation Engineering', '<p><strong>Dr. Imran Hossain</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2005-12-10', 'public', '', 0, ''),
('526d47fdf4ddd', 'Dr. Shams Rahman', 'default.jpg', 'Professor', '+8801696938059', 'dr._shams_rahman54@univ.ac.bd', 'CSE', 'Geotechnical Engineering', '<p><strong>Dr. Shams Rahman</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-09-27', 'public', '', 1, ''),
('55342fba5f3b4', 'Dr. Shams Rahman', 'default.jpg', 'Professor', '+8801683876777', 'dr._shams_rahman34@civil.edu.bd', 'EEE', 'Water Resources Engineering', '<p><strong>Dr. Shams Rahman</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2001-07-13', 'public', '', 1, ''),
('5675fe15eae8c', 'Dr. Md. Alam', 'default.jpg', 'Lecturer', '+8801617182068', 'dr._md._alam71@ce.kuet.ac.bd', 'IPE', 'Construction Management', '<p><strong>Dr. Md. Alam</strong> is an esteemed faculty member specializing in Construction Management.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Construction Management</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2021-11-03', 'public', '', 1, ''),
('58ecf550e10c2', 'Dr. Rafi Faruque', 'default.jpg', 'Associate Professor', '+8801655411666', 'dr._rafi_faruque72@civil.edu.bd', 'CE', 'Structural Engineering', '<p><strong>Dr. Rafi Faruque</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2021-09-15', 'public', '', 1, ''),
('5932515b44331', 'Dr. Shams Chowdhury', 'default.jpg', 'Lecturer', '+8801941106524', 'dr._shams_chowdhury8@civil.edu.bd', 'CSE', 'Environmental Engineering', '<p><strong>Dr. Shams Chowdhury</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2002-07-19', 'public', '', 0, ''),
('5a590fe7bbac2', 'Dr. Hasan Faruque', 'default.jpg', 'Lecturer', '+8801638381227', 'dr._hasan_faruque92@faculty.com', 'ME', 'Earthquake Engineering', '<p><strong>Dr. Hasan Faruque</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-08-13', 'public', '', 0, ''),
('5a7a9d5d88edc', 'Dr. Shams Ahmed', 'default.jpg', 'Lecturer', '+8801992230110', 'dr._shams_ahmed97@ce.kuet.ac.bd', 'CSE', 'Material Science', '<p><strong>Dr. Shams Ahmed</strong> is an esteemed faculty member specializing in Material Science.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Material Science</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2022-01-25', 'public', '', 0, ''),
('5ce1d1d920b1f', 'Dr. Imran Kabir', 'default.jpg', 'Lecturer', '+8801588206852', 'dr._imran_kabir8@univ.ac.bd', 'URP', 'Coastal Engineering', '<p><strong>Dr. Imran Kabir</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2023-09-19', 'public', '', 1, ''),
('5f15b622c1c74', 'Dr. Md. Ahmed', 'default.jpg', 'Lecturer', '+8801760746764', 'dr._md._ahmed13@univ.ac.bd', 'EEE', 'Coastal Engineering', '<p><strong>Dr. Md. Ahmed</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2019-06-01', 'public', '', 0, ''),
('601321852411a', 'Dr. Shahriar Islam', 'default.jpg', 'Associate Professor', '+8801800860544', 'dr._shahriar_islam47@univ.ac.bd', 'IPE', 'Environmental Engineering', '<p><strong>Dr. Shahriar Islam</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2002-04-11', 'public', '', 0, ''),
('679361fae2923', 'TEST', '1737712123.jpg', 'DEMO', '01882874194', 'S@GMAIL.COM', '', '<p>DEMO</p>', '<p>TEST</p>', '', '', '<p>.KJSNH</p>', '<p>KJSDH</p>', '<p>LIUASH</p>', '<p>LKSBD</p>', '<p>;LSAHVD</p>', '<p>;OSHD</p>', '2025-01-10', 'public', '', 0, ''),
('6793622dc776d', 'TEST', '1737712173.jpg', 'DEMO', '01882874194', 'S@GMAIL.COM', '', '<p>DEMO</p>', '<p>TEST</p>', '', '', '<p>KJSNH</p>', '<p>KJSDH</p>', '<p>LIUASH</p>', '<p>LKSBD</p>', '<p>LSAHVD</p>', '<p>OSHD</p>', '2025-01-10', 'public', '', 0, ''),
('690ce4ad91e0a', 'Dr. Hasan Sikder', 'default.jpg', 'Assistant Professor', '+8801775955515', 'dr._hasan_sikder86@faculty.com', 'CE', 'Material Science', '<p><strong>Dr. Hasan Sikder</strong> is an esteemed faculty member specializing in Material Science.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Material Science</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2000-08-24', 'public', '', 1, ''),
('69d26baabb887', 'Dr. Abdul Hossain', 'default.jpg', 'Assistant Professor', '+8801595837592', 'dr._abdul_hossain50@ce.kuet.ac.bd', 'EEE', 'Transportation Engineering', '<p><strong>Dr. Abdul Hossain</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2004-09-04', 'public', '', 0, ''),
('6a1524243ab93', 'Dr. Arif Chowdhury', 'default.jpg', 'Assistant Professor', '+8801717599903', 'dr._arif_chowdhury3@ce.kuet.ac.bd', 'CE', 'Coastal Engineering', '<p><strong>Dr. Arif Chowdhury</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2004-05-07', 'public', '', 0, ''),
('6b578fe2047ae', 'Dr. Hasan Chowdhury', 'default.jpg', 'Associate Professor', '+8801998121471', 'dr._hasan_chowdhury91@civil.edu.bd', 'CE', 'Construction Management', '<p><strong>Dr. Hasan Chowdhury</strong> is an esteemed faculty member specializing in Construction Management.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Construction Management</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2005-08-02', 'public', '', 0, ''),
('6e6947032dacb', 'Dr. Md. Faruque', 'default.jpg', 'Lecturer', '+8801788865800', 'dr._md._faruque88@univ.ac.bd', 'EEE', 'Coastal Engineering', '<p><strong>Dr. Md. Faruque</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2021-05-13', 'public', '', 1, ''),
('736e56b830272', 'Dr. Rafi Kabir', 'default.jpg', 'Assistant Professor', '+8801643888613', 'dr._rafi_kabir31@ce.kuet.ac.bd', 'EEE', 'Earthquake Engineering', '<p><strong>Dr. Rafi Kabir</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2004-07-13', 'public', '', 0, ''),
('7461225b28e5c', 'Dr. Shams Faruque', 'default.jpg', 'Associate Professor', '+8801954000645', 'dr._shams_faruque65@faculty.com', 'CSE', 'Material Science', '<p><strong>Dr. Shams Faruque</strong> is an esteemed faculty member specializing in Material Science.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Material Science</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2006-10-01', 'public', '', 1, ''),
('7910b78db1992', 'Dr. Md. Ahmed', 'default.jpg', 'Lecturer', '+8801785872728', 'dr._md._ahmed38@ce.kuet.ac.bd', 'CE', 'Earthquake Engineering', '<p><strong>Dr. Md. Ahmed</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-04-02', 'public', '', 0, ''),
('7a6fac66adea1', 'Dr. Md. Kabir', 'default.jpg', 'Assistant Professor', '+8801823921289', 'dr._md._kabir22@faculty.com', 'EEE', 'Transportation Engineering', '<p><strong>Dr. Md. Kabir</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2012-02-21', 'public', '', 0, ''),
('7c6ac3cae267d', 'Dr. Shahriar Alam', 'default.jpg', 'Assistant Professor', '+8801587934472', 'dr._shahriar_alam19@faculty.com', 'ME', 'Coastal Engineering', '<p><strong>Dr. Shahriar Alam</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2022-08-05', 'public', '', 0, ''),
('84b9459566575', 'Dr. Arif Khan', 'default.jpg', 'Associate Professor', '+8801559932255', 'dr._arif_khan4@univ.ac.bd', 'ME', 'Transportation Engineering', '<p><strong>Dr. Arif Khan</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2016-06-18', 'public', '', 0, ''),
('85adc3a0a878f', 'Dr. Shahriar Faruque', 'default.jpg', 'Lecturer', '+8801719435985', 'dr._shahriar_faruque25@univ.ac.bd', 'ME', 'Geotechnical Engineering', '<p><strong>Dr. Shahriar Faruque</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2004-04-03', 'public', '', 0, ''),
('867bae3f30a84', 'Dr. Shams Alam', 'default.jpg', 'Professor', '+8801698952193', 'dr._shams_alam89@univ.ac.bd', 'EEE', 'Transportation Engineering', '<p><strong>Dr. Shams Alam</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2012-08-20', 'public', '', 0, ''),
('8ba9971e3457c', 'Dr. Nayeem Rahman', 'default.jpg', 'Associate Professor', '+8801505957524', 'dr._nayeem_rahman27@civil.edu.bd', 'EEE', 'Coastal Engineering', '<p><strong>Dr. Nayeem Rahman</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2022-02-19', 'public', '', 1, ''),
('8bf8ab3822a7d', 'Dr. Rafi Alam', 'default.jpg', 'Lecturer', '+8801792589460', 'dr._rafi_alam76@civil.edu.bd', 'CSE', 'Geotechnical Engineering', '<p><strong>Dr. Rafi Alam</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2014-12-27', 'public', '', 1, ''),
('91f335e6c00a0', 'Dr. Abdul Rahman', 'default.jpg', 'Professor', '+8801675423802', 'dr._abdul_rahman15@civil.edu.bd', 'URP', 'Structural Engineering', '<p><strong>Dr. Abdul Rahman</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2016-07-29', 'public', '', 0, ''),
('95403202aa4ec', 'Dr. Tariq Ahmed', 'default.jpg', 'Assistant Professor', '+8801614320072', 'dr._tariq_ahmed49@ce.kuet.ac.bd', 'URP', 'Earthquake Engineering', '<p><strong>Dr. Tariq Ahmed</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2019-06-01', 'public', '', 1, ''),
('96f98e5d1db88', 'Dr. Nayeem Ahmed', 'default.jpg', 'Lecturer', '+8801600507084', 'dr._nayeem_ahmed37@faculty.com', 'ME', 'Structural Engineering', '<p><strong>Dr. Nayeem Ahmed</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-06-06', 'public', '', 1, ''),
('9bb874cc5b25b', 'Dr. Shahriar Ahmed', 'default.jpg', 'Associate Professor', '+8801802968732', 'dr._shahriar_ahmed40@ce.kuet.ac.bd', 'CE', 'Water Resources Engineering', '<p><strong>Dr. Shahriar Ahmed</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2004-05-13', 'public', '', 1, ''),
('9f5bb1755ecdc', 'Dr. Shams Khan', 'default.jpg', 'Associate Professor', '+8801598825726', 'dr._shams_khan94@civil.edu.bd', 'CSE', 'Construction Management', '<p><strong>Dr. Shams Khan</strong> is an esteemed faculty member specializing in Construction Management.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Construction Management</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2016-11-24', 'public', '', 0, ''),
('a0f107b846a72', 'Dr. Shahriar Sikder', 'default.jpg', 'Lecturer', '+8801923947208', 'dr._shahriar_sikder37@ce.kuet.ac.bd', 'URP', 'Transportation Engineering', '<p><strong>Dr. Shahriar Sikder</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-04-12', 'public', '', 0, ''),
('a154d4bc57af9', 'Dr. Rafi Faruque', 'default.jpg', 'Professor', '+8801632175683', 'dr._rafi_faruque24@faculty.com', 'ME', 'Structural Engineering', '<p><strong>Dr. Rafi Faruque</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2002-05-30', 'public', '', 0, ''),
('a3dbd1a7cd4a0', 'Dr. Md. Khan', 'default.jpg', 'Lecturer', '+8801528202116', 'dr._md._khan45@civil.edu.bd', 'CE', 'Material Science', '<p><strong>Dr. Md. Khan</strong> is an esteemed faculty member specializing in Material Science.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Material Science</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2015-01-12', 'public', '', 1, ''),
('a54908ad21396', 'Dr. Abdul Islam', 'default.jpg', 'Professor', '+8801658675050', 'dr._abdul_islam45@civil.edu.bd', 'EEE', 'Construction Management', '<p><strong>Dr. Abdul Islam</strong> is an esteemed faculty member specializing in Construction Management.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Construction Management</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2017-02-18', 'public', '', 0, ''),
('ad64431fae110', 'Dr. Rafi Alam', 'default.jpg', 'Associate Professor', '+8801918584473', 'dr._rafi_alam82@ce.kuet.ac.bd', 'IPE', 'Geotechnical Engineering', '<p><strong>Dr. Rafi Alam</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2004-01-21', 'public', '', 0, ''),
('b2b9f1bf53910', 'Dr. Hasan Kabir', 'default.jpg', 'Professor', '+8801518031818', 'dr._hasan_kabir92@ce.kuet.ac.bd', 'CE', 'Earthquake Engineering', '<p><strong>Dr. Hasan Kabir</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2023-03-22', 'public', '', 1, ''),
('b48f58ece040a', 'Dr. Abdul Alam', 'default.jpg', 'Professor', '+8801998368797', 'dr._abdul_alam43@faculty.com', 'CE', 'Earthquake Engineering', '<p><strong>Dr. Abdul Alam</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2013-05-25', 'public', '', 0, '');
INSERT INTO `faculty` (`id`, `name`, `image`, `designation`, `phone`, `email`, `dept`, `research_interest`, `bio`, `facebook`, `linked_in`, `education`, `experience`, `publication`, `scholarship_award`, `research`, `teaching_supervision`, `joined_at`, `visibility`, `type`, `dept_head`, `status`) VALUES
('b777e714f0223', 'Dr. Tariq Faruque', 'default.jpg', 'Lecturer', '+8801779776505', 'dr._tariq_faruque40@ce.kuet.ac.bd', 'IPE', 'Earthquake Engineering', '<p><strong>Dr. Tariq Faruque</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2010-09-24', 'public', '', 1, ''),
('ba15002a7fadd', 'Dr. Shahriar Alam', 'default.jpg', 'Professor', '+8801691400946', 'dr._shahriar_alam65@ce.kuet.ac.bd', 'CSE', 'Environmental Engineering', '<p><strong>Dr. Shahriar Alam</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2020-08-03', 'public', '', 0, ''),
('bc89b31ae79f9', 'Dr. Imran Sikder', 'default.jpg', 'Professor', '+8801646612937', 'dr._imran_sikder93@univ.ac.bd', 'EEE', 'Transportation Engineering', '<p><strong>Dr. Imran Sikder</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2002-08-13', 'public', '', 1, ''),
('bd92c938b7b85', 'Dr. Nayeem Hossain', 'default.jpg', 'Professor', '+8801702236508', 'dr._nayeem_hossain44@univ.ac.bd', 'CSE', 'Material Science', '<p><strong>Dr. Nayeem Hossain</strong> is an esteemed faculty member specializing in Material Science.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Material Science</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-04-24', 'public', '', 1, ''),
('c3bc86443a60d', 'Dr. Shahriar Chowdhury', 'default.jpg', 'Lecturer', '+8801973268166', 'dr._shahriar_chowdhury28@faculty.com', 'CE', 'Transportation Engineering', '<p><strong>Dr. Shahriar Chowdhury</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2004-03-07', 'public', '', 0, ''),
('c7bfe61c40ee3', 'Dr. Tariq Alam', 'default.jpg', 'Assistant Professor', '+8801932405750', 'dr._tariq_alam97@civil.edu.bd', 'ME', 'Material Science', '<p><strong>Dr. Tariq Alam</strong> is an esteemed faculty member specializing in Material Science.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Material Science</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2015-03-25', 'public', '', 1, ''),
('c86c670f1be52', 'Dr. Shams Faruque', 'default.jpg', 'Professor', '+8801898287049', 'dr._shams_faruque67@civil.edu.bd', 'CSE', 'Water Resources Engineering', '<p><strong>Dr. Shams Faruque</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2007-10-19', 'public', '', 0, ''),
('c8bd5c89e13f7', 'Dr. Shahriar Chowdhury', 'default.jpg', 'Professor', '+8801606256533', 'dr._shahriar_chowdhury17@civil.edu.bd', 'EEE', 'Earthquake Engineering', '<p><strong>Dr. Shahriar Chowdhury</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-09-10', 'public', '', 0, ''),
('ca25beb0a59ff', 'Dr. Md. Kabir', 'default.jpg', 'Associate Professor', '+8801977210046', 'dr._md._kabir61@ce.kuet.ac.bd', 'URP', 'Water Resources Engineering', '<p><strong>Dr. Md. Kabir</strong> is an esteemed faculty member specializing in Water Resources Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Water Resources Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2001-09-17', 'public', '', 1, ''),
('cc063bb70a29a', 'Dr. Nayeem Ahmed', 'default.jpg', 'Professor', '+8801890775552', 'dr._nayeem_ahmed63@faculty.com', 'EEE', 'Environmental Engineering', '<p><strong>Dr. Nayeem Ahmed</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2023-12-23', 'public', '', 1, ''),
('cd873f3ef7681', 'Dr. Abdul Islam', 'default.jpg', 'Professor', '+8801889700645', 'dr._abdul_islam19@univ.ac.bd', 'CSE', 'Environmental Engineering', '<p><strong>Dr. Abdul Islam</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-04-25', 'public', '', 0, ''),
('d0bac0b6a62b9', 'Dr. Tariq Sikder', 'default.jpg', 'Assistant Professor', '+8801730587660', 'dr._tariq_sikder79@univ.ac.bd', 'EEE', 'Structural Engineering', '<p><strong>Dr. Tariq Sikder</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2006-07-19', 'public', '', 0, ''),
('d3b9fc376ddfd', 'Dr. Hasan Kabir', 'default.jpg', 'Assistant Professor', '+8801524501221', 'dr._hasan_kabir72@ce.kuet.ac.bd', 'CSE', 'Transportation Engineering', '<p><strong>Dr. Hasan Kabir</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2017-06-26', 'public', '', 1, ''),
('d3e2f41a8ebb3', 'Dr. Nayeem Hossain', 'default.jpg', 'Professor', '+8801935367524', 'dr._nayeem_hossain79@ce.kuet.ac.bd', 'EEE', 'Geotechnical Engineering', '<p><strong>Dr. Nayeem Hossain</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2021-01-26', 'public', '', 0, ''),
('d5b3babed2c1f', 'Dr. Md. Khan', 'default.jpg', 'Associate Professor', '+8801905581511', 'dr._md._khan78@univ.ac.bd', 'EEE', 'Earthquake Engineering', '<p><strong>Dr. Md. Khan</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2006-12-16', 'public', '', 0, ''),
('d5ed50b5c48e1', 'Dr. Arif Hossain', 'default.jpg', 'Lecturer', '+8801746016675', 'dr._arif_hossain55@ce.kuet.ac.bd', 'URP', 'Geotechnical Engineering', '<p><strong>Dr. Arif Hossain</strong> is an esteemed faculty member specializing in Geotechnical Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Geotechnical Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2014-12-29', 'public', '', 1, ''),
('d9ea34712483c', 'Dr. Hasan Chowdhury', 'default.jpg', 'Professor', '+8801745156675', 'dr._hasan_chowdhury78@univ.ac.bd', 'IPE', 'Structural Engineering', '<p><strong>Dr. Hasan Chowdhury</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2022-02-04', 'public', '', 0, ''),
('e04bdfbdbf288', 'Dr. Abdul Khan', 'default.jpg', 'Assistant Professor', '+8801799136487', 'dr._abdul_khan1@faculty.com', 'CSE', 'Coastal Engineering', '<p><strong>Dr. Abdul Khan</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2011-11-07', 'public', '', 1, ''),
('e344cb10fe07f', 'Dr. Tariq Chowdhury', 'default.jpg', 'Lecturer', '+8801525274523', 'dr._tariq_chowdhury95@univ.ac.bd', 'URP', 'Transportation Engineering', '<p><strong>Dr. Tariq Chowdhury</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2020-12-21', 'public', '', 1, ''),
('e5f93566e789e', 'Dr. Nayeem Islam', 'default.jpg', 'Professor', '+8801528698431', 'dr._nayeem_islam91@faculty.com', 'ME', 'Material Science', '<p><strong>Dr. Nayeem Islam</strong> is an esteemed faculty member specializing in Material Science.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Material Science</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2008-06-02', 'public', '', 1, ''),
('eb1b9cef4a0c4', 'Dr. Shams Chowdhury', 'default.jpg', 'Lecturer', '+8801794511690', 'dr._shams_chowdhury78@ce.kuet.ac.bd', 'URP', 'Coastal Engineering', '<p><strong>Dr. Shams Chowdhury</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2013-09-06', 'public', '', 0, ''),
('ed0a9d68a9b03', 'Dr. Rafi Ahmed', 'default.jpg', 'Lecturer', '+8801813617847', 'dr._rafi_ahmed9@ce.kuet.ac.bd', 'EEE', 'Environmental Engineering', '<p><strong>Dr. Rafi Ahmed</strong> is an esteemed faculty member specializing in Environmental Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Environmental Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2003-10-15', 'public', '', 1, ''),
('ed7f032e02742', 'Dr. Md. Ahmed', 'default.jpg', 'Associate Professor', '+8801922534356', 'dr._md._ahmed84@civil.edu.bd', 'CSE', 'Transportation Engineering', '<p><strong>Dr. Md. Ahmed</strong> is an esteemed faculty member specializing in Transportation Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Transportation Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2005-10-01', 'public', '', 0, ''),
('ef4a033df25cb', 'Dr. Abdul Hossain', 'default.jpg', 'Associate Professor', '+8801646295992', 'dr._abdul_hossain63@ce.kuet.ac.bd', 'CE', 'Structural Engineering', '<p><strong>Dr. Abdul Hossain</strong> is an esteemed faculty member specializing in Structural Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Structural Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2006-09-08', 'public', '', 0, ''),
('ef6a091d084bb', 'Dr. Hasan Islam', 'default.jpg', 'Professor', '+8801872210812', 'dr._hasan_islam58@faculty.com', 'CE', 'Earthquake Engineering', '<p><strong>Dr. Hasan Islam</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2003-05-14', 'public', '', 1, ''),
('f56a9c861a593', 'Dr. Nayeem Rahman', 'default.jpg', 'Assistant Professor', '+8801727406266', 'dr._nayeem_rahman61@faculty.com', 'EEE', 'Earthquake Engineering', '<p><strong>Dr. Nayeem Rahman</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2022-04-03', 'public', '', 0, ''),
('f93411cb911a4', 'Dr. Tariq Chowdhury', 'default.jpg', 'Associate Professor', '+8801938169672', 'dr._tariq_chowdhury34@faculty.com', 'CSE', 'Earthquake Engineering', '<p><strong>Dr. Tariq Chowdhury</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2020-09-01', 'public', '', 1, ''),
('fbcbea4e5564d', 'Dr. Arif Chowdhury', 'default.jpg', 'Associate Professor', '+8801853464509', 'dr._arif_chowdhury84@civil.edu.bd', 'CSE', 'Coastal Engineering', '<p><strong>Dr. Arif Chowdhury</strong> is an esteemed faculty member specializing in Coastal Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Coastal Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2010-07-18', 'public', '', 0, ''),
('fceacdfc96f9d', 'Dr. Hasan Hossain', 'default.jpg', 'Assistant Professor', '+8801839809945', 'dr._hasan_hossain78@faculty.com', 'EEE', 'Earthquake Engineering', '<p><strong>Dr. Hasan Hossain</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2020-07-01', 'public', '', 1, ''),
('fde0197529817', 'Dr. Md. Rahman', 'default.jpg', 'Associate Professor', '+8801617503728', 'dr._md._rahman26@univ.ac.bd', 'EEE', 'Earthquake Engineering', '<p><strong>Dr. Md. Rahman</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2008-08-01', 'public', '', 1, ''),
('fe1d3d393056f', 'Dr. Abdul Alam', 'default.jpg', 'Assistant Professor', '+8801683509818', 'dr._abdul_alam2@civil.edu.bd', 'EEE', 'Earthquake Engineering', '<p><strong>Dr. Abdul Alam</strong> is an esteemed faculty member specializing in Earthquake Engineering.</p>', '#', '#', '<p><strong>Ph.D. in Civil Engineering</strong></p><p>Renowned University, Year</p>', '<p><strong>Professor</strong></p><p>Department of Civil Engineering</p>', '<p>10+ publications in peer-reviewed journals.</p>', '<ul><li><strong>International Research Scholarship</strong></li></ul>', '<ul><li><strong>Earthquake Engineering</strong></li></ul>', '<p>#Course Conduction and Supervision</p>', '2015-07-22', 'public', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `general_info`
--

CREATE TABLE `general_info` (
  `id` int(1) NOT NULL,
  `history` text NOT NULL,
  `vision_mission` text NOT NULL,
  `organogram` text NOT NULL,
  `bec_at_a_glance` text NOT NULL,
  `bec_monogram` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_info`
--

INSERT INTO `general_info` (`id`, `history`, `vision_mission`, `organogram`, `bec_at_a_glance`, `bec_monogram`) VALUES
(1, 'HIS TORY OF BEC&nbsp;', '<div class=\"body-section mt-2 mb-2\">\r\n  <div class=\"container text-justfy mb-5\">\r\n    <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">The Vision Statement</h1>\r\n    <div class=\"row\">\r\n      <div class=\"d-flex\">\r\n        <div class=\"\">\r\n          <i class=\"fa-solid fa-diamond\"></i>\r\n        </div>\r\n        <div class=\"mission-vision-text ps-1\"> To be center of excellence in education, research, and innovation to meet the national and international requirements in engineering and technology. </div>\r\n      </div>\r\n    </div>\r\n    <h1 class=\"text-center text-center shadow-sm p-3 mb-5 mt-5  bg-light rounded\">The Mission Statement</h1>\r\n    <div class=\"row\">\r\n      <div class=\"d-flex\">\r\n        <div class=\"\">\r\n          <i class=\"fa-solid fa-diamond\"></i>\r\n        </div>\r\n        <div class=\"mission-vision-text ps-1\"> To create leaders in different branches of engineering and technology with high ethical standard and professionalism through its proper education, research, an innovation in a congenial environment. </div>\r\n      </div>\r\n      <div class=\"py-2\">\r\n        <div class=\"d-flex\">\r\n          <div class=\"\">\r\n            <i class=\"fa-solid fa-diamond\"></i>\r\n          </div>\r\n          <div class=\"ps-1\"> To play a leading role in the socio-economic, environmental, and technological development of the country. </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"\">\r\n        <div class=\"d-flex \">\r\n          <div class=\"\">\r\n            <i class=\"fa-solid fa-diamond\"></i>\r\n          </div>\r\n          <div class=\"ps-1\"> To undertake collaborative research and projects that offer opportunities for sustainable connectivity with academia and industry. </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', '', '<div class=\"body-section mt-2 mb-2\">\r\n    \r\n    <div class=\"container text-justfy mb-5\">\r\n        <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">BEC AT A GLANCE</h1>\r\n        <div class=\"\">\r\n            <table class=\"table table-bordered\" style=\"\">\r\n                <tbody class=\"\" style=\" face=\" arial\"=\"\"><tr>\r\n                  <td><p><font color=\"#000\">1</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Barishal Engineering College</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000000\">2018</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">2</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Initiation of Academic Activities</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">2018</font></p></td>\r\n                  </tr>\r\n                  \r\n                  \r\n                  <tr>\r\n                  <td><p><font color=\"#000\">5</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Campus Area</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">8 acre</font></p></td>\r\n                  </tr>\r\n                  <tr><td><p><font color=\"#000\">7</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Faculties</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">1</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">6</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Institutes</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03</font></p></td>\r\n                  </tr>\r\n                  <!-- <tr>\r\n                  <td><p><font color=\"#000\">7</p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Faculties</p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03</p></td>\r\n                  </tr> -->\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">8</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Departments</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">2</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">9</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Degrees Offered</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">B.Sc. Engg.</font></p></td>\r\n                  </tr>\r\n\r\n                  \r\n                  </tbody>\r\n            </table>\r\n        </div>\r\n\r\n    </div>\r\n\r\n  </div>', '');

-- --------------------------------------------------------

--
-- Table structure for table `head_message`
--

CREATE TABLE `head_message` (
  `id` varchar(20) NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `head_message`
--

INSERT INTO `head_message` (`id`, `dept_id`, `message`, `status`) VALUES
('1', 'ce', 'Dr. Abu Zakir Morshed\r\n\r\nWelcome to the Department of Civil Engineering. Nowadays, sustainable infrastructures are essential parts for the overall development of a nation and to make a country liveable.\r\n\r\nOur department is one of the most leading and prosperous branches of this university, as well as of this country. We do have a bunch of faculty members who are competitive in their research and teaching in different fields of Civil Engineering. Our department has a set of laboratories, which are enriched with modern equipments and facilities. We are dedicated to provide innovative and high-quality opportunities for our students to acquire the fundamental knowledge, skills and attitudes necessary for entry and success in the professional practice of Civil Engineering fields.\r\n\r\nGraduates from the Department of Civil Engineering are trained to think critically and able to conduct research/real work, both in self-regulating and collaborative environment. They are capable to solve challenging problems with innovative ideas, as well as, the technological challenges they need to address in the future. With our quality education, real problem based learning, and collaborative environment, our graduates have a multitude of options after graduation.\r\n\r\nThe prospects for Civil Engineers are exciting, and can appear forward to have success after receiving their degrees. We invite all of you to join in our family and explore the excellent opportunities in the department and contact us if you would like more information.\r\n\r\n\r\n\r\nDr. Abu Zakir Morshed\r\nProfessor and Head\r\nDepartment of Civil Engineering', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lab_list`
--

CREATE TABLE `lab_list` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `name_bn` text NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_list`
--

INSERT INTO `lab_list` (`id`, `name`, `name_bn`, `dept_id`, `status`) VALUES
(1, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '1', 1),
(2, 'Structural Engineering Labratory', ' ', '1', 1),
(3, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '2', 1),
(4, 'Structural Engineering Labratory', ' ', '2', 1),
(5, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '2', 1),
(6, 'Structural Engineering Labratory', ' ', '2', 1),
(7, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '6', 1),
(8, 'Structural Engineering Labratory', ' ', '3', 1),
(9, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '4', 1),
(10, 'Structural Engineering Labratory', ' ', '3', 1),
(11, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '5', 1),
(12, 'Structural Engineering Labratory', ' ', '6', 1),
(13, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '7', 1),
(14, 'Structural Engineering Labratory', ' ', '2', 1),
(15, 'Geo-Technical Engineeirng Labratory', 'জিওটেক ', '7', 1),
(16, 'Structural Engineering Labratory', ' ', '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `attempts` int(11) DEFAULT 0,
  `last_attempt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(25) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `status` enum('Success','Failed') NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `admin_id`, `email`, `ip_address`, `status`, `timestamp`) VALUES
(1, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:49:14'),
(2, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:49:19'),
(3, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:49:28'),
(4, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:49:55'),
(5, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:49:59'),
(6, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:50:02'),
(7, NULL, 'dhruborajroy3@gmail.com', '::1', 'Failed', '2025-01-18 13:50:35'),
(8, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:51:55'),
(9, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:53:29'),
(10, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:53:47'),
(11, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 13:55:29'),
(12, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:12:16'),
(13, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:12:29'),
(14, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:13:01'),
(15, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:13:33'),
(16, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:18:15'),
(17, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:20:12'),
(18, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:21:05'),
(19, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 14:25:40'),
(20, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 17:00:14'),
(21, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-18 17:00:32'),
(22, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-21 22:43:30'),
(23, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-23 19:58:57'),
(24, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-24 10:14:54'),
(25, '1', 'Dhruborajroy3@gmail.com', '172.29.41.164', 'Success', '2025-01-24 15:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `status`) VALUES
('67935d579e697', 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `dept` varchar(20) NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `added_by` varchar(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `details`, `dept`, `added_on`, `added_by`, `status`) VALUES
('67932ff349a', '1737700682.jpg', 'News', '<h1 style=\"text-align: left;\" class=\"\">What is Lorem Ipsum?</h1><p>\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting indust\'ry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</p>', 'CE', '1737699315', '1', 1),
('67933179446', '1737699705.jpg', 'NEWS 5', 'What is Lorem Ipsum?Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'CE', '1737699705', '1', 1),
('679331e019d', '1737699808.jpg', 'NEws 5', 'df', 'CE', '1737699808', '1', 1),
('6793630f3a9', '1737712399.jpg', 'TEST', '<p>LKBUYXCKNJM,/</p>', 'DEMO', '1737712399', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `dept` varchar(20) NOT NULL,
  `reference` text NOT NULL,
  `link` text NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `upload_status` int(3) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `details`, `dept`, `reference`, `link`, `added_on`, `updated_on`, `user_id`, `upload_status`, `status`) VALUES
('630078a5ef84d', 'Vacation!', 'All activities of Oporajeyo Ekattor Hall will be on hold from 01/10/2022 to 10/10/2022 Due to Durgapuja. From 11/10/2022 , all activities will continue as before.', 'EEE', 'বইক/ছাত্রাবাস/২০২২-০৯', '630078a5ef84d_1737203820.pdf', '1660975269', '1661542138', '1', 0, 1),
('630079a47c1b9', 'Appointment of new Meal Manager', '<p>New Meal Manager&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Name</td><td>Roll</td></tr><tr><td>Dhrubo</td><td>200130</td></tr></tbody></table></figure>', 'EEE', 'বইক/ছাত্রাবাস/২০২২-০৮', '630079a47c1b9_1737203819.pdf', '1660975524', '1661542338', '1', 0, 1),
('63090b99ae3c4', 'দূর্গাপূজা', 'আগামী ১ অক্টোবর থেকে ১০অক্টোবর দূর্গাপূজা উপলক্ষে হলের সকল কার্যক্রম বন্ধ থাকবে। ১১ অক্টোবর হতে পুনরায় সকল কার্যক্রম অব্যাহত থাকিবে।\r\n', 'CE', '01', '63090b99ae3c4_1737203818.pdf', '1661537177', '1661539974', '', 0, 1),
('63090c3006496', 'খাবারের নোটিশ  ', 'আগামী কাল মিলের সময় সূচী\r\nদুপুর _ ২-৩ টা\r\nরাত_৯-১০টা', 'EEE', '02', '63090c3006496_1737203817.pdf', '1661537328', '', '', 0, 1),
('630927ffd7a88', 'শীতকালীন অবকাশ ', '<ol><li>আগামী ১ ডিসেম্বর থেকে ১২ ডিসেম্বর পর্যন্ত হলের সকল কার্যক্রম বন্ধ থাকবে।</li><li>১৩ ডিসেম্বর থেকে সকল কার্যক্রম পুনরায় অব্যাহত থাকবে।</li></ol>', '', '05', '630927ffd7a88_1737203816.pdf', '1661544447', '', '1', 0, 1),
('630b408d4a4b4', 'Title', '<p>Demo</p>', '', 'বইক/ছাত্রাবাস/২০২২-০৮', '630b408d4a4b4_1737203814.pdf', '1661681805', '', '1', 0, 1),
('631b45772386f', 'sdfwekfn', '<p>wdfihio</p><ol><li>week</li><li>jwefh</li><li>efvn</li></ol>', '', 'sdjbsdj', '631b45772386f_1737203813.pdf', '1662731639', '', '1', 0, 1),
('6322f7a195081', 'ষ', '<p><i>গসকসকসকসকসহ</i></p>', '', 'হ ০১', '6322f7a195081_1737203811.pdf', '1663236001', '', '1', 0, 1),
('677ca91276175', '07 a 24 ta meye', '<p>bec 07 a 24 ta meye but sobai muslim</p>', '', '1 2 3 ', '677ca91276175_1737203810.pdf', '1736222994', '', '1', 0, 1),
('677ca914f184a', '07 a 24 ta meye', '<p>bec 07 a 24 ta meye but sobai muslim</p>', '', '1 2 3 ', '677ca914f184a_1737203809.pdf', '1736222996', '', '1', 0, 1),
('677cbcf46c238', 'নোটিশ ', '<p>এতদ্দ্বারা অত্র কলেজের ২০২৩-২০২৪ শিক্ষাবর্ষের ভর্তিকৃত শিক্ষার্থী সহ সকল শিক্ষার্থী, শিক্ষক কর্মকর্তা ও কর্মচারীদের অবগতির জন্য জানানো যাচ্ছে যে, অনিবার্য কারণ বশত আগামী ০৫.১২.২০২৪ খ্রিঃ তারিখের ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন প্রোগ্রাম আগামী ০৮/১২/২০২৪ খ্রিঃ তারিখে সকাল ১০:০০ ঘটিকার সময় অনুষ্ঠিত হবে। উক্ত অনুষ্ঠানে সংশ্লিষ্ট সকলকে যথাসময় উপস্থিত থাকতে বলা হলো।<br />\r\n<br />\r\nউল্লেখ্য, ০৮/১২/২০২৪ খ্রিঃ তারিখে ২০২৩-২০২৪ শিক্ষাবর্ষের ক্লাস শুরু করা হবে।<br />\r\n&nbsp;</p>\r\n', '', 'বইক ', '677cbcf46c238_1737696653.pdf', '1736228084', '1737179079', '1', 0, 1),
('677ccf0e24b07', 'sdf', '', '', 'sdf', '677ccf0e24b07_1737203806.pdf', '1736232718', '', '1', 0, 1),
('677ccf1a80476', 'sdf', '', '', 'sdf', '677ccf1a80476_1737660584.pdf', '1736232730', '', '1', 0, 1),
('677cd36bb1105', ' ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন সংক্রান্ত।', '<p style=\"text-align:center\">এতদ্দ্বারা অত্র কলেজের ২০২৩-২০২৪ শিক্ষাবর্ষের ভর্তিকৃত শিক্ষার্থী সহ সকল শিক্ষার্থী, শিক্ষক কর্মকর্তা ও কর্মচারীদের অবগতির জন্য জানানো যাচ্ছে যে, অনিবার্য কারণ বশত আগামী ০৫.১২.২০২৪ খ্রিঃ তারিখের ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন প্রোগ্রাম আগামী ০৮/১২/২০২৪ খ্রিঃ তারিখে সকাল ১০:০০ ঘটিকার সময় অনুষ্ঠিত হবে। উক্ত অনুষ্ঠানে সংশ্লিষ্ট সকলকে যথাসময় উপস্থিত থাকতে বলা হলো।<br />\r\n<br />\r\nউল্লেখ্য, ০৮/১২/২০২৪ খ্রিঃ তারিখে ২০২৩-২০২৪ শিক্ষাবর্ষের ক্লাস শুরু করা হবে।</p>\r\n', '', '৫৭,০৩,০৬০০,০০০,১৮.০০৭.২২-১০১০', '677cd36bb1105_1737657934.pdf', '1736233835', '1736391225', '1', 0, 1),
('678b927f2f564', 'sdsdv', '<p>sdffdv</p>\r\n', '', 'sdgf', '678b927f2f564_1737203802.pdf', '1737200255', '', '1', 0, 1),
('678bb222ebe9c', '1', '<p>1</p>\r\n', '', 'বইক 1', '678bb222ebe9c_1737208355.pdf', '1737208354', '', '1', 0, 1),
('67928d0a71fba', 'tttttttttttttttttt', '', '', '', '67928d0a71fba_1737657610.pdf', '1737657610', '', '1', 1, 1),
('67928db729fc1', 'ggggggggggggggggggg', '<h1 class=\"\">sdddddd</h1>', '', 'sssssssss', '67928db729fc1_1737657783.pdf', '1737657783', '1737658293', '1', 1, 1),
('679290303d3b3', 'ew', '<h1 class=\"\">h1</h1><p>h2</p>', '', 'new', '679290303d3b3_1737658505.pdf', '1737658416', '1737658442', '1', 0, 1),
('679290a3372a8', 'nnn', '<p><img src=\"data:image/jpeg;base64,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\" style=\"width: 320px;\" data-filename=\"302833c5-2b39-46d1-9f75-32b4476c9845.jpeg\"><br></p>', '', 'new 2', '679290a3372a8_1737697266.pdf', '1737658531', '', '1', 0, 1),
('6793600a775a3', '২০২৪-২০২৫ শিক্ষাবর্ষে ভর্তির বিজ্ঞপ্তি', 'কেউ ভালোবাসেনি', '', 'Test', '6793600a775a3_1737711626.pdf', '1737711626', '', '1', 0, 1),
('6793609e81526', '২০২৪-২০২৫ শিক্ষাবর্ষে ভর্তির বিজ্ঞপ্তি', '', '', '', '6793609e81526_1737711774.pdf', '1737711774', '', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice_referance`
--

CREATE TABLE `notice_referance` (
  `id` varchar(20) NOT NULL,
  `notice_id` varchar(20) NOT NULL,
  `referance_id` varchar(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice_referance`
--

INSERT INTO `notice_referance` (`id`, `notice_id`, `referance_id`, `status`) VALUES
('677cf3cf93b63', '677cf3cf9356b', '677cea5825d80', 0),
('677cf3cf93b63', '677cf3cf9356b', '677ceafcacdae', 0),
('677cf3cf93b63', '677cf3cf9356b', 'dfbddb', 0),
('677cf3d46432d', '677cf3d463d5e', '677cea5825d80', 0),
('677cf3d46432d', '677cf3d463d5e', '677ceafcacdae', 0),
('677cf3d46432d', '677cf3d463d5e', 'dfbddb', 0),
('', '677cf097e5c75', 'dfbddb', 1),
('677cf665eb801', '677cf097e5c75', 'dfbddb', 1),
('677cf69febccb', '677cf097e5c75', '677cea5825d80', 1),
('677cf6c04e8b7', '677cf097e5c75', '677cea5825d80', 1),
('677cf6c04e8b7', '677cf097e5c75', '677ceafcacdae', 1),
('677cf6c04e8b7', '677cf097e5c75', 'dfbddb', 1),
('677cf6c04e8b7', '677cf097e5c75', 'dfbdfbergfdrv', 1),
('677cf6c04e8b7', '677cf097e5c75', 'dfdfbfdgdfg', 1),
('677cf6c04e8b7', '677cf097e5c75', 'dfeggegxdv', 1),
('677cf6c04e8b7', '677cf097e5c75', 'dfgddfv', 1),
('677cf6c04e8b7', '677cf097e5c75', 'DFGDFVDFBB', 1),
('677cf6c04e8b7', '677cf097e5c75', 'fdgdfg', 1),
('677cf8d8b1e78', '677cf3d463d5e', 'dfbdfbergfdrv', 1),
('677cfa2b3690c', '677cf3d463d5e', 'dfgddfv', 1),
('677f3a394a408', '677cd36bb1105', '677cea5825d80', 1),
('677f3a394a8f1', '677cd36bb1105', 'dfbddb', 1),
('677f3a394ade7', '677cd36bb1105', 'dfbdfbergfdrv', 1),
('677f3a394b2ca', '677cd36bb1105', 'dfdfbfdgdfg', 1),
('677f3a394c0b7', '677cd36bb1105', 'dfgddfv', 1),
('677f3a394c575', '677cd36bb1105', 'DFGDFVDFBB', 1),
('677f3a394c9cf', '677cd36bb1105', 'fdgdfg', 1),
('678b3f624fa8b', '677cbcf46c238', 'dfeggegxdv', 1),
('678b3f6250b96', '677cbcf46c238', 'dfgddfv', 1),
('678b927f30ebb', '678b927f2f564', 'dfgddfv', 1),
('678b927f316bc', '678b927f2f564', 'DFGDFVDFBB', 1),
('678bb222ed506', '678bb222ebe9c', '677cea5825d80', 1),
('678bb222eecd8', '678bb222ebe9c', 'dfbddb', 1),
('678bb222f0684', '678bb222ebe9c', 'dfbdfbergfdrv', 1),
('678bb222f0c53', '678bb222ebe9c', 'dfdfbfdgdfg', 1),
('678bb222f11f3', '678bb222ebe9c', 'dfgddfv', 1),
('67928f4da3ea7', '67928db729fc1', 'dfgddfv', 1),
('67928f4da4ad8', '67928db729fc1', 'fdgdfg', 1),
('67928f4da5335', '67928db729fc1', 'dfbdfbergfdrv', 1),
('67928f4da5a1c', '67928db729fc1', 'DFGDFVDFBB', 1),
('679290303e892', '679290303d3b3', 'DFGDFVDFBB', 1),
('6792904aae6d3', '679290303d3b3', 'dfgddfv', 1),
('6792904aaeeec', '679290303d3b3', 'fdgdfg', 1),
('6792904aaf48f', '679290303d3b3', 'dfbddb', 1),
('6792904aafa61', '679290303d3b3', '677cea5825d80', 1),
('6792904ab00b0', '679290303d3b3', '677ceafcacdae', 1),
('6792904ab07b9', '679290303d3b3', 'dfdfbfdgdfg', 1),
('6792904ab1d15', '679290303d3b3', 'dfbdfbergfdrv', 1),
('6792904ab249f', '679290303d3b3', 'dfeggegxdv', 1),
('679290a3388dc', '679290a3372a8', 'dfgddfv', 1),
('679290a338f35', '679290a3372a8', 'fdgdfg', 1),
('679290a33951a', '679290a3372a8', 'dfbddb', 1),
('679290a339b2f', '679290a3372a8', '677cea5825d80', 1),
('679290a33a12e', '679290a3372a8', '677ceafcacdae', 1),
('679290a33b861', '679290a3372a8', 'dfdfbfdgdfg', 1),
('679290a33bf73', '679290a3372a8', 'dfbdfbergfdrv', 1),
('679290a33c719', '679290a3372a8', 'DFGDFVDFBB', 1),
('679290a33ce9a', '679290a3372a8', 'dfeggegxdv', 1),
('6793600a7b25f', '6793600a775a3', 'dfgddfv', 1),
('6793600a7bc62', '6793600a775a3', 'fdgdfg', 1),
('6793600a7c533', '6793600a775a3', '677cea5825d80', 1);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `bio` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linked_in` varchar(255) DEFAULT NULL,
  `education` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `joined_at` date NOT NULL,
  `visibility` enum('public','private') DEFAULT 'public',
  `status` enum('active','inactive','retired') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `name`, `image`, `designation`, `phone`, `email`, `dept`, `bio`, `facebook`, `linked_in`, `education`, `experience`, `type`, `joined_at`, `visibility`, `status`) VALUES
('677d27ac4b681', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'ce', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Masters of Engineering in Civil Engineering (2015)</strong></p><p>The University of Asia Pacific, Dhaka, Bangladesh.</p><p>&nbsp;</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', 'faculty', '2018-06-07', 'public', ''),
('677d4edca3a2c', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'ce', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', 'faculty', '2018-06-07', 'public', 'active'),
('677d4f0f2bdde', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'ce', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', 'faculty', '2018-06-07', 'public', 'active'),
('677d4f74a7ebd', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'eee', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', 'faculty', '2018-06-07', 'public', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `referances`
--

CREATE TABLE `referances` (
  `id` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `priority` int(3) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referances`
--

INSERT INTO `referances` (`id`, `name`, `priority`, `status`) VALUES
('677cea5825d80', 'জনাব লিটন রাব্বানী, অধ্যক্ষ(অতিরিক্ত দায়িত্ব) , বরিশাল ইঞ্জিনিয়ারিং কলেজ', 3, 1),
('677ceafcacdae', 'জনাব লিটন রাব্বানী,অধ্যক্ষ,বরিশাল ইঞ্জিনিয়ারিং কলেজ', 4, 1),
('dfbddb', 'বিভাগীয় প্রধান: সকল, অত্র কলেজ।', 5, 1),
('dfbdfbergfdrv', 'সংরক্ষণ নথি।', 9, 1),
('dfdfbfdgdfg', ' শাখা প্রধান: সকল, অত্র কলেজ।', 6, 1),
('dfeggegxdv', 'জনাব লিটন রাব্বানী', 7, 1),
('dfgddfv', 'মহাপরিচালক, কারিগরি শিক্ষা অধিদপ্তর, আগারগাঁও, শেরেবাংলা নগর, ঢাকা-১২০৭।', 1, 1),
('DFGDFVDFBB', 'নোটিশ বোর্ড: সকল, অত্র কলেজ।', 8, 1),
('fdgdfg', 'পরিচালক (প্রশাসন), কারিগরি শিক্ষা অধিদপ্তর, আগারগাঁও, শেরেবাংলা নগর, ঢাকা-১২০৭।', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_details`
--

CREATE TABLE `site_details` (
  `id` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `site_logo` text NOT NULL,
  `bd_logo` text NOT NULL,
  `email` text NOT NULL,
  `smtp_username` varchar(50) NOT NULL,
  `smtp_password` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `signature_name` text NOT NULL,
  `signature_image` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `facebook_link` text NOT NULL,
  `twitter_link` text NOT NULL,
  `youtube_link` text NOT NULL,
  `instagram_link` text NOT NULL,
  `short_details` varchar(255) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_details`
--

INSERT INTO `site_details` (`id`, `name`, `site_logo`, `bd_logo`, `email`, `smtp_username`, `smtp_password`, `address`, `signature_name`, `signature_image`, `phone`, `facebook_link`, `twitter_link`, `youtube_link`, `instagram_link`, `short_details`, `updated_on`, `status`) VALUES
('1', '\nগণপ্রজাতন্ত্রী বাংলাদেশ সরকার \n<br>\nঅধ্যক্ষের কার্যালয়\n<br>\nবরিশাল ইঞ্জিনিয়ারিং কলেজ', '../images/gallery/logo.png', '../images/bd.png', 'contact@bec.edu.com', 'hackerdhrubo99@gmail.com', 'xnkbvrpvlmedwgtl', 'দুর্গাপুর, বরিশাল', 'জনাব মোঃ লিটন রাব্বানী <br> অধ্যক্ষ(অতিরিক্ত দায়িত্ব) <br> বরিশাল ইঞ্জিনিয়ারিং কলেজ', 'https://static.vecteezy.com/system/resources/thumbnails/023/264/092/small_2x/fake-hand-drawn-autographs-set-handwritten-signature-scribble-for-business-certificate-or-letter-isolated-illustration-vector.jpg', '০১৭০৫৫৫৫৫৫৫৫', '#', '#', '#', '#', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris</p>', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `button_text` varchar(20) NOT NULL,
  `button_link` text NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `added_on` varchar(15) NOT NULL,
  `updated_on` varchar(15) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `sub_title`, `button_text`, `button_link`, `added_by`, `added_on`, `updated_on`, `status`) VALUES
('644418d0c8a24', '2.jpg', '', '', 'Get Started', '#', '1', '1682184400', '1737045928', 1),
('677b8d3942950', '1.png', ' ', ' ', ' ', ' ', '1', '1736150329', '', 1),
('677bf78cda77b', '1736177548.jpg', '', '', '', '', '1', '1736177548', '', 1),
('67935b5b4e7c0', '1737710427.jpg', 'test', 'check', 'demo', 'https://bn.wikipedia.org/wiki/%E0%A7%A8%E0%A7%A6%E0%A7%A7%E0%A7%AE-%E0%A6%8F_%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6%E0%A7%87_%E0%A6%95%E0%A7%8B%E0%A6%9F%E0%A6%BE_%E0%A6%B8%E0%A6%82%E0%A6%B8%E0%A7%8D%E0%A6%95%E0%A6%BE%E0%A6%B0_%E0%A6%86%E0%A6%A8%E0%A7%8D%E0%A6%A6%E0%A7%8B%E0%A6%B2%E0%A6%A8', '1', '1737710427', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `study_period` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `father_name`, `reg_no`, `session`, `study_period`, `image`) VALUES
('2', 'John Doe', 'Dewan Osman Goni', '2025', '2018-19', 'March 2019 to December 2024', 'uploads/photo2.jpg'),
('3', 'Md. Imtiaz Faruk Rafid', 'Dewan Osman Goni', '1958', '2017-18', 'February 2018 to September 2023', 'uploads/photo1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` varchar(20) NOT NULL,
  `menu_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `menu_id`, `name`, `status`) VALUES
('677c09ebbd7da', '677c01f572783', '', 1),
('677c0a3f57a62', '677c09660d0b3', '', 1),
('677c0a5d5c31a', '677c09660d0b3', 'cvb', 1),
('677c20cfb6078', '677c09660d0b3', 'cvbc', 1),
('677c20d23100a', '677c09660d0b3', 'cvbcv', 1),
('677c20d3a387a', '677c09660d0b3', 'cvbcvd', 1),
('677c20d62aef6', '677c013fd247f', 'cvbcvd', 1),
('677c20d7bc99e', '677c013fd247f', 'cvbddcvd', 1),
('677c20d8e7dbd', '677c013fd247f', 'cvbddcvfd', 1),
('677c220ad301e', '677c214080922', 'sf', 1),
('677c2ad97b448', '677c2ac74af0a', 'Faculty', 1),
('677c2ae46ba64', '677c2ac74af0a', 'Staff', 1),
('677d4e1ea8030', '677d4e0da4275', 'cvbcvd', 1),
('677d4e23a7794', '677d4e0da4275', 'cvbcvd', 1),
('67935d681ae7b', '67935d579e697', 'Demo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `useful_links`
--

CREATE TABLE `useful_links` (
  `id` varchar(20) NOT NULL,
  `link_text` text NOT NULL,
  `link` text NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `visibility` int(2) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useful_links`
--

INSERT INTO `useful_links` (`id`, `link_text`, `link`, `added_on`, `updated_on`, `added_by`, `visibility`, `status`) VALUES
('6444d47453a0d', 'Join Us', 'http://sdl.c', '1682232436', '', '1', 1, 1),
('6444d4fa9cd76', 'About Us', 'http://sdl.c', '1682232570', '', '1', 1, 1),
('6444d502d53ea', 'Features', 'http://sdl.c', '1682232578', '', '1', 1, 1),
('6444d50c77b6a', 'Feedback', 'http://sdl.c', '1682232588', '', '1', 1, 1),
('6444d5145ec5b', 'Support center', 'http://sdl.c', '1682232596', '', '1', 1, 1),
('6444d51db4223', 'Contact Us', 'http://sdl.c', '1682232605', '', '1', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depts_lab_list`
--
ALTER TABLE `depts_lab_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_general_info`
--
ALTER TABLE `dept_general_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dept_sliders`
--
ALTER TABLE `dept_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_info`
--
ALTER TABLE `general_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_list`
--
ALTER TABLE `lab_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip_address` (`ip_address`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referances`
--
ALTER TABLE `referances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_details`
--
ALTER TABLE `site_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `depts_lab_list`
--
ALTER TABLE `depts_lab_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `general_info`
--
ALTER TABLE `general_info`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lab_list`
--
ALTER TABLE `lab_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
