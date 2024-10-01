-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 11:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NARADA LTD_p`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `Id` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Text` text NOT NULL,
  `About_Image` varchar(255) NOT NULL DEFAULT 'no_img',
  `U_Date` varchar(55) NOT NULL,
  `Date` varchar(55) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`Id`, `Category`, `Text`, `About_Image`, `U_Date`, `Date`) VALUES
(1, 'vision', 'NARADA LTD Vision is where “a human being is living in harmony with nature. All ecosystems are healthy, viable and rich in biodiversity. They provide sustainable benefits to the society, whose livelihoods are considerably improved as a result of effective and efficient programs”.', '1718615278_vision_vlcsnap-2023-10-09-19h48m08s434.png', '2024-06-17', '2024-06-17 11:48:45'),
(2, 'mission', 'NARADA LTD Mission is “To enhance biodiversity conservation and sustainable management of natural resources in Rwanda through the promotion of collaborative conservation action for nature and society”', '1718615291_mission_vlcsnap-2023-11-15-17h52m15s315.png', '2024-06-17', '2024-06-17 11:50:12'),
(3, 'who we are', 'The New Eden Organization (NARADA LTD) is a local environment conservation Non-Governmental Organization founded in 2024 aimed at enhancing biodiversity conservation and sustainable management of natural resources in Rwanda through implementing specific conservation actions such as clean cooking, sustainable agriculture, wise use of water and land resources, tree growing, beekeeping, waste management, terracing, environmental awareness and Research', '1718615291_mission_vlcsnap-2023-11-15-17h52m15s315.png', '2024-06-17', '2024-06-17 11:50:26'),
(7, 'objectives', 'Promote environmental education and public awareness\r\n									through equipping community with the basic environmental knowledge to understand and\r\n									address environmental issues impacting their lives;\r\n\r\nPromote environmental based research while assessing and monitor the environmental\r\n									features\r\n									dynamics towards developing\r\n									a sustainable environmental management practices and actual facts based advocacy;\r\n\r\nPromote the culture conservation;\r\n\r\nPromote the culture conservation;', '1718615291_mission_vlcsnap-2023-11-15-17h52m15s315.png', '2024-06-17', '2024-06-17 11:51:51'),
(10, 'values and approaches', 'Networking with local, national and international actors to enhance sustainable conservation and development through information and experience sharing.\r\n\r\nActivities on the ground take an integrated landscape approach focusing mainly in\r\n									protecting biodiversity and enhancing ecosystem services and building income generating\r\n									nature based micro businesses.\r\n\r\nEmpower the organization through capacity building and policy engagement when\r\n									implementing out interventions. NARADA LTD works with all kinds of organizations including\r\n									NGOs/CBOs, academic institutions, governments and private business owners.', '1718615291_mission_vlcsnap-2023-11-15-17h52m15s315.png', '2024-06-17', '2024-06-17 12:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Msg_Id` int(11) NOT NULL,
  `Names` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Message` text NOT NULL,
  `Date` varchar(55) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`Msg_Id`, `Names`, `Email`, `PhoneNumber`, `Message`, `Date`) VALUES
(2, 'Prince Parfait', 'prince@gmail.com', '0798442649', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Excepturi, enim quisquam. Exercitationem quibusdam error doloremque.', '2024-06-17 00:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `Id` int(11) NOT NULL,
  `Partner_Name` varchar(255) NOT NULL,
  `Partner_Image` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `U_Date` varchar(55) NOT NULL DEFAULT current_timestamp(),
  `Date` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`Id`, `Partner_Name`, `Partner_Image`, `Address`, `Description`, `U_Date`, `Date`) VALUES
(2, 'Parfait', '1718618692_partner_logo.png', ' Kimironko, Kigali-Rwanda', ' Lorem ipsum dolor sit amet. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.', '2024-06-17', ''),
(3, 'Ruganzu Rwanga', '1718618699_partner_logo_undp.png', 'Kimironko, Kigali-Rwanda', 'Lorem ipsum dolor sit amet. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.', '2024-06-17', ''),
(4, 'Ruster Read Industrial Ltd', '1718618708_partner_logo-2.png', 'Kenz - England', 'Lorem ipsum dolor sit amet. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.', '2024-06-17', '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Id` int(11) NOT NULL,
  `Project_name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `AttachedImage` varchar(255) NOT NULL DEFAULT 'no_img',
  `U_Date` varchar(55) NOT NULL,
  `Date` varchar(55) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Id`, `Project_name`, `Description`, `AttachedImage`, `U_Date`, `Date`) VALUES
