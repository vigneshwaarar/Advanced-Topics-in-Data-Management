-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2017 at 07:54 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `510labs`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_project`
--

CREATE TABLE `course_project` (
  `projectid` int(11) NOT NULL,
  `projectname` varchar(100) NOT NULL,
  `projectstatus` varchar(100) NOT NULL,
  `courseid` varchar(100) NOT NULL,
  `url_description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_project`
--

INSERT INTO `course_project` (`projectid`, `projectname`, `projectstatus`, `courseid`, `url_description`) VALUES
(90, 'News Website', 'Development Project', 'ITMD_523', ' Just like Yahoo News'),
(91, 'Flight ticket purchase system', 'Development Project', 'ITMD_523', ' Just like AA.com'),
(92, 'Inventory management system', 'Development Project', 'ITMD_523', ' Manage products and their quantities'),
(93, 'Library (Book Rental and Return) System', 'Development Project', 'ITMD_523', ' Just like school library system'),
(94, 'Blackboard System', 'Development Project', 'ITMD_523', ' Just like IIT Blackboard system'),
(95, 'Course-Enrollment System', 'Development Project', 'ITMD_523', 'Just like Amazon.com'),
(96, 'Food/Dishes Order System', 'Development Project', 'ITMD_523', ' Just like Uber eats, but web system'),
(97, 'Movie Rating and Reviews System', 'Development Project', ' ITMD_523', ' Just like IMDB.com'),
(98, 'Social Networks, like Facebook or Twitter', 'Development Project', 'ITMD_523', ' Just like Facebook or twitter'),
(99, 'E-Commerce Website', 'Development Project', 'ITMD_523', 'Just like Amazon.com'),
(100, 'News Website', 'Development Project', 'ITMD_523', ' Just like Yahoo News'),
(101, 'Flight ticket purchase system', 'Development Project', 'ITMD_523', ' Just like AA.com'),
(102, 'Inventory management system', 'Development Project', 'ITMD_523', ' Manage products and their quantities'),
(103, 'Library (Book Rental and Return) System', 'Development Project', 'ITMD_523', ' Just like school library system'),
(104, 'Blackboard System', 'Development Project', 'ITMD_523', ' Just like IIT Blackboard system'),
(105, 'Course-Enrollment System', 'Development Project', 'ITMD_523', 'Just like Amazon.com'),
(106, 'Food/Dishes Order System', 'Development Project', 'ITMD_523', ' Just like Uber eats, but web system'),
(107, 'Movie Rating and Reviews System', 'Development Project', ' ITMD_523', ' Just like IMDB.com'),
(108, 'Social Networks, like Facebook or Twitter', 'Development Project', 'ITMD_523', ' Just like Facebook or twitter'),
(109, 'HR-Employee Management System', 'Development Project', 'ITMD_523', NULL),
(110, 'Medical/HealthCare appointment system', 'Development Project', 'ITMD_523', ' Just like Facebook or twitter'),
(111, 'Payroll Information System', 'Development Project', 'ITMD_523', ' Just like Facebook or twitter'),
(112, 'Hotels/Room Reservation System', 'Development Project', 'ITMD_523', ' Just like Facebook or twitter'),
(113, 'Questionnaire System', 'Development Project', 'ITMD_523', ' Just like Facebook or twitter'),
(114, 'Online Video Streaming System, like YouTube', 'Development Project', 'ITMD_523', ' Just like Facebook or twitter'),
(115, 'File Management System', 'Development Project', 'ITMD_523', ' You can upload/delete/modify files and categories'),
(116, 'Online Music Streaming System, like Pandora ', 'Development Project', 'ITMD_523', ' '),
(117, 'Online Resume Builder and View System', 'Development Project', 'ITMD_523', ' You can build your CV/resume online '),
(118, 'E-Commerce Website', 'Development Project', 'ITMD_527', 'Just like Amazon.com'),
(119, 'News Website', 'Development Project', 'ITMD_527', ' Just like Yahoo News'),
(120, 'Flight ticket purchase system', 'Development Project', 'ITMD_527', ' Just like AA.com'),
(121, 'Inventory management system', 'Development Project', 'ITMD_527', ' Manage products and their quantities'),
(122, 'Library (Book Rental and Return) System', 'Development Project', 'ITMD_527', ' Just like school library system'),
(123, 'Blackboard System', 'Development Project', 'ITMD_527', ' Just like IIT Blackboard system'),
(124, 'Course-Enrollment System', 'Development Project', 'ITMD_527', 'Just like Amazon.com'),
(125, 'Food/Dishes Order System', 'Development Project', 'ITMD_527', ' Just like Uber eats, but web system'),
(126, 'Movie Rating and Reviews System', 'Development Project', ' ITMD_527', ' Just like IMDB.com'),
(127, 'Social Networks, like Facebook or Twitter', 'Development Project', 'ITMD_527', ' Just like Facebook or twitter'),
(128, 'HR-Employee Management System', 'Development Project', 'ITMD_527', NULL),
(129, 'Medical/HealthCare appointment system', 'Development Project', 'ITMD_527', ' Just like Facebook or twitter'),
(130, 'Payroll Information System', 'Development Project', 'ITMD_527', ' Just like Facebook or twitter'),
(131, 'Hotels/Room Reservation System', 'Development Project', 'ITMD_527', ' Just like Facebook or twitter'),
(132, 'Questionnaire System', 'Development Project', 'ITMD_527', ' Just like Facebook or twitter'),
(133, 'Online Video Streaming System, like YouTube', 'Development Project', 'ITMD_527', ' Just like Facebook or twitter'),
(134, 'File Management System', 'Development Project', 'ITMD_527', ' You can upload/delete/modify files and categories'),
(135, 'Online Music Streaming System, like Pandora ', 'Development Project', 'ITMD_527', ' '),
(136, 'Online Resume Builder and View System', 'Development Project', 'ITMD_527', ' You can build your CV/resume online '),
(137, 'E-Commerce Website', 'Development Project', 'ITMD_525', 'Just like Amazon.com'),
(138, 'News Website', 'Development Project', 'ITMD_525', ' Just like Yahoo News'),
(139, 'Flight ticket purchase system', 'Development Project', 'ITMD_525', ' Just like AA.com'),
(140, 'Inventory management system', 'Development Project', 'ITMD_525', ' Manage products and their quantities'),
(141, 'Library (Book Rental and Return) System', 'Development Project', 'ITMD_525', ' Just like school library system'),
(142, 'Blackboard System', 'Development Project', 'ITMD_525', ' Just like IIT Blackboard system'),
(143, 'Course-Enrollment System', 'Development Project', 'ITMD_525', 'Just like Amazon.com'),
(144, 'Food/Dishes Order System', 'Development Project', 'ITMD_525', ' Just like Uber eats, but web system'),
(145, 'Movie Rating and Reviews System', 'Development Project', ' ITMD_525', ' Just like IMDB.com'),
(146, 'Social Networks, like Facebook or Twitter', 'Development Project', 'ITMD_525', ' Just like Facebook or twitter'),
(147, 'HR-Employee Management System', 'Development Project', 'ITMD_525', NULL),
(148, 'Medical/HealthCare appointment system', 'Development Project', 'ITMD_525', ' Just like Facebook or twitter'),
(149, 'Payroll Information System', 'Development Project', 'ITMD_525', ' Just like Facebook or twitter'),
(150, 'Hotels/Room Reservation System', 'Development Project', 'ITMD_525', ' Just like Facebook or twitter'),
(151, 'Questionnaire System', 'Development Project', 'ITMD_525', ' Just like Facebook or twitter'),
(152, 'Online Video Streaming System, like YouTube', 'Development Project', 'ITMD_525', ' Just like Facebook or twitter'),
(153, 'File Management System', 'Development Project', 'ITMD_525', ' You can upload/delete/modify files and categories'),
(154, 'Online Music Streaming System, like Pandora ', 'Development Project', 'ITMD_525', ' '),
(155, 'DAMASSUUU', 'Development Project', 'ITMD_529', ' Just like Yahoo News'),
(156, 'DAMASSUUU', 'Development Project', 'ITMD_527', ' Just like Yahoo News');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_project`
--
ALTER TABLE `course_project`
  ADD PRIMARY KEY (`projectid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_project`
--
ALTER TABLE `course_project`
  MODIFY `projectid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2017 at 07:55 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `510labs`
--

-- --------------------------------------------------------

--
-- Table structure for table `Pref_Proj_Rating`
--

CREATE TABLE `pref_proj_rating` (
  `username` varchar(100) NOT NULL,
  `projectname` varchar(100) NOT NULL,
  `overall_rating` int(11) DEFAULT NULL,
  `domain_rating` int(11) DEFAULT NULL,
  `storage_rating` int(11) DEFAULT NULL,
  `easiness_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pref_Proj_Rating`
--

INSERT INTO `Pref_Proj_Rating` (`username`, `projectname`, `overall_rating`, `domain_rating`, `storage_rating`, `easiness_rating`) VALUES
('Lavanya Surikapuram', 'News Website', 3, 5, 4, 3),
('Lavanya Surikapuram', 'Flight ticket purchase system', 4, 5, 4, 4),
('Lavanya Surikapuram', 'Inventory management system', 5, 5, 3, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2017 at 07:56 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `510labs`
--

-- --------------------------------------------------------

--
-- Table structure for table `UnPref_Proj_Rating`
--

CREATE TABLE `unpref_proj_rating` (
  `username` varchar(100) NOT NULL,
  `projectname` varchar(100) NOT NULL,
  `overall_rating` int(11) DEFAULT NULL,
  `domain_rating` int(11) DEFAULT NULL,
  `storage_rating` int(11) DEFAULT NULL,
  `easiness_rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UnPref_Proj_Rating`
--

INSERT INTO `UnPref_Proj_Rating` (`username`, `projectname`, `overall_rating`, `domain_rating`, `storage_rating`, `easiness_rating`) VALUES
('Lavanya Surikapuram', 'Food/Dishes Order System', 2, 1, 2, 1),
('Lavanya Surikapuram', 'Social Networks, like Facebook or Twitter', 2, 1, 1, 1),
('Lavanya Surikapuram', 'HR-Employee Management System', 1, 2, 1, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2017 at 07:53 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `510labs`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_courses`
--

CREATE TABLE `user_courses` (
  `userName` varchar(100) NOT NULL,
  `courseID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_courses`
--

INSERT INTO `user_courses` (`userName`, `courseID`) VALUES
('Lavanya Surikapuram', 'ITMD_523');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2017 at 07:51 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `510labs`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_personal_infos`
--

CREATE TABLE `user_personal_infos` (
  `name` varchar(100) NOT NULL,
  `GENDER` varchar(20) DEFAULT NULL,
  `AGE_GRP` varchar(100) DEFAULT NULL,
  `MARRIAGE_STATUS` varchar(30) DEFAULT NULL,
  `COUNTRY` varchar(30) DEFAULT NULL,
  `Open_to_exp` int(11) DEFAULT NULL,
  `Conscientiousness` int(11) DEFAULT NULL,
  `Extraversion` int(11) DEFAULT NULL,
  `Agreeableness` int(11) DEFAULT NULL,
  `Neuroticism` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_personal_infos`
--

INSERT INTO `user_personal_infos` (`name`, `GENDER`, `AGE_GRP`, `MARRIAGE_STATUS`, `COUNTRY`, `Open_to_exp`, `Conscientiousness`, `Extraversion`, `Agreeableness`, `Neuroticism`) VALUES
('Lavanya Surikapuram', 'Female', 'Below 20 (20 is not included)', 'Single', 'INDIA', 1, 2, 3, 4, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_personal_infos`
--
ALTER TABLE `user_personal_infos`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



