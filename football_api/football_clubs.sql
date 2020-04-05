-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2020 at 05:51 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `football_clubs`
--

CREATE TABLE `football_clubs` (
  `club_id` int(11) NOT NULL,
  `club_state` varchar(100) NOT NULL,
  `club_name` varchar(500) NOT NULL,
  `club_city` varchar(100) NOT NULL,
  `club_league` varchar(500) NOT NULL,
  `club_likes` int(11) DEFAULT 0,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `football_clubs`
--

INSERT INTO `football_clubs` (`club_id`, `club_state`, `club_name`, `club_city`, `club_league`, `club_likes`, `added_on`) VALUES
(1, 'Assam', 'FC Green Valley', 'Guwahati', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(2, 'Assam', 'Karbi Anglong Morning Star FC', 'Diphu', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(3, 'Assam', 'Guwahati F.C.', 'Guwahati', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(4, 'Assam', 'Assam Dynamo Club', 'Guwahati', 'Guwahati League A Division', 0, '2020-04-04 13:42:55'),
(5, 'Assam', 'Barekuri FC', 'Tinsukia', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(6, 'Assam', 'Golaghat Rhino FC', 'Golaghat', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(7, 'Assam', 'Jorhat Town Club', 'Jorhat', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(8, 'Assam', 'Moran Town Club', 'Sivasagar', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(9, 'Assam', 'Trinayanjyoti FC', 'Dibrugarh', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(10, 'Assam', 'Global FC, Gossaigaon', 'Gossaigaon', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(11, 'Assam', 'Baarhoongkha AC', 'Kokrajhar', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(12, 'Assam', 'Tezpur United FC', 'Tezpur', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(13, 'Assam', 'Udalguri FC', 'Udalguri', 'Assam State Premier League', 0, '2020-04-04 13:42:55'),
(14, 'Assam', 'NorthEast United FC', 'Guwahati', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(15, 'Assam', 'ASEB SC', 'Guwahati', 'GSA Super Division League', 0, '2020-04-04 13:42:55'),
(16, 'Assam', 'Navajyoti FC', 'Guwahati', 'GSA Super Division League', 0, '2020-04-04 13:42:55'),
(17, 'Assam', 'Assam Police Blues', 'Guwahati', 'GSA Super Division League', 0, '2020-04-04 13:42:55'),
(18, 'Assam', 'NFR SC', 'Guwahati', 'GSA Super Division League', 0, '2020-04-04 13:42:55'),
(19, 'Assam', 'Gauhati Town Club', 'Guwahati', 'GSA A Division League', 0, '2020-04-04 13:42:55'),
(20, 'Assam', 'Guwahati City FC', 'Guwahati', 'GSA C Division League', 0, '2020-04-04 13:42:55'),
(21, 'Assam', 'Assam Rifles SC', 'Tezpur', '-', 0, '2020-04-04 13:42:55'),
(22, 'Assam', 'Oil India Ltd FC', 'Duliajan', '-', 0, '2020-04-04 13:42:55'),
(23, 'Assam', 'SAI SC', 'Kokrajhar', '-', 0, '2020-04-04 13:42:55'),
(24, 'Bihar', 'Shirsh Bihar United Football Club', 'Patna', 'I-League 2nd Division', 5, '2020-04-04 13:42:55'),
(25, 'Bihar', 'Rainbow Football Club', 'Patna', 'Moin-ul-Haq Cup', 0, '2020-04-04 13:42:55'),
(26, 'Bihar', 'Sporting Football Club', 'Patna', 'Moin-ul-Haq Cup', 0, '2020-04-04 13:42:55'),
(27, 'Bihar', 'Friends Football Club', 'Patna', 'Moin-ul-Haq Cup', 0, '2020-04-04 13:42:55'),
(28, 'Bihar', 'Rajmilk Football Club', 'Patna', 'Moin-ul-Haq Cup', 0, '2020-04-04 13:42:55'),
(29, 'Bihar', 'RK Steel', 'Siwan', 'Moin-ul-Haq Cup', 0, '2020-04-04 13:42:55'),
(30, 'Bihar', 'Adivasi United', 'Purnea', 'Moin-ul-Haq Cup', 1, '2020-04-04 13:42:55'),
(31, 'Delhi', 'Delhi', 'New Delhi and UttarakhandUttarakhand', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(32, 'Delhi', 'Delhi United', 'New Delhi and Greater NoidaGreater Noida', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(33, 'Delhi', 'Hindustan', 'New Delhi', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(34, 'Delhi', 'Sudeva Moonlight', 'New Delhi', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(35, 'Delhi', 'Garhwal Heroes', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(36, 'Delhi', 'Simla Youngs', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(37, 'Delhi', 'New Delhi Heroes FC', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(38, 'Delhi', 'Ahbab FC', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(39, 'Delhi', 'Goodwill FC', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(40, 'Delhi', 'Tarun Sangha', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(41, 'Delhi', 'Shahdara FC', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(42, 'Delhi', 'Friends United FC', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(43, 'Delhi', 'Indian Air Force', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(44, 'Delhi', 'NVD CITY FC', 'New Delhi', 'Delhi Senior Division', 0, '2020-04-04 13:42:55'),
(45, 'Goa', 'Churchill Brothers', 'Salcette', 'I-League', 0, '2020-04-04 13:42:55'),
(46, 'Goa', 'Sporting Clube de Goa', 'Panjim', 'Goa Professional League', 0, '2020-04-04 13:42:55'),
(47, 'Goa', 'Salgaocar', 'Vasco da Gama', 'Goa Professional League', 0, '2020-04-04 13:42:55'),
(48, 'Goa', 'Dempo', 'Panjim', 'Goa Professional League', 0, '2020-04-04 13:42:55'),
(49, 'Goa', 'FC Bardez Goa', 'Bardez', 'Goa Professional League', 0, '2020-04-04 13:42:55'),
(50, 'Goa', 'Vasco', 'Vasco da Gama', 'Goa Professional League', 1, '2020-04-04 13:42:55'),
(51, 'Goa', 'Indian Arrows', 'Goa', 'I-league', 0, '2020-04-04 13:42:55'),
(52, 'Goa', 'Calangute F.C.', 'Calangute', 'Goa Professional League', 1, '2020-04-04 13:42:55'),
(53, 'Goa', 'Santa Cruz Club of Cavelossim', 'Santa Cruz', 'Goa Professional League', 0, '2020-04-04 13:42:55'),
(54, 'Goa', 'Curtorim Gymkhana', 'Curtorim', 'Goa Professional League', 0, '2020-04-04 13:42:55'),
(55, 'Goa', 'Guardian Angel SC', 'Curchorem', 'Goa Professional League', 0, '2020-04-04 13:42:55'),
(56, 'Goa', 'Laxmi Prasad S.C.', 'Mapusa', 'Goa Professional League', 0, '2020-04-04 13:42:55'),
(57, 'Goa', 'FC Goa', 'Goa', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(58, 'Goa', 'SESA', 'Sanquelim', 'GFA First Division League', 0, '2020-04-04 13:42:55'),
(59, 'Goa', 'Goa Velha F.C.', 'Old Goa', 'GFA First Division League', 0, '2020-04-04 13:42:55'),
(60, 'Gujarat', 'Gujarat', 'Ahmedabad', '', 14, '2020-04-04 13:42:55'),
(61, 'Gujarat', 'ARA', 'Ahmedabad', 'I-League 2nd Division', 1, '2020-04-04 13:42:55'),
(62, 'Gujarat', 'St. Joseph\'s FC', 'Ahmedabad', '', 5, '2020-04-04 13:42:55'),
(63, 'Haryana', 'Amity United Football Club', 'Gurgaon', 'Haryana State Football League', 1, '2020-04-04 13:42:55'),
(64, 'Haryana', 'Canarinho Football Club', 'Faridabad', '', 3, '2020-04-04 13:42:55'),
(65, 'Haryana', 'Sahid Bhagat Singh Football Club', 'Panipat', '', 1, '2020-04-04 13:42:55'),
(66, 'Jammu and Kashmir', 'Real Kashmir F.C.', 'Kashmir', 'I-League', 0, '2020-04-04 13:42:55'),
(67, 'Jammu and Kashmir', 'Lonestar Kashmir F.C.', 'Kashmir', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(68, 'Jammu and Kashmir', 'FC Jammu', 'Jammu', 'I-league 2nd Division', 0, '2020-04-04 13:42:55'),
(69, 'Jharkhand', 'Jamshedpur FC', 'Jamshedpur', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(70, 'Karnataka', 'Ozone FC', 'Bangalore', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(71, 'Karnataka', 'South United F.C.', 'Bangalore', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(72, 'Karnataka', 'Bangalore Dream United Football Club', 'Bangalore', 'Bangalore Super Division', 0, '2020-04-04 13:42:55'),
(73, 'Karnataka', 'FC Mangalore', 'Mangalore', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(74, 'Karnataka', 'Bengaluru FC', 'Bangalore', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(75, 'Karnataka', 'HAL', 'Bangalore', 'â€“', 0, '2020-04-04 13:42:55'),
(76, 'Karnataka', 'KGF Academy', 'Bangalore', 'â€“', 0, '2020-04-04 13:42:55'),
(77, 'Karnataka', '', '', '', 0, '2020-04-04 13:42:55'),
(78, 'Kerala', 'Gokulam Kerala FC', 'Kozhikkode', 'I-League', 0, '2020-04-04 13:42:55'),
(79, 'Kerala', 'Quartz FC', 'Kozhikode', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(80, 'Kerala', 'FC Kerala', 'Thrissur', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(81, 'Kerala', 'SBI Kerala', 'Trivandrum', 'Kerala Premier League', 0, '2020-04-04 13:42:55'),
(82, 'Kerala', 'FC Thrissur', 'Thrissur', 'Kerala Premier League', 0, '2020-04-04 13:42:55'),
(83, 'Kerala', 'Sports Academy Tirur', 'Tirur , MalappuramMalappuram', 'Kerala Premier League', 0, '2020-04-04 13:42:55'),
(84, 'Kerala', 'Golden Threads', 'Kochi', 'Kerala Premier League', 0, '2020-04-04 13:42:55'),
(85, 'Kerala', 'Kovalam FC', 'Trivandrum', 'Kerala Premier League', 0, '2020-04-04 13:42:55'),
(86, 'Kerala', 'Kerala Police FC', 'Trivandrum', 'Kerala Premier League', 0, '2020-04-04 13:42:55'),
(87, 'Kerala', 'Kerala Blasters', 'Kochi', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(88, 'Kerala', 'Luca FC', 'Malappuram', 'Kerala Premier League', 0, '2020-04-04 13:42:55'),
(89, 'Kerala', 'Kannur City FC', 'Kannur', 'Kerala Premier League', 0, '2020-04-04 13:42:55'),
(90, 'Kerala', 'Real Malabar FC', 'Kozhikode', 'Kozhikkode District A Division', 0, '2020-04-04 13:42:55'),
(91, 'Kerala', 'Young Indians FC', 'Kozhikode', 'Kozhikkode District A Division', 0, '2020-04-04 13:42:55'),
(92, 'Kerala', 'Falcons SC', 'Kozhikode', 'Kozhikkode District A Division', 0, '2020-04-04 13:42:55'),
(93, 'Kerala', 'KTC FC', 'Kozhikode', 'Kozhikkode District A Division', 0, '2020-04-04 13:42:55'),
(94, 'Kerala', 'Young challenge FC', 'Kozhikode', 'Kozhikkode District A Division', 0, '2020-04-04 13:42:55'),
(95, 'Kerala', 'Basco FC', 'Othukkungal', 'Malappuram District A Division', 0, '2020-04-04 13:42:55'),
(96, 'Kerala', 'Muvattupuzha FC', 'Muvattupuzha', 'Ernakulam District C Division', 0, '2020-04-04 13:42:55'),
(97, 'Kerala', 'Viva Kerala', 'Kozhikode', '-', 0, '2020-04-04 13:42:55'),
(98, 'Kerala', 'Travancore Royals F C', 'Trivandrum', '-', 0, '2020-04-04 13:42:55'),
(99, 'Kerala', 'FC Kochi', 'Kochi', '-', 0, '2020-04-04 13:42:55'),
(100, 'Kerala', 'Countdown FC', 'Idukki', '-', 0, '2020-04-04 13:42:55'),
(101, 'Kerala', 'Parappur FC', 'Thrissur', '-', 0, '2020-04-04 13:42:55'),
(102, 'Kerala', 'Red Star FC', 'Thrissur', '-', 0, '2020-04-04 13:42:55'),
(103, 'Kerala', 'Eagles', 'Kochi', '-', 0, '2020-04-04 13:42:55'),
(104, 'Kerala', 'Josco FC', 'Kochi', '-', 0, '2020-04-04 13:42:55'),
(105, 'Kerala', 'Chandni FC', 'Kozhikode', '-', 0, '2020-04-04 13:42:55'),
(106, 'Kerala', 'Titanium FC', 'Trivandrum', '-', 0, '2020-04-04 13:42:55'),
(107, 'Kerala', 'Abu Soccers', 'Kochi', '-', 0, '2020-04-04 13:42:55'),
(108, 'Kerala', 'Malabar United', 'Kochi', '-', 0, '2020-04-04 13:42:55'),
(109, 'Kerala', 'R B Ferguson Club', 'Thrissur', '-', 0, '2020-04-04 13:42:55'),
(110, 'Kerala', 'Brothers Chirayinkeezhu', 'Chirayinkeezhu, TrivandrumTrivandrum', '-', 0, '2020-04-04 13:42:55'),
(111, 'Kerala', 'Pattom FC', 'Trivandrum', '-', 0, '2020-04-04 13:42:55'),
(112, 'Kerala', 'Chirag United Club Kerala', 'Kochi', 'Defunct', 0, '2020-04-04 13:42:55'),
(113, 'Kerala', 'FC Kochin', 'Kochi', 'Defunct', 0, '2020-04-04 13:42:55'),
(114, 'Kerala', 'Aurora Football Club', 'Thrissur', 'Defunct', 0, '2020-04-04 13:42:55'),
(115, 'Kerala', 'Vasco football club', 'Vettikkattiri||', '', 0, '2020-04-04 13:42:55'),
(116, 'Chhattisgarh', 'Rovers Club', 'Durg', 'Super league', 0, '2020-04-04 13:42:55'),
(117, 'Chhattisgarh', 'Sports Authority of India (Chhattisgarh)', 'Raipur', '-', 0, '2020-04-04 13:42:55'),
(118, 'Madhya Pradesh', 'Madhya Bharat', 'Bhopal', 'I-League 2nd division', 0, '2020-04-04 13:42:55'),
(119, 'Madhya Pradesh', 'Pride Sports', 'Jabalpur', 'I-League 2nd division', 0, '2020-04-04 13:42:55'),
(120, 'Maharashtra', 'Indian Friends F.C.', 'Nagpur', 'NDFA Super division', 0, '2020-04-04 13:42:55'),
(121, 'Maharashtra', 'Thane City', 'Mumbai', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(122, 'Maharashtra', 'DSK Shivajians F.C.', 'Pune', '', 0, '2020-04-04 13:42:55'),
(123, 'Maharashtra', 'N.M.S.A. F.C.', 'Navi Mumbai', 'Thane Football League', 0, '2020-04-04 13:42:55'),
(124, 'Maharashtra', 'Kenkre', 'Mumbai', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(125, 'Maharashtra', 'PIFA', 'Mumbai', 'Mumbai Football League', 0, '2020-04-04 13:42:55'),
(126, 'Maharashtra', 'Air India', 'Mumbai', 'Mumbai Football League', 0, '2020-04-04 13:42:55'),
(127, 'Maharashtra', 'ONGC FC', 'Mumbai', 'Mumbai Football League', 0, '2020-04-04 13:42:55'),
(128, 'Maharashtra', 'Bengal Mumbai FC', 'Mumbai', 'Mumbai Football League', 0, '2020-04-04 13:42:55'),
(129, 'Maharashtra', 'South-East-Central Railway Sports Club', 'Mumbai', 'Mumbai Football League', 0, '2020-04-04 13:42:55'),
(130, 'Maharashtra', 'Angels FC', 'Dombivli', 'Thane Football League', 0, '2020-04-04 13:42:55'),
(131, 'Maharashtra', 'Navi Mumbai United', 'Navi Mumbai', 'Thane Football League', 0, '2020-04-04 13:42:55'),
(132, 'Maharashtra', 'Mumbai City FC', 'Mumbai', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(133, 'Maharashtra', 'FC Pune City', 'Pune', 'Defunct', 0, '2020-04-04 13:42:55'),
(134, 'Maharashtra', 'Mumbai', 'Mumbai', 'Defunct', 0, '2020-04-04 13:42:55'),
(135, 'Maharashtra', 'Pune', 'Pune', 'Defunct', 0, '2020-04-04 13:42:55'),
(136, 'Maharashtra', 'Bharat FC|Pune', 'PuneDefunct', '', 0, '2020-04-04 13:42:55'),
(137, 'Maharashtra', 'Mumbai Tigers F.C.', 'Mumbai', 'Defunct', 0, '2020-04-04 13:42:55'),
(138, 'Manipur', 'NEROCA', 'Imphal', 'I-League', 0, '2020-04-04 13:42:55'),
(139, 'Manipur', 'TRAU', 'Imphal', 'I-League', 0, '2020-04-04 13:42:55'),
(140, 'Manipur', 'North Imphal Sporting Association', 'Imphal', 'Manipur State League', 0, '2020-04-04 13:42:55'),
(141, 'Manipur', 'F.C. Zalen', 'Sadar Hills', 'Manipur State League', 0, '2020-04-04 13:42:55'),
(142, 'Meghalaya', 'Shillong Lajong', 'Shillong', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(143, 'Meghalaya', 'Langsning', 'Shillong', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(144, 'Meghalaya', 'Royal Wahingdoh', 'Shillong', 'Shillong Premier League', 0, '2020-04-04 13:42:55'),
(145, 'Meghalaya', 'Malki Sports Club', 'Shillong', 'Shillong Premier League', 0, '2020-04-04 13:42:55'),
(146, 'Meghalaya', 'Rangdajied United F.C.', 'Mawngap-Mawphlang', 'Shillong Premier League', 0, '2020-04-04 13:42:55'),
(147, 'Meghalaya', 'Nangkiew Irat SC', 'Shillong', 'Shillong Premier League', 0, '2020-04-04 13:42:55'),
(148, 'Meghalaya', 'Laitumkhrah SC', 'Laitumkhrah', 'Shillong Premier League', 0, '2020-04-04 13:42:55'),
(149, 'Meghalaya', 'Shillong United FC', 'Shillong', 'Shillong Premier League', 0, '2020-04-04 13:42:55'),
(150, 'Mizoram', 'Aizawl', 'Aizawl', 'I-League', 0, '2020-04-04 13:42:55'),
(151, 'Mizoram', 'Chanmari', 'Aizawl', 'Mizoram Premier League', 0, '2020-04-04 13:42:55'),
(152, 'Mizoram', 'Bethlehem Vengthlang FC', 'Aizawl', 'Mizoram Premier League', 0, '2020-04-04 13:42:55'),
(153, 'Mizoram', 'Chanmari West F.C.', 'Aizawl', 'Mizoram Premier League', 0, '2020-04-04 13:42:55'),
(154, 'Mizoram', 'Chhinga Veng', 'Aizawl', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(155, 'Mizoram', 'Dinthar F.C.', 'Aizawl', 'Mizoram Premier League', 0, '2020-04-04 13:42:55'),
(156, 'Mizoram', 'Ramhlun North F.C.', 'Aizawl', 'Mizoram Premier League', 0, '2020-04-04 13:42:55'),
(157, 'Mizoram', 'Zo United F.C.', 'Aizawl', 'Mizoram Premier League', 0, '2020-04-04 13:42:55'),
(158, 'Mizoram', 'Luangmual F.C.', 'Aizawl', 'Mizoram Premier League', 0, '2020-04-04 13:42:55'),
(159, 'Nagaland', 'Kohima Komets', 'Kohima', 'Nagaland Premier League', 0, '2020-04-04 13:42:55'),
(160, 'Nagaland', 'Naga Tornados', 'Zunheboto', 'Nagaland Premier League', 0, '2020-04-04 13:42:55'),
(161, 'Nagaland', 'Dimapur United', 'Dimapur', 'Nagaland Premier League', 0, '2020-04-04 13:42:55'),
(162, 'Nagaland', 'Vanguard FC-Tseminyu', 'Kohima', 'Kohima Football League', 0, '2020-04-04 13:42:55'),
(163, 'Nagaland', 'D.C HILL C.F', 'Zunheboto', 'Zunheboto Premier', 0, '2020-04-04 13:42:55'),
(164, 'Odisha', 'Odisha FC', 'Bhubaneswar', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(165, 'Odisha', 'Samaleswari', 'Bhubaneswar', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(166, 'Punjab', 'Punjab FC', 'Chandigarh', 'I-League', 0, '2020-04-04 13:42:55'),
(167, 'Punjab', 'JCT FC', 'Hoshiarpur', '-', 0, '2020-04-04 13:42:55'),
(168, 'Punjab', 'FC Punjab Police', 'Jalandhar', '-', 0, '2020-04-04 13:42:55'),
(169, 'Punjab', 'United Punjab FC', 'Pathankot', '-', 0, '2020-04-04 13:42:55'),
(170, 'Rajasthan', 'AU Rajasthan', 'Rajasthan', 'I-League 2nd division', 0, '2020-04-04 13:42:55'),
(171, 'Rajasthan', 'Jaipur City', 'Jaipur', 'I-League 2nd division', 0, '2020-04-04 13:42:55'),
(172, 'Sikkim', 'Sikkim F.C.', 'Gangtok', 'I-League', 0, '2020-04-04 13:42:55'),
(173, 'Sikkim', 'Gangtok Himalayan S.C.', 'Gangtok', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(174, 'Sikkim', 'United Sikkim', 'Gangtok', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(175, 'Sikkim', 'Denzong Boys FC', 'Gangtok', '-', 0, '2020-04-04 13:42:55'),
(176, 'Tamil Nadu', 'Chennai City F.C.', 'Coimbatore', 'I-League', 0, '2020-04-04 13:42:55'),
(177, 'Tamil Nadu', 'Indian Bank Sports & R.C.', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(178, 'Tamil Nadu', 'Viva Chennai F.C.', 'Chennai', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(179, 'Tamil Nadu', 'Hindustan Eagles F.C.', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(180, 'Tamil Nadu', 'Chennai United F.C', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(181, 'Tamil Nadu', 'Chennai F.C.', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(182, 'Tamil Nadu', 'Chennai Customs R.C.', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(183, 'Tamil Nadu', 'Southern Railway Institute.', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(184, 'Tamil Nadu', 'ICF Institute.', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(185, 'Tamil Nadu', 'Income Tax Recreation Club.', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(186, 'Tamil Nadu', 'Chennaiyin F.C.', 'Chennai', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(187, 'Tamil Nadu', 'Madras Sporting Union', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(188, 'Tamil Nadu', 'A.G.\'s Office Recreation Club', 'Chennai', 'Chennai Football Senior Division', 0, '2020-04-04 13:42:55'),
(189, 'Telangana', 'Fateh Hyderabad A.F.C', 'Hyderabad', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(190, 'Telangana', 'Hyderabad FC', 'Hyderabad', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(191, 'Uttar Pradesh', 'Akbarpur FC', 'Kanpur', '-', 0, '2020-04-04 13:42:55'),
(192, 'Uttar Pradesh', 'Lucknow City FC', 'Lucknow', 'District Football League', 0, '2020-04-04 13:42:55'),
(193, 'Uttar Pradesh', 'States United FC', 'Lucknow', 'District Football League', 0, '2020-04-04 13:42:55'),
(194, 'Uttar Pradesh', 'Sunrise FC', 'Lucknow', 'District Football League', 0, '2020-04-04 13:42:55'),
(195, 'Uttar Pradesh', 'White Eagle FC', 'Lucknow', 'District Football League', 0, '2020-04-04 13:42:55'),
(196, 'Uttar Pradesh', 'Varanasi City FC', 'Varanasi', '-', 0, '2020-04-04 13:42:55'),
(197, 'Uttar Pradesh', 'FC KIET', 'Ghaziabad', '-', 0, '2020-04-04 13:42:55'),
(198, 'Uttar Pradesh', 'Ghaziabad FC', 'Ghaziabad', '-', 0, '2020-04-04 13:42:55'),
(199, 'Uttar Pradesh', 'Meerut Warriors', 'Meerut', '-', 0, '2020-04-04 13:42:55'),
(200, 'Uttar Pradesh', 'Allahabad Sporting Football Academy', 'Prayagraj', '-', 0, '2020-04-04 13:42:55'),
(201, 'Uttar Pradesh', 'Techtro FC [1]', 'Lucknow', '-', 0, '2020-04-04 13:42:55'),
(202, 'West Bengal', 'ATK FC', 'Kolkata', 'Indian Super League', 0, '2020-04-04 13:42:55'),
(203, 'West Bengal', 'East Bengal', 'Kolkata', 'I-League', 0, '2020-04-04 13:42:55'),
(204, 'West Bengal', 'Mohammedan', 'Kolkata', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(205, 'West Bengal', 'Bhawanipore F.C.', 'Kolkata', 'I-League 2nd Division', 0, '2020-04-04 13:42:55'),
(206, 'West Bengal', 'Peerless', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(207, 'West Bengal', 'Rainbow AC', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(208, 'West Bengal', 'Southern Samity', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(209, 'West Bengal', 'United S.C.', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(210, 'West Bengal', 'Kalighat Milan Sangha', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(211, 'West Bengal', 'Techno Aryan', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(212, 'West Bengal', 'Tollygunge Agragami', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(213, 'West Bengal', 'Eastern Railway FC', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(214, 'West Bengal', 'George Telegraph', 'Kolkata', 'Calcutta Premier Division', 0, '2020-04-04 13:42:55'),
(215, 'West Bengal', 'Calcutta Cricket and Football Club', 'Kolkata', '-', 0, '2020-04-04 13:42:55'),
(216, 'West Bengal', 'Sevak Sangha Club', 'Maharajahat', '-', 0, '2020-04-04 13:42:55'),
(217, 'West Bengal', 'Uttar Bantra Sarbajanin Durgotsab', 'Howrah', '-', 0, '2020-04-04 13:42:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `football_clubs`
--
ALTER TABLE `football_clubs`
  ADD PRIMARY KEY (`club_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `football_clubs`
--
ALTER TABLE `football_clubs`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
