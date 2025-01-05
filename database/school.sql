-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 06:29 PM
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
('6322f7a195081', 'ষ', '<p><i>গসকসকসকসকসহ</i></p>', 'হ ০১', '1663236001', '', '1', 1);

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
('644418d0c8a23', '1.png', 'WELCOME TO EDUGLOBAL', 'Lorem is simply text of the printing and typesetting industry.', 'Get Started', '#', '1', '1682184400', '', 1),
('644418d0c8a24', '2.jpg', ' ', ' ', 'Get Started', '#', '1', '1682184400', '1736084466', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `about` text NOT NULL,
  `education` text NOT NULL,
  `experience` text NOT NULL,
  `subject` text NOT NULL,
  `joined_on` varchar(20) NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `updated_on` varchar(20) NOT NULL,
  `visibility` varchar(2) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `designation`, `address`, `email`, `phone_number`, `about`, `education`, `experience`, `subject`, `joined_on`, `added_by`, `updated_on`, `visibility`, `status`) VALUES
('6444b9586cbea', 'Aden Smith', 'Head Of Department', '<p>Califonia Street san Francisco, CA</p>', ' info@sitename.com', '+ 457 789 789 65', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam vero expedita fugiat illo quasi doloremque, in unde omnis sint assumenda! Quaerat in, reprehenderit corporis voluptatum natus sequi reiciendis ullam. Quam eaque dolorum voluptates cupiditate explicabo.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Latin literature from 45 BC</p><p>Vivamus bibendum magna</p><p>&nbsp;</p>', '<p>10+ Years of Experience</p><p>&nbsp;</p>', '<p>Chemistry Teacher</p><p>&nbsp;</p>', '23', '1', '', '1', '1'),
('6444ba298af0b', 'Aden Smit', 'Head Of Department', '<p>Califonia Street san Francisco, CA</p>', ' info@sitename.com', '+ 457 789 789 65', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam vero expedita fugiat illo quasi doloremque, in unde omnis sint assumenda! Quaerat in, reprehenderit corporis voluptatum natus sequi reiciendis ullam. Quam eaque dolorum voluptates cupiditate explicabo.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Latin literature from 45 BC</p><p>Vivamus bibendum magna</p><p>&nbsp;</p>', '<p>10+ Years of Experience</p><p>&nbsp;</p>', '<p>Chemistry Teacher</p><p>&nbsp;</p>', '23', '1', '', '1', '1');

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
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD UNIQUE KEY `id` (`id`);

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
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
