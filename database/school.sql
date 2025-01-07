-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 02:49 PM
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
('64441dc980a91', 'Brief Introduction', '<p>Barishal Engineering College (Bengali: <strong>বরিশাল প্রকৌশল মহাবিদ্যালয়</strong>) commonly referred to as BEC <strong>(Bengali: বইক)</strong> is a public undergraduate college in Barishal, Bangladesh. Barishal Engineering College is an elite institution for graduating in engineering disciplines in Bangladesh, and is affiliated with the University of Dhaka. Barishal Engineering College established in the year 2018 under the Faculty of Engineering &amp; Technology, University Of Dhaka. It is the latest addition to Bangladesh\\\'s government engineering institutions. Barishal Engineering College is one of the new and modern engineering colleges in Bangladesh. Barishal Engineering College is located about 13 kilometers away from the main city of Barishal towards the Barishal-Bhola road. Every building is accommodated in a multi-storied building over an area of about 8 acres land. There are 13 buildings including an administrative building &amp; department buildings. There are also quarters for teachers, officers &amp; staffs. The hall facility of Barishal Engineering is affluent. There are three residential halls. There have two halls for male students &amp; one hall for female students. The male students halls boarders capacity is 400 (2x200) and the female students hall boarders capacity is 100.</p>', '1682185673', '1736084678', '1', 1);

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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` text NOT NULL,
  `details` text NOT NULL,
  `isp` varchar(50) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `details`, `isp`, `ip_address`, `zip`, `country`, `city`, `added_on`, `status`) VALUES
('53535', 'Dhruboraj Roy', 'Dhruborajroy3@gmail.com', '+8801705927257', 'Email Mark sheet', 'wed', 'Carnival Internet', '103.106.239.73', '', 'Bangladesh', 'Lalmonirhat', '1682236536', 1),
('64461e782a056', 'sdf', 'ub@ibxk.c', '87987', 'hjbjh', 'jhbj', 'Carnival Internet', '103.106.239.73', '', 'Bangladesh', 'Lalmonirhat', '1682316920', 1);

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
  `dept` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
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
  `dept_head` tinyint(1) DEFAULT 0,
  `status` enum('active','inactive','retired') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `image`, `designation`, `phone`, `dept`, `email`, `research_interest`, `bio`, `facebook`, `linked_in`, `education`, `experience`, `publication`, `scholarship_award`, `research`, `teaching_supervision`, `joined_at`, `visibility`, `dept_head`, `status`) VALUES
('677d27ac4b681', 'Dr. Abu Zakir Morshed', 'rabbani.jpg', 'Professor ', ' +88041769471', 'Civil Engineering', 'azmorshed@ce.kuet.ac.bd', 'Structural and Material Engineering', '<p><strong>Dr. Abu Zakir Morshed </strong>completed his B.Sc. Engineering degree from Department of Civil Engineering, KUET (erstwhile BIT Khulna), Bangladesh in 1999, M.Sc. Engineering degree from University of Tokyo, Japan in 2003 and his Ph.D. from McGill University, Canada in 2013. Dr. Morshed started his career in the Department of Civil Engineering, KUET, Bangladesh as a lecturer in 1999 and later promoted to the position of a Professor in 2015. He has been involved in active teaching and research. Dr. Morshedâ€™s expertise is in the area of structural engineering, civil engineering materials and their structural applications. His research area is involved with cement &amp; concrete technology, accelerated curing of cement-based precast products, recycling and reuse of demolished building wastes, environment friendly building materials, and durability design of structures, etc. He also has expertise in structural design of high-rise buildings, capacity assessment of existing structures, renovation and retrofitting of old structures.</p>', '#', '#', '<p><strong>Ph. D.</strong></p><p>McGill University, Montreal,Canada (2013)</p><p><strong>M.Sc. Engg.</strong></p><p>University of Tokyo, Tokyo,Japan (2003)</p><p><strong>B.Sc. Engineering (Civil)</strong></p><p>Khulna University of Engineering &amp;Technology (KUET),Bangladesh (1999)</p>', '<p><strong>Service Records</strong></p><p><strong>Professor</strong></p><p>Department/Section: Department of Civil Engineering</p><ul><li>Khulna University of Engineering &amp; Technology(07 -Jan-2025 to 07-Jan-2025)&nbsp;</li></ul><p>Professional Body Membership</p><p><strong>Institution of Engineers, Bangladesh (IEB)</strong></p><p>Member Type: Fellow<br>Member ID: F-11143</p>', '<p>12. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1080/13287982.2022.2156167\">(2022) , \" Shear strengthening design of pre-cracked reinforced concrete beams using bonded and bolted steel plates,\"&nbsp;<i><strong>Australian Journal of Structural Engineering</strong></i>, Taylor &amp; Francis</a></p><p>11. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.1108/MMMS-12-2021-0208\">Shakib,S. , Morshed,A. Z. , Kholil,M. I. and Hossain,M. A. (2022) , \" Simulation of reinforced concrete beam retrofitted with steel angles subjected to flexure,\"&nbsp;<i><strong>Multidiscipline Modeling in Materials and Structures</strong></i>, Emerald Publishing Limited, vol18, no.2, pp.351-369</a></p><p>&nbsp;</p><p>9. <a href=\"https://www.kuet.ac.bd/ce/doi.org/10.5267/j.esm.2019.9.001\">Shakib,S. ,Morshed,A. Z. and Ali,a. M. H. (2020) , \" Experimental and Numerical Simulation of Corrosion Induced Expansive Pressure on Concrete Cover,\"&nbsp;<i><strong>Engineering Solid Mechanics</strong></i>, vol8, no.1, pp.21-30</a></p><p>&nbsp;</p>', '<ul><li><strong>\"McGill Engineering Doctoral Award\" (MEDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>\"McGill International Doctoral Award\" (MIDA) at McGill University, Canada.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Asian Development Bank - Japan Scholoarship Program (ADB-JSP) for M.Sc. Engineering programme at Tokoy University, Japan.</strong></li></ul><p>&nbsp;</p><ul><li><strong>Merit order scholarships throughout the 4 yrs study of B.Sc. Engineering at BIT Khulna (KUET), Bangladesh.</strong></li></ul>', '<ul><li><strong>Structural and Material Engineering</strong></li></ul><p>&gt; Cement &amp; concrete technology&nbsp;</p><p>&gt; Accelerated curing of cement-based precast products&nbsp;</p><p>&gt; Recycling and reuse of demolished building wastes&nbsp;</p><p>&gt; Environment friendly building materials&nbsp;</p><p>&gt; Durability design of reinforced concrete structures&nbsp;</p><p>&gt; Structural design of high-rise buildings&nbsp;</p><p>&gt; Capacity assessment of existing structures &gt; Renovation and retrofitting of old structures.</p>', '<p>#Course Conduction</p><h3>Degree Awarded (M. Sc. Engineering)</h3><p>1. Rehabilitation and Flexural Strengthening of Reinforced Concrete Beams using External Steel Reinforcement (January 2019)</p><p>2. Experimental Investigation and Numerical Modeling of Corrosion Induced Expansive Pressure on Concrete Cover in Reinforce Concrete (November 2018)</p><h3>On going (M. Sc. Engineering)</h3><p>1. Shear Strengthening of Reinforced Concrete Beams using External Steel Reinforcement.</p><p>2. Chloride and Sulfate Resistance Durability Assessment of Portland Composite Cement.</p><p>#Course Supervision</p><p>CE 3113 Reinforced Concrete Structures - I</p><p>CE 3213 Reinforced Concrete Structures - II</p><p><br>&nbsp;</p><p>CE 4112 Sessional on Structural Analysis &amp; Design-II</p><p>CE 4210 Sessional on Structural Analysis &amp; Design-IV</p><p>CE 4211 Prestressed Concrete<br>&nbsp;</p><p><br>&nbsp;</p>', '2018-06-07', 'public', 1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `image` text NOT NULL,
  `added_on` varchar(11) NOT NULL,
  `updated_on` varchar(11) NOT NULL,
  `added_by` int(2) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `details`, `image`, `added_on`, `updated_on`, `added_by`, `status`) VALUES
('6444cc4309864', 'Books & Library', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text</p>', '', '1682230339', '', 1, 1),
('6444ccb6ba818', 'Learn Courses Online', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text</p>', '', '1682230454', '', 1, 1),
('6444ccc75c8b4', 'Expert Instructors', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text</p>', '', '1682230471', '', 1, 1);

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
('677c2ac74af0a', 'Faculty & Staff', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `reference` text NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `details`, `reference`, `added_on`, `updated_on`, `user_id`, `status`) VALUES
('630078a5ef84d', 'Vacation!', 'All activities of Oporajeyo Ekattor Hall will be on hold from 01/10/2022 to 10/10/2022 Due to Durgapuja. From 11/10/2022 , all activities will continue as before.', 'বইক/ছাত্রাবাস/২০২২-০৯', '1660975269', '1661542138', '1', 1),
('630079a47c1b9', 'Appointment of new Meal Manager', '<p>New Meal Manager&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Name</td><td>Roll</td></tr><tr><td>Dhrubo</td><td>200130</td></tr></tbody></table></figure>', 'বইক/ছাত্রাবাস/২০২২-০৮', '1660975524', '1661542338', '1', 1),
('63090b99ae3c4', 'দূর্গাপূজা', 'আগামী ১ অক্টোবর থেকে ১০অক্টোবর দূর্গাপূজা উপলক্ষে হলের সকল কার্যক্রম বন্ধ থাকবে। ১১ অক্টোবর হতে পুনরায় সকল কার্যক্রম অব্যাহত থাকিবে।\r\n', '01', '1661537177', '1661539974', '', 1),
('63090c3006496', 'খাবারের নোটিশ  ', 'আগামী কাল মিলের সময় সূচী\r\nদুপুর _ ২-৩ টা\r\nরাত_৯-১০টা', '02', '1661537328', '', '', 1),
('630927ffd7a88', 'শীতকালীন অবকাশ ', '<ol><li>আগামী ১ ডিসেম্বর থেকে ১২ ডিসেম্বর পর্যন্ত হলের সকল কার্যক্রম বন্ধ থাকবে।</li><li>১৩ ডিসেম্বর থেকে সকল কার্যক্রম পুনরায় অব্যাহত থাকবে।</li></ol>', '05', '1661544447', '', '1', 1),
('630b408d4a4b4', 'Title', '<p>Demo</p>', 'বইক/ছাত্রাবাস/২০২২-০৮', '1661681805', '', '1', 1),
('631b45772386f', 'sdfwekfn', '<p>wdfihio</p><ol><li>week</li><li>jwefh</li><li>efvn</li></ol>', 'sdjbsdj', '1662731639', '', '1', 1),
('6322f7a195081', 'ষ', '<p><i>গসকসকসকসকসহ</i></p>', 'হ ০১', '1663236001', '', '1', 1),
('677ca91276175', '07 a 24 ta meye', '<p>bec 07 a 24 ta meye but sobai muslim</p>', '1 2 3 ', '1736222994', '', '1', 1),
('677ca914f184a', '07 a 24 ta meye', '<p>bec 07 a 24 ta meye but sobai muslim</p>', '1 2 3 ', '1736222996', '', '1', 1),
('677cbcf46c238', 'নোটিশ ', '<p>গণপ্রজাতন্ত্রী বাংলাদেশ সরকার<br><br>অধ্যক্ষের কার্যালয় বরিশাল ইঞ্জিনিয়ারিং কলেজ উত্তর দূর্গাপুর, বরিশাল সদর, বরিশাল।<br><br><a href=\"http://www.bec.ac.bd/\">www.bec.ac.bd</a><br><br>তারিখঃ ০২/১২/২০২৪<br><br>নোটিশ<br><br>*<br><br>এতদ্দ্বারা অত্র কলেজের ২০২৩-২০২৪ শিক্ষাবর্ষের ভর্তিকৃত শিক্ষার্থী সহ সকল শিক্ষার্থী, শিক্ষক কর্মকর্তা ও কর্মচারীদের অবগতির জন্য জানানো যাচ্ছে যে, অনিবার্য কারণ বশত আগামী ০৫.১২.২০২৪ খ্রিঃ তারিখের ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন প্রোগ্রাম আগামী ০৮/১২/২০২৪ খ্রিঃ তারিখে সকাল ১০:০০ ঘটিকার সময় অনুষ্ঠিত হবে। উক্ত অনুষ্ঠানে সংশ্লিষ্ট সকলকে যথাসময় উপস্থিত থাকতে বলা হলো।<br><br>উল্লেখ্য, ০৮/১২/২০২৪ খ্রিঃ তারিখে ২০২৩-২০২৪ শিক্ষাবর্ষের ক্লাস শুরু করা হবে।<br><br>স্বাক্ষরিত/-<br><br>(মোঃ লিটন রাব্বানী<br><br>অধ্যক্ষ (অতিরিক্ত দায়িত্ব)<br><br>তারিখঃ ০২.১২.২০২৪<br><br>স্মারক নং- ৫৭,০৩,০৬০০,০০০,১৮.০০৭.২২-১০১০<br><br>সদয় অবগতি ও প্রয়োজনীয় কার্যার্থে অনুলিপি (জেষ্ঠাতার ভিত্তিতে নয়)।<br><br>০১. মহাপরিচালক, কারিগরি শিক্ষা অধিদপ্তর, আগারগাঁও, শেরেবাংলা নগর, ঢাকা-১২০৭।<br><br>০২. পরিচালক (প্রশাসন), কারিগরি শিক্ষা অধিদপ্তর, আগারগাঁও, শেরেবাংলা নগর, ঢাকা-১২০৭।<br><br>০৩. বিভাগীয় প্রধান: সকল, অত্র কলেজ।<br><br>০৪. শাখা প্রধান: সকল, অত্র কলেজ।<br><br>০৫. নোটিশ বোর্ড: সকল, অত্র কলেজ।<br><br>০৬. জনাব<br><br>০৭. সংরক্ষণ নথি।<br><br>P12:24 2:12:24 (মোঃ লিটন রাব্বানী) অধ্যক্ষ (অতিরিক্ত দায়িত্ব) বরিশাল ইঞ্জিনিয়ারিং কলেজ, বরিশাল।<br><br>ই-মেইল: <a href=\"mailto:becbarishal@gmail.com\">becbarishal@gmail.com</a></p>', 'বইক ', '1736228084', '', '1', 1),
('677ccf0e24b07', 'sdf', '', 'sdf', '1736232718', '', '1', 1),
('677ccf1a80476', 'sdf', '', 'sdf', '1736232730', '', '1', 1),
('677cd36bb1105', ' ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন সংক্রান্ত।', '<p style=\"text-align:center\">এতদ্দ্বারা অত্র কলেজের ২০২৩-২০২৪ শিক্ষাবর্ষের ভর্তিকৃত শিক্ষার্থী সহ সকল শিক্ষার্থী, শিক্ষক কর্মকর্তা ও কর্মচারীদের অবগতির জন্য জানানো যাচ্ছে যে, অনিবার্য কারণ বশত আগামী ০৫.১২.২০২৪ খ্রিঃ তারিখের ২০২৩-২০২৪ শিক্ষাবর্ষের ওরিয়েন্টেশন প্রোগ্রাম আগামী ০৮/১২/২০২৪ খ্রিঃ তারিখে সকাল ১০:০০ ঘটিকার সময় অনুষ্ঠিত হবে। উক্ত অনুষ্ঠানে সংশ্লিষ্ট সকলকে যথাসময় উপস্থিত থাকতে বলা হলো।<br />\r\n<br />\r\nউল্লেখ্য, ০৮/১২/২০২৪ খ্রিঃ তারিখে ২০২৩-২০২৪ শিক্ষাবর্ষের ক্লাস শুরু করা হবে।</p>\r\n', '৫৭,০৩,০৬০০,০০০,১৮.০০৭.২২-১০১০', '1736233835', '1736236271', '1', 1);
INSERT INTO `notice` (`id`, `title`, `details`, `reference`, `added_on`, `updated_on`, `user_id`, `status`) VALUES
('677cefbb8011a', 'sdfg', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">\r\n<p style=\"margin-left:18px; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:18.0pt\">01 Batch (Session 2017-2018)</span></strong></span></span></p>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:-23px; width:706px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:36px\">\r\n			<p style=\"margin-left:27px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Name</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Dining Roll</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Depart</span></span></span></p>\r\n\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">ment </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Reg</span></span></span></p>\r\n\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">no</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:124px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Phone Number</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">খাবার</span> <span style=\"font-size:12.0pt\">বকেয়া</span> </span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">জামানত</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:50px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">ছাত্র</span> <span style=\"font-size:12.0pt\">পাবে</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">অফিস</span> <span style=\"font-size:12.0pt\">পাবে</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Mahir Shariar</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">171004</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1934</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">4991</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">00</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">4991</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"2\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Md. Robiul Islam</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">171005</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1935</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">460</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3240</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"3\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">171007</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2323</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2323</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"4\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Md. Sifat</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">171012</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1942</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3494</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">206</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"5\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">171032</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">10991</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">00</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"6\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Nakib(R)</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">171034</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1962</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">11607</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">7,907</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"7\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Md. Jannatul Adan</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">171055</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1983</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">12082</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">8382</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"8\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Somar Talukder</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">171056</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1984</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2692</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">00</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2692</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"9\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Sowrav Mojumder</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172062</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1991</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">800</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">00</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">800</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"10\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Md. Selim Islam </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172081</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2010</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">4444</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">744</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"11\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Asikur Rahman</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172093</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2021</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">12917</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">10243</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"12\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Muntasir Shihab</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172094</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2022</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">5437</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1737</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"13\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Md Naim</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172096</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2024</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">6461</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2761</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"14\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">AM. Talha Nusayeb</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172097</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2025</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">11872</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">8172</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"15\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Md. Saiful Islam</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172099</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2027</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">6848</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">00</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">6848</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"16\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pranto Baray</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172106</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2034</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">19199</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">15499</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"17\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Anisur Rahman</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172107</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2035</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">4479</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">779</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"18\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Md. Tanjid Hasan</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172119</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2046</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3912</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3700</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">212</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<ol start=\"19\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Sarwar Asmain</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">172120</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">EEE</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">2047</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1750</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">00</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1750</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:36px\">\r\n			<p style=\"margin-left:48px\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:145px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:64px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:58px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:46px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:124px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:68px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:yellow\"><span style=\"color:black\">127785</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:59px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"background-color:yellow\"><span style=\"color:black\">44400</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p>&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>sdkm</p>\r\n\r\n<p>sdvk</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:18.0pt\">02 Batch (Session 2018-2019)</span></strong></span></span></p>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:-41px; width:745px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:72px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">SL no</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:161px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Name</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:77px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Dining Roll</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:50px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Dept</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:48px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Reg</span></span></span></p>\r\n\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">No </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:102px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Phone Number</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:72px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">খাবার</span> <span style=\"font-size:12.0pt\">বকেয়া</span> </span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">জামানত</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">ছাত্র</span> <span style=\"font-size:12.0pt\">পাবে</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">অফিস</span> <span style=\"font-size:12.0pt\">পাবে</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:72px\">\r\n			<ol>\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:161px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:77px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">181018</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:48px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:102px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:72px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3912</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">00</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:54px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">3912</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:72px\">\r\n			<ol start=\"2\">\r\n				<li>&nbsp;</li>\r\n			</ol>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:161px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Md. Mehedi </span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:77px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">181024</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:50px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Civil</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:48px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">1056</span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:102px\">\r\n			<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">01887309186</span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>sssssssxcv f&nbsp;</p>\r\n</div>\r\n', 'sdgf', '1736241083', '1736241431', '1', 1);
INSERT INTO `notice` (`id`, `title`, `details`, `reference`, `added_on`, `updated_on`, `user_id`, `status`) VALUES
('677cf097e5c75', 'u', '<p>&nbsp;jnnj<sub>h</sub>DF</p>\r\n', 'h', '1736241303', '1736242983', '1', 1),
('677cf37ec9797', 'sdf', '<p>sdf</p>\r\n', 'sdf', '1736242046', '', '1', 1),
('677cf3abb86ce', 'sdf', '<p>sdf</p>\r\n', 'sdf', '1736242091', '', '1', 1),
('677cf3cf9356b', 'sdf', '<p>sdf</p>\r\n', 'sdf', '1736242127', '1736242181', '1', 1),
('677cf3d463d5e', 'sdf', '<p>sdf</p>\r\n', 'sdf', '1736242132', '1736243755', '1', 1);

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
('677cfa2b3690c', '677cf3d463d5e', 'dfgddfv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `referances`
--

CREATE TABLE `referances` (
  `id` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referances`
