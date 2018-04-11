-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 09:13 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keysight`
--

-- --------------------------------------------------------

--
-- Table structure for table `analysis_table`
--

CREATE TABLE `analysis_table` (
  `Model` text NOT NULL,
  `Serial#` text NOT NULL,
  `SR#` text NOT NULL,
  `Service Oder Number` text NOT NULL,
  `Type/Class` text NOT NULL,
  `Received Date` text NOT NULL,
  `Part Cost` text NOT NULL,
  `Labor Cost` text NOT NULL,
  `Total Cost` text NOT NULL,
  `Customer Name` varchar(200) NOT NULL,
  `Customer Country` text NOT NULL,
  `Customer City` text NOT NULL,
  `Customer Zip Code` text NOT NULL,
  `Product Line` text NOT NULL,
  `Repair Office` text NOT NULL,
  `ReportDate` text NOT NULL,
  `Turnaround Time` text NOT NULL,
  `Fail Age` text NOT NULL,
  `Fail Age In Years` text NOT NULL,
  `OPT_CDS` text NOT NULL,
  `Activity Bill Type` text NOT NULL,
  `Activity Type` text NOT NULL,
  `Report Year Month` text NOT NULL,
  `Month` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis_table`
--

INSERT INTO `analysis_table` (`Model`, `Serial#`, `SR#`, `Service Oder Number`, `Type/Class`, `Received Date`, `Part Cost`, `Labor Cost`, `Total Cost`, `Customer Name`, `Customer Country`, `Customer City`, `Customer Zip Code`, `Product Line`, `Repair Office`, `ReportDate`, `Turnaround Time`, `Fail Age`, `Fail Age In Years`, `OPT_CDS`, `Activity Bill Type`, `Activity Type`, `Report Year Month`, `Month`) VALUES
('N1075A', 'MY52130208', '1-8852396076', '1-8868142470-1', '03 / CC', '4/26/2017', '0', '1029', '1029', 'fdf', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '1570', '5', 'N1075A-918, N1075A-C32, N1075A-S32, N1075A-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'april'),
('N1045A', 'MY53360315', '1-8892789846', '1-8892789929-1', '03 / CC', '5/3/2017', '1135.22', '1372', '2507.22', 'Keysight Technologies Deutschland GmbH', 'Germany', 'BOEBLINGEN', '71034', '8F', 'AX63', '6/1/2017', '29', '348', '1', '', 'Ic Trade', 'Pre-Post-Calibration', '201706', 'april'),
('86100D', 'MY54150102', '1-8805978958', '1-8824823135-1', '03 / CO', '4/6/2017', '6543.81', '1372', '7915.81', 'Microsemi Corp', 'United States', 'SUNNYVALE', '94089-1005', '8F', 'AX63', '4/1/2017', '7', '83', '1', '86100D-092, 86100D-202, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-RMKT', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'april'),
('N1055A', 'MY54360123', '1-8797778327', '1-8816542178-2', '03 / AQ', '4/4/2017', '0', '1029', '1029', 'Cisco Systems Inc', 'United States', 'SAN ANTONIO', '78269', '8F', 'AX63', '4/1/2017', '7', '868', '3', 'N1055A-54M, N1055A-C0C', 'Internal Sales', 'Tech Evaluation', '201704', 'april'),
('N1055A', 'MY54360150', '1-8729747468', '1-8845763562-1', '03 / CC', '3/13/2017', '0', '1029', '1029', 'Advanced Semiconductor Engineering Inc', 'Taiwan', 'TAOYUAN', '320', '8F', 'AX63', '4/1/2017', '42', '706', '2', 'N1055A-52F, N1055A-C0C, R-50C-011-3', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'april'),
('86100D', 'MY55140109', '1-8842167274', '1-8857907682-1', '03 / CO', '4/21/2017', '100.68', '1372', '1472.68', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '6', '736', '3', '86100D-092, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPN, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'april'),
('N1092A', 'US56020058', '1-8845926300', '1-8845926386-1', '03 / CC', '4/24/2017', '0', '1715', '1715', 'Keysight Technologies', 'Singapore', 'SINGAPORE', '768923', '8F', '5320', '5/1/2017', '0', '185', '1', 'N/A', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'april'),
('86100D', 'MY55180461', '1-8660654467', '1-8805805986-1', '03 / CC', '2/16/2017', '166.97', '1372', '1538.97', 'Samtec Inc', 'United States', 'NEW ALBANY', '47151-1147', '8F', 'AX63', '4/1/2017', '49', '516', '2', '86100D-092, 86100D-200, 86100D-201, 86100D-202, 86100D-300, 86100D-500, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-SIM, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'april'),
('86108B', 'MY55320156', '1-8829709546', '1-8829709673-1', '02N / CO', '4/17/2017', '199', '1372', '1571', 'Delta Networks Inc', 'Taiwan', 'TAOYUAN', '333', '8F', 'AX63', '5/1/2017', '32', '264', '1', '86108B-232, 86108B-300, 86108B-400, 86108B-A23, 86108B-CA2, 86108B-DC2, 86108B-DC3, 86108B-HBW, 86108B-JSA, 86108B-PT2, 86108B-PTB', 'Factory Warranty', 'Repair', '201705', 'april'),
('86100D', 'MY55400599', '1-8837295509', '1-8852203755-1', '03 / CC', '4/20/2017', '29.99', '1372', '1401.99', '??????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '391', '2', '86100D-092, 86100D-500, 86100D-918, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'april'),
('DSOZ634A', 'MY56110114', '1-8787616807', '1-8816966455-1', '03 / CO', '3/31/2017', '0', '1886.5', '1886.5', 'Southwest Jiaotong University', 'China', 'CHENGDU', '610000', '1A', 'AX63', '5/1/2017', '11', '57', '1', 'DSOX90000-922, DSOZ000-800, DSOZ000-FWD, DSOZ000-FWS', 'Internal Sales', 'Repair', '201705', 'april'),
('86100D', 'MY56210152', '1-8744454899', '1-8764011988-1', '03 / CC', '3/16/2017', '0', '1372', '1372', 'FCI Deutschland GmbH', 'Germany', 'BERLIN', '13509', '8F', 'AX63', '4/1/2017', '41', '267', '1', '86100D-092, 86100D-500, 86100D-902, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'april'),
('N1055A', 'MY56260504', '1-8836594844', '1-8839904961-1', '03 / CO', '4/19/2017', '2328.54', '1372', '3700.54', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '4/1/2017', '1', '258', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'april'),
('N1055A', 'MY56260505', '1-8888375636', '1-8888375765-1', '03 / CO', '5/2/2017', '0', '1372', '1372', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '5/1/2017', '1', '260', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'april'),
('N1055A', 'MY56260506', '1-8797278779', '1-8798025718-1', '03 / CC', '4/4/2017', '2140.82', '1372', '3512.82', 'Delphi Packard Electric Systems', 'United States', 'WARREN', '44486-0001', '8F', 'AX63', '5/1/2017', '2', '227', '1', 'N1055A-34M, N1055A-C0C, N1055A-FS1', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'april'),
('86100D', 'MY56520262', '1-8841991820', '1-8860055907-1', '03 / CO', '4/21/2017', '1701.9', '1372', '3073.9', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '7', '45', '1', '86100D-092, 86100D-200, 86100D-201, 86100D-300, 86100D-401, 86100D-500, 86100D-903, 86100D-9FP, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'april'),
('N1055A', 'MY54360113', '1-8565573330', '1-8565573346-1', '05K / CC', '1/23/2017', '482.76', '3256.5', '3739.26', '???????????', 'Japan', '??????', '222-0033', '8F', 'AX63', '4/1/2017', '70', '832', '3', 'N1055A-54F, N1055A-UK6, R-50C-011-5', 'Extended Warranty', 'Pre-Post-Calibration', '201704', 'april'),
('86105D', 'US49081133', '1-8814073688', '1-8834963496-1', '03 / CO', '4/10/2017', '0', '2755.5', '2755.5', 'Ericsson (China) Communications Co Ltd', 'China', 'BEIJING', '100102', '8F', '5320', '5/1/2017', '18', '707', '2', '86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'april'),
('86115D', 'US53100435', '1-8830898725', '1-8830898761-1', '05K / CC', '4/17/2017', '28.21', '3006', '3034.21', 'Finisar Corp', 'United States', 'SUNNYVALE', '94089-1134', '8F', '5320', '5/1/2017', '24', '665', '2', '86115D-282, 86115D-ATP03, 86115D-RRR', 'Extended Warranty', 'Keysight Cal', '201705', 'april'),
('86105D', 'US56120186', '1-8813766179', '1-8822926440-1', '03 / CO', '4/10/2017', '0', '3006', '3006', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '4/1/2017', '4', '209', '1', '86105D-168, 86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair', '201704', 'april'),
('N1092D', 'US56140355', '1-8816798834', '1-8835485996-1', '03 / CO', '4/11/2017', '1473.16', '4258.5', '5731.66', 'Coretek Opto Corp', 'Taiwan', 'ZHUNAN', '350', '8F', '5320', '4/1/2017', '8', '113', '1', 'C13APWR-931, N1092D-280, N1092D-30A, N1092D-401, N1092D-500, N1092D-C0C, N1092D-EFP, N1092D-LOJ, N1092D-PLK', 'Internal Sales', 'Repair', '201704', 'april'),
('N1092D', 'US56140357', '1-8835023157', '1-8848607654-1', '03 / CO', '4/19/2017', '5022.07', '4258.5', '9280.57', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '5/1/2017', '6', '92', '1', 'C13APWR-922, N1092D-168, N1092D-280, N1092D-30A, N1092D-500, N1092D-C0C, N1092D-FS1, N1092D-STB', 'Internal Sales', 'Repair', '201705', 'april'),
('N1075A', 'MY52130208', '1-8852396076', '1-8868142470-1', '03 / CC', '4/26/2017', '0', '1029', '1029', '????????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '1570', '5', 'N1075A-918, N1075A-C32, N1075A-S32, N1075A-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'may'),
('N1045A', 'MY53360315', '1-8892789846', '1-8892789929-1', '03 / CC', '5/3/2017', '1135.22', '1372', '2507.22', 'Keysight Technologies Deutschland GmbH', 'Germany', 'BOEBLINGEN', '71034', '8F', 'AX63', '6/1/2017', '29', '348', '1', '', 'Ic Trade', 'Pre-Post-Calibration', '201706', 'may'),
('86100D', 'MY54150102', '1-8805978958', '1-8824823135-1', '03 / CO', '4/6/2017', '6543.81', '1372', '7915.81', 'Microsemi Corp', 'United States', 'SUNNYVALE', '94089-1005', '8F', 'AX63', '4/1/2017', '7', '83', '1', '86100D-092, 86100D-202, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-RMKT', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'may'),
('N1055A', 'MY54360123', '1-8797778327', '1-8816542178-2', '03 / AQ', '4/4/2017', '0', '1029', '1029', 'Cisco Systems Inc', 'United States', 'SAN ANTONIO', '78269', '8F', 'AX63', '4/1/2017', '7', '868', '3', 'N1055A-54M, N1055A-C0C', 'Internal Sales', 'Tech Evaluation', '201704', 'may'),
('N1055A', 'MY54360150', '1-8729747468', '1-8845763562-1', '03 / CC', '3/13/2017', '0', '1029', '1029', 'Advanced Semiconductor Engineering Inc', 'Taiwan', 'TAOYUAN', '320', '8F', 'AX63', '4/1/2017', '42', '706', '2', 'N1055A-52F, N1055A-C0C, R-50C-011-3', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'may'),
('86100D', 'MY55140109', '1-8842167274', '1-8857907682-1', '03 / CO', '4/21/2017', '100.68', '1372', '1472.68', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '6', '736', '3', '86100D-092, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPN, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'may'),
('N1092A', 'US56020058', '1-8845926300', '1-8845926386-1', '03 / CC', '4/24/2017', '0', '1715', '1715', 'Keysight Technologies', 'Singapore', 'SINGAPORE', '768923', '8F', '5320', '5/1/2017', '0', '185', '1', 'N/A', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'may'),
('86100D', 'MY55180461', '1-8660654467', '1-8805805986-1', '03 / CC', '2/16/2017', '166.97', '1372', '1538.97', 'Samtec Inc', 'United States', 'NEW ALBANY', '47151-1147', '8F', 'AX63', '4/1/2017', '49', '516', '2', '86100D-092, 86100D-200, 86100D-201, 86100D-202, 86100D-300, 86100D-500, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-SIM, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'may'),
('86108B', 'MY55320156', '1-8829709546', '1-8829709673-1', '02N / CO', '4/17/2017', '199', '1372', '1571', 'Delta Networks Inc', 'Taiwan', 'TAOYUAN', '333', '8F', 'AX63', '5/1/2017', '32', '264', '1', '86108B-232, 86108B-300, 86108B-400, 86108B-A23, 86108B-CA2, 86108B-DC2, 86108B-DC3, 86108B-HBW, 86108B-JSA, 86108B-PT2, 86108B-PTB', 'Factory Warranty', 'Repair', '201705', 'may'),
('86100D', 'MY55400599', '1-8837295509', '1-8852203755-1', '03 / CC', '4/20/2017', '29.99', '1372', '1401.99', '??????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '391', '2', '86100D-092, 86100D-500, 86100D-918, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'may'),
('DSOZ634A', 'MY56110114', '1-8787616807', '1-8816966455-1', '03 / CO', '3/31/2017', '0', '1886.5', '1886.5', 'Southwest Jiaotong University', 'China', 'CHENGDU', '610000', '1A', 'AX63', '5/1/2017', '11', '57', '1', 'DSOX90000-922, DSOZ000-800, DSOZ000-FWD, DSOZ000-FWS', 'Internal Sales', 'Repair', '201705', 'may'),
('86100D', 'MY56210152', '1-8744454899', '1-8764011988-1', '03 / CC', '3/16/2017', '0', '1372', '1372', 'FCI Deutschland GmbH', 'Germany', 'BERLIN', '13509', '8F', 'AX63', '4/1/2017', '41', '267', '1', '86100D-092, 86100D-500, 86100D-902, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'may'),
('N1055A', 'MY56260504', '1-8836594844', '1-8839904961-1', '03 / CO', '4/19/2017', '2328.54', '1372', '3700.54', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '4/1/2017', '1', '258', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'may'),
('N1055A', 'MY56260505', '1-8888375636', '1-8888375765-1', '03 / CO', '5/2/2017', '0', '1372', '1372', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '5/1/2017', '1', '260', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'may'),
('N1055A', 'MY56260506', '1-8797278779', '1-8798025718-1', '03 / CC', '4/4/2017', '2140.82', '1372', '3512.82', 'Delphi Packard Electric Systems', 'United States', 'WARREN', '44486-0001', '8F', 'AX63', '5/1/2017', '2', '227', '1', 'N1055A-34M, N1055A-C0C, N1055A-FS1', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'may'),
('86100D', 'MY56520262', '1-8841991820', '1-8860055907-1', '03 / CO', '4/21/2017', '1701.9', '1372', '3073.9', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '7', '45', '1', '86100D-092, 86100D-200, 86100D-201, 86100D-300, 86100D-401, 86100D-500, 86100D-903, 86100D-9FP, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'may'),
('N1055A', 'MY54360113', '1-8565573330', '1-8565573346-1', '05K / CC', '1/23/2017', '482.76', '3256.5', '3739.26', '???????????', 'Japan', '??????', '222-0033', '8F', 'AX63', '4/1/2017', '70', '832', '3', 'N1055A-54F, N1055A-UK6, R-50C-011-5', 'Extended Warranty', 'Pre-Post-Calibration', '201704', 'may'),
('86105D', 'US49081133', '1-8814073688', '1-8834963496-1', '03 / CO', '4/10/2017', '0', '2755.5', '2755.5', 'Ericsson (China) Communications Co Ltd', 'China', 'BEIJING', '100102', '8F', '5320', '5/1/2017', '18', '707', '2', '86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'may'),
('86115D', 'US53100435', '1-8830898725', '1-8830898761-1', '05K / CC', '4/17/2017', '28.21', '3006', '3034.21', 'Finisar Corp', 'United States', 'SUNNYVALE', '94089-1134', '8F', '5320', '5/1/2017', '24', '665', '2', '86115D-282, 86115D-ATP03, 86115D-RRR', 'Extended Warranty', 'Keysight Cal', '201705', 'may'),
('86105D', 'US56120186', '1-8813766179', '1-8822926440-1', '03 / CO', '4/10/2017', '0', '3006', '3006', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '4/1/2017', '4', '209', '1', '86105D-168, 86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair', '201704', 'may'),
('N1092D', 'US56140355', '1-8816798834', '1-8835485996-1', '03 / CO', '4/11/2017', '1473.16', '4258.5', '5731.66', 'Coretek Opto Corp', 'Taiwan', 'ZHUNAN', '350', '8F', '5320', '4/1/2017', '8', '113', '1', 'C13APWR-931, N1092D-280, N1092D-30A, N1092D-401, N1092D-500, N1092D-C0C, N1092D-EFP, N1092D-LOJ, N1092D-PLK', 'Internal Sales', 'Repair', '201704', 'may'),
('N1092D', 'US56140357', '1-8835023157', '1-8848607654-1', '03 / CO', '4/19/2017', '5022.07', '4258.5', '9280.57', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '5/1/2017', '6', '92', '1', 'C13APWR-922, N1092D-168, N1092D-280, N1092D-30A, N1092D-500, N1092D-C0C, N1092D-FS1, N1092D-STB', 'Internal Sales', 'Repair', '201705', 'may'),
('N1075A', 'MY52130208', '1-8852396076', '1-8868142470-1', '03 / CC', '4/26/2017', '0', '1029', '1029', '????????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '1570', '5', 'N1075A-918, N1075A-C32, N1075A-S32, N1075A-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'june'),
('N1045A', 'MY53360315', '1-8892789846', '1-8892789929-1', '03 / CC', '5/3/2017', '1135.22', '1372', '2507.22', 'Keysight Technologies Deutschland GmbH', 'Germany', 'BOEBLINGEN', '71034', '8F', 'AX63', '6/1/2017', '29', '348', '1', '', 'Ic Trade', 'Pre-Post-Calibration', '201706', 'june'),
('86100D', 'MY54150102', '1-8805978958', '1-8824823135-1', '03 / CO', '4/6/2017', '6543.81', '1372', '7915.81', 'Microsemi Corp', 'United States', 'SUNNYVALE', '94089-1005', '8F', 'AX63', '4/1/2017', '7', '83', '1', '86100D-092, 86100D-202, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-RMKT', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'june'),
('N1055A', 'MY54360123', '1-8797778327', '1-8816542178-2', '03 / AQ', '4/4/2017', '0', '1029', '1029', 'Cisco Systems Inc', 'United States', 'SAN ANTONIO', '78269', '8F', 'AX63', '4/1/2017', '7', '868', '3', 'N1055A-54M, N1055A-C0C', 'Internal Sales', 'Tech Evaluation', '201704', 'june'),
('N1055A', 'MY54360150', '1-8729747468', '1-8845763562-1', '03 / CC', '3/13/2017', '0', '1029', '1029', 'Advanced Semiconductor Engineering Inc', 'Taiwan', 'TAOYUAN', '320', '8F', 'AX63', '4/1/2017', '42', '706', '2', 'N1055A-52F, N1055A-C0C, R-50C-011-3', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'june'),
('86100D', 'MY55140109', '1-8842167274', '1-8857907682-1', '03 / CO', '4/21/2017', '100.68', '1372', '1472.68', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '6', '736', '3', '86100D-092, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPN, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'june'),
('N1092A', 'US56020058', '1-8845926300', '1-8845926386-1', '03 / CC', '4/24/2017', '0', '1715', '1715', 'Keysight Technologies', 'Singapore', 'SINGAPORE', '768923', '8F', '5320', '5/1/2017', '0', '185', '1', 'N/A', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'june'),
('86100D', 'MY55180461', '1-8660654467', '1-8805805986-1', '03 / CC', '2/16/2017', '166.97', '1372', '1538.97', 'Samtec Inc', 'United States', 'NEW ALBANY', '47151-1147', '8F', 'AX63', '4/1/2017', '49', '516', '2', '86100D-092, 86100D-200, 86100D-201, 86100D-202, 86100D-300, 86100D-500, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-SIM, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'june'),
('86108B', 'MY55320156', '1-8829709546', '1-8829709673-1', '02N / CO', '4/17/2017', '199', '1372', '1571', 'Delta Networks Inc', 'Taiwan', 'TAOYUAN', '333', '8F', 'AX63', '5/1/2017', '32', '264', '1', '86108B-232, 86108B-300, 86108B-400, 86108B-A23, 86108B-CA2, 86108B-DC2, 86108B-DC3, 86108B-HBW, 86108B-JSA, 86108B-PT2, 86108B-PTB', 'Factory Warranty', 'Repair', '201705', 'june'),
('86100D', 'MY55400599', '1-8837295509', '1-8852203755-1', '03 / CC', '4/20/2017', '29.99', '1372', '1401.99', '??????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '391', '2', '86100D-092, 86100D-500, 86100D-918, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'june'),
('DSOZ634A', 'MY56110114', '1-8787616807', '1-8816966455-1', '03 / CO', '3/31/2017', '0', '1886.5', '1886.5', 'Southwest Jiaotong University', 'China', 'CHENGDU', '610000', '1A', 'AX63', '5/1/2017', '11', '57', '1', 'DSOX90000-922, DSOZ000-800, DSOZ000-FWD, DSOZ000-FWS', 'Internal Sales', 'Repair', '201705', 'june'),
('86100D', 'MY56210152', '1-8744454899', '1-8764011988-1', '03 / CC', '3/16/2017', '0', '1372', '1372', 'FCI Deutschland GmbH', 'Germany', 'BERLIN', '13509', '8F', 'AX63', '4/1/2017', '41', '267', '1', '86100D-092, 86100D-500, 86100D-902, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'june'),
('N1055A', 'MY56260504', '1-8836594844', '1-8839904961-1', '03 / CO', '4/19/2017', '2328.54', '1372', '3700.54', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '4/1/2017', '1', '258', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'june'),
('N1055A', 'MY56260505', '1-8888375636', '1-8888375765-1', '03 / CO', '5/2/2017', '0', '1372', '1372', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '5/1/2017', '1', '260', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'june'),
('N1055A', 'MY56260506', '1-8797278779', '1-8798025718-1', '03 / CC', '4/4/2017', '2140.82', '1372', '3512.82', 'Delphi Packard Electric Systems', 'United States', 'WARREN', '44486-0001', '8F', 'AX63', '5/1/2017', '2', '227', '1', 'N1055A-34M, N1055A-C0C, N1055A-FS1', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'june'),
('86100D', 'MY56520262', '1-8841991820', '1-8860055907-1', '03 / CO', '4/21/2017', '1701.9', '1372', '3073.9', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '7', '45', '1', '86100D-092, 86100D-200, 86100D-201, 86100D-300, 86100D-401, 86100D-500, 86100D-903, 86100D-9FP, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'june'),
('N1055A', 'MY54360113', '1-8565573330', '1-8565573346-1', '05K / CC', '1/23/2017', '482.76', '3256.5', '3739.26', '???????????', 'Japan', '??????', '222-0033', '8F', 'AX63', '4/1/2017', '70', '832', '3', 'N1055A-54F, N1055A-UK6, R-50C-011-5', 'Extended Warranty', 'Pre-Post-Calibration', '201704', 'june'),
('86105D', 'US49081133', '1-8814073688', '1-8834963496-1', '03 / CO', '4/10/2017', '0', '2755.5', '2755.5', 'Ericsson (China) Communications Co Ltd', 'China', 'BEIJING', '100102', '8F', '5320', '5/1/2017', '18', '707', '2', '86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'june'),
('86115D', 'US53100435', '1-8830898725', '1-8830898761-1', '05K / CC', '4/17/2017', '28.21', '3006', '3034.21', 'Finisar Corp', 'United States', 'SUNNYVALE', '94089-1134', '8F', '5320', '5/1/2017', '24', '665', '2', '86115D-282, 86115D-ATP03, 86115D-RRR', 'Extended Warranty', 'Keysight Cal', '201705', 'june'),
('86105D', 'US56120186', '1-8813766179', '1-8822926440-1', '03 / CO', '4/10/2017', '0', '3006', '3006', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '4/1/2017', '4', '209', '1', '86105D-168, 86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair', '201704', 'june'),
('N1092D', 'US56140355', '1-8816798834', '1-8835485996-1', '03 / CO', '4/11/2017', '1473.16', '4258.5', '5731.66', 'Coretek Opto Corp', 'Taiwan', 'ZHUNAN', '350', '8F', '5320', '4/1/2017', '8', '113', '1', 'C13APWR-931, N1092D-280, N1092D-30A, N1092D-401, N1092D-500, N1092D-C0C, N1092D-EFP, N1092D-LOJ, N1092D-PLK', 'Internal Sales', 'Repair', '201704', 'june'),
('N1092D', 'US56140357', '1-8835023157', '1-8848607654-1', '03 / CO', '4/19/2017', '5022.07', '4258.5', '9280.57', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '5/1/2017', '6', '92', '1', 'C13APWR-922, N1092D-168, N1092D-280, N1092D-30A, N1092D-500, N1092D-C0C, N1092D-FS1, N1092D-STB', 'Internal Sales', 'Repair', '201705', 'june'),
('N1075A', 'MY52130208', '1-8852396076', '1-8868142470-1', '03 / CC', '4/26/2017', '0', '1029', '1029', '????????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '1570', '5', 'N1075A-918, N1075A-C32, N1075A-S32, N1075A-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'july'),
('N1045A', 'MY53360315', '1-8892789846', '1-8892789929-1', '03 / CC', '5/3/2017', '1135.22', '1372', '2507.22', 'Keysight Technologies Deutschland GmbH', 'Germany', 'BOEBLINGEN', '71034', '8F', 'AX63', '6/1/2017', '29', '348', '1', '', 'Ic Trade', 'Pre-Post-Calibration', '201706', 'july'),
('86100D', 'MY54150102', '1-8805978958', '1-8824823135-1', '03 / CO', '4/6/2017', '6543.81', '1372', '7915.81', 'Microsemi Corp', 'United States', 'SUNNYVALE', '94089-1005', '8F', 'AX63', '4/1/2017', '7', '83', '1', '86100D-092, 86100D-202, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-RMKT', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'july'),
('N1055A', 'MY54360123', '1-8797778327', '1-8816542178-2', '03 / AQ', '4/4/2017', '0', '1029', '1029', 'Cisco Systems Inc', 'United States', 'SAN ANTONIO', '78269', '8F', 'AX63', '4/1/2017', '7', '868', '3', 'N1055A-54M, N1055A-C0C', 'Internal Sales', 'Tech Evaluation', '201704', 'july'),
('N1055A', 'MY54360150', '1-8729747468', '1-8845763562-1', '03 / CC', '3/13/2017', '0', '1029', '1029', 'Advanced Semiconductor Engineering Inc', 'Taiwan', 'TAOYUAN', '320', '8F', 'AX63', '4/1/2017', '42', '706', '2', 'N1055A-52F, N1055A-C0C, R-50C-011-3', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'july'),
('86100D', 'MY55140109', '1-8842167274', '1-8857907682-1', '03 / CO', '4/21/2017', '100.68', '1372', '1472.68', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '6', '736', '3', '86100D-092, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPN, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'july'),
('N1092A', 'US56020058', '1-8845926300', '1-8845926386-1', '03 / CC', '4/24/2017', '0', '1715', '1715', 'Keysight Technologies', 'Singapore', 'SINGAPORE', '768923', '8F', '5320', '5/1/2017', '0', '185', '1', 'N/A', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'july'),
('86100D', 'MY55180461', '1-8660654467', '1-8805805986-1', '03 / CC', '2/16/2017', '166.97', '1372', '1538.97', 'Samtec Inc', 'United States', 'NEW ALBANY', '47151-1147', '8F', 'AX63', '4/1/2017', '49', '516', '2', '86100D-092, 86100D-200, 86100D-201, 86100D-202, 86100D-300, 86100D-500, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-SIM, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'july'),
('86108B', 'MY55320156', '1-8829709546', '1-8829709673-1', '02N / CO', '4/17/2017', '199', '1372', '1571', 'Delta Networks Inc', 'Taiwan', 'TAOYUAN', '333', '8F', 'AX63', '5/1/2017', '32', '264', '1', '86108B-232, 86108B-300, 86108B-400, 86108B-A23, 86108B-CA2, 86108B-DC2, 86108B-DC3, 86108B-HBW, 86108B-JSA, 86108B-PT2, 86108B-PTB', 'Factory Warranty', 'Repair', '201705', 'july'),
('86100D', 'MY55400599', '1-8837295509', '1-8852203755-1', '03 / CC', '4/20/2017', '29.99', '1372', '1401.99', '??????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '391', '2', '86100D-092, 86100D-500, 86100D-918, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'july'),
('DSOZ634A', 'MY56110114', '1-8787616807', '1-8816966455-1', '03 / CO', '3/31/2017', '0', '1886.5', '1886.5', 'Southwest Jiaotong University', 'China', 'CHENGDU', '610000', '1A', 'AX63', '5/1/2017', '11', '57', '1', 'DSOX90000-922, DSOZ000-800, DSOZ000-FWD, DSOZ000-FWS', 'Internal Sales', 'Repair', '201705', 'july'),
('86100D', 'MY56210152', '1-8744454899', '1-8764011988-1', '03 / CC', '3/16/2017', '0', '1372', '1372', 'FCI Deutschland GmbH', 'Germany', 'BERLIN', '13509', '8F', 'AX63', '4/1/2017', '41', '267', '1', '86100D-092, 86100D-500, 86100D-902, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'july'),
('N1055A', 'MY56260504', '1-8836594844', '1-8839904961-1', '03 / CO', '4/19/2017', '2328.54', '1372', '3700.54', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '4/1/2017', '1', '258', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'july'),
('N1055A', 'MY56260505', '1-8888375636', '1-8888375765-1', '03 / CO', '5/2/2017', '0', '1372', '1372', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '5/1/2017', '1', '260', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'july'),
('N1055A', 'MY56260506', '1-8797278779', '1-8798025718-1', '03 / CC', '4/4/2017', '2140.82', '1372', '3512.82', 'Delphi Packard Electric Systems', 'United States', 'WARREN', '44486-0001', '8F', 'AX63', '5/1/2017', '2', '227', '1', 'N1055A-34M, N1055A-C0C, N1055A-FS1', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'july'),
('86100D', 'MY56520262', '1-8841991820', '1-8860055907-1', '03 / CO', '4/21/2017', '1701.9', '1372', '3073.9', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '7', '45', '1', '86100D-092, 86100D-200, 86100D-201, 86100D-300, 86100D-401, 86100D-500, 86100D-903, 86100D-9FP, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'july'),
('N1055A', 'MY54360113', '1-8565573330', '1-8565573346-1', '05K / CC', '1/23/2017', '482.76', '3256.5', '3739.26', '???????????', 'Japan', '??????', '222-0033', '8F', 'AX63', '4/1/2017', '70', '832', '3', 'N1055A-54F, N1055A-UK6, R-50C-011-5', 'Extended Warranty', 'Pre-Post-Calibration', '201704', 'july'),
('86105D', 'US49081133', '1-8814073688', '1-8834963496-1', '03 / CO', '4/10/2017', '0', '2755.5', '2755.5', 'Ericsson (China) Communications Co Ltd', 'China', 'BEIJING', '100102', '8F', '5320', '5/1/2017', '18', '707', '2', '86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'july'),
('86115D', 'US53100435', '1-8830898725', '1-8830898761-1', '05K / CC', '4/17/2017', '28.21', '3006', '3034.21', 'Finisar Corp', 'United States', 'SUNNYVALE', '94089-1134', '8F', '5320', '5/1/2017', '24', '665', '2', '86115D-282, 86115D-ATP03, 86115D-RRR', 'Extended Warranty', 'Keysight Cal', '201705', 'july'),
('86105D', 'US56120186', '1-8813766179', '1-8822926440-1', '03 / CO', '4/10/2017', '0', '3006', '3006', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '4/1/2017', '4', '209', '1', '86105D-168, 86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair', '201704', 'july'),
('N1092D', 'US56140355', '1-8816798834', '1-8835485996-1', '03 / CO', '4/11/2017', '1473.16', '4258.5', '5731.66', 'Coretek Opto Corp', 'Taiwan', 'ZHUNAN', '350', '8F', '5320', '4/1/2017', '8', '113', '1', 'C13APWR-931, N1092D-280, N1092D-30A, N1092D-401, N1092D-500, N1092D-C0C, N1092D-EFP, N1092D-LOJ, N1092D-PLK', 'Internal Sales', 'Repair', '201704', 'july'),
('N1092D', 'US56140357', '1-8835023157', '1-8848607654-1', '03 / CO', '4/19/2017', '5022.07', '4258.5', '9280.57', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '5/1/2017', '6', '92', '1', 'C13APWR-922, N1092D-168, N1092D-280, N1092D-30A, N1092D-500, N1092D-C0C, N1092D-FS1, N1092D-STB', 'Internal Sales', 'Repair', '201705', 'july'),
('N1075A', 'MY52130208', '1-8852396076', '1-8868142470-1', '03 / CC', '4/26/2017', '0', '1029', '1029', '????????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '1570', '5', 'N1075A-918, N1075A-C32, N1075A-S32, N1075A-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'august'),
('N1045A', 'MY53360315', '1-8892789846', '1-8892789929-1', '03 / CC', '5/3/2017', '1135.22', '1372', '2507.22', 'Keysight Technologies Deutschland GmbH', 'Germany', 'BOEBLINGEN', '71034', '8F', 'AX63', '6/1/2017', '29', '348', '1', '', 'Ic Trade', 'Pre-Post-Calibration', '201706', 'august'),
('86100D', 'MY54150102', '1-8805978958', '1-8824823135-1', '03 / CO', '4/6/2017', '6543.81', '1372', '7915.81', 'Microsemi Corp', 'United States', 'SUNNYVALE', '94089-1005', '8F', 'AX63', '4/1/2017', '7', '83', '1', '86100D-092, 86100D-202, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-RMKT', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'august'),
('N1055A', 'MY54360123', '1-8797778327', '1-8816542178-2', '03 / AQ', '4/4/2017', '0', '1029', '1029', 'Cisco Systems Inc', 'United States', 'SAN ANTONIO', '78269', '8F', 'AX63', '4/1/2017', '7', '868', '3', 'N1055A-54M, N1055A-C0C', 'Internal Sales', 'Tech Evaluation', '201704', 'august'),
('N1055A', 'MY54360150', '1-8729747468', '1-8845763562-1', '03 / CC', '3/13/2017', '0', '1029', '1029', 'Advanced Semiconductor Engineering Inc', 'Taiwan', 'TAOYUAN', '320', '8F', 'AX63', '4/1/2017', '42', '706', '2', 'N1055A-52F, N1055A-C0C, R-50C-011-3', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'august'),
('86100D', 'MY55140109', '1-8842167274', '1-8857907682-1', '03 / CO', '4/21/2017', '100.68', '1372', '1472.68', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '6', '736', '3', '86100D-092, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPN, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'august'),
('N1092A', 'US56020058', '1-8845926300', '1-8845926386-1', '03 / CC', '4/24/2017', '0', '1715', '1715', 'Keysight Technologies', 'Singapore', 'SINGAPORE', '768923', '8F', '5320', '5/1/2017', '0', '185', '1', 'N/A', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'august'),
('86100D', 'MY55180461', '1-8660654467', '1-8805805986-1', '03 / CC', '2/16/2017', '166.97', '1372', '1538.97', 'Samtec Inc', 'United States', 'NEW ALBANY', '47151-1147', '8F', 'AX63', '4/1/2017', '49', '516', '2', '86100D-092, 86100D-200, 86100D-201, 86100D-202, 86100D-300, 86100D-500, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-SIM, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'august'),
('86108B', 'MY55320156', '1-8829709546', '1-8829709673-1', '02N / CO', '4/17/2017', '199', '1372', '1571', 'Delta Networks Inc', 'Taiwan', 'TAOYUAN', '333', '8F', 'AX63', '5/1/2017', '32', '264', '1', '86108B-232, 86108B-300, 86108B-400, 86108B-A23, 86108B-CA2, 86108B-DC2, 86108B-DC3, 86108B-HBW, 86108B-JSA, 86108B-PT2, 86108B-PTB', 'Factory Warranty', 'Repair', '201705', 'august'),
('86100D', 'MY55400599', '1-8837295509', '1-8852203755-1', '03 / CC', '4/20/2017', '29.99', '1372', '1401.99', '??????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '391', '2', '86100D-092, 86100D-500, 86100D-918, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'august'),
('DSOZ634A', 'MY56110114', '1-8787616807', '1-8816966455-1', '03 / CO', '3/31/2017', '0', '1886.5', '1886.5', 'Southwest Jiaotong University', 'China', 'CHENGDU', '610000', '1A', 'AX63', '5/1/2017', '11', '57', '1', 'DSOX90000-922, DSOZ000-800, DSOZ000-FWD, DSOZ000-FWS', 'Internal Sales', 'Repair', '201705', 'august'),
('86100D', 'MY56210152', '1-8744454899', '1-8764011988-1', '03 / CC', '3/16/2017', '0', '1372', '1372', 'FCI Deutschland GmbH', 'Germany', 'BERLIN', '13509', '8F', 'AX63', '4/1/2017', '41', '267', '1', '86100D-092, 86100D-500, 86100D-902, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'august'),
('N1055A', 'MY56260504', '1-8836594844', '1-8839904961-1', '03 / CO', '4/19/2017', '2328.54', '1372', '3700.54', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '4/1/2017', '1', '258', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'august'),
('N1055A', 'MY56260505', '1-8888375636', '1-8888375765-1', '03 / CO', '5/2/2017', '0', '1372', '1372', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '5/1/2017', '1', '260', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'august'),
('N1055A', 'MY56260506', '1-8797278779', '1-8798025718-1', '03 / CC', '4/4/2017', '2140.82', '1372', '3512.82', 'Delphi Packard Electric Systems', 'United States', 'WARREN', '44486-0001', '8F', 'AX63', '5/1/2017', '2', '227', '1', 'N1055A-34M, N1055A-C0C, N1055A-FS1', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'august'),
('86100D', 'MY56520262', '1-8841991820', '1-8860055907-1', '03 / CO', '4/21/2017', '1701.9', '1372', '3073.9', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '7', '45', '1', '86100D-092, 86100D-200, 86100D-201, 86100D-300, 86100D-401, 86100D-500, 86100D-903, 86100D-9FP, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'august'),
('N1055A', 'MY54360113', '1-8565573330', '1-8565573346-1', '05K / CC', '1/23/2017', '482.76', '3256.5', '3739.26', '???????????', 'Japan', '??????', '222-0033', '8F', 'AX63', '4/1/2017', '70', '832', '3', 'N1055A-54F, N1055A-UK6, R-50C-011-5', 'Extended Warranty', 'Pre-Post-Calibration', '201704', 'august'),
('86105D', 'US49081133', '1-8814073688', '1-8834963496-1', '03 / CO', '4/10/2017', '0', '2755.5', '2755.5', 'Ericsson (China) Communications Co Ltd', 'China', 'BEIJING', '100102', '8F', '5320', '5/1/2017', '18', '707', '2', '86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'august'),
('86115D', 'US53100435', '1-8830898725', '1-8830898761-1', '05K / CC', '4/17/2017', '28.21', '3006', '3034.21', 'Finisar Corp', 'United States', 'SUNNYVALE', '94089-1134', '8F', '5320', '5/1/2017', '24', '665', '2', '86115D-282, 86115D-ATP03, 86115D-RRR', 'Extended Warranty', 'Keysight Cal', '201705', 'august'),
('86105D', 'US56120186', '1-8813766179', '1-8822926440-1', '03 / CO', '4/10/2017', '0', '3006', '3006', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '4/1/2017', '4', '209', '1', '86105D-168, 86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair', '201704', 'august'),
('N1092D', 'US56140355', '1-8816798834', '1-8835485996-1', '03 / CO', '4/11/2017', '1473.16', '4258.5', '5731.66', 'Coretek Opto Corp', 'Taiwan', 'ZHUNAN', '350', '8F', '5320', '4/1/2017', '8', '113', '1', 'C13APWR-931, N1092D-280, N1092D-30A, N1092D-401, N1092D-500, N1092D-C0C, N1092D-EFP, N1092D-LOJ, N1092D-PLK', 'Internal Sales', 'Repair', '201704', 'august'),
('N1092D', 'US56140357', '1-8835023157', '1-8848607654-1', '03 / CO', '4/19/2017', '5022.07', '4258.5', '9280.57', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '5/1/2017', '6', '92', '1', 'C13APWR-922, N1092D-168, N1092D-280, N1092D-30A, N1092D-500, N1092D-C0C, N1092D-FS1, N1092D-STB', 'Internal Sales', 'Repair', '201705', 'august'),
('N1075A', 'MY52130208', '1-8852396076', '1-8868142470-1', '03 / CC', '4/26/2017', '0', '1029', '1029', '????????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '1570', '5', 'N1075A-918, N1075A-C32, N1075A-S32, N1075A-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'september'),
('N1045A', 'MY53360315', '1-8892789846', '1-8892789929-1', '03 / CC', '5/3/2017', '1135.22', '1372', '2507.22', 'Keysight Technologies Deutschland GmbH', 'Germany', 'BOEBLINGEN', '71034', '8F', 'AX63', '6/1/2017', '29', '348', '1', '', 'Ic Trade', 'Pre-Post-Calibration', '201706', 'september'),
('86100D', 'MY54150102', '1-8805978958', '1-8824823135-1', '03 / CO', '4/6/2017', '6543.81', '1372', '7915.81', 'Microsemi Corp', 'United States', 'SUNNYVALE', '94089-1005', '8F', 'AX63', '4/1/2017', '7', '83', '1', '86100D-092, 86100D-202, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-RMKT', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'september'),
('N1055A', 'MY54360123', '1-8797778327', '1-8816542178-2', '03 / AQ', '4/4/2017', '0', '1029', '1029', 'Cisco Systems Inc', 'United States', 'SAN ANTONIO', '78269', '8F', 'AX63', '4/1/2017', '7', '868', '3', 'N1055A-54M, N1055A-C0C', 'Internal Sales', 'Tech Evaluation', '201704', 'september'),
('N1055A', 'MY54360150', '1-8729747468', '1-8845763562-1', '03 / CC', '3/13/2017', '0', '1029', '1029', 'Advanced Semiconductor Engineering Inc', 'Taiwan', 'TAOYUAN', '320', '8F', 'AX63', '4/1/2017', '42', '706', '2', 'N1055A-52F, N1055A-C0C, R-50C-011-3', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'september'),
('86100D', 'MY55140109', '1-8842167274', '1-8857907682-1', '03 / CO', '4/21/2017', '100.68', '1372', '1472.68', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '6', '736', '3', '86100D-092, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPN, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'september'),
('N1092A', 'US56020058', '1-8845926300', '1-8845926386-1', '03 / CC', '4/24/2017', '0', '1715', '1715', 'Keysight Technologies', 'Singapore', 'SINGAPORE', '768923', '8F', '5320', '5/1/2017', '0', '185', '1', 'N/A', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'september'),
('86100D', 'MY55180461', '1-8660654467', '1-8805805986-1', '03 / CC', '2/16/2017', '166.97', '1372', '1538.97', 'Samtec Inc', 'United States', 'NEW ALBANY', '47151-1147', '8F', 'AX63', '4/1/2017', '49', '516', '2', '86100D-092, 86100D-200, 86100D-201, 86100D-202, 86100D-300, 86100D-500, 86100D-903, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-SIM, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'september'),
('86108B', 'MY55320156', '1-8829709546', '1-8829709673-1', '02N / CO', '4/17/2017', '199', '1372', '1571', 'Delta Networks Inc', 'Taiwan', 'TAOYUAN', '333', '8F', 'AX63', '5/1/2017', '32', '264', '1', '86108B-232, 86108B-300, 86108B-400, 86108B-A23, 86108B-CA2, 86108B-DC2, 86108B-DC3, 86108B-HBW, 86108B-JSA, 86108B-PT2, 86108B-PTB', 'Factory Warranty', 'Repair', '201705', 'september'),
('86100D', 'MY55400599', '1-8837295509', '1-8852203755-1', '03 / CC', '4/20/2017', '29.99', '1372', '1401.99', '??????????', 'Japan', 'HACHIOJI', '192-8550', '8F', 'AX63', '5/1/2017', '6', '391', '2', '86100D-092, 86100D-500, 86100D-918, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB, 86100D-UK6', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'september'),
('DSOZ634A', 'MY56110114', '1-8787616807', '1-8816966455-1', '03 / CO', '3/31/2017', '0', '1886.5', '1886.5', 'Southwest Jiaotong University', 'China', 'CHENGDU', '610000', '1A', 'AX63', '5/1/2017', '11', '57', '1', 'DSOX90000-922, DSOZ000-800, DSOZ000-FWD, DSOZ000-FWS', 'Internal Sales', 'Repair', '201705', 'september'),
('86100D', 'MY56210152', '1-8744454899', '1-8764011988-1', '03 / CC', '3/16/2017', '0', '1372', '1372', 'FCI Deutschland GmbH', 'Germany', 'BERLIN', '13509', '8F', 'AX63', '4/1/2017', '41', '267', '1', '86100D-092, 86100D-500, 86100D-902, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Pre-Post-Calibration', '201704', 'september'),
('N1055A', 'MY56260504', '1-8836594844', '1-8839904961-1', '03 / CO', '4/19/2017', '2328.54', '1372', '3700.54', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '4/1/2017', '1', '258', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'september'),
('N1055A', 'MY56260505', '1-8888375636', '1-8888375765-1', '03 / CO', '5/2/2017', '0', '1372', '1372', 'Keysight Technologies Inc', 'United States', 'SANTA CLARA', '95052-8059', '8F', 'AX63', '5/1/2017', '1', '260', '1', 'N/A', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'september'),
('N1055A', 'MY56260506', '1-8797278779', '1-8798025718-1', '03 / CC', '4/4/2017', '2140.82', '1372', '3512.82', 'Delphi Packard Electric Systems', 'United States', 'WARREN', '44486-0001', '8F', 'AX63', '5/1/2017', '2', '227', '1', 'N1055A-34M, N1055A-C0C, N1055A-FS1', 'Internal Sales', 'Pre-Post-Calibration', '201705', 'september'),
('86100D', 'MY56520262', '1-8841991820', '1-8860055907-1', '03 / CO', '4/21/2017', '1701.9', '1372', '3073.9', 'MACOM', 'United States', 'HORSEHEADS', '14845-1018', '8F', 'AX63', '4/1/2017', '7', '45', '1', '86100D-092, 86100D-200, 86100D-201, 86100D-300, 86100D-401, 86100D-500, 86100D-903, 86100D-9FP, 86100D-ATP02, 86100D-ETR, 86100D-FWD, 86100D-FWS, 86100D-GPI, 86100D-PTB', 'Internal Sales', 'Repair-Inc post Calibration', '201704', 'september'),
('N1055A', 'MY54360113', '1-8565573330', '1-8565573346-1', '05K / CC', '1/23/2017', '482.76', '3256.5', '3739.26', '???????????', 'Japan', '??????', '222-0033', '8F', 'AX63', '4/1/2017', '70', '832', '3', 'N1055A-54F, N1055A-UK6, R-50C-011-5', 'Extended Warranty', 'Pre-Post-Calibration', '201704', 'september'),
('86105D', 'US49081133', '1-8814073688', '1-8834963496-1', '03 / CO', '4/10/2017', '0', '2755.5', '2755.5', 'Ericsson (China) Communications Co Ltd', 'China', 'BEIJING', '100102', '8F', '5320', '5/1/2017', '18', '707', '2', '86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair-Inc post Calibration', '201705', 'september'),
('86115D', 'US53100435', '1-8830898725', '1-8830898761-1', '05K / CC', '4/17/2017', '28.21', '3006', '3034.21', 'Finisar Corp', 'United States', 'SUNNYVALE', '94089-1134', '8F', '5320', '5/1/2017', '24', '665', '2', '86115D-282, 86115D-ATP03, 86115D-RRR', 'Extended Warranty', 'Keysight Cal', '201705', 'september'),
('86105D', 'US56120186', '1-8813766179', '1-8822926440-1', '03 / CO', '4/10/2017', '0', '3006', '3006', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '4/1/2017', '4', '209', '1', '86105D-168, 86105D-281, 86105D-ATP03, 86105D-RRR', 'Internal Sales', 'Repair', '201704', 'september'),
('N1092D', 'US56140355', '1-8816798834', '1-8835485996-1', '03 / CO', '4/11/2017', '1473.16', '4258.5', '5731.66', 'Coretek Opto Corp', 'Taiwan', 'ZHUNAN', '350', '8F', '5320', '4/1/2017', '8', '113', '1', 'C13APWR-931, N1092D-280, N1092D-30A, N1092D-401, N1092D-500, N1092D-C0C, N1092D-EFP, N1092D-LOJ, N1092D-PLK', 'Internal Sales', 'Repair', '201704', 'september'),
('N1092D', 'US56140357', '1-8835023157', '1-8848607654-1', '03 / CO', '4/19/2017', '5022.07', '4258.5', '9280.57', 'Innolight Technology (Suzhou) Ltd', 'China', 'SUZHOU', '215123', '8F', '5320', '5/1/2017', '6', '92', '1', 'C13APWR-922, N1092D-168, N1092D-280, N1092D-30A, N1092D-500, N1092D-C0C, N1092D-FS1, N1092D-STB', 'Internal Sales', 'Repair', '201705', 'september');

-- --------------------------------------------------------

--
-- Table structure for table `profilemaster`
--

CREATE TABLE `profilemaster` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `PhoneNumber` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Role` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `tokenCode` varchar(100) NOT NULL,
  `DateAdded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profilemaster`
--

INSERT INTO `profilemaster` (`Id`, `Name`, `Email`, `Username`, `PhoneNumber`, `Password`, `Role`, `Status`, `tokenCode`, `DateAdded`) VALUES
(1, 'System Admin', 'admin@gmail.com', 'admin', '(254) 070-196463', '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '1', 'Y', '57a964b7e0056adcbe676f97d89367e2', '2017-07-16'),
(3, 'Customer', 'customer@gmail.com', 'Customer', '(254) 070-196463', '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '2', 'Y', '57a964b7e0056adcbe676f97d89367e2', '2017-07-16'),
(4, 'Worker', 'employee@gmail.com', 'Worker', '(254) 701-964636', '$2y$10$rsSX6LnhI1tojLPEvyyVI.9hWErWxUXwkqyfrL/DMNTSJQyT2mtve', '3', 'Y', '57a964b7e0056adcbe676f97d89367e2', '2017-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_files`
--

CREATE TABLE `uploaded_files` (
  `Id` int(11) NOT NULL,
  `Uploader` int(11) NOT NULL,
  `File` text NOT NULL,
  `Imported` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploaded_files`
--

INSERT INTO `uploaded_files` (`Id`, `Uploader`, `File`, `Imported`) VALUES
(1, 4, '966404.csv', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profilemaster`
--
ALTER TABLE `profilemaster`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profilemaster`
--
ALTER TABLE `profilemaster`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
