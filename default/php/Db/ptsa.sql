-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 03:35 PM
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
-- Database: `ptsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_operations`
--

CREATE TABLE `access_operations` (
  `OperationId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `NewRecords` varchar(50) NOT NULL DEFAULT 'N/A',
  `Access_on_delete` varchar(25) NOT NULL,
  `Access_on_update` varchar(25) NOT NULL,
  `DateModified` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_operations`
--

INSERT INTO `access_operations` (`OperationId`, `UserId`, `NewRecords`, `Access_on_delete`, `Access_on_update`, `DateModified`) VALUES
(1, 10, 'RevokedToAdd', 'GrantedDelete', 'GrantedUpdate', '2024-04-07'),
(2, 11, 'RevokedToAdd', 'GrantedDelete', 'GrantedUpdate', '2024-04-11'),
(3, 12, 'RevokedToAdd', 'GrantedDelete', 'GrantedUpdate', '2024-04-17'),
(4, 13, 'RevokedToAdd', 'GrantedDelete', 'RevokedUpdate', '2024-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `C_Id` int(11) NOT NULL,
  `TIN` varchar(250) NOT NULL,
  `CompanyName` varchar(250) NOT NULL,
  `Phone` varchar(35) NOT NULL DEFAULT '	N/A',
  `isDeleted` varchar(25) NOT NULL DEFAULT 'notDeleted',
  `DateAdded` varchar(25) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`C_Id`, `TIN`, `CompanyName`, `Phone`, `isDeleted`, `DateAdded`) VALUES
(0, 'No TIN', 'N/A', '	N/A', 'notDeleted', '2024-04-13 17:58:19'),
(1, '04328945718', 'Prince & Runner', '0792054848', 'notDeleted', '2024-04-13 17:58:19'),
(2, '387589345789', 'Prince & Neuro', '0792054848', 'Deleted', '2024-04-13 17:58:19'),
(3, '101883944', 'Sun Shine Travel', '0788612225', 'notDeleted', '2024-04-13 17:58:19'),
(6, '104468163', 'AVIC _R_', '	N/A', 'notDeleted', '2024-04-15 13:01:33'),
(7, '334577', 'KIKI', '	N/A', 'notDeleted', '2024-04-17 15:35:26'),
(8, '107680817', 'SINOHYDRO CORPORATION LIMITED', '	N/A', 'notDeleted', '2024-04-17 17:38:52'),
(9, '104468163', 'AVIC INTERNATIONAL ENGINEERING (R)', '	N/A', 'notDeleted', '2024-04-17 17:40:06'),
(10, '09845425', 'CESC DIV LTD', 'N/A', 'notDeleted', '2024-04-17 23:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `MetricId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Me_Action` varchar(500) NOT NULL,
  `isDeleted` varchar(45) NOT NULL DEFAULT 'notDeleted',
  `Me_Date` varchar(25) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metrics`
--

INSERT INTO `metrics` (`MetricId`, `UserId`, `Me_Action`, `isDeleted`, `Me_Date`) VALUES
(1, 2, 'UniqueDe DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($3,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 11:40:29'),
(2, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($3,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:10:11'),
(3, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($3,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:11:47'),
(4, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (002313) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-12) Date at the (KGL - BUG) Travel on the ticket\r\n        bought on (9000 - $) Ticket System Price with (120 - $) Commission Ticket System Price.', 'Deleted', '2024-04-13 12:12:22'),
(5, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (002313) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-12) Date at the (KGL - BUG) Travel on the ticket\r\n        bought on (9000 - $) Ticket System Price with (220 - $) Commission Ticket System Price.', 'Deleted', '2024-04-13 12:12:44'),
(6, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:12:55'),
(7, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:13:29'),
(8, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:14:37'),
(9, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:14:53'),
(10, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:15:06'),
(11, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:15:14'),
(12, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:15:29'),
(13, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:18:56'),
(14, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:19:16'),
(15, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:19:20'),
(16, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:19:39'),
(17, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:20:20'),
(18, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:20:41'),
(19, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:20:45'),
(20, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:20:56'),
(21, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:24:04'),
(22, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:24:08'),
(23, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:24:33'),
(24, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:26:53'),
(25, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:27:09'),
(26, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:27:20'),
(27, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-12) Date at the (KGL - CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (8000 - Rwf) Commission Ticket System Price.', 'Deleted', '2024-04-13 12:27:42'),
(28, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (0003221) Ticket number that was refunded on (1,200,000Rwf) Price(MoneyBack)\r\n        on (Prince Parfait) Passenger name with (3593434) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:27:49'),
(29, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (0003221) Ticket number that was refunded on (1,200,000Rwf) Price(MoneyBack)\r\n        on (Prince Parfait) Passenger name with (3593434) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:41:15'),
(30, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (0003221) Ticket number that was refunded on (1,200,000Rwf) Price(MoneyBack)\r\n        on (Prince Parfait) Passenger name with (3593434) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:41:19'),
(31, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 12:58:02'),
(32, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 13:11:23'),
(33, 2, 'NSHIMIYIMANA DIEUDONNE - Admin deleted this ticket in the system with (002313) TicketNumber,\r\n        (Parfait Henry) Passenger Name who was going to travel in (KGL - BUG) Travel and ($9,000) Ticket System Pricewith $310 System Commission Price and $220 Owner Commission that has been sold on 2024-04-12 IssueDate with Complete - Status.', 'Deleted', '2024-04-13 13:17:10'),
(34, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-12) Date at the (KGL - CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (8000 - Rwf) Commission Ticket System Price.', 'Deleted', '2024-04-13 13:44:31'),
(35, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this company details with (101883944) TIN Number successfully in the system.', 'Deleted', '2024-04-13 14:01:03'),
(36, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (02048221) Ticket Number that was issued on\r\n        (Peter Ban) Passenger Name that has been issued at (2024-04-13) Date at the (KGL - DOH) Travel on the ticket\r\n        bought on (475000 - Rwf) Ticket System Price with (85000 - Rwf) Commission Ticket System Price.', 'Deleted', '2024-04-13 14:32:35'),
(37, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this company details with (101883944) TIN Number successfully in the system.', 'Deleted', '2024-04-13 14:35:34'),
(38, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (0003221) Ticket number that was refunded on (1,200,000Rwf) Price(MoneyBack)\r\n        on (Prince Parfait) Passenger name with (3593434) passport number from (Sun Shine Travel) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 14:52:21'),
(39, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (0003221) Ticket number that was refunded on (1,200,000Rwf) Price(MoneyBack)\r\n        on (Prince Parfait) Passenger name with (3593434) passport number from (Sun Shine Travel) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 14:57:02'),
(40, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (0003221) Ticket number that was refunded on (1,200,000Rwf) Price(MoneyBack)\r\n        on (Prince Parfait) Passenger name with (3593434) passport number from (Sun Shine Travel) Company name on (13/04/2024) Date.', 'notDeleted', '2024-04-13 14:58:04'),
(41, 2, 'NSHIMIYIMANA DIEUDONNE - Admin refunded this ticket with (002313) Ticket number that was refunded on ($9,000) Price(MoneyBack)\r\n        on (Parfait Henry) Passenger name with (34983920) passport number from (Prince & Runner) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 14:58:14'),
(42, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (220) ReIssue Fees\r\n        on () Passenger name with () passport number from (1) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 15:48:24'),
(43, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (85000) ReIssue Fees\r\n        on () Passenger name with () passport number from (3) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 15:51:45'),
(44, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (220) ReIssue Fees\r\n        on () Passenger name with () passport number from (1) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 15:53:18'),
(45, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (85000) ReIssue Fees\r\n        on () Passenger name with () passport number from (3) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 16:09:48'),
(46, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (85000) ReIssue Fees\r\n        on () Passenger name with () passport number from (3) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 16:11:13'),
(47, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (85000) ReIssue Fees\r\n        on () Passenger name with () passport number from (3) Company name on (13/04/2024) Date.', 'Deleted', '2024-04-13 16:11:28'),
(48, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (10) ReIssue Fees\r\n        on () Passenger name with () passport number from (0) Company name on (14/04/2024) Date.', 'notDeleted', '2024-04-14 16:57:51'),
(49, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (10) ReIssue Fees\r\n        on () Passenger name with () passport number from (0) Company name on (14/04/2024) Date.', 'Deleted', '2024-04-14 16:58:36'),
(50, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (002313) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-12) Date at the (KGL - BUG) Travel on the ticket\r\n        bought on (9000 - $) Ticket System Price with (220 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-14 21:13:45'),
(51, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (002313) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-12) Date at the (KGL - BUG) Travel on the ticket\r\n        bought on (90000 - Rwf) Ticket System Price with (220 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-14 21:13:59'),
(52, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (53485358930) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-13) Date at the (KGL - DOH) Travel on the ticket\r\n        bought on (1895429 - Rwf) Ticket System Price with (65000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-14 21:27:58'),
(53, 11, 'Prince Parfait changed his/her password to the new one.', 'Deleted', '2024-04-14 23:21:16'),
(54, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (35000) ReIssue Fees\r\n        on () Passenger name with () passport number from (NoCompany) Company name on (15/04/2024) Date.', 'notDeleted', '2024-04-15 12:57:27'),
(55, 11, '(Prince Parfait - Admin) updated this ticket with (CB319381092TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL - CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-15 13:06:42'),
(56, 11, '(Prince Parfait - Admin) updated this ticket with (53485358930) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-13) Date at the (KGL - DOH) Travel on the ticket\r\n        bought on (1895429 - Rwf) Ticket System Price with (65000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-15 13:06:50'),
(57, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (20) ReIssue Fees\r\n        on () Passenger name with () passport number from (AVIC INTERNATIONAL ENGINEERING (R)) Company name on (15/04/2024) Date.', 'notDeleted', '2024-04-15 13:07:29'),
(58, 11, 'Prince Parfait - Admin refunded this ticket with (38940924820) Ticket number that was refunded on (200Rwf) Price(MoneyBack)\r\n        on (Prince Parfait) Passenger name with (ED48239482) passport number from (AVIC INTERNATIONAL ENGINEERING (R)) Company name on (15/04/2024) Date.', 'notDeleted', '2024-04-15 13:12:58'),
(59, 11, '(Prince Parfait - Admin) updated this ticket with (53485358930) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-13) Date at the (KGL - DOH) Travel on the ticket\r\n        bought on (1895429 - Rwf) Ticket System Price with (65000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-15 13:42:08'),
(60, 11, '(Prince Parfait - Admin) updated this ticket with (02048221) Ticket Number that was issued on\r\n        (Peter Ban) Passenger Name that has been issued at (2024-04-13) Date at the (KGL - DOH) Travel on the ticket\r\n        bought on (475000 - Rwf) Ticket System Price with (85000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-15 13:42:45'),
(61, 11, '(Prince Parfait - Admin) updated this ticket with (CB319381092TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL - CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-15 13:43:00'),
(62, 11, '(Prince Parfait - Admin) updated this ticket with (38940924820) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-14) Date at the (KGL - EBB) Travel on the ticket\r\n        bought on (200 - Rwf) Ticket System Price with (45 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-15 13:43:06'),
(63, 11, 'Prince Parfait - Admin deleted this ticket in the system with (53485358930) TicketNumber,\r\n        (Parfait Henry) Passenger Name who was going to travel in (KGL - DOH) Travel and (1,895,429Rwf) Ticket System Pricewith 45,200Rwf System Commission Price and 65,000Rwf Owner Commission that has been sold on 2024-04-13 IssueDate with Complete - Status.', 'notDeleted', '2024-04-15 14:05:19'),
(64, 11, '(Prince Parfait - Admin) updated this company details with (104468163) TIN Number successfully in the system.', 'notDeleted', '2024-04-16 11:54:40'),
(65, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-12) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (8000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 12:00:14'),
(66, 11, '(Prince Parfait - Admin) updated this ticket with (002313) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-12) Date at the (KGL-BUG) Travel on the ticket\r\n        bought on (90000 - Rwf) Ticket System Price with (220 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 12:00:23'),
(67, 11, '(Prince Parfait - Admin) updated this ticket with (02048221) Ticket Number that was issued on\r\n        (Peter Ban) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-DOH) Travel on the ticket\r\n        bought on (475000 - Rwf) Ticket System Price with (85000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 12:00:29'),
(68, 11, '(Prince Parfait - Admin) updated this ticket with (CB319381092TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 12:00:34'),
(69, 11, '(Prince Parfait - Admin) updated this ticket with (1573415347836) Ticket Number that was issued on\r\n        (DIDROS) Passenger Name that has been issued at (2024-04-15) Date at the (KGL-DOH) Travel on the ticket\r\n        bought on (347 - Rwf) Ticket System Price with (50 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 12:00:40'),
(70, 11, '(Prince Parfait - Admin) updated this ticket with (38940924820) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-14) Date at the (KGL-EBB) Travel on the ticket\r\n        bought on (200 - Rwf) Ticket System Price with (45 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 12:00:46'),
(71, 11, '(Prince Parfait - Admin) updated this ticket with (CB319381092TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 13:13:08'),
(72, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (210) ReIssue Fees\r\n        on () Passenger name with () passport number from (AVIC _R_) Company name on (16/04/2024) Date.', 'notDeleted', '2024-04-16 13:15:19'),
(73, 11, 'Prince Parfait - Admin refunded this ticket with (02048221) Ticket number that was refunded on (475,000Rwf) Price(MoneyBack)\r\n        on (Peter Ban) Passenger name with (3894239820) passport number from (Sun Shine Travel) Company name on (16/04/2024) Date.', 'notDeleted', '2024-04-16 13:37:22'),
(74, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (12) ReIssue Fees\r\n            on () Passenger name with () passport number from (Sun Shine Travel) Company name on (16/04/2024) Date.', 'notDeleted', '2024-04-16 14:23:13'),
(75, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (00) ReIssue Fees\r\n            on () Passenger name with () passport number from (Sun Shine Travel) Company name on (16/04/2024) Date.', 'notDeleted', '2024-04-16 14:23:42'),
(76, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Ketty Keria) Passenger Name that has been issued at (2024-04-16) Date at the (KGL-MYD) Travel on the ticket\r\n        bought on (1200 - Rwf) Ticket System Price with (150 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 14:33:52'),
(77, 11, '(Prince Parfait - Admin) updated this ticket with (CB319381092TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 15:59:40'),
(78, 11, '(Prince Parfait - Admin) updated this ticket with (02048221) Ticket Number that was issued on\r\n        (Peter Ban) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-DOH) Travel on the ticket\r\n        bought on (475000 - Rwf) Ticket System Price with (85000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 20:27:21'),
(79, 11, '(Prince Parfait - Admin) updated this ticket with (02048221) Ticket Number that was issued on\r\n        (Peter Ban) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-DOH) Travel on the ticket\r\n        bought on (475000 - $) Ticket System Price with (85000 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-16 21:12:16'),
(80, 11, '(Prince Parfait - Admin) updated this ticket with (CB319381092TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 21:13:33'),
(81, 11, '(Prince Parfait - Admin) updated this ticket with (CB319381092TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - $) Ticket System Price with (80000 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-16 21:15:59'),
(82, 11, '(Prince Parfait - Admin) updated this ticket with (002313) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-12) Date at the (KGL-BUG) Travel on the ticket\r\n        bought on (90000 - Rwf) Ticket System Price with (220 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-16 21:28:39'),
(83, 11, '(Prince Parfait - Admin) updated this ticket with (002313) Ticket Number that was issued on\r\n        (Parfait Henry) Passenger Name that has been issued at (2024-04-12) Date at the (KGL-BUG) Travel on the ticket\r\n        bought on (90000 - $) Ticket System Price with (220 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-16 21:30:00'),
(84, 11, '(Prince Parfait - Admin) updated this ticket with (38940924820) Ticket Number that was issued on\r\n        (MUGISHA Jean) Passenger Name that has been issued at (2024-04-14) Date at the (KGL-EBB) Travel on the ticket\r\n        bought on (200 - Rwf) Ticket System Price with (45 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-17 10:21:23'),
(85, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-12) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (8000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-17 10:35:33'),
(86, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-12) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - $) Ticket System Price with (8000 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-17 10:39:46'),
(87, 12, '(HABINTWALI IBRAHIM - User) reissued this ticket with () Ticket number that was reissued on (85) ReIssue Fees\r\n        on () Passenger name with () passport number from (NoCompany) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 15:28:57'),
(88, 12, '(HABINTWALI IBRAHIM - User) refunded this ticket with () Ticket number that was refunded on (65) ReIssue Fees\r\n            on () Passenger name with () passport number from (NoCompany) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 15:36:30'),
(89, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (90) ReIssue Fees\r\n        on () Passenger name with () passport number from (NoCompany) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 16:37:40'),
(90, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (70) ReIssue Fees\r\n        on () Passenger name with () passport number from (NoCompany) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 16:48:30'),
(91, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on () ReIssue Fees\r\n        on () Passenger name with () passport number from (NoCompany) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 16:53:01'),
(92, 11, '(Prince Parfait - Admin) updated this ticket with (01391203232) Ticket Number that was issued on\r\n        (Valan) Passenger Name that has been issued at (2024-04-03) Date at the (KGL-AER) Travel on the ticket\r\n        bought on (870 - $) Ticket System Price with (150 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-17 17:11:33'),
(93, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (60) ReIssue Fees\r\n        on () Passenger name with () passport number from (NoCompany) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 17:13:15'),
(94, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (200) ReIssue Fees\r\n        on () Passenger name with () passport number from (Prince & Runner) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 17:13:27'),
(95, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on () ReIssue Fees\r\n            on () Passenger name with () passport number from (NoCompany) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 17:13:29'),
(96, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (550) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 17:43:22'),
(97, 11, '(Prince Parfait - Admin) updated this ticket with (0213910230) Ticket Number that was issued on\r\n        (Elysee) Passenger Name that has been issued at (2024-04-24) Date at the (KGL-HTA) Travel on the ticket\r\n        bought on (300 - $) Ticket System Price with (100 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-17 21:44:38'),
(98, 11, '(Prince Parfait - Admin) updated this ticket with (0213910230) Ticket Number that was issued on\r\n        (Elysee) Passenger Name that has been issued at (2024-04-24) Date at the (KGL-HTA) Travel on the ticket\r\n        bought on (300 - $) Ticket System Price with (100 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-17 21:45:21'),
(99, 11, '(Prince Parfait - Admin) updated this ticket with (0213910230) Ticket Number that was issued on\r\n        (Elysee) Passenger Name that has been issued at (2024-04-24) Date at the (KGL-HTA) Travel on the ticket\r\n        bought on (300 - $) Ticket System Price with (100 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-17 21:45:32'),
(100, 11, '(Prince Parfait - Admin) updated this ticket with (45678905789) Ticket Number that was issued on\r\n        (CLAUDE) Passenger Name that has been issued at (2024-05-26) Date at the (KGL-BJM-NBO) Travel on the ticket\r\n        bought on (6783 - $) Ticket System Price with (150 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-17 21:46:00'),
(101, 11, '(Prince Parfait - Admin) voided this ticket with () Ticket number that was voided on (300) Void Fees\r\n            on () Passenger name with () passport number from (Sun Shine Travel) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 22:29:23'),
(102, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Vb void) Passenger Name that has been issued at (2024-04-12) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (8000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-17 23:07:03'),
(103, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (20) ReIssue Fees\r\n            on () Passenger name with () passport number from (Sun Shine Travel) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 23:26:07'),
(104, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (20) ReIssue Fees\r\n            on () Passenger name with () passport number from (Sun Shine Travel) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 23:28:15'),
(105, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (20) Refund Fees\r\n            on () Passenger name with () passport number from (Sun Shine Travel) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-17 23:30:37'),
(106, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (20) Refund Fees\r\n            on () Passenger name with () passport number from (Prince & Runner) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-18 00:31:22'),
(107, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (10) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-18 00:38:11'),
(108, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (1) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (17/04/2024) Date.', 'notDeleted', '2024-04-18 00:38:35'),
(109, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (30) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 10:07:10'),
(110, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-12) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (8000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-18 11:43:11'),
(111, 11, '(Prince Parfait - Admin) updated this ticket with (CB31992TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-18 12:47:04'),
(112, 11, '(Prince Parfait - Admin) updated this ticket with (CB319924234232TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-18 12:47:35'),
(113, 11, '(Prince Parfait - Admin) updated this ticket with (CB3194232TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200000 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-18 12:48:56'),
(114, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (30) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 14:15:07'),
(115, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (4000) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 15:01:17'),
(116, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (1200) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 15:13:40'),
(117, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (50) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 15:42:22'),
(118, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (45) Refund Fees\r\n            on () Passenger name with () passport number from (Prince & Runner) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 15:49:28'),
(119, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (120) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 16:00:53'),
(120, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (40) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:22:28'),
(121, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (40) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:36:26'),
(122, 11, '(Prince Parfait - Admin) updated this reissued ticket with () Ticket number with the new ticket number (000011112222) that was reissued on (4000) ReIssue Fees\r\n        on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:37:01'),
(123, 11, '(Prince Parfait - Admin) updated this reissued ticket with () Ticket number with the new ticket number (098745670) that was reissued on (40) ReIssue Fees\r\n        on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:38:47'),
(124, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (30) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:40:38'),
(125, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (11) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:46:34'),
(126, 11, '(Prince Parfait - Admin) updated this reissued ticket with () Ticket number with the new ticket number (456078933000) that was reissued on (850) ReIssue Fees\r\n        on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:52:45'),
(127, 11, '(Prince Parfait - Admin) updated this reissued ticket with () Ticket number with the new ticket number (456078933654) that was reissued on (90) ReIssue Fees\r\n        on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:53:18'),
(128, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (12) Refund Fees\r\n            on () Passenger name with () passport number from (Sun Shine Travel) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:56:13'),
(129, 11, '(Prince Parfait - Admin) updated this reissued ticket with () Ticket number with the new ticket number (09O8756789) that was reissued on (1200) ReIssue Fees\r\n        on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:59:15'),
(130, 11, '(Prince Parfait - Admin) updated this reissued ticket with () Ticket number with the new ticket number (09O8756789) that was reissued on (1200) ReIssue Fees\r\n        on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 17:59:45'),
(131, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (50) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 18:09:59'),
(132, 11, '(Prince Parfait - Admin) updated this refunded ticket with () Ticket number that was refunded on (50) Refund Fees\r\n            on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 18:15:33'),
(133, 11, '(Prince Parfait - Admin) updated this refunded ticket with () Ticket number that was refunded on (50) Refund Fees\r\n            on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 18:15:47'),
(134, 11, '(Prince Parfait - Admin) updated this refunded ticket with () Ticket number that was refunded on (50) Refund Fees\r\n            on () Passenger name with () passport number from () Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 18:15:57'),
(135, 11, '(Prince Parfait - Admin) updated this refunded ticket with (CB3194232TXN) Ticket number that was refunded on (50) Refund Fees\r\n            on (John Doe) Passenger name with (0242783) passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 18:21:00'),
(136, 11, '(Prince Parfait - Admin) updated this refunded ticket with (CB3194232TXN) Ticket number that was refunded on (50) Refund Fees\r\n            on (John Doe) Passenger name with (0242783) passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 18:22:44'),
(137, 11, '(Prince Parfait - Admin) updated this refunded ticket with (CB3194232TXN) Ticket number that was refunded on (50) Refund Fees\r\n            on (John Doe) Passenger name with (0242783) passport number from (N/A) Company name on (18/04/2024) Date.', 'notDeleted', '2024-04-18 18:24:40'),
(138, 11, '(Prince Parfait - Admin) updated this ticket with (CB3194232TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200 - Rwf) Ticket System Price with (80000 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-18 18:30:28'),
(139, 11, '(Prince Parfait - Admin) updated this ticket with (CB3194232TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200 - $) Ticket System Price with (80 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-18 18:30:53'),
(140, 11, '(Prince Parfait - Admin) updated this ticket with (CB3194232TXN) Ticket Number that was issued on\r\n        (John Doe) Passenger Name that has been issued at (2024-04-13) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (1200 - $) Ticket System Price with (80 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-18 23:04:01'),
(141, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (T) Passenger Name that has been issued at (2024-04-17) Date at the (76) Travel on the ticket\r\n        bought on (176 - $) Ticket System Price with (89 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-18 23:07:38'),
(142, 11, '(Prince Parfait - Admin) updated this ticket with (456789003-) Ticket Number that was issued on\r\n        (DIEUDONNE) Passenger Name that has been issued at (2024-04-17) Date at the (KGL-HGH-KGL) Travel on the ticket\r\n        bought on (2389 - $) Ticket System Price with (200 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-19 09:57:55'),
(143, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (70) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 10:10:46'),
(144, 11, '(Prince Parfait - Admin) voided this ticket with () Ticket number that was voided on (10) Void Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 11:20:05'),
(145, 12, '(HABINTWALI IBRAHIM - User) updated this ticket with (90) Ticket Number that was issued on\r\n        (90) Passenger Name that has been issued at (2024-04-11) Date at the (KKK) Travel on the ticket\r\n        bought on (90 - $) Ticket System Price with (0 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-19 12:06:28'),
(146, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (345) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 16:46:49'),
(147, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfaittyui) Passenger Name that has been issued at (2024-04-19) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (120 - $) Ticket System Price with (45 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-19 16:56:43'),
(148, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) reissued this ticket with () Ticket number that was reissued on (78) ReIssue Fees\r\n        on () Passenger name with () passport number from (AVIC INTERNATIONAL ENGINEERING (R)) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 17:03:42'),
(149, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (30) ReIssue Fees\r\n        on () Passenger name with () passport number from (AVIC INTERNATIONAL ENGINEERING (R)) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 17:03:52'),
(150, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (30) Refund Fees\r\n            on () Passenger name with () passport number from (AVIC _R_) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 17:22:02'),
(151, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) refunded this ticket with () Ticket number that was refunded on (67) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 17:23:30'),
(152, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-19) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (120 - $) Ticket System Price with (45 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-19 17:42:38'),
(153, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) voided this ticket with () Ticket number that was voided on (10) Void Fees\r\n            on () Passenger name with () passport number from (AVIC _R_) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 17:43:23'),
(154, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (40) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 18:39:21'),
(155, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (30) Refund Fees\r\n            on () Passenger name with () passport number from (AVIC INTERNATIONAL ENGINEERING (R)) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 18:49:18'),
(156, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (40) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (19/04/2024) Date.', 'notDeleted', '2024-04-19 19:39:57'),
(157, 11, '(Prince Parfait - Admin) updated this ticket with (847389) Ticket Number that was issued on\r\n        (Manzi Elysee) Passenger Name that has been issued at (2024-04-19) Date at the (GF-GF) Travel on the ticket\r\n        bought on (40 - Rwf) Ticket System Price with (40 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-20 08:36:32'),
(158, 11, '(Prince Parfait - Admin) updated this ticket with (57899000) Ticket Number that was issued on\r\n        (HA THI KIM HUE) Passenger Name that has been issued at (2023-12-07) Date at the (KGL-HAN) Travel on the ticket\r\n        bought on (10 - Rwf) Ticket System Price with (10 - Rwf) Commission Ticket System Price.', 'notDeleted', '2024-04-20 09:24:53'),
(159, 11, '(Prince Parfait - Admin) updated this ticket with (0003221) Ticket Number that was issued on\r\n        (Prince Parfait) Passenger Name that has been issued at (2024-04-19) Date at the (KGL-CAN) Travel on the ticket\r\n        bought on (120 - $) Ticket System Price with (45 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-20 09:47:06'),
(160, 11, '(Prince Parfait - Admin) updated this ticket with (57899000) Ticket Number that was issued on\r\n        (HA THI KIM HUE) Passenger Name that has been issued at (2023-12-07) Date at the (KGL-HAN) Travel on the ticket\r\n        bought on (10 - $) Ticket System Price with (10 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-20 09:47:18'),
(161, 11, '(Prince Parfait - Admin) reissued this ticket with () Ticket number that was reissued on (30) ReIssue Fees\r\n        on () Passenger name with () passport number from (N/A) Company name on (20/04/2024) Date.', 'notDeleted', '2024-04-20 09:58:09');
INSERT INTO `metrics` (`MetricId`, `UserId`, `Me_Action`, `isDeleted`, `Me_Date`) VALUES
(162, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (0) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (20/04/2024) Date.', 'notDeleted', '2024-04-20 10:02:49'),
(163, 11, '(Prince Parfait - Admin) refunded this ticket with () Ticket number that was refunded on (0) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (20/04/2024) Date.', 'notDeleted', '2024-04-20 10:08:17'),
(164, 11, '(Prince Parfait - Admin) updated this refunded ticket with (0003221) Ticket number that was refunded on (0) Refund Fees\r\n            on (Prince Parfait) Passenger name with (023423847) passport number from (N/A) Company name on (20/04/2024) Date.', 'notDeleted', '2024-04-20 10:08:44'),
(165, 11, '(Prince Parfait - Admin) updated this refunded ticket with (0003221) Ticket number that was refunded on (0) Refund Fees\r\n            on (Prince Parfait) Passenger name with (023423847) passport number from (N/A) Company name on (20/04/2024) Date.', 'notDeleted', '2024-04-20 10:08:53'),
(166, 11, '(Prince Parfait - Admin) voided this ticket with () Ticket number that was voided on (30) Void Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (20/04/2024) Date.', 'notDeleted', '2024-04-20 11:28:56'),
(167, 11, '(Prince Parfait - Admin) voided this ticket with () Ticket number that was voided on (50) Void Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (20/04/2024) Date.', 'notDeleted', '2024-04-20 14:10:08'),
(168, 11, '(Prince Parfait - Admin) voided this ticket with () Ticket number that was voided on (60) Void Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (20/04/2024) Date.', 'notDeleted', '2024-04-20 14:11:58'),
(169, 11, '(Prince Parfait - Admin) updated this ticket with (00887) Ticket Number that was issued on\r\n        (Mugisha Jean) Passenger Name that has been issued at (2024-04-19) Date at the (KUI-KGL) Travel on the ticket\r\n        bought on (90 - $) Ticket System Price with (35 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-21 10:53:51'),
(170, 11, '(Prince Parfait - Admin) updated this ticket with (00887) Ticket Number that was issued on\r\n        (Mugisha Jean) Passenger Name that has been issued at (2024-04-19) Date at the (KUI-KGL) Travel on the ticket\r\n        bought on (90 - $) Ticket System Price with (35 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-21 10:56:37'),
(171, 11, '(Prince Parfait - Admin) updated this ticket with (00887) Ticket Number that was issued on\r\n        (Mugisha Jean) Passenger Name that has been issued at (2024-04-19) Date at the (KUI-KGL) Travel on the ticket\r\n        bought on (90 - $) Ticket System Price with (35 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-21 10:56:52'),
(172, 11, '(Prince Parfait - Admin) updated this ticket with (00887) Ticket Number that was issued on\r\n        (Mugisha Jean) Passenger Name that has been issued at (2024-05-18) Date at the (KUI-KGL) Travel on the ticket\r\n        bought on (90 - $) Ticket System Price with (35 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-21 10:57:18'),
(173, 11, '(Prince Parfait - Admin) updated this ticket with (00887) Ticket Number that was issued on\r\n        (Mugisha Jean) Passenger Name that has been issued at (2024-05-18) Date at the (KUI-KGL) Travel on the ticket\r\n        bought on (90 - $) Ticket System Price with (35 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-21 11:09:54'),
(174, 11, '(Prince Parfait - Admin) updated this ticket with (00887) Ticket Number that was issued on\r\n        (Mugisha Jean) Passenger Name that has been issued at (2024-05-18) Date at the (KUI-KGL) Travel on the ticket\r\n        bought on (90 - $) Ticket System Price with (35 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-21 11:10:08'),
(175, 13, '(Ngingo Jean - User) refunded this ticket with () Ticket number that was refunded on (60) Refund Fees\r\n            on () Passenger name with () passport number from (AVIC _R_) Company name on (22/04/2024) Date.', 'notDeleted', '2024-04-22 21:16:45'),
(176, 11, '(Prince Parfait - Admin) voided this ticket with () Ticket number that was voided on (12) Void Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (24/04/2024) Date.', 'notDeleted', '2024-04-24 15:40:46'),
(177, 11, '(Prince Parfait - Admin) updated this ticket with (345586980000) Ticket Number that was issued on\r\n        (UGWAN) Passenger Name that has been issued at (2024-04-23) Date at the (KGL-BJM-NBO) Travel on the ticket\r\n        bought on (4567 - $) Ticket System Price with (20 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-24 21:10:41'),
(178, 11, '(Prince Parfait - Admin) updated this ticket with (345586980000) Ticket Number that was issued on\r\n        (UGWAN) Passenger Name that has been issued at (2024-04-23) Date at the (KGL-BJM-NBO) Travel on the ticket\r\n        bought on (4567 - $) Ticket System Price with (20 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-24 21:13:26'),
(179, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) refunded this ticket with () Ticket number that was refunded on (234) Refund Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (24/04/2024) Date.', 'notDeleted', '2024-04-24 21:29:03'),
(180, 2, '(NSHIMIYIMANA DIEUDONNE - Admin) voided this ticket with () Ticket number that was voided on (234) Void Fees\r\n            on () Passenger name with () passport number from (N/A) Company name on (24/04/2024) Date.', 'notDeleted', '2024-04-24 21:30:29'),
(181, 11, '(Prince Parfait - Admin) voided this ticket with () Ticket number that was voided on (7) Void Fees\r\n            on () Passenger name with () passport number from (AVIC _R_) Company name on (24/04/2024) Date.', 'notDeleted', '2024-04-24 23:54:32'),
(182, 11, 'Prince Parfait - Admin deleted this ticket in the system with () TicketNumber,\r\n        () Passenger Name who was going to travel in () Travel and (0) Ticket System Pricewith 0 System Commission Price and 0 Owner Commission that has been sold on  IssueDate with  - Status.', 'notDeleted', '2024-04-25 14:05:56'),
(183, 11, 'Prince Parfait - admin deleted this ticket in the system with (09) TicketNumber,\r\n        (Hj) Passenger Name who was going to travel in (KGL-CAN) Travel and ($80) Ticket System Pricewith $0 System Commission Price and $120 Owner Commission that has been sold on 2024-04-25 IssueDate with Paid - Status.', 'notDeleted', '2024-04-25 15:58:45'),
(184, 13, '(Ngingo Jean - user) updated this ticket with (09) Ticket Number that was issued on\r\n        (Fk) Passenger Name that has been issued at (2024-04-25) Date at the (09) Travel on the ticket\r\n        bought on (12 - $) Ticket System Price with (12 - $) Commission Ticket System Price.', 'notDeleted', '2024-04-25 15:59:51'),
(185, 13, 'Ngingo Jean - user deleted this ticket in the system with (09) TicketNumber,\r\n        (Fk) Passenger Name who was going to travel in (09) Travel and ($12) Ticket System Pricewith $12 System Commission Price and $12 Owner Commission that has been sold on 2024-04-25 IssueDate with Paid - Status.', 'notDeleted', '2024-04-25 15:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `refunded_ticket`
--

CREATE TABLE `refunded_ticket` (
  `RefundedId` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `PassengerName` varchar(250) NOT NULL,
  `PassportNumber` varchar(250) NOT NULL,
  `C_Id` int(11) DEFAULT NULL,
  `Class` varchar(45) NOT NULL DEFAULT 'N/A',
  `Refund(Y-N)` varchar(25) NOT NULL DEFAULT 'NoDecisionIfRefunded',
  `TicketNumber` varchar(250) NOT NULL,
  `Airline` varchar(250) NOT NULL,
  `Itinerary` varchar(250) NOT NULL,
  `IssueDate` varchar(45) NOT NULL,
  `FlightDate` varchar(45) NOT NULL,
  `ReturnDate` varchar(50) NOT NULL DEFAULT 'N/A',
  `TicketSysPrice` varchar(250) NOT NULL DEFAULT '0',
  `TicketSysCommission` varchar(250) NOT NULL DEFAULT '0',
  `TicketOwnerCommission` varchar(250) NOT NULL DEFAULT '0',
  `RefundPrice` varchar(250) NOT NULL DEFAULT '0',
  `OwnerRefundPrice` varchar(255) NOT NULL DEFAULT 'N/A',
  `RefundDate` varchar(45) NOT NULL DEFAULT 'N/A',
  `Status` varchar(25) NOT NULL,
  `MoneyType` varchar(25) NOT NULL,
  `PaymentMethod` varchar(25) NOT NULL,
  `isDeleted` varchar(50) NOT NULL DEFAULT 'notDeleted',
  `CountRefund` int(11) NOT NULL,
  `AutoDate` varchar(25) NOT NULL DEFAULT current_timestamp(),
  `RealDate` varchar(45) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `refunded_ticket`
--

INSERT INTO `refunded_ticket` (`RefundedId`, `Id`, `UserId`, `PassengerName`, `PassportNumber`, `C_Id`, `Class`, `Refund(Y-N)`, `TicketNumber`, `Airline`, `Itinerary`, `IssueDate`, `FlightDate`, `ReturnDate`, `TicketSysPrice`, `TicketSysCommission`, `TicketOwnerCommission`, `RefundPrice`, `OwnerRefundPrice`, `RefundDate`, `Status`, `MoneyType`, `PaymentMethod`, `isDeleted`, `CountRefund`, `AutoDate`, `RealDate`) VALUES
(1, 5, 11, 'Peter Ban', '054380980', 0, 'N/A', 'yes', '01213', 'FG', 'EBB-CAN', '2024-04-19', '2024-04-19', 'N/A', '870', '130', '187', '30', '40', '2024-04-10', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-19 17:22:02', '2024-04-19 17:22:02'),
(2, 3, 2, 'Ketty Keria', '345838949', 0, 'N/A', 'yes', '002313', 'QW', 'KGL-EBB', '2024-04-19', '2024-04-30', 'N/A', '70', '20', '25', '67', '50', '2024-04-20', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-19 17:23:30', '2024-04-19 17:23:30'),
(3, 4, 11, 'UGWAN', 'EK2345678', 0, 'N/A', 'yes', '345586989789', 'QR', 'KGL-BJM-NBO', '2024-04-23', '2024-04-30', '2024-05-31', '4567', '46', '20', '30', 'N/A', '2024-04-19', 'Paid', '$', 'Cash', 'notDeleted', 3, '2024-04-19 18:49:18', '2024-04-19 18:49:18'),
(4, 1, 11, 'Prince Parfait', '023423847', 0, 'ECON', 'yes', '0003221', 'CA', 'KGL-CAN', '2024-04-19', '2024-04-25', 'N/A', '120', '30', '45', '0', '90', '2024-04-20', 'Paid', '$', 'Cash', 'notDeleted', 5, '2024-04-20 10:02:48', '2024-04-20 10:02:48'),
(5, 1, 11, 'Prince Parfait', '023423847', 0, 'ECON', 'yes', '0003221', 'CA', 'KGL-CAN', '2024-04-19', '2024-04-25', 'N/A', '120', '30', '45', '0', 'N/A', '2024-04-20', 'Not_Paid', '$', 'Cash', 'notDeleted', 5, '2024-04-20 10:08:17', '2024-04-20 10:08:17'),
(6, 8, 13, 'Ketty Keria', '098t675678', 0, 'N/A', 'yes', '987757', 'KLL', 'KJ-KL', '2024-04-20', '2024-04-20', '2024-04-25', '100', '20', '30', '60', '60', '2024-04-22', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-22 21:16:45', '2024-04-22 21:16:45'),
(7, 11, 2, 'LI JUNHUA', 'ED6789', 0, 'N/A', 'yes', '467589088-0=-9', 'ET', 'KGL-CAN-KGL', '2023-12-07', '2023-12-22', '2024-02-23', '525', '10', '0', '234', '300', '2024-04-24', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-24 21:29:03', '2024-04-24 21:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `reissued_ticket`
--

CREATE TABLE `reissued_ticket` (
  `ReIssuedId` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `PassengerName` varchar(250) NOT NULL,
  `PassportNumber` varchar(250) NOT NULL,
  `C_Id` int(11) DEFAULT NULL,
  `Class` varchar(45) NOT NULL DEFAULT 'N/A',
  `TicketNumber` varchar(250) NOT NULL,
  `Airline` varchar(250) NOT NULL,
  `Itinerary` varchar(250) NOT NULL,
  `IssueDate` varchar(45) NOT NULL,
  `FlightDate` varchar(45) NOT NULL,
  `ReturnDate` varchar(50) NOT NULL DEFAULT 'N/A',
  `ReIssuedDate` varchar(45) NOT NULL DEFAULT 'N/A',
  `TicketSysPrice` varchar(250) NOT NULL DEFAULT '0',
  `TicketSysCommission` varchar(250) NOT NULL DEFAULT '0',
  `TicketOwnerCommission` varchar(250) NOT NULL DEFAULT '0',
  `ReIssueFees` varchar(250) NOT NULL DEFAULT 'NoReIssueFees',
  `OwnerReIssueFee` varchar(255) NOT NULL DEFAULT 'N/A',
  `ReIssueDate` varchar(45) NOT NULL DEFAULT 'N/A',
  `Status` varchar(25) NOT NULL,
  `MoneyType` varchar(25) NOT NULL,
  `PaymentMethod` varchar(25) NOT NULL,
  `isDeleted` varchar(50) NOT NULL DEFAULT 'notDeleted',
  `CountReIssue` int(11) NOT NULL,
  `AutoDate` varchar(25) NOT NULL DEFAULT current_timestamp(),
  `RealDate` varchar(45) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reissued_ticket`
--

INSERT INTO `reissued_ticket` (`ReIssuedId`, `Id`, `UserId`, `PassengerName`, `PassportNumber`, `C_Id`, `Class`, `TicketNumber`, `Airline`, `Itinerary`, `IssueDate`, `FlightDate`, `ReturnDate`, `ReIssuedDate`, `TicketSysPrice`, `TicketSysCommission`, `TicketOwnerCommission`, `ReIssueFees`, `OwnerReIssueFee`, `ReIssueDate`, `Status`, `MoneyType`, `PaymentMethod`, `isDeleted`, `CountReIssue`, `AutoDate`, `RealDate`) VALUES
(1, 1, 2, 'Prince Parfait', '023423847', 0, 'N/A', '4567890-0984567', 'CA', 'KGL-CAN', '2024-04-19', '2024-04-25', 'N/A', '2024-04-28', '120', '30', '45', '345', '56.5', '2024-04-19', 'Not_Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-19 16:46:49', '2024-04-19 16:46:49'),
(2, 4, 2, 'UGWAN', 'EK2345678', 0, 'N/A', '6789934367498', 'QR', 'KGL-BJM-NBO', '2024-04-23', '2024-04-30', 'N/A', '2024-04-24', '4567', '46', '20', '78', '20', '2024-04-27', 'Not_Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-19 17:03:42', '2024-04-19 17:03:42'),
(3, 4, 11, 'UGWAN', 'EK2345678', 0, 'N/A', '546789000', 'QR', 'KGL-BJM-NBO', '2024-04-23', '2024-04-30', 'N/A', '2024-04-19', '4567', '46', '20', '30', '50', '2024-04-19', 'Paid', '$', 'Cash', 'notDeleted', 2, '2024-04-19 17:03:52', '2024-04-19 17:03:52'),
(4, 1, 11, 'Prince Parfait', '023423847', 0, 'N/A', '4234929122', 'CA', 'KGL-CAN', '2024-04-19', '2024-04-25', '0001-01-01', '2024-04-20', '120', '30', '45', '40', '65', '2024-04-19', 'Paid', '$', 'Cash', 'notDeleted', 2, '2024-04-19 18:39:21', '2024-04-19 18:39:21'),
(5, 1, 11, 'Prince Parfait', '023423847', 0, 'N/A', '345678', 'CA', 'KGL-CAN', '2024-04-19', '2024-04-25', '2024-05-04', '2024-04-19', '120', '30', '45', '40', '700', '2024-04-19', 'Paid', '$', 'Cash', 'notDeleted', 3, '2024-04-19 19:39:57', '2024-04-19 19:39:57'),
(6, 1, 11, 'Prince Parfait', '023423847', 0, 'ECON', '0096434567', 'CA', 'KGL-CAN', '2024-04-19', '2024-04-25', '2030-05-31', '2024-05-01', '120', '30', '45', '30', '40', '2024-04-20', 'Paid', '$', 'Cash', 'notDeleted', 4, '2024-04-20 09:58:09', '2024-04-20 09:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `Id` int(11) NOT NULL,
  `PassengerName` varchar(250) NOT NULL,
  `PassportNumber` varchar(250) NOT NULL,
  `C_Id` int(11) DEFAULT 0,
  `Class` varchar(45) NOT NULL DEFAULT 'N/A',
  `TicketNumber` varchar(250) NOT NULL,
  `Airline` varchar(250) NOT NULL,
  `Itinerary` varchar(250) NOT NULL,
  `IssueDate` varchar(45) NOT NULL,
  `FlightDate` varchar(45) NOT NULL,
  `ReturnDate` varchar(45) NOT NULL DEFAULT 'N/A',
  `TicketSysPrice` varchar(250) NOT NULL DEFAULT '0',
  `TicketSysCommission` varchar(250) NOT NULL DEFAULT '0',
  `TicketOwnerCommission` varchar(250) NOT NULL DEFAULT '0',
  `Status` varchar(25) NOT NULL,
  `MoneyType` varchar(25) NOT NULL,
  `PaymentMethod` varchar(25) NOT NULL,
  `isDeleted` varchar(50) NOT NULL DEFAULT 'notDeleted',
  `AutoDate` varchar(25) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`Id`, `PassengerName`, `PassportNumber`, `C_Id`, `Class`, `TicketNumber`, `Airline`, `Itinerary`, `IssueDate`, `FlightDate`, `ReturnDate`, `TicketSysPrice`, `TicketSysCommission`, `TicketOwnerCommission`, `Status`, `MoneyType`, `PaymentMethod`, `isDeleted`, `AutoDate`) VALUES
(1, 'Prince Parfait', '023423847', 0, 'ECON', '0003221', 'CA', 'KGL-CAN', '2024-04-19', '2024-04-25', 'N/A', '120', '30', '45', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 16:36:13'),
(2, 'DIEUDONNE', 'ed35679994', 8, 'N/A', '45678903', 'WB', 'KGL-EBB', '2024-04-29', '2024-04-30', 'N/A', '345', '45', '60', 'Not_Paid', '$', 'Cash', 'notDeleted', '2024-04-19 16:36:23'),
(3, 'Ketty Keria', '345838949', 0, 'N/A', '002313', 'QW', 'KGL-EBB', '2024-04-19', '2024-04-30', 'N/A', '70', '20', '25', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 16:37:24'),
(4, 'UGWAN', 'EK2345678', 9, 'BSNS', '345586980000', 'QR', 'KGL-BJM-NBO', '2024-04-23', '2024-04-30', 'N/A', '4567', '46', '20', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 16:37:53'),
(5, 'Peter Ban', '054380980', 6, 'N/A', '01213', 'FG', 'EBB-CAN', '2024-04-19', '2024-04-19', 'N/A', '870', '130', '187', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 16:38:20'),
(6, 'Mugisha Jean', '0976546780', 6, 'N/A', '00887', 'WB', 'KUI-KGL', '2024-05-18', '2024-05-04', 'N/A', '90', '15', '35', 'Not_Paid', '$', 'Cash', 'notDeleted', '2024-04-19 16:39:06'),
(7, 'CLAUDE', 'EY34567', 10, 'N/A', '4567890-098', 'CZ', 'HGH-KGL', '2024-04-28', '2024-04-30', '2024-06-30', '579', '17', '10', 'Not_Paid', '$', 'Cash', 'notDeleted', '2024-04-19 16:39:21'),
(8, 'Ketty Keria', '098t675678', 6, 'N/A', '987757', 'KLL', 'KJ-KL', '2024-04-20', '2024-04-20', '2024-04-25', '100', '20', '30', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 18:42:11'),
(9, 'HA THI KIM HUE', 'E1', 0, 'BSNS', '57899000', 'QR', 'KGL-HAN', '2023-12-07', '2024-01-08', 'N/A', '10', '0', '10', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 18:44:29'),
(10, 'SU QIANG', 'ER5546', 0, 'N/A', '3568790', 'QR', 'CAN-KGL', '2023-12-07', '2024-01-08', 'N/A', '949', '0', '0', 'Not_Paid', '$', 'Cash', 'notDeleted', '2024-04-19 18:48:31'),
(11, 'LI JUNHUA', 'ED6789', 0, 'N/A', '467589088-0=-9', 'ET', 'KGL-CAN-KGL', '2023-12-07', '2023-12-22', '2024-02-23', '525', '10', '0', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 18:50:33'),
(12, 'SONG CHUNLIN', 'ED90875', 8, 'N/A', '45678903', 'ET', 'KGL-CAN', '2023-12-12', '2023-12-19', 'N/A', '525', '0', '0', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 18:52:31'),
(13, 'Manzi Elysee', '03427389', 6, 'N/A', '847389', 'GF', 'GF-GF', '2024-04-19', '2024-04-24', '2024-05-10', '40', '40', '40', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 18:52:43'),
(14, 'LIN XIONG', 'PC250007', 0, 'N/A', '46899000--0--=-', 'ET', 'KGL-CAN', '2023-12-23', '2024-01-10', '2024-02-29', '525', '0', '0', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 18:55:45'),
(15, 'HAN CHAO', 'EF76869', 9, 'N/A', '36747589089685747', 'WB', 'KGL-BJM', '2024-04-30', '2024-04-28', '2024-04-30', '4546', '23', '100', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-19 18:57:26'),
(16, 'Test', '6767', 0, 'N/A', '12323', 'gh', 'gh', '2024-04-09', '2024-04-24', '2024-04-24', '45', '45', '45', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-24 15:38:31'),
(18, 'Prince Parfaittyui', 'ed35679994', 9, 'ECON', '57899000', 'KQ', 'KGL-HAN', '2024-04-28', '2024-04-13', '2024-04-28', '67', '0', '678', 'Not_Paid', '$', 'Cash', 'notDeleted', '2024-04-24 21:36:25'),
(10000, 'Hj', '09', 0, 'ECON', '09', 'KJH', 'KGL-CAN', '2024-04-25', '2024-05-04', 'N/A', '80', '0', '120', 'Paid', '$', 'Cash', 'Deleted', '2024-04-25 15:13:58'),
(10001, 'Fk', '09', 0, 'N/A', '09', '09', '09', '2024-04-25', '2024-05-04', 'N/A', '12', '12', '12', 'Paid', '$', 'Cash', 'Deleted', '2024-04-25 15:15:03'),
(10002, 'KJ', '090909', 1, 'ECON', '909090', 'KJ', 'KJ', '2024-04-25', '2024-04-25', 'N/A', '0', '0', '0', 'Paid', '$', 'Cash', 'notDeleted', '2024-04-25 15:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `Unique_id` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL DEFAULT 'NoRole',
  `Password` varchar(255) NOT NULL,
  `Gender` varchar(25) NOT NULL,
  `Profile` varchar(255) NOT NULL DEFAULT 'NoProfile',
  `Access` varchar(50) NOT NULL DEFAULT 'Granted',
  `isDeleted` varchar(45) NOT NULL DEFAULT 'notDeleted',
  `DateCreated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Unique_id`, `FirstName`, `LastName`, `PhoneNumber`, `Email`, `Role`, `Password`, `Gender`, `Profile`, `Access`, `isDeleted`, `DateCreated`) VALUES
(2, '1070985373', 'NSHIMIYIMANA', 'DIEUDONNE', '0785228922', 'peacesafetytravel@gmail.com', 'admin', '$2y$10$mrRyODID2GIs215e3kWBW.ANUimy2swNHHkEPcl1dfKqSKQk/I1gW', 'male', '1712837191IMG-20240308-WA0003.jpg', 'Granted', 'notDeleted', '2023-12-20 11:41:41'),
(10, '596466613', 'Habimana', 'Claude', '0792054846', 'nclause022@gmail.com', 'user', '$2y$10$mghfuqqiiZ1AeO9Oa2svEes5SEskBXwdOkxcYjcinAzIM9ln7xo8a', 'Male', '1712492058facebook-icon.png', 'Granted', 'notDeleted', '2024-04-07 12:57:30'),
(11, '1645031999', 'Prince', 'Parfait', '0798442649', 'ganzaparfait7@gmail.com', 'admin', '$2y$10$WcPm34W6DockOkzlD0WR3uwGtwN88ryyGZGLlRHkFI6jMY86s/V7q', 'Male', 'NoProfile', 'Granted', 'notDeleted', '2024-04-11 15:10:34'),
(12, '1127129554', 'HABINTWALI', 'IBRAHIM', '0788362064', 'habintwalibra@gmail.com', 'user', '$2y$10$5XUnSE5QXxJ80qLubcvBNe.fxmI1KAdQCzmf66RFXrmUYUsshPGQ6', 'Male', 'NoProfile', 'Granted', 'notDeleted', '2024-04-17 15:10:51'),
(13, '785117226', 'Ngingo', 'Jean', '0784559669', 'ngingo@gmail.com', 'user', '$2y$10$veyibKNaJY8WTjwIEUinaulIkIxzZEd4KGFzg4KkBGLRbDgLg4wxu', 'Male', 'NoProfile', 'Granted', 'notDeleted', '2024-04-19 11:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `voided_ticket`
--

CREATE TABLE `voided_ticket` (
  `VoidId` int(11) NOT NULL,
  `Id` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `PassengerName` varchar(250) NOT NULL,
  `PassportNumber` varchar(250) NOT NULL,
  `C_Id` int(11) DEFAULT NULL,
  `Class` varchar(45) NOT NULL DEFAULT 'N/A',
  `Void(Y-N)` varchar(25) NOT NULL DEFAULT 'NoDecisionIfVoided',
  `TicketNumber` varchar(250) NOT NULL,
  `Airline` varchar(250) NOT NULL,
  `Itinerary` varchar(250) NOT NULL,
  `IssueDate` varchar(45) NOT NULL,
  `FlightDate` varchar(45) NOT NULL,
  `ReturnDate` varchar(45) NOT NULL,
  `TicketSysPrice` varchar(250) NOT NULL,
  `TicketSysCommission` varchar(250) NOT NULL,
  `TicketOwnerCommission` varchar(250) NOT NULL,
  `VoidFee` varchar(250) NOT NULL DEFAULT 'No Fee',
  `OwnerVoidFee` varchar(255) NOT NULL DEFAULT '0',
  `VoidDate` varchar(45) NOT NULL DEFAULT 'N/A',
  `Status` varchar(25) NOT NULL,
  `MoneyType` varchar(25) NOT NULL,
  `PaymentMethod` varchar(25) NOT NULL,
  `isDeleted` varchar(50) NOT NULL DEFAULT 'notDeleted',
  `CountVoid` int(11) NOT NULL,
  `AutoDate` varchar(25) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voided_ticket`
--

INSERT INTO `voided_ticket` (`VoidId`, `Id`, `UserId`, `PassengerName`, `PassportNumber`, `C_Id`, `Class`, `Void(Y-N)`, `TicketNumber`, `Airline`, `Itinerary`, `IssueDate`, `FlightDate`, `ReturnDate`, `TicketSysPrice`, `TicketSysCommission`, `TicketOwnerCommission`, `VoidFee`, `OwnerVoidFee`, `VoidDate`, `Status`, `MoneyType`, `PaymentMethod`, `isDeleted`, `CountVoid`, `AutoDate`) VALUES
(1, 5, 2, 'Peter Ban', '054380980', 0, 'N/A', 'Yes', '01213', 'FG', 'EBB-CAN', '2024-04-19', '2024-04-19', 'N/A', '870', '130', '187', '60', '0', 'N/A', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-19 17:43:23'),
(2, 10, 11, 'SU QIANG', 'ER5546', 0, 'N/A', 'Yes', '3568790', 'QR', 'CAN-KGL', '2023-12-07', '2024-01-08', 'N/A', '949', '0', '0', '30', '40', 'N/A', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-20 11:28:56'),
(3, 9, 11, 'HA THI KIM HUE', 'E1', 0, 'N/A', 'Yes', '57899000', 'QR', 'KGL-HAN', '2023-12-07', '2024-01-08', 'N/A', '10', '0', '10', '50', '0', '2024-04-20', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-20 14:10:08'),
(4, 3, 11, 'Ketty Keria', '345838949', 0, 'N/A', 'Yes', '002313', 'QW', 'KGL-EBB', '2024-04-19', '2024-04-30', 'N/A', '70', '20', '25', '60', '10', '2024-04-20', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-20 14:11:58'),
(17, 13, 11, 'Manzi Elysee', '03427389', 0, 'N/A', 'Yes', '847389', 'GF', 'GF-GF', '2024-04-19', '2024-04-24', '2024-05-10', '40', '40', '40', '7', '21', '2024-04-24', 'Paid', '$', 'Cash', 'notDeleted', 1, '2024-04-24 23:54:32'),
(24, NULL, 11, 'H', 'H', 0, 'no_class_selected', 'Yes', '2', 'J', 'J', '2024-04-25', '2024-04-17', '', '0', '0', '0', '1', '0', '2024-04-25', 'no_status_selected', '$', 'Cash', 'notDeleted', 0, '2024-04-25 14:11:05'),
(26, 10002, 11, 'KJ', '090909', 1, 'ECON', 'Yes', '909090', 'KJ', 'KJ', '2024-04-25', '2024-04-25', '', '0', '0', '0', '8', '8', '2024-04-25', 'Paid', '$', 'Cash', 'notDeleted', 0, '2024-04-25 15:17:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_operations`
--
ALTER TABLE `access_operations`
  ADD PRIMARY KEY (`OperationId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`C_Id`);

--
-- Indexes for table `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`MetricId`);

--
-- Indexes for table `refunded_ticket`
--
ALTER TABLE `refunded_ticket`
  ADD PRIMARY KEY (`RefundedId`),
  ADD KEY `Id` (`Id`),
  ADD KEY `C_Id` (`C_Id`);

--
-- Indexes for table `reissued_ticket`
--
ALTER TABLE `reissued_ticket`
  ADD PRIMARY KEY (`ReIssuedId`),
  ADD KEY `Id` (`Id`),
  ADD KEY `C_Id` (`C_Id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `C_Id` (`C_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `voided_ticket`
--
ALTER TABLE `voided_ticket`
  ADD PRIMARY KEY (`VoidId`),
  ADD KEY `Id` (`Id`),
  ADD KEY `C_Id` (`C_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_operations`
--
ALTER TABLE `access_operations`
  MODIFY `OperationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `C_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `metrics`
--
ALTER TABLE `metrics`
  MODIFY `MetricId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `refunded_ticket`
--
ALTER TABLE `refunded_ticket`
  MODIFY `RefundedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reissued_ticket`
--
ALTER TABLE `reissued_ticket`
  MODIFY `ReIssuedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `voided_ticket`
--
ALTER TABLE `voided_ticket`
  MODIFY `VoidId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `refunded_ticket`
--
ALTER TABLE `refunded_ticket`
  ADD CONSTRAINT `refunded_ticket_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `tickets` (`Id`),
  ADD CONSTRAINT `refunded_ticket_ibfk_2` FOREIGN KEY (`C_Id`) REFERENCES `company` (`C_Id`);

--
-- Constraints for table `reissued_ticket`
--
ALTER TABLE `reissued_ticket`
  ADD CONSTRAINT `reissued_ticket_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `tickets` (`Id`),
  ADD CONSTRAINT `reissued_ticket_ibfk_2` FOREIGN KEY (`C_Id`) REFERENCES `company` (`C_Id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`C_Id`) REFERENCES `company` (`C_Id`);

--
-- Constraints for table `voided_ticket`
--
ALTER TABLE `voided_ticket`
  ADD CONSTRAINT `voided_ticket_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `tickets` (`Id`),
  ADD CONSTRAINT `voided_ticket_ibfk_2` FOREIGN KEY (`C_Id`) REFERENCES `company` (`C_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