--

INSERT INTO `referances` (`id`, `name`, `status`) VALUES
('677cea5825d80', 'জনাব লিটন রাব্বানী, অধ্যক্ষ(অতিরিক্ত দায়িত্ব) , বরিশাল ইঞ্জিনিয়ারিং কলেজ', 1),
('677ceafcacdae', 'জনাব লিটন রাব্বানী,অধ্যক্ষ,বরিশাল ইঞ্জিনিয়ারিং কলেজ', 1),
('dfbddb', 'বিভাগীয় প্রধান: সকল, অত্র কলেজ।', 1),
('dfbdfbergfdrv', 'সংরক্ষণ নথি।', 1),
('dfdfbfdgdfg', ' শাখা প্রধান: সকল, অত্র কলেজ।', 1),
('dfeggegxdv', 'জনাব লিটন রাব্বানী', 1),
('dfgddfv', 'মহাপরিচালক, কারিগরি শিক্ষা অধিদপ্তর, আগারগাঁও, শেরেবাংলা নগর, ঢাকা-১২০৭।', 1),
('DFGDFVDFBB', 'নোটিশ বোর্ড: সকল, অত্র কলেজ।', 1),
('fdgdfg', 'পরিচালক (প্রশাসন), কারিগরি শিক্ষা অধিদপ্তর, আগারগাঁও, শেরেবাংলা নগর, ঢাকা-১২০৭।', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_details`
--

CREATE TABLE `site_details` (
  `id` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
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

INSERT INTO `site_details` (`id`, `name`, `email`, `address`, `phone`, `facebook_link`, `twitter_link`, `youtube_link`, `instagram_link`, `short_details`, `updated_on`, `status`) VALUES
('1', 'Edu Global', 'info@sitename.com', 'Califonia Street san Francisco, CA', '+ 457 789 789 65', '#', '#', '#', '#', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consequat mauris</p>', '1', 1);

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
('644418d0c8a24', '2.jpg', ' Welcome to BEC', 'An Affiliated Engineering College', 'Get Started', '#', '1', '1682184400', '1736177754', 1),
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
('677c2ae46ba64', '677c2ac74af0a', 'Staff', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `added_on` varchar(20) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `visibility` int(2) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `details`, `added_on`, `updated_on`, `added_by`, `visibility`, `status`) VALUES
('6444c7c90ac0b', 'মোঃ আবুল কালাম আজাদ', 'প্রধান শিক্ষক, লালমনিরহাট সরকারি উচ্চ বিদ্যালয়, লালমনিরহাট।', '<p>শিক্ষাই জাতির মেরুদন্ড। কাজেই সবার জন্য শিক্ষা অর্জন করা মানুষের মৌলিক অধিকার। এ অধিকারকে যথাযথভাবে বাস্তবায়নের মাধ্যমে বিশ্বের অনেক দেশ আজ উন্নত দেশ হিসেবে উন্নতির চরম শিখরে আরোহণ করেছে। এ ক্ষেত্রে বাংলাদেশ তার কাঙ্ক্ষিত লক্ষ্য অর্জনে সাধ্যমত চেষ্টা চালিয়ে যাচ্ছে। যুগের সাথে সংগতিপূর্ণ বিকাশের জন্য আমরা প্রত্যেকেই ভাবি নিজ নিজ সন্তানদের নিয়ে। প্রকৃতির সন্তান মানব শিশুকে পরিশুদ্ধ হতে হয়, পরিপুর্ণ হতে হয় স্বীয় সাধনায়। এ ক্ষেত্রে শিক্ষায় হলো আমাদের মূলমন্ত্র। আমরা দৃঢ়ভাবে বিশ্বাস করি শিক্ষার মৌলিক উদ্দেশ্য হলো আচরণের কাঙ্ক্ষিত পরিবর্তন। আর এ লক্ষ্যে তাদেরকে সৃজনশীল, স্বাধীন, সক্রিয় এবং দায়িত্বশীল সুনাগরিক হিসেবে গড়ে তোলা। এ জন্য প্রয়োজন যোগ্য শিক্ষকমন্ডলী এবং উপযুক্ত শিক্ষাদান পদ্ধতির সমন্বয়ে একটি শিক্ষাবান্ধব পরিবেশ। আমি বিনয়ের সাথে দাবী করি, লালমনিরহাট সরকারি উচ্চ বিদ্যালয়ে এসব কিছুর সমন্বয় ঘটানো সম্ভব হয়েছে। শিক্ষার্থীদের মজ্জাগত প্রতিভা সহজে বিকাশের জন্য প্রতিষ্ঠানটিতে রয়েছে সাধারণ শিক্ষার পাশাপাশি কম্পিউটার শিক্ষা, সাংস্কৃতিক, আনুষ্ঠানিক, খেলাধুলাসহ নানাবিধ শিক্ষা।</p>', '1682229193', '', '1', 1, 1),
('6444c8f840e1c', 'সদকন', 'সভাপতি', '<p>১৯১৯ সাল। অবিভক্ত বাংলার এক ছোট্ট শহর ছিল লালমনিরহাট। কিন্তু শহরটি ছোট্ট হলেও ব্যবসা বানিজ্য ও চাকুরির ক্ষেত্র হিসেবে ছিল বেশ রমরমা। ফলে স্থানীয় লোকজনের তুলনায় মাড়োয়ারি ও ইংরেজদের প্রভাব প্রতিপত্তি ছিল খুব বেশি। তাদের পৃষ্ঠপোষকতায় প্রতিষ্ঠা পায় ‘গনেশ নারায়ন করোনেশন ইনস্টিটিউট’ তারপর ১৯২২ সালে কলকাতা বিশ্ববিদ্যালয় কর্তৃক এ ইনস্টিটিউট অনুমোদন লাভ করে। কলকাতা বিশ্ববিদ্যালয় স্বীকৃতি প্রদানের প্রাক্কালে এর নতুন নামকরণ হয় ‘লালমনিরহাট ইংলিশ হাই স্কুল’। এ সময়ে প্রতিষ্ঠাতা প্রধান শিক্ষক হিসেবে দায়িত্ব পালন করেন নৃসিংহ প্রমাদ সিদ্ধার্থ ১৯৬১ সালে তৎকালীন সরকারের পাইলট স্কিমের অন্তর্ভূক্ত হয়ে পূর্বের নাম পাল্টিয়ে ‘লালমনিরহাট মডেল হাইস্কুল’ নামকরণ করা হয়। ১৯৮০ সালের ১ জানুয়ারি লালমনিরহাট মহকুমা হিসাবে স্বীকৃতি পেলে এবং মহকুমা সদরের শ্রেষ্ঠ বিদ্যালয় হিসেবে তা জাতীয়করণের অন্তর্ভূক্ত হয়। সেই ধারাবাহিকতায় ১৯৮১ সালের ৪ এপ্রিল বিদ্যালয়টি জাতীয় করণ হয়ে ‘লালমনিরহাট সরকারী উচ্চ বিদ্যালয়’ নামে প্রতিষ্ঠা লাভ করে।</p>', '1682229496', '', '1', 1, 1);

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD UNIQUE KEY `id` (`id`);

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
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