(2, 'Sisi Construct Project', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.', '1718566478vlcsnap-2023-11-23-20h54m15s015.png', '2024-06-16', '2024-06-16 22:34:38'),
(3, 'Sisi Construct Project22', 'Lorem ipsum dolor sit amet. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.', '1718566478vlcsnap-2023-11-23-20h54m15s015.png', '2024-06-17', '2024-06-17 00:40:57'),
(4, 'Kendugyi Kendi', 'Lorem ipsum dolor sit amet. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.', '1718584738a.jpg', '2024-06-17', '2024-06-17 03:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Story` text NOT NULL,
  `Image` varchar(255) NOT NULL,
  `U_Date` varchar(55) NOT NULL,
  `Date` varchar(55) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`Id`, `Title`, `Story`, `Image`, `U_Date`, `Date`) VALUES
(1, 'P.H Paul Kagame President', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Perferendis eligendi id quas odit vel commodi nisi deserunt architecto impedit ut. Quod unde error explicabo reprehenderit.', '1718610577_story_pexels-mike-b-120049.jpg', '2024-06-17', '2024-06-17 10:49:37'),
(3, 'P.H Paul Kagame President', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Perferendis eligendi id quas odit vel commodi nisi deserunt architecto impedit ut. Quod unde error explicabo reprehenderit.', '1718610577_story_pexels-mike-b-120049.jpg', '2024-06-17', '2024-06-17 10:49:37'),
(4, 'P.H Paul Kagame President', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Perferendis eligendi id quas odit vel commodi nisi deserunt architecto impedit ut. Quod unde error explicabo reprehenderit.', '1718610577_story_pexels-mike-b-120049.jpg', '2024-06-17', '2024-06-17 10:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `Id` int(11) NOT NULL,
  `PersonName` varchar(125) NOT NULL,
  `Location` varchar(155) NOT NULL,
  `Text_D` text NOT NULL,
  `Image` varchar(255) NOT NULL DEFAULT 'no_img',
  `U_Date` varchar(55) NOT NULL,
  `Date` varchar(55) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`Id`, `PersonName`, `Location`, `Text_D`, `Image`, `U_Date`, `Date`) VALUES
(1, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:02:46'),
(2, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:02:54'),
(3, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:02:54'),
(4, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:02:55'),
(5, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:03:06'),
(6, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:03:06'),
(7, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:03:06'),
(8, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:03:06'),
(9, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:03:06'),
(10, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:03:06'),
(11, 'Prince Parfait', 'Kigali, NY', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero praesentium nostrum fuga dolore eum ab blanditiis iusto obcaecati provident. Atque aut nostrum voluptates delectus dolorum.', '1718745311_testimonial_prince.jpg', '2024-06-19', '2024-06-19 01:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `Id` int(11) NOT NULL,
  `Options` varchar(255) NOT NULL,
  `Text` varchar(255) NOT NULL,
  `U_Date` varchar(55) NOT NULL,
  `Date` varchar(55) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`Id`, `Options`, `Text`, `U_Date`, `Date`) VALUES
(3, 'second', 'For text examplee', '2024-06-16', '2024-06-16 23:51:21'),
(4, 'fifth', 'Organic Solid Soil', '2024-06-17', '2024-06-17 03:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_Id` int(11) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Date` varchar(55) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Id`, `PhoneNumber`, `UserName`, `Password`, `Date`) VALUES
(2, '09876532', 'Sau', '$2y$10$X7WppSWrbyTxygOt94ez9exQ0XREZzOEAEAilwhnMXZiTPypMvSee', '2024-06-16 20:44:49'),
(3, '0798442649', 'Parfait', '$2y$10$/2RHRDfPAJn9PZpa1d9JfuHPdPyiGTztsq1u74rFe0n3xkUFZ30Qa', '2024-06-17 11:12:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Msg_Id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `Msg_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
