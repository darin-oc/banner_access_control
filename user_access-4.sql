-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Dec 11, 2015 at 08:43 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_access`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `role_before` int(11) NOT NULL,
  `role_after` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `editor_id` int(11) NOT NULL,
  `class_object_role_id` int(11) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_class_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `role_before`, `role_after`, `time_stamp`, `editor_id`, `class_object_role_id`, `activity_type`, `group_id`, `group_class_id`) VALUES
(1, 1, 2, '2015-12-10 18:12:41', 2, 1, 'Change Role', 0, 0),
(2, 1, 2, '2015-12-10 16:25:00', 3, 1, 'Change Role', 0, 0),
(3, 2, 1, '2015-12-10 16:29:18', 3, 1, 'Change Role', 0, 0),
(4, 3, 4, '2015-12-10 16:32:58', 3, 1, 'Change Role', 0, 0),
(5, 1, 4, '2015-12-10 16:36:55', 3, 1, 'Change Role', 0, 0),
(6, 3, 4, '2015-12-10 16:39:02', 3, 1, 'Change Role', 0, 0),
(7, 1, 2, '2015-12-10 18:02:48', 3, 3, 'Change Role', 0, 0),
(8, 2, 1, '2015-12-10 18:04:26', 3, 5, 'Change Role', 0, 0),
(9, 4, 2, '2015-12-10 18:05:46', 3, 2, 'Change Role', 0, 0),
(10, 1, 3, '2015-12-10 18:08:42', 3, 5, 'Change Role', 0, 0),
(11, 4, 3, '2015-12-10 18:17:22', 3, 1, 'Change Role', 0, 0),
(12, 3, 1, '2015-12-10 18:52:56', 3, 1, 'Change Role', 0, 0),
(13, 3, 1, '2015-12-11 14:03:51', 3, 1, 'Change Role', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_description`) VALUES
(1, 'STAFF_RAR_FULL', ''),
(2, 'STAFF_RAR_PARTIAL', ''),
(3, 'STAFF_OCCS_FULL', '');

-- --------------------------------------------------------

--
-- Table structure for table `class_object_role`
--

