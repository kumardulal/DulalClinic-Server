-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 09:58 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myclinicver2`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient_checkup_info`
--

CREATE TABLE `patient_checkup_info` (
  `Id` int(20) NOT NULL,
  `patientId` int(11) NOT NULL,
  `dateOfAdmission` varchar(15) NOT NULL,
  `chiefComplaint` varchar(200) NOT NULL,
  `historyofpatientIllness` varchar(300) NOT NULL,
  `generalAppearance` varchar(200) NOT NULL,
  `BP` varchar(20) NOT NULL,
  `HR` int(11) NOT NULL,
  `RR` int(11) NOT NULL,
  `temperature` float NOT NULL,
  `o2Sat` int(11) NOT NULL,
  `weight` float NOT NULL,
  `skin` varchar(300) NOT NULL,
  `heent` varchar(300) NOT NULL,
  `neck` varchar(300) NOT NULL,
  `chest` varchar(300) NOT NULL,
  `CVS` varchar(300) NOT NULL,
  `abdomen` varchar(300) NOT NULL,
  `gut` varchar(300) NOT NULL,
  `extromities` varchar(300) NOT NULL,
  `neuro` varchar(300) NOT NULL,
  `admittingDiagnosis` varchar(300) NOT NULL,
  `treatment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_checkup_info`
--

INSERT INTO `patient_checkup_info` (`Id`, `patientId`, `dateOfAdmission`, `chiefComplaint`, `historyofpatientIllness`, `generalAppearance`, `BP`, `HR`, `RR`, `temperature`, `o2Sat`, `weight`, `skin`, `heent`, `neck`, `chest`, `CVS`, `abdomen`, `gut`, `extromities`, `neuro`, `admittingDiagnosis`, `treatment`) VALUES
(80, 14, '1608517205498', '', '', '', '5656565', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', ''),
(85, 108, '1608592927201', '', '', '', '120/50', 55, 25, 45, 452, 55, 'vdfsg', 'kjh', 'dffdsf', 'jkhjk', 'hjk', 'hjkhjkhjk', 'hjkh', 'jkhj', 'kgd', 'ghhjh', 'fgjh'),
(87, 110, '1608596644041', 'bjkhgjkgjkgjkj', 'gjkg', 'hjgkj', '120/60', 55, 45, 54, 62, 65, 'kg', 'jhjkgjkg', 'kgkkjk', 'jkgjk', 'gjkg', 'jkg', 'kjgk', 'kjgkj', 'gjkggjk', 'gjkgjkg', 'jkgjk'),
(88, 111, '1608597885282', 'sddff', 'gfdgfd', 'gfdgfdg', '120/50', 334, 434, 48, 4323, 43, 'gfdgdf', 'gfdgdfg', 'gfdgfd', 'gfdgfd', 'gfdg', 'gfdg', 'gdfg', 'gfdgf', 'gfg', 'fgdshbf r fdg dfsgds ', ' dgfsgdsfdsaf'),
(89, 112, '1608597980518', '', 'fdsfsdf', 'fdsfdsf', '120/80', 88, 78, 67, 78, 65, 'fdsfds', 'fdsfds', 'fdsfds', 'gfsdgfsdg', '', '', '', '', 'gdsfgfsdg', 'dfsfsdfsdfsdfdsf df\ndf\nd\nfd\nsf\n', 'fdsfsdfigdfgudhsfjd'),
(90, 113, '1608599257220', 'kjhkljhklHKLHKJLkjl', 'hjkh', 'jkhjk', '454', 44, 424, 545, 54, 54, 'jkh', 'jh', 'jkh', 'jh', 'jh', 'jkh', 'kjhgkj', 'gkj', 'gk', 'fgjh', 'fgjh'),
(91, 108, '1608655835269', 'gfdgfgfg', 'm,.nm,', 'fgfgn', '23', 323, 323, 2322, 343, 233, 'nm,n', 'm,n', ',mn', 'm,n', ',m.n,m', 'n,m', 'nm,n', 'm,.n', ',mn', 'm,n', 'm,nm'),
(92, 111, '1608660298918', 'fdsfdsfd', 'hjkh', 'ffdsf', '43', 434, 3443, 43423, 32, 3232, 'jklhkjhkjhjk', 'lhkjhjk', 'hjkhkj', 'hjkhjkhjkhkj', 'hjkhjkhkjh', 'jjkhjk', 'hjkhj', 'khjk', 'hjkhjk', 'hkjhjkhjk', 'hkjhkjh'),
(93, 114, '1608660442784', '656', 'jkhjk', 'khn', '23', 23, 655465, 66, 65, 565, 'hjk', 'hjkh', 'hjk', 'jkh', 'jkh', 'jkh', 'jkh', 'kjh', 'jkhj', 'khj', 'khj,,,,see me ????????????????????\nvfhdjfh'),
(94, 115, '1608660696145', '55gjhguyhu', 'kjh', 'jkh', '88', 88, 8, 885, 55, 55, 'j', 'h', 'hjh', 'kj', 'hjk', 'hj', 'hj', 'hkj', 'hkj', ';li', ';h'),
(95, 115, '1608660728270', '45', 'jik', '455', '8', 7789, 78, 78, 45, 75, 'uiy', 'i', 'uiti', 'uyjf', 'hjgkiy768buyijy', 'uty', 'tg', 'jhg', 'jh', 'gjkgh', 'uig'),
(96, 111, '1608661298822', '', '', '', '545645', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', ''),
(97, 116, '1608661354947', '', '', '', '545', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', ''),
(98, 116, '1608661394603', '', '', '', '46545475', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', ''),
(99, 118, '1608661714786', '', '', '', '', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'xr\nay'),
(100, 119, '1608661758812', '', '', '', '21', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'gdfgdfgg gfsdg \ngcb \njg y'),
(101, 119, '1608661885300', '', '', '', '232', 323, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 'rfrdtgf', 'gfgfertf  ret'),
(102, 110, '1608669655057', '', '', '', '23', 45, 65, 676, 0, 87, '', '', '', 'g', '', '', '', '', '', 'ghfdgfdgfd', 'gfdgfdgf'),
(103, 115, '1608682258595', '', '', '', '1212', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient_data`
--

CREATE TABLE `patient_data` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `dateofBirth` varchar(20) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `bloodType` varchar(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dateOfLatestAdmission` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_data`
--

INSERT INTO `patient_data` (`id`, `name`, `dateofBirth`, `gender`, `bloodType`, `address`, `dateOfLatestAdmission`) VALUES
(108, 'teranam', '2020-12-29', 'm', 'A', '34 street bazar nepal', '1608655835269'),
(110, 'John Cena ', '2020-01-16', 'Male', 'B+', 'CEbu city', '1608669655057'),
(111, 'king', '1994-01-04', 'female', 'O +', 'jamal ,kathmandu', '1608661298822'),
(112, 'john Carter', '1994-07-07', 'Male', 'B-', 'selfie danda,sindhuli', '1608597980518'),
(113, 'tari mana mnxe', '2020-12-31', 'female', 'fdsf', 'fdsfds', '1608599257220'),
(114, 'Japan tokyo', '1990-06-07', 'female', 'A+', 'Birjuing', '1608660442784'),
(115, 'mero maan ', '199688-03-04', 'male ', 'A+', '23 street , bangladesh', '1608682258595'),
(116, 'ganesh', '2020-12-14', 'male', 'a', 'hfguj', '1608661394603'),
(117, '', '', '', '', '', ''),
(118, '', '', '', '', '', '1608661714786'),
(119, 'jakel', '2020-12-01', 'fg', 'gfg', 'gfdg', '1608661885300');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_checkup_info`
--
ALTER TABLE `patient_checkup_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `patient_data`
--
ALTER TABLE `patient_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient_checkup_info`
--
ALTER TABLE `patient_checkup_info`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `patient_data`
--
ALTER TABLE `patient_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
