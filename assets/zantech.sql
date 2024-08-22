-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2024 at 06:54 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zantech`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `ApplicantID` int(11) NOT NULL,
  `opportunityID` int(11) NOT NULL,
  `SpecialistID` int(255) NOT NULL,
  `ApplicationDate` date NOT NULL DEFAULT current_timestamp(),
  `LetterPath` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int(11) NOT NULL,
  `opportunity_ID` int(100) NOT NULL,
  `Company_Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Password` varchar(244) NOT NULL,
  `Comfirm_Password` varchar(244) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `opportunity_ID`, `Company_Name`, `email`, `Password`, `Comfirm_Password`, `Phone`, `Address`) VALUES
(4, 0, 'codesolutin', 'cs@gmal.com', '54321', '', '779663389', 'ibweni'),
(5, 0, 'sz', 'suza@gmal.com', '12345', '', '5567', 'hn'),
(6, 0, 'TCRA', 'tcra@gmal.com', 'azm', '', '0778876', 'gjjk'),
(7, 0, 'IPA', 'IPA@gmal.com', '12345', '', '064567899', 'Jumbi'),
(8, 0, 'EDH', 'edh@gmal.com', 'edh', '', '0623380991', 'Seoul'),
(9, 0, 'abdy', 'abdy12@gmail.com', '123', '', '06297633287', 'NGALAWA'),
(10, 0, 'mama', 'mama@gmail.com', '123', '', '0777720436', 'VUGA'),
(11, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'VUGA'),
(12, 0, 'mama', 'mama@gmail.com', '123', '', '0777720436', 'NGALAWA'),
(13, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'NGALAWA'),
(14, 0, 'theBitRiddler', 'thebitriddler@gmail.com', '123', '', '0769992202', 'Dar Es Salaam, P. O. Box 50, Tanzania'),
(15, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'AFRICA'),
(16, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'AFRICA'),
(17, 0, 'mama', 'mama@gmail.com', '123', '', '0777720436', 'TUNGUU'),
(18, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'AFRICA'),
(19, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'NGALAWA'),
(20, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'TUNGUU'),
(21, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'VUGA'),
(22, 0, 'mama', 'mama@gmail.com', '123', '', '06297633287', 'NGALAWA'),
(23, 0, 'suza', 'suza@gmail.com', '123', '', '0777720436', 'TUNGUU'),
(24, 0, 'ansufat', 'ansufat@gmail.com', '123', '', '06297633287', 'NGALAWA'),
(25, 0, 'mama', 'mama@gmail.com', '123', '', '0777720436', 'NGALAWA'),
(26, 0, 'suza', 'suza@gmail.com', '123', '', '0777720436', 'TUNGUU');

-- --------------------------------------------------------

--
-- Table structure for table `company_opportunity`
--

CREATE TABLE `company_opportunity` (
  `CompanyOpportunityID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `opportunityid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `LoginID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`LoginID`, `Email`, `Password`, `Role`, `Status`) VALUES
