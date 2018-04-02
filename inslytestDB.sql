
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `inslytestDB`
--

CREATE DATABASE `inslytestDB`;

USE `inslytestDB`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Phoneno` varchar(50) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `created_by` int(11) NOT NULL,
  `Status` varchar(15) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `employee_id`, `Address`, `Phoneno`, `Email`, `created_by`, `Status`) VALUES
(1, 1, 'Lagos, Naija', '08034275706', 'kc@6me.com', 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE IF NOT EXISTS `education` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `School` varchar(200) NOT NULL,
  `Certificate` text NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `Language` varchar(20) NOT NULL,
  `Status` varchar(15) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `employee_id`, `School`, `Certificate`, `StartDate`, `EndDate`, `created_by`, `Language`, `Status`) VALUES
(1, 1, 'Anam State School', 'SSCE', '1995-07-02', '2005-07-02', 1, 'English', 'Active'),
(2, 1, 'D''Ecole', 'SVBC', '1995-07-02', '2005-07-02', 1, 'French', 'Active'),
(3, 1, 'UYHN', 'WQAT', '1995-07-02', '2005-07-02', 1, 'Spanish', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Birthdate` date NOT NULL,
  `SSN` varchar(11) NOT NULL,
  `is_current_employe` varchar(5) NOT NULL,
  `created_by` int(11) NOT NULL,
  `Status` varchar(15) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `Name`, `Birthdate`, `SSN`, `is_current_employe`, `created_by`, `Status`) VALUES
(1, 'Ken', '2018-04-02', '23234543234', 'Yes', 1, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `intro`
--

CREATE TABLE IF NOT EXISTS `intro` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `Text` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `Language` varchar(20) NOT NULL,
  `Status` varchar(15) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intro`
--

INSERT INTO `intro` (`id`, `employee_id`, `Text`, `created_by`, `Language`, `Status`) VALUES
(1, 1, 'I am a Nigerian', 1, 'English', 'Active'),
(2, 1, 'J''m Apelle Nigerian', 1, 'French', 'Active'),
(3, 1, 'Uva Leme', 1, 'Spanish', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `Status` varchar(15) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Username`, `Password`, `Role`, `Status`) VALUES
(1, 'kencas', '&&888^^^^6__===++', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `workexperience`
--

CREATE TABLE IF NOT EXISTS `workexperience` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `Company` text NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `is_current_employee` varchar(5) NOT NULL,
  `created_by` int(11) NOT NULL,
  `Language` varchar(20) NOT NULL,
  `Status` varchar(15) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workexperience`
--

INSERT INTO `workexperience` (`id`, `employee_id`, `Company`, `StartDate`, `EndDate`, `is_current_employee`, `created_by`, `Language`, `Status`) VALUES
(1, 1, 'Kencas Systems', '2018-01-02', '2018-07-31', 'Yes', 1, 'English', 'Active'),
(2, 1, 'VUE', '2018-04-02', '2018-04-25', 'No', 1, 'French', 'Active'),
(3, 1, 'TNT', '2018-04-02', '2018-04-06', 'No', 1, 'Spanish', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workexperience`
--
ALTER TABLE `workexperience`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `intro`
--
ALTER TABLE `intro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `workexperience`
--
ALTER TABLE `workexperience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