CREATE TABLE `class_object_role` (
  `class_object_role_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_object_role`
--

INSERT INTO `class_object_role` (`class_object_role_id`, `class_id`, `object_id`, `role_id`, `time_stamp`) VALUES
(1, 1, 1, 1, '2015-12-10 18:52:56'),
(2, 2, 1, 2, '2015-12-10 18:05:46'),
(3, 2, 2, 2, '2015-12-10 18:02:48'),
(4, 3, 1, 3, '2015-12-09 16:41:58'),
(5, 1, 3, 3, '2015-12-10 18:08:42'),
(6, 1, 4, 3, '2015-12-08 14:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `editor_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`editor_id`, `staff_id`, `first_name`, `last_name`, `password`) VALUES
(1, 312345678, 'John', 'Doe', 'test'),
(2, 323456789, 'Jane', 'Doe', 'test'),
(3, 1000003, 'Use-Session', 'Id', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `editor_group_permission`
--

CREATE TABLE `editor_group_permission` (
  `editor_group_permission_id` int(11) NOT NULL,
  `editor_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editor_group_permission`
--

INSERT INTO `editor_group_permission` (`editor_group_permission_id`, `editor_id`, `group_id`, `permission_id`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(45) NOT NULL,
  `group_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `group_name`, `group_description`) VALUES
(1, 'RAR', ''),
(2, 'OCCS', 'Open Campus Country Sites'),
(3, 'test group', 'test desc'),
(4, '', ''),
(5, 'test2', 'test2 desc'),
(6, 'test2', 'test2 desc'),
(7, 'test2', 'test2 desc'),
(8, 'APAD', 'Academic Programming and Delivery'),
(9, 'APAD', 'Academic Programming and Delivery'),
(10, 'APAD', 'Academic Programming and Delivery'),
(11, 'APAD', 'Academic Programming and Delivery'),
(12, 'DFATD', ' DFATD description'),
(13, 'DFATD', ' DFATD description'),
(14, 'DFATD', ' DFATD description'),
(15, 'DFATD', ' DFATD description'),
(16, 'DEC', 'dec description'),
(17, 'DEC', 'dec description'),
(18, 'DEC', 'dec description'),
(19, 'OPEN', 'Open description'),
(20, 'OPEN', 'Open description'),
(21, 'OPEN', 'Open description'),
(22, 'Clo', ' desc'),
(23, 'Clo', ' desc'),
(24, 'Clo', ' desc'),
(25, 'Clo', 'description'),
(26, 'Clo', 'description'),
(27, 'Clo', ''),
(28, 'Clo', ''),
(29, 'APAD', ''),
(30, 'APAD', ''),
(31, 'APAD', 'description'),
(32, 'APAD', ''),
(33, 'APAD', 'description'),
(34, 'APAD', ''),
(35, 'APAD', 'description'),
(36, 'APAD', ''),
(37, 'APAD', 'dec description'),
(38, 'test4', ''),
(39, 'test4', ''),
(40, 'test4', ''),
(41, 'test4', ''),
(42, 'APAD', ''),
(43, 'APAD', ''),
(44, 'APAD', 'Academic Programming and Delivery'),
(45, 'APAD', ''),
(46, 'APAD2', ''),
(47, 'APAD2', ''),
(48, 'APAD2', ''),
(49, 'APAD', ''),
(50, 'APAD', 'dec description');

-- --------------------------------------------------------

--
-- Table structure for table `group_class`
--

CREATE TABLE `group_class` (
  `group_class_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_class`
--

INSERT INTO `group_class` (`group_class_id`, `group_id`, `class_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `group_user`
--

CREATE TABLE `group_user` (
  `group_user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `object_id` int(11) NOT NULL,
  `form` varchar(45) NOT NULL,
  `form_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `object`
--

INSERT INTO `object` (`object_id`, `form`, `form_description`) VALUES
(1, 'GOAINTL', 'International Information Form'),
(2, 'GOAMEDI', 'Medical Information Form'),
(3, 'GOAMTCH', 'Common Matching Entry'),
(4, 'GOAPGEO', 'Geographic Regions/Divisions by ID');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `permission_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `permission_name`) VALUES
(1, 'Admin'),
(2, 'Group manager'),
(3, 'Editor');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `role_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`, `role_description`) VALUES
(1, 'M', 'Manipulate'),
(2, 'Q', 'Query'),
(3, 'No', 'No access'),
(4, 'Empty', 'Empty or no role assigned.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `org_id`, `first_name`, `last_name`) VALUES
(1, 1, 'Anna', 'Adam'),
(2, 2, 'Ben', 'Banner');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_select_role`
--
CREATE TABLE `view_user_select_role` (
`object_id` int(11)
,`form` varchar(45)
,`form_description` varchar(255)
,`class_id` int(11)
,`class_name` varchar(255)
,`role_id` int(11)
,`role` varchar(45)
,`role_description` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `view_user_select_role`
--
DROP TABLE IF EXISTS `view_user_select_role`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_select_role` AS select `class_object_role`.`object_id` AS `object_id`,`object`.`form` AS `form`,`object`.`form_description` AS `form_description`,`class_object_role`.`class_id` AS `class_id`,`class`.`class_name` AS `class_name`,`class_object_role`.`role_id` AS `role_id`,`role`.`role` AS `role`,`role`.`role_description` AS `role_description` from (((`class_object_role` left join `class` on((`class_object_role`.`class_id` = `class`.`class_id`))) left join `object` on((`class_object_role`.`object_id` = `object`.`object_id`))) left join `role` on((`class_object_role`.`role_id` = `role`.`role_id`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `user_id` (`editor_id`),
  ADD KEY `class_object_role_id` (`class_object_role_id`),
  ADD KEY `group_id` (`group_id`,`group_class_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `class_object_role`
--
ALTER TABLE `class_object_role`
  ADD PRIMARY KEY (`class_object_role_id`),
  ADD KEY `class_object_role_id` (`class_object_role_id`),
  ADD KEY `class_id` (`class_id`,`object_id`,`role_id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`editor_id`),
  ADD KEY `user_id` (`editor_id`);

--
-- Indexes for table `editor_group_permission`
--
ALTER TABLE `editor_group_permission`
  ADD PRIMARY KEY (`editor_group_permission_id`),
  ADD KEY `user_group_permission_id` (`editor_group_permission_id`),
  ADD KEY `user_id` (`editor_id`,`group_id`,`permission_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `group_class`
--
ALTER TABLE `group_class`
  ADD PRIMARY KEY (`group_class_id`),
  ADD KEY `group_id` (`group_id`,`class_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `group_user`
--
ALTER TABLE `group_user`
  ADD PRIMARY KEY (`group_user_id`),
  ADD KEY `group_user_id` (`group_user_id`),
  ADD KEY `group_id` (`group_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`object_id`),
  ADD KEY `object_id` (`object_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `class_object_role`
--
ALTER TABLE `class_object_role`
  MODIFY `class_object_role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `editor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `editor_group_permission`
--
ALTER TABLE `editor_group_permission`
  MODIFY `editor_group_permission_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `group_class`
--
ALTER TABLE `group_class`
  MODIFY `group_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `group_user`
--
ALTER TABLE `group_user`
  MODIFY `group_user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `object`
--
ALTER TABLE `object`
  MODIFY `object_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`class_object_role_id`) REFERENCES `class_object_role` (`class_object_role_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_ibfk_3` FOREIGN KEY (`editor_id`) REFERENCES `editor` (`editor_id`) ON UPDATE CASCADE;

--
-- Constraints for table `class_object_role`
--
ALTER TABLE `class_object_role`
  ADD CONSTRAINT `class_object_role_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `object` (`object_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `class_object_role_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `class_object_role_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON UPDATE CASCADE;

--
-- Constraints for table `editor_group_permission`
--
ALTER TABLE `editor_group_permission`
  ADD CONSTRAINT `editor_group_permission_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `editor_group_permission_ibfk_3` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `editor_group_permission_ibfk_4` FOREIGN KEY (`editor_id`) REFERENCES `editor` (`editor_id`) ON UPDATE CASCADE;

--
-- Constraints for table `group_class`
--
ALTER TABLE `group_class`
  ADD CONSTRAINT `group_class_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_class_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON UPDATE CASCADE;

--
-- Constraints for table `group_user`
--
ALTER TABLE `group_user`
  ADD CONSTRAINT `group_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_user_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