(10, 'straw@gmail.com', '123', 'IT', '1'),
(11, 'edh@gmal.com', '7d432f4a55a8ae2fb0426826e45e9506358b6bf39e7cb1dc9', 'COMPANY', '1'),
(13, 'moza@gmal.com', '086464a15c02d6a9290d3bcee68de444602a16a29798eaddd', 'IT', '1'),
(14, 'muniy@gmal.com', 'e15ded0f7020e2399e735862788b0f90d2416fdad04c7f477', 'IT', '1'),
(15, 'hisham@gmail.com', 'ed3f4b68dc240dee98ce6cec4d51029918c9d4d87fd7ff3bf', 'IT', '1'),
(16, 'abdy12@gmail.com', '57756b682ff3fba7698e5544b8a3b217a2510a116a23cb65d', 'IT', '1'),
(17, 'abdy12@gmail.com', '0e145ac56027c5f4dd3904ac0dddea8b0c2a0a5c037ac29d7', 'COMPANY', '1'),
(19, 'mama@gmail.com', '13e9b36814186e815e7c836508c8c176d81171338da09a0c2', 'COMPANY', '1'),
(20, 'nahida@gmail.com', '1c08cf7a69d8fe6cf51428b5742a3aaa26ea4a5d7d8899165', 'IT', '1'),
(21, 'nahida@gmail.com', 'abddbdc4a0a7b4e7e4d82cceeb8d907da71bdfb4689d0230d', 'IT', '1'),
(22, 'nahida@gmail.com', 'b01961afd61098bf57f4d07ccb40253974f231cd482cd9e02', 'IT', '1'),
(23, 'nahida@gmail.com', '2e4cc278f6ec6294643313986963925e75821d962eee59fd0', 'IT', '1'),
(26, 'nahida@gmail.com', '4e388fbe7d0026850a2eaa43d3095d4f8ca8d5588550f2c6c', 'IT', '1'),
(27, 'nahida@gmail.com', '2488ba1198a4d8bdfbc5a9f13955012b670bbf06bfac3915d', 'IT', '1'),
(28, 'thebitriddler@gmail.com', 'd8025c7ad3d670fb39a812c74c67a35f10769aa533a42f6d5', 'COMPANY', '1'),
(29, 'abudujanaally@gmail.com', '06365ef6b2f581865e41e949647cbc35826650a048f130f30', 'IT', '1'),
(30, 'nahida@gmail.com', '0214c672066a9a0ccf76c4cd8656e1ccbe2e82ac5dd4cfe44', 'IT', '1'),
(31, 'nahida@gmail.com', '7f755290043996c72b4c0adee8481020137e1bfc25b13727f', 'IT', '1'),
(32, 'nahida@gmail.com', 'a20c3766ee5946edd3aae16eb95934178da1a84dfaceec7b7', 'IT', '1'),
(33, 'mama@gmail.com', '9dd8e1b7f59579141b9d3b6741c3f3a0762dd7b8ae5f92bc2', 'COMPANY', '1'),
(34, 'mama@gmail.com', 'a4aecc5e411c0e5ec941c6df93f321329043a539be7d87ddc', 'COMPANY', '1'),
(35, 'nahida@gmail.com', 'f2a17f16d9f70a2f876139c8eb2c4fbaefbeeb3681604cac9', 'IT', '1'),
(36, 'abdy12@gmail.com', '79557fe847d8e35f306a1ff15f0f8c2950f28dc166140a38b', 'IT', '1'),
(37, 'mama@gmail.com', 'b6a4f77149e3978773986cbe5dad196375001e74f1d3643a8', 'COMPANY', '1'),
(38, 'mama@gmail.com', '4e26808d0cd7d2ea6b71a40c1146d385406d9fe99b0e19190', 'COMPANY', '1'),
(39, 'nahida@gmail.com', '028bea5d48aa08f4feb3a3aba3d1aa6f80db017839b2c32a4', 'IT', '1'),
(40, 'mama@gmail.com', '751cd10576aaaafc3259295dc32d6d7c3d763af70844e4bd2', 'COMPANY', '1'),
(41, 'abdy12@gmail.com', 'd3bd89708cb7afe9a8b2e98de97695acb692716878dbc8ef1', 'IT', '1'),
(42, 'mama@gmail.com', '36a3863b8c73101bbf20097b082d103a34eef30dd1f44aa96', 'COMPANY', '1'),
(43, 'mama@gmail.com', 'e363cdc37978775eb0df57219dc4d0bc116bf93c621578645', 'COMPANY', '1'),
(44, 'abdy12@gmail.com', '3c48c2e65b8833213066eb7f4719d5d1e003beff07de16aae', 'IT', '1'),
(45, 'abdy12@gmail.com', 'e2a62292a7ad195542989767659590ea115fff9600bc43d56', 'IT', '1'),
(46, 'abdy12@gmail.com', '5208585b85d21c87d9acef42df34c5d5bc9f5d5e81198aaf4', 'IT', '1'),
(47, 'nahida@gmail.com', '7904a2d358d3617917006e2f4c65c1b64799d0299e8a0af61', 'IT', '1'),
(48, 'nahida@gmail.com', 'f425e4399ea881e3a3512b8e76c417a0caf7b3407d7f99fd3', 'IT', '1'),
(49, 'mama@gmail.com', 'f7b1ca38a1288191fa7617121003a3016e3ad6109ea4a51ab', 'COMPANY', '1'),
(50, 'nahida@gmail.com', '40f67e5b733eecb062bd2496fba9f2eb4c531d6a6a8f47add', 'IT', '1'),
(51, 'suza@gmail.com', 'bd1efb9d2c315f10d3b2ca383f216c52162e7f046c593b5fc', 'COMPANY', '1'),
(52, 'nahida@gmail.com', '73859fc14577b5d9c9a14d8c1c958e5bda68edac990824b7c', 'IT', '1'),
(53, 'ansufat@gmail.com', 'a6d4e1b0157b3a944fc4e79a672c6db77b4dcfd89bca4efca', 'COMPANY', '1'),
(54, 'mama@gmail.com', 'c9e61c3f1b7422968fabe04343b890ddada6839669d134c44', 'COMPANY', '1'),
(55, 'nahida@gmail.com', '4a53e7c019934eeb11d7b273f5258af72cc8a8637a9f82418', 'IT', '1'),
(56, 'suza@gmail.com', 'd1cf144d3bce36d643a2c92c923804facf491ef2c09e60d7b', 'COMPANY', '1'),
(57, 'nahida@gmail.com', '6b9b0f6b664122c3bc04b66b2ab7c4e2f5ce694dbd22ceeb7', 'IT', '1');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `applicantId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `title`, `applicantId`, `name`, `email`, `message`, `created_at`) VALUES
(9, 'You loose', '1', 'theBitRiddler', 'thebitriddler@gmail.com', 'U got nothing ', '2024-08-15 15:24:14'),
(10, 'Passed', '16', 'theBitRiddler', 'thebitriddler@gmail.com', 'You made it. Bachu Ally. a.k.a Abudujana Ally', '2024-08-15 15:46:51'),
(11, 'ddsdfhgjhgfgc', '1', 'mama', 'mama@gmail.com', 'asdfghjukughf', '2024-08-15 19:22:00'),
(12, 'dfsghjk', '11', 'mama', 'mama@gmail.com', 'dsdfghjkl;ujhytgfr', '2024-08-15 19:23:42'),
(13, 'sdfg', '17', 'mama', 'mama@gmail.com', 'sdfghjhgfds', '2024-08-15 19:29:20'),
(14, 'abdy', '1', '<br />\r\n<b>Warning</b>:  Undefined variable $co_name in <b>C:\\xampp\\htdocs\\zann\\message-users.php</b> on line <b>29</b><br />\r\n', '<br />\r\n<b>Warning</b>:  Undefined variable $co_mail in <b>C:\\xampp\\htdocs\\zann\\message-users.php</b> on line <b>30</b><br />\r\n', 'aaaaaaa', '2024-08-16 08:28:29'),
(15, 'edah', '1', 'mama', 'mama@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaa', '2024-08-18 04:49:20'),
(16, 'nahida', '<br />\r\n<b>Warning</b>:  Undefined variable $applic in <b>C:\\xampp\\htdocs\\zann\\message-users.php</b> on line <b>28</b><br />\r\n', '<br />\r\n<b>Warning</b>:  Undefined variable $co_name in <b>C:\\xampp\\htdocs\\zann\\message-users.php</b> on line <b>29</b><br />\r\n', '<br />\r\n<b>Warning</b>:  Undefined variable $co_mail in <b>C:\\xampp\\htdocs\\zann\\message-users.php</b> on line <b>30</b><br />\r\n', 'sssssssssssssss', '2024-08-18 04:49:32'),
(17, 'nahida', '28', 'suza', 'suza@gmail.com', 'umekbliwa', '2024-08-20 03:45:46'),
(18, 'nahida', '28', 'suza', 'suza@gmail.com', 'haujakbliwa', '2024-08-20 07:36:13'),
(19, 'zzzzzzzzzzzz', '<br />\r\n<b>Notice</b>:  Undefined variable: applic in <b>C:\\xampp\\htdocs\\zannn\\message-users.php</b> on line <b>127</b><br />\r\n', '<br />\r\n<b>Notice</b>:  Undefined variable: co_name in <b>C:\\xampp\\htdocs\\zannn\\message-users.php</b> on line <b>128</b><br />\r\n', '<br />\r\n<b>Notice</b>:  Undefined variable: co_mail in <b>C:\\xampp\\htdocs\\zannn\\message-users.php</b> on line <b>129</b><br />\r\n', 'zzzzzzzzzzzzzzzz', '2024-08-22 04:28:57'),
(20, 'nahida', '30', '<br />\r\n<b>Notice</b>:  Undefined variable: co_name in <b>C:\\xampp\\htdocs\\zannn\\message-users.php</b> on line <b>128</b><br />\r\n', '<br />\r\n<b>Notice</b>:  Undefined variable: co_mail in <b>C:\\xampp\\htdocs\\zannn\\message-users.php</b> on line <b>129</b><br />\r\n', 'zzzzzzzzzzzzz', '2024-08-22 04:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `opportunity`
--

CREATE TABLE `opportunity` (
  `opportunityID` int(100) NOT NULL,
  `CompanyID` int(100) NOT NULL,
  `applicants_id` int(100) NOT NULL,
  `specialist_id` int(100) NOT NULL,
  `Tittle` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Requirements` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `ApplicationDeadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `opportunity`
--

INSERT INTO `opportunity` (`opportunityID`, `CompanyID`, `applicants_id`, `specialist_id`, `Tittle`, `Description`, `Type`, `Requirements`, `StartDate`, `EndDate`, `ApplicationDeadline`) VALUES
(12, 0, 0, 0, 'bbbbbbbbbb', 'fdgggggg', 'aaaa', 'bbbbbbbbbbbbb', '2024-08-08', '2024-08-23', '2024-08-09'),
(13, 0, 0, 0, 'aaaaa', 'aaaaaaaaaaaaa', 'wefrewf', 'bbbbbbbbbbbbb', '2024-08-23', '2024-08-16', '2024-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `SpecialistID` int(11) NOT NULL,
  `company_id` int(100) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `phone_Number` int(10) NOT NULL,
  `GitHub_Username` varchar(50) NOT NULL,
  `Speciality` varchar(255) NOT NULL,
  `Expirience` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`SpecialistID`, `company_id`, `FullName`, `Email`, `phone_Number`, `GitHub_Username`, `Speciality`, `Expirience`) VALUES
(5, 0, 'Nahida', 'nahida@gmail.com', 714885542, 'nahida', 'Front end developer', '3'),
(8, 0, 'Faraula', 'straw@gmail.com', 777123456, 'straw', 'Front end developer', '7'),
(10, 0, 'Moza', 'moza@gmal.com', 779663389, 'mozasaed', 'Front end developer', '6'),
(11, 0, 'Mounira T H', 'muniy@gmal.com', 779777789, 'muniy', 'Front end developer', '6'),
(12, 0, 'Zena Ali Omar', 'zeyna@gmail.com', 623380991, 'zeyna', 'Front end developer', '6'),
(13, 0, 'Zena Ali Omar', 'zeyna@gmail.com', 623380991, 'zeyna', 'Front end developer', '6'),
(14, 0, 'Zena Ali Omar', 'zeyna@gmail.com', 623380991, 'zeyna', 'Front end developer', '6'),
(16, 0, 'abdy', 'abdy12@gmail.com', 629763287, 'abdilahi', 'developer', '2'),
(26, 0, 'edah', 'nahida@gmail.com', 777282828, 'nahida', 'developer', '2'),
(27, 0, 'edah', 'nahida@gmail.com', 629763287, 'nahida', 'developer', '-3'),
(28, 0, 'edah', 'nahida@gmail.com', 2147483647, 'nahida', 'developer', '1'),
(29, 0, 'abdy', 'abdy12@gmail.com', 0, 'abdilahi', 'developer', '1'),
(30, 0, 'edah', 'nahida@gmail.com', 629763287, 'nahida', 'developer', '1'),
(31, 0, 'abdy', 'abdy12@gmail.com', 0, 'abdilahi', 'developer', '3'),
(32, 0, 'abdilahi haruna juma', 'abdy12@gmail.com', 2147483647, 'abdilahi', 'hacker', '3'),
(33, 0, 'abdilahi haruna juma', 'abdy12@gmail.com', 777282828, 'abdilahi', 'hacker', '3'),
(34, 0, 'abdilahi haruna juma', 'abdy12@gmail.com', 777282828, 'abdilahi', 'hacker', '3'),
(35, 0, 'edah', 'nahida@gmail.com', 777282828, 'nahida', 'hacker', '3'),
(36, 0, 'edah', 'nahida@gmail.com', 718880710, 'nahida', 'hacker', '1'),
(37, 0, 'edah', 'nahida@gmail.com', 629763287, 'nahida', 'hacker', '3'),
(38, 0, 'edah', 'nahida@gmail.com', 629763287, 'nahida', 'doctor', '1'),
(39, 0, 'edah', 'nahida@gmail.com', 629763278, 'nahida', 'developer', '-1'),
(40, 0, 'edah', 'nahida@gmail.com', 777282828, 'nahida', 'developer', '2');

-- --------------------------------------------------------

--
-- Table structure for table `specialistopportunity`
--

CREATE TABLE `specialistopportunity` (
  `SpecialistOpportunityID` int(11) NOT NULL,
  `SpecialistID` int(11) NOT NULL,
  `opportunityID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `fullname` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_rating`
--

CREATE TABLE `user_rating` (
  `rating_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `rating` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`ApplicantID`),
  ADD KEY `applicants_id` (`opportunityID`),
  ADD KEY `applicants_fk` (`SpecialistID`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `company_opportunity`
--
ALTER TABLE `company_opportunity`
  ADD PRIMARY KEY (`CompanyOpportunityID`),
  ADD KEY `opportunityID` (`opportunityid`),
  ADD KEY `CompanyID` (`CompanyID`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opportunity`
--
ALTER TABLE `opportunity`
  ADD PRIMARY KEY (`opportunityID`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`SpecialistID`);

--
-- Indexes for table `specialistopportunity`
--
ALTER TABLE `specialistopportunity`
  ADD PRIMARY KEY (`SpecialistOpportunityID`),
  ADD KEY `SpecialistID` (`SpecialistID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `user_rating`
--
ALTER TABLE `user_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `ApplicantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `CompanyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `company_opportunity`
--
ALTER TABLE `company_opportunity`
  MODIFY `CompanyOpportunityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `LoginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `opportunity`
--
ALTER TABLE `opportunity`
  MODIFY `opportunityID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `SpecialistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `specialistopportunity`
--
ALTER TABLE `specialistopportunity`
  MODIFY `SpecialistOpportunityID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_rating`
--
ALTER TABLE `user_rating`
  MODIFY `rating_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_fk` FOREIGN KEY (`SpecialistID`) REFERENCES `specialist` (`SpecialistID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applicants_ibfk_1` FOREIGN KEY (`opportunityID`) REFERENCES `opportunity` (`opportunityID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_opportunity`
--
ALTER TABLE `company_opportunity`
  ADD CONSTRAINT `company_opportunity_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`CompanyID`),
  ADD CONSTRAINT `opportunityID` FOREIGN KEY (`opportunityid`) REFERENCES `opportunity` (`opportunityID`);

--
-- Constraints for table `specialistopportunity`
--
ALTER TABLE `specialistopportunity`
  ADD CONSTRAINT `specialistopportunity_ibfk_1` FOREIGN KEY (`SpecialistID`) REFERENCES `specialist` (`SpecialistID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
