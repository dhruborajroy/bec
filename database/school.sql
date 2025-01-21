-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 07:22 PM
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
('1', 'CE', 'Publication What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nReseatch Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active');

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
('677d27ac4b681', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'CE', 'Structural and Material Engineering', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Masters of Engineering in Civil Engineering (2015)</strong></p><p>The University of Asia Pacific, Dhaka, Bangladesh.</p><p>&nbsp;</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', '<p>12. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1080/13287982.2022.2156167\">(2022) , \" Shear strengthening design of pre-cracked reinforced concrete beams using bonded and bolted steel plates,\"&nbsp;<i><strong>Australian Journal of Structural Engineering</strong></i>, Taylor &amp; Francis</a></p><p>11. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1108/MMMS-12-2021-0208\">Shakib,S. , Morshed,A. Z. , Kholil,M. I. and Hossain,M. A. (2022) , \" Simulation of reinforced concrete beam retrofitted with steel angles subjected to flexure,\"&nbsp;<i><strong>Multidiscipline Modeling in Materials and Structures</strong></i>, Emerald Publishing Limited, vol18, no.2, pp.351-369</a></p><p>&nbsp;</p><p>9. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.5267/j.esm.2019.9.001\">Shakib,S. ,Morshed,A. Z. and Ali,a. M. H. (2020) , \" Experimental and Numerical Simulation of Corrosion Induced Expansive Pressure on Concrete Cover,\"&nbsp;<i><strong>Engineering Solid Mechanics</strong></i>, vol8, no.1, pp.21-30</a></p><p>&nbsp;</p>', '<ul><li><strong>\"McGill Engineering Doctoral Award\" (MEDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>\"McGill International Doctoral Award\" (MIDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Asian Development Bank - Japan Scholoarship Program (ADB-JSP) for M.Sc. Engineering programme at Tokoy University, Japan.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Merit order scholarships throughout the 4 yrs study of B.Sc. Engineering at BIT Khulna (KUET), Bangladesh.</strong></li></ul>', '<ul><li><strong>Structural and Material Engineering</strong></li></ul><p>&gt; Cement &amp; concrete technology&nbsp;</p><p>&gt; Accelerated curing of cement-based precast products&nbsp;</p><p>&gt; Recycling and reuse of demolished building wastes&nbsp;</p><p>&gt; Environment friendly building materials&nbsp;</p><p>&gt; Durability design of reinforced concrete structures&nbsp;</p><p>&gt; Structural design of high-rise buildings&nbsp;</p><p>&gt; Capacity assessment of existing structures &gt; Renovation and retrofitting of old structures.</p>', '<p>#Course Conduction</p><h3>Degree Awarded (M. Sc. Engineering)</h3><p>1. Rehabilitation and Flexural Strengthening of Reinforced Concrete Beams using External Steel Reinforcement (January 2019)</p><p>2. Experimental Investigation and Numerical Modeling of Corrosion Induced Expansive Pressure on Concrete Cover in Reinforce Concrete (November 2018)</p><h3>On going (M. Sc. Engineering)</h3><p>1. Shear Strengthening of Reinforced Concrete Beams using External Steel Reinforcement.</p><p>2. Chloride and Sulfate Resistance Durability Assessment of Portland Composite Cement.</p><p>#Course Supervision</p><p>CE 3113 Reinforced Concrete Structures - I</p><p>CE 3213 Reinforced Concrete Structures - II</p><p><br>&nbsp;</p><p>CE 4112 Sessional on Structural Analysis &amp; Design-II</p><p>CE 4210 Sessional on Structural Analysis &amp; Design-IV</p><p>CE 4211 Prestressed Concrete<br>&nbsp;</p><p><br>&nbsp;</p>', '2018-06-07', 'public', '', 1, ''),
('677d4edca3a2c', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'EEE', 'Structural and Material Engineering', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', '<p>12. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1080/13287982.2022.2156167\">(2022) , \" Shear strengthening design of pre-cracked reinforced concrete beams using bonded and bolted steel plates,\"&nbsp;<i><strong>Australian Journal of Structural Engineering</strong></i>, Taylor &amp; Francis</a></p><p>11. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1108/MMMS-12-2021-0208\">Shakib,S. , Morshed,A. Z. , Kholil,M. I. and Hossain,M. A. (2022) , \" Simulation of reinforced concrete beam retrofitted with steel angles subjected to flexure,\"&nbsp;<i><strong>Multidiscipline Modeling in Materials and Structures</strong></i>, Emerald Publishing Limited, vol18, no.2, pp.351-369</a></p><p>&nbsp;</p><p>9. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.5267/j.esm.2019.9.001\">Shakib,S. ,Morshed,A. Z. and Ali,a. M. H. (2020) , \" Experimental and Numerical Simulation of Corrosion Induced Expansive Pressure on Concrete Cover,\"&nbsp;<i><strong>Engineering Solid Mechanics</strong></i>, vol8, no.1, pp.21-30</a></p><p>&nbsp;</p>', '<ul><li><strong>\"McGill Engineering Doctoral Award\" (MEDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>\"McGill International Doctoral Award\" (MIDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Asian Development Bank - Japan Scholoarship Program (ADB-JSP) for M.Sc. Engineering programme at Tokoy University, Japan.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Merit order scholarships throughout the 4 yrs study of B.Sc. Engineering at BIT Khulna (KUET), Bangladesh.</strong></li></ul>', '<ul><li><strong>Structural and Material Engineering</strong></li></ul><p>&gt; Cement &amp; concrete technology&nbsp;</p><p>&gt; Accelerated curing of cement-based precast products&nbsp;</p><p>&gt; Recycling and reuse of demolished building wastes&nbsp;</p><p>&gt; Environment friendly building materials&nbsp;</p><p>&gt; Durability design of reinforced concrete structures&nbsp;</p><p>&gt; Structural design of high-rise buildings&nbsp;</p><p>&gt; Capacity assessment of existing structures &gt; Renovation and retrofitting of old structures.</p>', '<p>#Course Conduction</p><h3>Degree Awarded (M. Sc. Engineering)</h3><p>1. Rehabilitation and Flexural Strengthening of Reinforced Concrete Beams using External Steel Reinforcement (January 2019)</p><p>2. Experimental Investigation and Numerical Modeling of Corrosion Induced Expansive Pressure on Concrete Cover in Reinforce Concrete (November 2018)</p><h3>On going (M. Sc. Engineering)</h3><p>1. Shear Strengthening of Reinforced Concrete Beams using External Steel Reinforcement.</p><p>2. Chloride and Sulfate Resistance Durability Assessment of Portland Composite Cement.</p><p>#Course Supervision</p><p>CE 3113 Reinforced Concrete Structures - I</p><p>CE 3213 Reinforced Concrete Structures - II</p><p><br>&nbsp;</p><p>CE 4112 Sessional on Structural Analysis &amp; Design-II</p><p>CE 4210 Sessional on Structural Analysis &amp; Design-IV</p><p>CE 4211 Prestressed Concrete<br>&nbsp;</p><p><br>&nbsp;</p>', '2018-06-07', 'public', '', 0, 'active'),
('677d4f0f2bdde', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'CE', 'Structural and Material Engineering', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', '<p>12. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1080/13287982.2022.2156167\">(2022) , \" Shear strengthening design of pre-cracked reinforced concrete beams using bonded and bolted steel plates,\"&nbsp;<i><strong>Australian Journal of Structural Engineering</strong></i>, Taylor &amp; Francis</a></p><p>11. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1108/MMMS-12-2021-0208\">Shakib,S. , Morshed,A. Z. , Kholil,M. I. and Hossain,M. A. (2022) , \" Simulation of reinforced concrete beam retrofitted with steel angles subjected to flexure,\"&nbsp;<i><strong>Multidiscipline Modeling in Materials and Structures</strong></i>, Emerald Publishing Limited, vol18, no.2, pp.351-369</a></p><p>&nbsp;</p><p>9. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.5267/j.esm.2019.9.001\">Shakib,S. ,Morshed,A. Z. and Ali,a. M. H. (2020) , \" Experimental and Numerical Simulation of Corrosion Induced Expansive Pressure on Concrete Cover,\"&nbsp;<i><strong>Engineering Solid Mechanics</strong></i>, vol8, no.1, pp.21-30</a></p><p>&nbsp;</p>', '<ul><li><strong>\"McGill Engineering Doctoral Award\" (MEDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>\"McGill International Doctoral Award\" (MIDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Asian Development Bank - Japan Scholoarship Program (ADB-JSP) for M.Sc. Engineering programme at Tokoy University, Japan.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Merit order scholarships throughout the 4 yrs study of B.Sc. Engineering at BIT Khulna (KUET), Bangladesh.</strong></li></ul>', '<ul><li><strong>Structural and Material Engineering</strong></li></ul><p>&gt; Cement &amp; concrete technology&nbsp;</p><p>&gt; Accelerated curing of cement-based precast products&nbsp;</p><p>&gt; Recycling and reuse of demolished building wastes&nbsp;</p><p>&gt; Environment friendly building materials&nbsp;</p><p>&gt; Durability design of reinforced concrete structures&nbsp;</p><p>&gt; Structural design of high-rise buildings&nbsp;</p><p>&gt; Capacity assessment of existing structures &gt; Renovation and retrofitting of old structures.</p>', '<p>#Course Conduction</p><h3>Degree Awarded (M. Sc. Engineering)</h3><p>1. Rehabilitation and Flexural Strengthening of Reinforced Concrete Beams using External Steel Reinforcement (January 2019)</p><p>2. Experimental Investigation and Numerical Modeling of Corrosion Induced Expansive Pressure on Concrete Cover in Reinforce Concrete (November 2018)</p><h3>On going (M. Sc. Engineering)</h3><p>1. Shear Strengthening of Reinforced Concrete Beams using External Steel Reinforcement.</p><p>2. Chloride and Sulfate Resistance Durability Assessment of Portland Composite Cement.</p><p>#Course Supervision</p><p>CE 3113 Reinforced Concrete Structures - I</p><p>CE 3213 Reinforced Concrete Structures - II</p><p><br>&nbsp;</p><p>CE 4112 Sessional on Structural Analysis &amp; Design-II</p><p>CE 4210 Sessional on Structural Analysis &amp; Design-IV</p><p>CE 4211 Prestressed Concrete<br>&nbsp;</p><p><br>&nbsp;</p>', '2018-06-07', 'public', '', 0, 'active'),
('677d4f74a7ebd', 'Dr. Abu Zakir Morshedss', 'rabbani.jpg', 'Professor ', ' +88041769471', 'azmorshed@ce.kuet.ac.bd', 'CE', 'Structural and Material Engineering', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', '<p>12. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1080/13287982.2022.2156167\">(2022) , \" Shear strengthening design of pre-cracked reinforced concrete beams using bonded and bolted steel plates,\"&nbsp;<i><strong>Australian Journal of Structural Engineering</strong></i>, Taylor &amp; Francis</a></p><p>11. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1108/MMMS-12-2021-0208\">Shakib,S. , Morshed,A. Z. , Kholil,M. I. and Hossain,M. A. (2022) , \" Simulation of reinforced concrete beam retrofitted with steel angles subjected to flexure,\"&nbsp;<i><strong>Multidiscipline Modeling in Materials and Structures</strong></i>, Emerald Publishing Limited, vol18, no.2, pp.351-369</a></p><p>&nbsp;</p><p>9. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.5267/j.esm.2019.9.001\">Shakib,S. ,Morshed,A. Z. and Ali,a. M. H. (2020) , \" Experimental and Numerical Simulation of Corrosion Induced Expansive Pressure on Concrete Cover,\"&nbsp;<i><strong>Engineering Solid Mechanics</strong></i>, vol8, no.1, pp.21-30</a></p><p>&nbsp;</p>', '<ul><li><strong>\"McGill Engineering Doctoral Award\" (MEDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>\"McGill International Doctoral Award\" (MIDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Asian Development Bank - Japan Scholoarship Program (ADB-JSP) for M.Sc. Engineering programme at Tokoy University, Japan.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Merit order scholarships throughout the 4 yrs study of B.Sc. Engineering at BIT Khulna (KUET), Bangladesh.</strong></li></ul>', '<ul><li><strong>Structural and Material Engineering</strong></li></ul><p>&gt; Cement &amp; concrete technology&nbsp;</p><p>&gt; Accelerated curing of cement-based precast products&nbsp;</p><p>&gt; Recycling and reuse of demolished building wastes&nbsp;</p><p>&gt; Environment friendly building materials&nbsp;</p><p>&gt; Durability design of reinforced concrete structures&nbsp;</p><p>&gt; Structural design of high-rise buildings&nbsp;</p><p>&gt; Capacity assessment of existing structures &gt; Renovation and retrofitting of old structures.</p>', '<p>#Course Conduction</p><h3>Degree Awarded (M. Sc. Engineering)</h3><p>1. Rehabilitation and Flexural Strengthening of Reinforced Concrete Beams using External Steel Reinforcement (January 2019)</p><p>2. Experimental Investigation and Numerical Modeling of Corrosion Induced Expansive Pressure on Concrete Cover in Reinforce Concrete (November 2018)</p><h3>On going (M. Sc. Engineering)</h3><p>1. Shear Strengthening of Reinforced Concrete Beams using External Steel Reinforcement.</p><p>2. Chloride and Sulfate Resistance Durability Assessment of Portland Composite Cement.</p><p>#Course Supervision</p><p>CE 3113 Reinforced Concrete Structures - I</p><p>CE 3213 Reinforced Concrete Structures - II</p><p><br>&nbsp;</p><p>CE 4112 Sessional on Structural Analysis &amp; Design-II</p><p>CE 4210 Sessional on Structural Analysis &amp; Design-IV</p><p>CE 4211 Prestressed Concrete<br>&nbsp;</p><p><br>&nbsp;</p>', '2018-06-07', 'public', '', 0, 'active');

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
(1, 'HISTORY OF BEC\r\nKhulna University of Engineering & Technology has a background of historical significance. Although this institution has completed an era as university, its laying foundation began 49 years ago. This university was established in 1967 as ‘Khulna Engineering College’ under the University of Rajshahi. But during the period of liberation war the development activities of the Erstwhile Engineering College was suspended. After the Independence of Bangladesh in the year of 1971, the development works were started again in swing full. Overcoming all the constraints, the academic activities of the institute were virtually started from June 03, 1974. Despite some limitations, the college was affiliated as a faculty of Engineering under Rajshahi University. The academic and the administrative activities were controlled by the university authority and the Ministry of Education, respectively. The physical infrastructures were constructed by the public works department, while teacher recruitment was accomplished through Public Service Commission. Owing to multiple authorities, the co-ordination became complicated and hence the college authority faced many problems to run it smoothly. Even the admission of new students was stopped in one session due to the scarcity of teachers. In these circumstances, through a collective effort organized by the students, teachers, officers, staff and professional bodies, the four Engineering Colleges of the country including Khulna Engineering College were converted into autonomous Institutes named as Bangladesh Institute of Technology (BIT) from July 01, 1986. In a new mood with a lot of hope and enthusiasm, BIT, Khulna started its journey to overcome the existing limitations to make this institute as the ‘Centre of Excellence’ in the south western region of Bangladesh. However, the nation’s demand to develop engineering education in real sense was not fulfilled. Though BIT was converted to an autonomous Institution, the authority failed to take decisions regarding administrative, financial and academic activities due to complicated systems. Hence all BITs started a massive campaign to materialize the demand for proper autonomy as the public university enjoys. However, finally in order to fulfil the aspirations of the people and to suit to the demand of the Modern age, the government of the People’s Republic of Bangladesh decided to convert and upgrade these four BITs into universities of Engineering & Technology. Accordingly BIT, Khulna became Khulna University of Engineering & Technology with the other BITs as per act passed by the National Parliament effective from September 01, 2003.', '<div class=\"body-section mt-2 mb-2\">\r\n  <div class=\"container text-justfy mb-5\">\r\n    <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">The Vision Statement</h1>\r\n    <div class=\"row\">\r\n      <div class=\"d-flex\">\r\n        <div class=\"\">\r\n          <i class=\"fa-solid fa-diamond\"></i>\r\n        </div>\r\n        <div class=\"mission-vision-text ps-1\"> To be center of excellence in education, research, and innovation to meet the national and international requirements in engineering and technology. </div>\r\n      </div>\r\n    </div>\r\n    <h1 class=\"text-center text-center shadow-sm p-3 mb-5 mt-5  bg-light rounded\">The Mission Statement</h1>\r\n    <div class=\"row\">\r\n      <div class=\"d-flex\">\r\n        <div class=\"\">\r\n          <i class=\"fa-solid fa-diamond\"></i>\r\n        </div>\r\n        <div class=\"mission-vision-text ps-1\"> To create leaders in different branches of engineering and technology with high ethical standard and professionalism through its proper education, research, an innovation in a congenial environment. </div>\r\n      </div>\r\n      <div class=\"py-2\">\r\n        <div class=\"d-flex\">\r\n          <div class=\"\">\r\n            <i class=\"fa-solid fa-diamond\"></i>\r\n          </div>\r\n          <div class=\"ps-1\"> To play a leading role in the socio-economic, environmental, and technological development of the country. </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"\">\r\n        <div class=\"d-flex \">\r\n          <div class=\"\">\r\n            <i class=\"fa-solid fa-diamond\"></i>\r\n          </div>\r\n          <div class=\"ps-1\"> To undertake collaborative research and projects that offer opportunities for sustainable connectivity with academia and industry. </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>', '     <div class=\"body-section mt-2 mb-2\">       <div class=\"container mb-5\">         <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">BEC Organogram</h1>         <div class=\"row\">           <img src=\"images/gallery/BEC_Organogram.jpg\" alt=\"image\" class=\"\">         </div>       </div>     </div>', '<div class=\"body-section mt-2 mb-2\">\r\n    \r\n    <div class=\"container text-justfy mb-5\">\r\n        <h1 class=\"text-center text-center shadow-sm p-3 mb-5  bg-light rounded\">KUET AT A GLANCE</h1>\r\n        <div class=\"\">\r\n            <table class=\"table table-bordered\" style=\"\">\r\n                <tbody class=\"\" style=\" face=\" arial\"=\"\"><tr>\r\n                  <td><p><font color=\"#000\">1</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Year of Establishment of Khulna Engineering College</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">1967</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">2</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Initiation of Academic Activities</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03 June, 1974</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">3</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Year of Establishment of BIT Khulna</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">01 July, 1986</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">4</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Year of Establishment of Khulna University of Engineering &amp; Technology</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">01 September, 2003</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">5</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Campus Area</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">117.302 acre</font></p></td>\r\n                  </tr>\r\n                  <tr><td><p><font color=\"#000\">7</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Faculties</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">04</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">6</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Institutes</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03</font></p></td>\r\n                  </tr>\r\n                  <!-- <tr>\r\n                  <td><p><font color=\"#000\">7</p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Faculties</p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">03</p></td>\r\n                  </tr> -->\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">8</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Departments</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">20</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">9</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Degrees Offered</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">B.Sc. Engg., BURP, B.Arch.<br>\r\n                  M.Sc., M.Sc. Engg., M.Phil.&amp; Ph.D.\r\n                  </font></p></td>\r\n                  </tr>\r\n\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">10</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Teachers</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">430</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">11</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Students</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Undergraduate: 5916 &amp; Postgraduate: 1777 &amp; Institute: 183</font></p></td>\r\n                  </tr>\r\n                  \r\n                  <tr>\r\n                  <td><p><font color=\"#000\">12</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Residential Halls</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Boys-6, Girls-1</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">13</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Officers</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">234</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">14</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Office Staffs</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">399</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">15</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Laboratories</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">40 &amp; English Language Lab-1</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">16</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Libraries</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Central Library-1, Departmental Library-18</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">17</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Number of Computer Centers\r\n                  </font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Central Computer Center-1\r\n                  </font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">18</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Medical Facility</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Medical Center: 01</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">19</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Transport</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Bus-10, Mini Bus-4, Microbus-5, Car-1, Ambulance-2, DC Pickup-1, Pajero-2</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">20</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">PABX &amp; Information and Technology</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">PABX with 1290 Line Capacity,<br>\r\n                  Campus Wide Optical Fiber<br>\r\n                  Backbone Network with 801 Mbps<br>\r\n                  Bandwidth, E-Mail, Internet facilities\r\n                  </font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">21</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Electricity</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Expressed Electricity line KUET feeder<br>\r\n                  for continuous electric supply in the campus\r\n                  </font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">22</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Auditorium</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Auditorium with sound system &amp; AC</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">23</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Extra Curricular Activities</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Central &amp; Hall-wise extra-curricular <br>\r\n                  activities\r\n                  </font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">24</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Leisure/Recreation</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Student\'s Play Ground, Tennis Court, <br>\r\n                  Gymnasium, Debating Society, Teachers Club, Officers Club &amp; Employees Club,<br>\r\n                  Swimming pool.\r\n                  </font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">25</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Water Treatment Plant</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">A water treatment plant for supplying safe water within the campus</font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">26</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Campus Facility</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Central Mosque-1, Hall Mosque-3, Hall <br>\r\n                  Mandir-1, Medical Center, University Club &amp; Guest House, Bank, Post Office, <br>\r\n                  Cafeteria, Ponds, Play Ground, Departmental Store, Gymnasium, Mukto Mancha\r\n                  </font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">27</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Stipend</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">KUET Excellence Foundation, Arif Ahmed Scholarship,<br> \r\n                    KUETians Quatar Scholarship, Dr. Md.Naseem Uddin Cash Wakfa Trust<br> \r\n                    Scholarship, Ramiz Uddin Mollah Smrity Trust, KUET-88 Club Scholarship,<br> \r\n                    Drs. Fatema and Muhammad Harunur Rashid Scholarship.\r\n\r\n                  </font></p></td>\r\n                  </tr>\r\n                  <tr>\r\n                  <td><p><font color=\"#000\">28</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Schools</font></p></td>\r\n                  <td><p align=\"center\"><font color=\"#000\">Primary Schools, High School</font></p></td>\r\n                  </tr>\r\n                  </tbody>\r\n            </table>\r\n        </div>\r\n\r\n    </div>\r\n\r\n  </div>', '');

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
(22, '1', 'dhruborajroy3@gmail.com', '::1', 'Success', '2025-01-21 22:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('ddbbdb', '01.jpg', 'Farewell Ceremony of Mechanical Engineering department Professor, Dr. Md. Kutub Uddin\r\n', '\r\nখুলনা প্রকৌশল ও প্রযুক্তি বিশ^বিদ্যালয় (কুয়েট)-এর মেকানিক্যাল ইঞ্জিনিয়ারিং বিভাগে কর্মরত সিনিয়র প্রফেসর ড. মোঃ কুতুব উদ্দীন এর অবসর জনিত বিদায় সংবর্ধনা অনুষ্ঠান ২৯ অক্টোবর মঙ্গলবার দুপুর সাড়ে ৩ টায় বিশ^বিদ্যালয়ের অডিটরিয়ামে অনুষ্ঠিত হয়। উক্ত অনুষ্ঠানে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন ভাইস-চ্যান্সেলর প্রফেসর ড. মুহাম্মদ মাছুদ। এসময় বিশ্ববিদ্যালয়ের পক্ষ থেকে বিদায়ী শিক্ষক প্রফেসর ড. মোঃ কুতুব উদ্দীনের হাতে সম্মাননা স্মারক ও অন্যান্য উপহার সামগ্রী তুলে দেন বিশ্ববিদ্যালয়ের ভাইস-চ্যান্সেলর প্রফেসর ড. মুহাম্মদ মাছুদ ও বিশেষ অতিথিগণ। অনুষ্ঠানে বিশেষ অতিথি হিসেবে উপস্থিত ছিলেন সিভিল ইঞ্জিনিয়ারিং অনুষদের ডীন প্রফেসর ড. মুহাম্মাদ হারুনুর রশীদ, ইলেকট্রিক্যাল এন্ড ইলেকট্রনিক ইঞ্জিনিয়ারিং অনুষদের ডীন প্রফেসর ড. মোঃ রফিকুল ইসলাম, মেকানিক্যাল ইঞ্জিনিয়ারিং অনুষদের ডীন প্রফেসর ড. মোঃ সাহিদুল ইসলাম, সায়েন্স এন্ড হিউম্যানিটিস অনুষদের সম্মানিত ডিন,  প্রফেসর ড. মোঃ আবুল কালাম আজাদ। অনুষ্ঠানে বিদায়ী শিক্ষক প্রফেসর ড. মোঃ কুতুব উদ্দীন তাঁর শিক্ষকতা জীবন নিয়ে তথ্য বহুল ও জীবনের বিভিন্ন গুরুত্বপূর্ণ বিষয় নিয়ে বক্তব্য প্রদান করেন। এছাড়া অনুষ্ঠানে বিভিন্ন বিভাগের শিক্ষক, কর্মকর্তা ও কর্মচারীগণ তাদের বক্তব্যে বিদায়ী প্রফেসর ড. মোঃ কুতুব উদ্দিন এর বর্নাঢ্য শিক্ষকতা জীবনের বিভিন্ন গুরুত্বপূর্ণ বিষয় তুলে ধরেন। অনুষ্ঠানে ইনস্টিটিউটের পরিচালকবৃন্দ, রেজিস্ট্রার, বিভিন্ন বিভাগের বিভাগীয় প্রধানগণ, পরিচালকগণ, হল প্রভোস্টগণ, সম্মানীত শিক্ষকগণ, দপ্তর ও শাখা প্রধানগণ, কর্মকর্তা, কর্মচারীগণ উপস্থিত ছিলেন।\r\n\r\nউল্লেখ্য, প্রফেসর ড. মোঃ কুতুব উদ্দিন তার বর্নাঢ্য শিক্ষাকতা জীবনে পিএইচ.ডি এবং এম.এসসি ইঞ্জিনিয়ারিং প্রোগ্রামের বহু শিক্ষার্থীর সুপারভাইজার হিসেবে সুপারভিশন করেছেন। এছাড়া তিনি বিভিন্ন সময়ে বিশ্ববিদ্যালয়ের শিক্ষক সমিতির সভাপতি, হল প্রভোস্ট, বিভাগীয় প্রধান, একাডেমিক কাউন্সিলের সদস্য, সিন্ডিকেট মেম্বার সহ অনেক গুরুত্বপূর্ণ দায়িত্ব পালন করেছেন।', 'CE', '30-Oct-2024', '1', 1),
('ddbbdbdd', '02.jpg', 'Farewell Ceremony of Mechanical Engineering department Professor, Dr. Md. Kutub Uddin\r\n', '\r\nখুলনা প্রকৌশল ও প্রযুক্তি বিশ^বিদ্যালয় (কুয়েট)-এর মেকানিক্যাল ইঞ্জিনিয়ারিং বিভাগে কর্মরত সিনিয়র প্রফেসর ড. মোঃ কুতুব উদ্দীন এর অবসর জনিত বিদায় সংবর্ধনা অনুষ্ঠান ২৯ অক্টোবর মঙ্গলবার দুপুর সাড়ে ৩ টায় বিশ^বিদ্যালয়ের অডিটরিয়ামে অনুষ্ঠিত হয়। উক্ত অনুষ্ঠানে প্রধান অতিথি হিসেবে উপস্থিত ছিলেন ভাইস-চ্যান্সেলর প্রফেসর ড. মুহাম্মদ মাছুদ। এসময় বিশ্ববিদ্যালয়ের পক্ষ থেকে বিদায়ী শিক্ষক প্রফেসর ড. মোঃ কুতুব উদ্দীনের হাতে সম্মাননা স্মারক ও অন্যান্য উপহার সামগ্রী তুলে দেন বিশ্ববিদ্যালয়ের ভাইস-চ্যান্সেলর প্রফেসর ড. মুহাম্মদ মাছুদ ও বিশেষ অতিথিগণ। অনুষ্ঠানে বিশেষ অতিথি হিসেবে উপস্থিত ছিলেন সিভিল ইঞ্জিনিয়ারিং অনুষদের ডীন প্রফেসর ড. মুহাম্মাদ হারুনুর রশীদ, ইলেকট্রিক্যাল এন্ড ইলেকট্রনিক ইঞ্জিনিয়ারিং অনুষদের ডীন প্রফেসর ড. মোঃ রফিকুল ইসলাম, মেকানিক্যাল ইঞ্জিনিয়ারিং অনুষদের ডীন প্রফেসর ড. মোঃ সাহিদুল ইসলাম, সায়েন্স এন্ড হিউম্যানিটিস অনুষদের সম্মানিত ডিন,  প্রফেসর ড. মোঃ আবুল কালাম আজাদ। অনুষ্ঠানে বিদায়ী শিক্ষক প্রফেসর ড. মোঃ কুতুব উদ্দীন তাঁর শিক্ষকতা জীবন নিয়ে তথ্য বহুল ও জীবনের বিভিন্ন গুরুত্বপূর্ণ বিষয় নিয়ে বক্তব্য প্রদান করেন। এছাড়া অনুষ্ঠানে বিভিন্ন বিভাগের শিক্ষক, কর্মকর্তা ও কর্মচারীগণ তাদের বক্তব্যে বিদায়ী প্রফেসর ড. মোঃ কুতুব উদ্দিন এর বর্নাঢ্য শিক্ষকতা জীবনের বিভিন্ন গুরুত্বপূর্ণ বিষয় তুলে ধরেন। অনুষ্ঠানে ইনস্টিটিউটের পরিচালকবৃন্দ, রেজিস্ট্রার, বিভিন্ন বিভাগের বিভাগীয় প্রধানগণ, পরিচালকগণ, হল প্রভোস্টগণ, সম্মানীত শিক্ষকগণ, দপ্তর ও শাখা প্রধানগণ, কর্মকর্তা, কর্মচারীগণ উপস্থিত ছিলেন।\r\n\r\nউল্লেখ্য, প্রফেসর ড. মোঃ কুতুব উদ্দিন তার বর্নাঢ্য শিক্ষাকতা জীবনে পিএইচ.ডি এবং এম.এসসি ইঞ্জিনিয়ারিং প্রোগ্রামের বহু শিক্ষার্থীর সুপারভাইজার হিসেবে সুপারভিশন করেছেন। এছাড়া তিনি বিভিন্ন সময়ে বিশ্ববিদ্যালয়ের শিক্ষক সমিতির সভাপতি, হল প্রভোস্ট, বিভাগীয় প্রধান, একাডেমিক কাউন্সিলের সদস্য, সিন্ডিকেট মেম্বার সহ অনেক গুরুত্বপূর্ণ দায়িত্ব পালন করেছেন।', 'CE', '30-Oct-2024', '1', 1);

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
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `details`, `dept`, `reference`, `link`, `added_on`, `updated_on`, `user_id`, `status`) VALUES
('630078a5ef84d', 'Vacation!', 'All activities of Oporajeyo Ekattor Hall will be on hold from 01/10/2022 to 10/10/2022 Due to Durgapuja. From 11/10/2022 , all activities will continue as before.', 'EEE', 'বইক/ছাত্রাবাস/২০২২-০৯', '630078a5ef84d_1737203820.pdf', '1660975269', '1661542138', '1', 1),
('630079a47c1b9', 'Appointment of new Meal Manager', '<p>New Meal Manager&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Name</td><td>Roll</td></tr><tr><td>Dhrubo</td><td>200130</td></tr></tbody></table></figure>', 'EEE', 'বইক/ছাত্রাবাস/২০২২-০৮', '630079a47c1b9_1737203819.pdf', '1660975524', '1661542338', '1', 1),
('63090b99ae3c4', 'দূর্গাপূজা', 'আগামী ১ অক্টোবর থেকে ১০অক্টোবর দূর্গাপূজা উপলক্ষে হলের সকল কার্যক্রম বন্ধ থাকবে। ১১ অক্টোবর হতে পুনরায় সকল কার্যক্রম অব্যাহত থাকিবে।\r\n', 'CE', '01', '63090b99ae3c4_1737203818.pdf', '1661537177', '1661539974', '', 1),
('63090c3006496', 'খাবারের নোটিশ  ', 'আগামী কাল মিলের সময় সূচী\r\nদুপুর _ ২-৩ টা\r\nরাত_৯-১০টা', 'EEE', '02', '63090c3006496_1737203817.pdf', '1661537328', '', '', 1),
('630927ffd7a88', 'শীতকালীন অবকাশ ', '<ol><li>আগামী ১ ডিসেম্বর থেকে ১২ ডিসেম্বর পর্যন্ত হলের সকল কার্যক্রম বন্ধ থাকবে।</li><li>১৩ ডিসেম্বর থেকে সকল কার্যক্রম পুনরায় অব্যাহত থাকবে।</li></ol>', '', '05', '630927ffd7a88_1737203816.pdf', '1661544447', '', '1', 1),
('630b408d4a4b4', 'Title', '<p>Demo</p>', '', 'বইক/ছাত্রাবাস/২০২২-০৮', '630b408d4a4b4_1737203814.pdf', '1661681805', '', '1', 1),
('631b45772386f', 'sdfwekfn', '<p>wdfihio</p><ol><li>week</li><li>jwefh</li><li>efvn</li></ol>', '', 'sdjbsdj', '631b45772386f_1737203813.pdf', '1662731639', '', '1', 1),
('6322f7a195081', 'ষ', '<p><i>গসকসকসকসকসহ</i></p>', '', 'হ ০১', '6322f7a195081_1737203811.pdf', '1663236001', '', '1', 1),
('677ca91276175', '07 a 24 ta meye', '<p>bec 07 a 24 ta meye but sobai muslim</p>', '', '1 2 3 ', '677ca91276175_1737203810.pdf', '1736222994', '', '1', 1),
('677ca914f184a', '07 a 24 ta meye', '<p>bec 07 a 24 ta meye but sobai muslim</p>', '', '1 2 3 ', '677ca914f184a_1737203809.pdf', '1736222996', '', '1', 1),
('677cbcf46c238', 'নোটিশ ', '<p>এতদ্দ্বারা অত্র কলেজের ২০২৩-২০২৪ শিক্ষাবর্ষের ভর্তিকৃত শিক্ষার্থী সহ সকল শিক্ষার্থী, শিক্ষক কর্মকর্তা ও কর্মচারীদের অবগতির জন্য জানানো যাচ্ছে যে, অনিবার্য কারণ বশত আগামী ০৫.১২.২০২৪ খ্রিঃ তারিখের ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন প্রোগ্রাম আগামী ০৮/১২/২০২৪ খ্রিঃ তারিখে সকাল ১০:০০ ঘটিকার সময় অনুষ্ঠিত হবে। উক্ত অনুষ্ঠানে সংশ্লিষ্ট সকলকে যথাসময় উপস্থিত থাকতে বলা হলো।<br />\r\n<br />\r\nউল্লেখ্য, ০৮/১২/২০২৪ খ্রিঃ তারিখে ২০২৩-২০২৪ শিক্ষাবর্ষের ক্লাস শুরু করা হবে।<br />\r\n&nbsp;</p>\r\n', '', 'বইক ', '677cbcf46c238_1737203807.pdf', '1736228084', '1737179079', '1', 1),
('677ccf0e24b07', 'sdf', '', '', 'sdf', '677ccf0e24b07_1737203806.pdf', '1736232718', '', '1', 1),
('677ccf1a80476', 'sdf', '', '', 'sdf', '677ccf1a80476_1737203805.pdf', '1736232730', '', '1', 1),
('677cd36bb1105', ' ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন সংক্রান্ত।', '<p style=\"text-align:center\">এতদ্দ্বারা অত্র কলেজের ২০২৩-২০২৪ শিক্ষাবর্ষের ভর্তিকৃত শিক্ষার্থী সহ সকল শিক্ষার্থী, শিক্ষক কর্মকর্তা ও কর্মচারীদের অবগতির জন্য জানানো যাচ্ছে যে, অনিবার্য কারণ বশত আগামী ০৫.১২.২০২৪ খ্রিঃ তারিখের ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন প্রোগ্রাম আগামী ০৮/১২/২০২৪ খ্রিঃ তারিখে সকাল ১০:০০ ঘটিকার সময় অনুষ্ঠিত হবে। উক্ত অনুষ্ঠানে সংশ্লিষ্ট সকলকে যথাসময় উপস্থিত থাকতে বলা হলো।<br />\r\n<br />\r\nউল্লেখ্য, ০৮/১২/২০২৪ খ্রিঃ তারিখে ২০২৩-২০২৪ শিক্ষাবর্ষের ক্লাস শুরু করা হবে।</p>\r\n', '', '৫৭,০৩,০৬০০,০০০,১৮.০০৭.২২-১০১০', '677cd36bb1105_1737203944.pdf', '1736233835', '1736391225', '1', 1),
('678b927f2f564', 'sdsdv', '<p>sdffdv</p>\r\n', '', 'sdgf', '678b927f2f564_1737203802.pdf', '1737200255', '', '1', 1),
('678bb222ebe9c', '1', '<p>1</p>\r\n', '', 'বইক 1', '678bb222ebe9c_1737208355.pdf', '1737208354', '', '1', 1);

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
('678bb222f11f3', '678bb222ebe9c', 'dfgddfv', 1);

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
('677cea5825d80', 'জনাব লিটন রাব্বানী, অধ্যক্ষ(অতিরিক্ত দায়িত্ব) , বরিশাল ইঞ্জিনিয়ারিং কলেজ', 4, 1),
('677ceafcacdae', 'জনাব লিটন রাব্বানী,অধ্যক্ষ,বরিশাল ইঞ্জিনিয়ারিং কলেজ', 5, 1),
('dfbddb', 'বিভাগীয় প্রধান: সকল, অত্র কলেজ।', 3, 1),
('dfbdfbergfdrv', 'সংরক্ষণ নথি।', 7, 1),
('dfdfbfdgdfg', ' শাখা প্রধান: সকল, অত্র কলেজ।', 6, 1),
('dfeggegxdv', 'জনাব লিটন রাব্বানী', 9, 1),
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
('677bf78cda77b', '1736177548.jpg', '', '', '', '', '1', '1736177548', '', 1);

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
('677d4e23a7794', '677d4e0da4275', 'cvbcvd', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
