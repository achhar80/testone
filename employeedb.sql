-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 07:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeedb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `EmployeeAddorEdit` (IN `_EmpID` INT, `IN_Name` VARCHAR(45), `IN_EmpCode` VARCHAR(45), `IN_Salary` INT)  BEGIN
	IF _EmpID = 0 THEN
		INSERT INTO employee(Name,EmpCode,Salary)
		VALUES (_Name,_EmpCode,_Salary);

		SET _EmpID = LAST_INSERT_ID();
	ELSE
		UPDATE Employee
		SET
		Name = _Name,
		EmpCode = _EmpCode,
		Salary = _Salary
		WHERE EmpID = _EmpID;
	END IF;

	SELECT _EmpID AS 'EmpID';
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `EmpCode` varchar(45) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `Name`, `EmpCode`, `Salary`) VALUES
(1, 'Tommy Eatsheet', 'EMP90', 265400),
(2, 'Jess Fukenson', 'EMP92', 50000),
(5, 'Tommy Eatsheet new', 'EMP900', 26540),
(6, 'Tommy Eatsheet new1', 'EMP9000', 265401),
(7, 'Tommy Eatsheet new2', 'EMP9', 265402),
(8, 'Tommy Eatsheet new2', 'EMP9', 265402),
(9, 'Tommy Eatsheet new2', 'EMP9', 265402),
(10, 'Tommy Eatsheet new2', 'EMP9', 265402),
(11, 'Tommy Eatsheet new2', 'EMP9', 265402),
(12, 'Tommy Eatsheet new2', 'EMP9', 265402),
(14, 'Tommy Eatsheet new2', 'EMP9', 265402),
(15, 'Tommy Eatsheet new2', 'EMP9', 265402),
(16, 'Tommy Eatsheet new15', 'EMP915', 2654015),
(17, 'Tommy Eatsheet new0000', 'EMP9150', 26540150),
(18, 'Tommy Eatsheet 1108', 'EMP911', 265402000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'Tommy111', 'test@gmail.com', 'admin123', '0000-00-00 00:00:00'),
(3, 'TESTNEW', 'testdddd@gmail.com', 'admin123', '0000-00-00 00:00:00'),
(4, 'TESTNEW', 'testddddgmail.com', 'admin123', '0000-00-00 00:00:00'),
(5, 'TESTNEW', 'testdddd00@gmail.com', 'admin123', '0000-00-00 00:00:00'),
(6, 'TESTNEW', 'testddd@gmail.com', 'admin123', '0000-00-00 00:00:00'),
(7, 'TESTNEW', 'test000@gmail.com', 'admin123', '0000-00-00 00:00:00'),
(8, 'TESTNEW', '0test000@gmail.com', 'admin123', '0000-00-00 00:00:00'),
(9, 'test000', 'testnew@gmail.com', 'admin123', '0000-00-00 00:00:00'),
(10, 'test000', 'testnew@gmail1.com', 'admin123', '0000-00-00 00:00:00'),
(11, 'testadmin', 'testadmin@gmail1.com', 'admin123', '0000-00-00 00:00:00'),
(12, 'test test', 'testadmin1@gmail1.com', 'admin123', '0000-00-00 00:00:00'),
(13, 'tst test', 'testadmin10@gmail1.com', 'admin123', '0000-00-00 00:00:00'),
(14, 'tst test', 'testadmin11@gmail1.com', '$2b$10$9l1Vubco95ezdSik4xKn.uANzYxkRCACm6pRdnBZ2wm', '0000-00-00 00:00:00'),
(15, 'tst test', 'testadmin12@gmail1.com', 'admin123', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
