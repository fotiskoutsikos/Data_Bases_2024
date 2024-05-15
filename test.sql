-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 15 Μάη 2024 στις 15:02:30
-- Έκδοση διακομιστή: 10.4.32-MariaDB
-- Έκδοση PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `test`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `belongs`
--

CREATE TABLE `belongs` (
  `recipe_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `chef`
--

CREATE TABLE `chef` (
  `chef_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `birth_date` date NOT NULL,
  `age` varchar(2) NOT NULL,
  `experience` varchar(25) NOT NULL,
  `specialization` varchar(25) NOT NULL,
  `training` varchar(2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `chef`
--

INSERT INTO `chef` (`chef_id`, `first_name`, `last_name`, `contact_number`, `birth_date`, `age`, `experience`, `specialization`, `training`, `user_id`, `image`) VALUES
(1, 'Shaun', 'Hallows', '596-235-73', '1986-12-13', '', '17', '', '', 1, 0),
(2, 'Bil', 'Seabourne', '244-897-45', '2002-03-14', '', '4', '', '', 2, 0),
(3, 'Mikol', 'Saggers', '848-592-60', '2002-06-07', '', '18', '', '', 3, 0),
(4, 'Rasia', 'Snoday', '812-828-79', '1992-11-05', '', '16', '', '', 4, 0),
(5, 'Lucina', 'Wintle', '665-323-58', '1978-09-15', '', '17', '', '', 5, 0),
(6, 'Sansone', 'Heningham', '800-231-36', '1996-03-19', '', '21', '', '', 6, 0),
(7, 'Karlan', 'Sorensen', '611-823-58', '1981-02-24', '', '21', '', '', 7, 0),
(8, 'Sterne', 'Blackford', '493-940-21', '1991-06-06', '', '20', '', '', 8, 0),
(9, 'Alethea', 'Copcote', '570-878-76', '1974-04-16', '', '5', '', '', 9, 0),
(10, 'Jefferey', 'Hannaby', '837-477-91', '1973-05-14', '', '15', '', '', 10, 0),
(11, 'Dell', 'Gummary', '580-863-60', '2003-05-22', '', '6', '', '', 11, 0),
(12, 'Sherwood', 'Giraudoux', '443-843-07', '1986-10-29', '', '29', '', '', 12, 0),
(13, 'Nanine', 'Wyldbore', '618-184-12', '1970-08-23', '', '2', '', '', 13, 0),
(14, 'Valeria', 'Bambrough', '619-593-18', '2003-03-09', '', '23', '', '', 14, 0),
(15, 'Bonni', 'de Courcy', '142-470-22', '1976-05-22', '', '8', '', '', 15, 0),
(16, 'Leelah', 'Riseborough', '513-916-37', '2004-01-28', '', '14', '', '', 16, 0),
(17, 'Fletch', 'Baptist', '459-157-77', '1981-02-01', '', '9', '', '', 17, 0),
(18, 'Janene', 'Claque', '496-829-23', '1989-07-22', '', '2', '', '', 18, 0),
(19, 'Georgena', 'Panks', '847-307-36', '1985-07-28', '', '28', '', '', 19, 0),
(20, 'Hettie', 'Ingman', '741-373-26', '1990-01-26', '', '1', '', '', 20, 0),
(21, 'York', 'Alderton', '291-802-62', '1980-04-11', '', '21', '', '', 21, 0),
(22, 'Myrwyn', 'Grinley', '909-932-45', '2003-05-17', '', '27', '', '', 22, 0),
(23, 'Ingamar', 'De Ferrari', '327-231-07', '1980-04-13', '', '10', '', '', 23, 0),
(24, 'Linc', 'Regorz', '430-169-54', '1979-01-30', '', '24', '', '', 24, 0),
(25, 'Gayel', 'Venus', '785-427-09', '1987-04-30', '', '4', '', '', 25, 0),
(26, 'Annadiana', 'McOrkill', '126-946-30', '1993-10-20', '', '22', '', '', 26, 0),
(27, 'Corenda', 'Hember', '113-940-89', '1982-10-24', '', '10', '', '', 27, 0),
(28, 'Omero', 'Camidge', '243-755-54', '1998-08-03', '', '7', '', '', 28, 0),
(29, 'Fabian', 'Belchambers', '310-787-27', '1972-10-25', '', '30', '', '', 29, 0),
(30, 'Lotta', 'Styche', '798-623-45', '1975-01-14', '', '23', '', '', 30, 0),
(31, 'Winona', 'Wawer', '718-185-24', '1970-07-30', '', '21', '', '', 31, 0),
(32, 'Letti', 'Mingay', '671-683-62', '1971-03-24', '', '14', '', '', 32, 0),
(33, 'Tawsha', 'Synnott', '867-116-55', '1983-01-15', '', '28', '', '', 33, 0),
(34, 'Hakim', 'Kinze', '913-713-48', '1986-03-16', '', '23', '', '', 34, 0),
(35, 'Daphna', 'Tamburo', '447-617-93', '1999-05-18', '', '28', '', '', 35, 0),
(36, 'Erny', 'Markussen', '403-317-78', '2000-07-18', '', '4', '', '', 36, 0),
(37, 'Ches', 'De Caville', '278-483-05', '1996-06-03', '', '7', '', '', 37, 0),
(38, 'Kimball', 'Yarnley', '917-312-95', '1989-04-02', '', '2', '', '', 38, 0),
(39, 'Easter', 'Callen', '289-428-87', '1988-01-21', '', '29', '', '', 39, 0),
(40, 'Maurise', 'Bowich', '639-278-68', '1971-07-06', '', '20', '', '', 40, 0),
(41, 'Igor', 'Harling', '632-106-73', '1977-09-02', '', '17', '', '', 41, 0),
(42, 'Sada', 'Cottrell', '607-125-65', '1994-07-27', '', '17', '', '', 42, 0),
(43, 'Bryon', 'Bampton', '498-776-42', '2001-12-31', '', '11', '', '', 43, 0),
(44, 'Bordie', 'Bows', '695-577-90', '1976-04-12', '', '24', '', '', 44, 0),
(45, 'Alyssa', 'Moehle', '312-417-97', '1997-06-09', '', '6', '', '', 45, 0),
(46, 'Boote', 'Tuftin', '550-280-52', '1994-04-06', '', '23', '', '', 46, 0),
(47, 'Ashlie', 'Pendred', '831-140-49', '1981-10-08', '', '21', '', '', 47, 0),
(48, 'Tamiko', 'Earingey', '387-417-40', '1995-06-10', '', '29', '', '', 48, 0),
(49, 'Starlin', 'Hackford', '502-857-93', '1974-09-30', '', '22', '', '', 49, 0),
(50, 'Yves', 'Chave', '992-500-92', '1970-07-31', '', '16', '', '', 50, 0),
(51, 'Laural', 'Bartak', '541-178-45', '1981-02-15', '', '30', '', '', 51, 0),
(52, 'Doris', 'Semeniuk', '551-792-79', '1990-06-29', '', '18', '', '', 52, 0),
(53, 'Markos', 'Silk', '174-940-56', '1989-05-18', '', '14', '', '', 53, 0),
(54, 'Marni', 'Ca', '281-682-33', '1974-01-31', '', '14', '', '', 54, 0),
(55, 'Lesly', 'Iacovides', '191-112-76', '1974-08-25', '', '7', '', '', 55, 0),
(56, 'Tedi', 'Rosson', '151-855-59', '1980-04-24', '', '5', '', '', 56, 0),
(57, 'Babbette', 'Kochl', '928-566-37', '1986-03-13', '', '7', '', '', 57, 0),
(58, 'Helli', 'Cottu', '926-905-81', '1985-06-16', '', '17', '', '', 58, 0),
(59, 'Homer', 'Yushmanov', '637-149-91', '1977-03-03', '', '24', '', '', 59, 0),
(60, 'Elbertina', 'Wildash', '389-930-67', '1986-03-04', '', '16', '', '', 60, 0),
(61, 'Cami', 'Hardern', '466-526-94', '1989-06-21', '', '24', '', '', 61, 0),
(62, 'Ulrikaumeko', 'Treleaven', '362-135-93', '1992-05-21', '', '2', '', '', 62, 0),
(63, 'Eldon', 'Gauson', '629-267-35', '1982-12-16', '', '18', '', '', 63, 0),
(64, 'Eadith', 'Sebastian', '616-112-61', '1994-02-13', '', '9', '', '', 64, 0),
(65, 'Valentijn', 'Menel', '437-376-62', '1994-09-23', '', '5', '', '', 65, 0),
(66, 'Charity', 'Sexty', '531-567-88', '1995-01-28', '', '4', '', '', 66, 0),
(67, 'Shirleen', 'Thaller', '824-723-16', '1977-09-18', '', '11', '', '', 67, 0),
(68, 'Lettie', 'Gibb', '849-608-56', '1974-05-01', '', '19', '', '', 68, 0),
(69, 'Christalle', 'Fosdyke', '874-227-12', '1984-08-27', '', '2', '', '', 69, 0),
(70, 'Abigale', 'Sooley', '551-968-12', '1986-09-16', '', '14', '', '', 70, 0),
(71, 'Jocelin', 'Davies', '226-731-69', '1999-05-11', '', '3', '', '', 71, 0),
(72, 'Rudolph', 'O\'Crotty', '607-647-72', '1995-02-21', '', '13', '', '', 72, 0),
(73, 'Nada', 'Henzley', '764-120-27', '2001-03-22', '', '3', '', '', 73, 0),
(74, 'Waverley', 'Vaneev', '446-461-90', '1994-02-14', '', '13', '', '', 74, 0),
(75, 'Kaine', 'Penkethman', '453-708-68', '1988-06-03', '', '24', '', '', 75, 0),
(76, 'Tuckie', 'Treneman', '651-803-64', '1999-08-24', '', '24', '', '', 76, 0),
(77, 'Raine', 'Finnes', '561-466-22', '1971-06-07', '', '4', '', '', 77, 0),
(78, 'Cordi', 'Beilby', '305-523-14', '1978-10-29', '', '15', '', '', 78, 0),
(79, 'Marni', 'Satteford', '953-884-97', '1982-12-24', '', '8', '', '', 79, 0),
(80, 'Ximenez', 'Tellesson', '629-187-46', '1985-08-13', '', '21', '', '', 80, 0),
(81, 'Renell', 'Shier', '442-707-24', '1979-11-17', '', '27', '', '', 81, 0),
(82, 'Sophie', 'Grishakin', '683-572-98', '1983-03-13', '', '13', '', '', 82, 0),
(83, 'Jeno', 'Hulls', '570-952-38', '2003-04-28', '', '13', '', '', 83, 0),
(84, 'Wernher', 'Boutcher', '480-571-67', '1983-08-10', '', '16', '', '', 84, 0),
(85, 'Markus', 'Jandourek', '662-178-69', '1970-12-05', '', '24', '', '', 85, 0),
(86, 'Fowler', 'Axworthy', '615-179-32', '1981-03-20', '', '17', '', '', 86, 0),
(87, 'Laurella', 'Spataro', '457-774-27', '1982-07-24', '', '16', '', '', 87, 0),
(88, 'Devy', 'Houseago', '112-517-25', '1991-11-29', '', '30', '', '', 88, 0),
(89, 'Caro', 'Edmonds', '505-478-62', '1975-12-26', '', '8', '', '', 89, 0),
(90, 'Marmaduke', 'Stellin', '694-756-90', '1988-04-08', '', '27', '', '', 90, 0),
(91, 'Jacklin', 'Tenbrug', '133-386-94', '1987-11-15', '', '4', '', '', 91, 0),
(92, 'Arabel', 'Cradock', '411-832-49', '1975-06-24', '', '19', '', '', 92, 0),
(93, 'Jan', 'Croucher', '790-722-49', '1996-09-29', '', '6', '', '', 93, 0),
(94, 'Maire', 'Dinsmore', '639-848-17', '1990-03-10', '', '18', '', '', 94, 0),
(95, 'Leeann', 'Helliker', '336-120-11', '2003-10-02', '', '12', '', '', 95, 0),
(96, 'Kathrine', 'Fickling', '520-814-81', '1984-02-27', '', '4', '', '', 96, 0),
(97, 'Julianne', 'Schuck', '994-742-24', '1989-11-16', '', '28', '', '', 97, 0),
(98, 'Ross', 'Martinovsky', '630-508-07', '1988-05-09', '', '10', '', '', 98, 0),
(99, 'Georgi', 'Glencross', '699-111-84', '1989-06-20', '', '18', '', '', 99, 0),
(100, 'Edgar', 'Manthroppe', '378-293-19', '1997-09-07', '', '30', '', '', 100, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `choose_chef`
--

CREATE TABLE `choose_chef` (
  `episode_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `choose_judge`
--

CREATE TABLE `choose_judge` (
  `episode_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `choose_recipe`
--

CREATE TABLE `choose_recipe` (
  `recipe_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `competition`
--

CREATE TABLE `competition` (
  `competition_id` int(11) NOT NULL,
  `number of episodes` varchar(2) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `episode`
--

CREATE TABLE `episode` (
  `episode_id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `odhgies` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `food_category`
--

CREATE TABLE `food_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `ingredient`
--

CREATE TABLE `ingredient` (
  `ingredient_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `judge`
--

CREATE TABLE `judge` (
  `judge_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `meal_type`
--

CREATE TABLE `meal_type` (
  `meal_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `nutritional information`
--

CREATE TABLE `nutritional information` (
  `nutritional_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `fat per seving` int(11) NOT NULL,
  `protein per serving` int(11) NOT NULL,
  `carbohydrates per serving` int(11) NOT NULL,
  `calories per serving` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `onoma` varchar(45) NOT NULL,
  `perigrafh` varchar(45) NOT NULL,
  `xarakthrismos` varchar(45) NOT NULL,
  `vathmos dyskolias` int(11) NOT NULL,
  `xronos` int(11) NOT NULL,
  `etnikh kouzina` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `recipe_chef`
--

CREATE TABLE `recipe_chef` (
  `recipe_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `recipe_equipment`
--

CREATE TABLE `recipe_equipment` (
  `recipe_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `recipe_ingredient`
--

CREATE TABLE `recipe_ingredient` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `recipe_section`
--

CREATE TABLE `recipe_section` (
  `recipe_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `recipe_step`
--

CREATE TABLE `recipe_step` (
  `recipe_id` int(11) NOT NULL,
  `step_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `recipe_tag`
--

CREATE TABLE `recipe_tag` (
  `recipe_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `recipe_tips`
--

CREATE TABLE `recipe_tips` (
  `recipe_id` int(11) NOT NULL,
  `tips_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `scoring`
--

CREATE TABLE `scoring` (
  `chef_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `step`
--

CREATE TABLE `step` (
  `step_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tips`
--

CREATE TABLE `tips` (
  `tips_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `type`) VALUES
(1, 'lgerard0', 'nC6!1eX(4', 0),
(2, 'gkirkam1', 'eC1#}.Qo@RgKo{', 0),
(3, 'lspickett2', 'eO6$)eOFOy>A', 0),
(4, 'dreadwin3', 'nZ2~$gIrLdy6', 0),
(5, 'mclipson4', 'dL5=B\'}DKy=hObN', 0),
(6, 'vvolonte5', 'xB0%Yhc,~fw', 0),
(7, 'kmealand6', 'eY8~!AnKLuQuK5s', 0),
(8, 'dkidston7', 'iG7`)/0te\\_Lj,d', 0),
(9, 'egoede8', 'uR7\"5.%>n#', 0),
(10, 'alorie9', 'rT8&J%b9rrMU)', 0),
(11, 'cseelya', 'zY9\"<osn', 0),
(12, 'eramsbyb', 'vL7=&FK72', 0),
(13, 'lgervaisec', 'rJ7`&scyP{F', 0),
(14, 'lcowsbyd', 'hG3)_}&jR#IcUA', 0),
(15, 'gdiblinge', 'aT9,xux4`xirhzi', 0),
(16, 'ecalteronef', 'yU2|\"(H(>', 0),
(17, 'fwoodg', 'jW7!zRKDA7A', 0),
(18, 'locahsedyh', 'uZ1`JJH5', 0),
(19, 'jeffordi', 'kL3*Q8h7/jw', 0),
(20, 'hbankhurstj', 'uQ8/yq*+IL7u\'E|', 0),
(21, 'anorburyk', 'dE3_,\'@Q!\'', 0),
(22, 'swarwickl', 'oQ2|HNi62yX', 0),
(23, 'kgogginm', 'lX4>F$QF{<|oE', 0),
(24, 'ccanton', 'jL7~JN.n599<', 0),
(25, 'eleismano', 'kT2==LrK\'+k=6Qc', 0),
(26, 'acraggsp', 'xJ0>kSO}.', 0),
(27, 'bkuschelq', 'mN3_6O9yk*B=u*', 0),
(28, 'bnootr', 'mN0{KL_cY>sFYA', 0),
(29, 'thammondss', 'mX3{xE2hvcNA', 0),
(30, 'tsimoneschit', 'uV9/JkEi', 0),
(31, 'bmarmionu', 'aG3#3rJ5%!', 0),
(32, 'spietersmav', 'fJ6/>.C2#', 0),
(33, 'bscholesw', 'rC4\'X+o3', 0),
(34, 'lmoodiex', 'lR0~G#8<H.p', 0),
(35, 'sbegwelly', 'cU8<9Gg&.', 0),
(36, 'apersickez', 'eL1+WVC|.Wj', 0),
(37, 'lquennell10', 'lC8@2{lx}1%', 0),
(38, 'jcrucetti11', 'xI0>T7Fg9E</05', 0),
(39, 'mtraut12', 'xO5<Zj2.u', 0),
(40, 'fpillifant13', 'kF0#s2#g', 0),
(41, 'mmantrup14', 'wU0)hfmS', 0),
(42, 'bekell15', 'eV1(7i7P4CDs1', 0),
(43, 'ejersh16', 'vY6(8v2a(lZqe', 0),
(44, 'ebutterfield17', 'wB0.,o?cOq5k%w', 0),
(45, 'msturney18', 'yI0\"=B?o', 0),
(46, 'gingleby19', 'mE8_af|k', 0),
(47, 'gbickerdicke1a', 'sT4\"X,mu', 0),
(48, 'ericks1b', 'sE3|up1W3EXtKR<', 0),
(49, 'kskahill1c', 'eH8.=j9Y?', 0),
(50, 'acrighton1d', 'fG1)=Y\'c<', 0),
(51, 'nweatherburn1e', 'yH1(87|@4hWX_$<', 0),
(52, 'rrue1f', 'yF1(G|4U#}#`E<6', 0),
(53, 'lknoles1g', 'aA6(KXQ.Mp4=', 0),
(54, 'ajenno1h', 'vO9_b!dU2j2', 0),
(55, 'ltitley1i', 'pJ9*13>bIvmI', 0),
(56, 'lovey1j', 'fK9.9!9\'m26>f&=', 0),
(57, 'dmeacher1k', 'wU9\'QX4R4>wBO', 0),
(58, 'npurkiss1l', 'xY2%TdHhSW#c&$K', 0),
(59, 'zpiddock1m', 'kB3W=\"``5XD+hv', 0),
(60, 'pducker1n', 'dB3\'cL3K\'WWd', 0),
(61, 'gtemperley1o', 'aZ8#x`qMv{3by', 0),
(62, 'ncometson1p', 'hL6+oNj8jj2\">', 0),
(63, 'zhenzley1q', 'zQ3%f.F0mF', 0),
(64, 'tseydlitz1r', 'mW8+O*A)Y*8Y1ZP', 0),
(65, 'dnanni1s', 'tY4,@xoo9', 0),
(66, 'rstubbe1t', 'xO9\"t041r', 0),
(67, 'gewbach1u', 'iF5\"J=7<1~,?', 0),
(68, 'ckeneford1v', 'uM3*1NhMnx!ADE', 0),
(69, 'dbeldon1w', 'uZ3&,Bw64\"0h\'HS', 0),
(70, 'fmcffaden1x', 'pY6$?t()', 0),
(71, 'mpaolinelli1y', 'cU3{LS?Kk{V45', 0),
(72, 'eherion1z', 'kQ5)Dmf7w\'', 0),
(73, 'hbakewell20', 'xL8=sy1fNM>', 0),
(74, 'vgreason21', 'mA7/F$p$yp3o~Xw', 0),
(75, 'nkinnar22', 'qK6`TkJLR4!', 0),
(76, 'wberr23', 'pG5)Qd%JF', 0),
(77, 'fyaakov24', 'fD9\"Mz$W2@|', 0),
(78, 'hmclagan25', 'mH6.S3/{.', 0),
(79, 'fburchfield26', 'wP0~mtFbtz@6h', 0),
(80, 'adeely27', 'oK4~.CF2)Bs`\"|4', 0),
(81, 'hwahncke28', 'lT0*h9_', 0),
(82, 'ikraft29', 'oO3\"5JRt@', 0),
(83, 'kporkiss2a', 'kM9.~r4A', 0),
(84, 'sgoude2b', 'lK2\"8,jB7$Yf\'q>', 0),
(85, 'aclouston2c', 'xO3(OzeDVBY9', 0),
(86, 'apeterken2d', 'qM6?8fT9{1IxP', 0),
(87, 'tdreini2e', 'oN9_LMGfTNf0n>(', 0),
(88, 'hpurveys2f', 'dO9?wDwY7', 0),
(89, 'dmoryson2g', 'jR5|AD+tCF_ckLN', 0),
(90, 'lschneider2h', 'fH1(\"TAs/)CX', 0),
(91, 'igallanders2i', 'lP0!31ltNOK', 0),
(92, 'ajelkes2j', 'iE3{y|\"vF>\'O%jx', 0),
(93, 'ddunn2k', 'eL7<gZ<ZeIo', 0),
(94, 'aredborn2l', 'gP5+p0,spD', 0),
(95, 'gsandell2m', 'nS5)WyO.O/4', 0),
(96, 'rhedgecock2n', 'sS0|zs392L`', 0),
(97, 'bsedcole2o', 'uN7??Nn!yz@', 0),
(98, 'lmacguffog2p', 'zW1<wDb@p<', 0),
(99, 'mtenniswood2q', 'uY8$PO~c6m<9#x', 0),
(100, 'dkop2r', 'nQ3|`sAK4yD$yGF', 0);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Ευρετήρια για πίνακα `belongs`
--
ALTER TABLE `belongs`
  ADD PRIMARY KEY (`recipe_id`,`meal_id`),
  ADD KEY `meal_id` (`meal_id`);

--
-- Ευρετήρια για πίνακα `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`chef_id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Ευρετήρια για πίνακα `choose_chef`
--
ALTER TABLE `choose_chef`
  ADD PRIMARY KEY (`episode_id`,`chef_id`),
  ADD KEY `chef_id_fk` (`chef_id`);

--
-- Ευρετήρια για πίνακα `choose_judge`
--
ALTER TABLE `choose_judge`
  ADD PRIMARY KEY (`episode_id`,`judge_id`),
  ADD KEY `judge_id` (`judge_id`);

--
-- Ευρετήρια για πίνακα `choose_recipe`
--
ALTER TABLE `choose_recipe`
  ADD PRIMARY KEY (`recipe_id`,`episode_id`),
  ADD KEY `episode_id` (`episode_id`);

--
-- Ευρετήρια για πίνακα `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`competition_id`);

--
-- Ευρετήρια για πίνακα `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`episode_id`),
  ADD KEY `competition_id_fk` (`competition_id`);

--
-- Ευρετήρια για πίνακα `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Ευρετήρια για πίνακα `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Ευρετήρια για πίνακα `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `ingredient_category_fk` (`category_id`);

--
-- Ευρετήρια για πίνακα `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`judge_id`);

--
-- Ευρετήρια για πίνακα `meal_type`
--
ALTER TABLE `meal_type`
  ADD PRIMARY KEY (`meal_id`);

--
-- Ευρετήρια για πίνακα `nutritional information`
--
ALTER TABLE `nutritional information`
  ADD PRIMARY KEY (`nutritional_id`),
  ADD KEY `recipe_info_fk` (`recipe_id`);

--
-- Ευρετήρια για πίνακα `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Ευρετήρια για πίνακα `recipe_chef`
--
ALTER TABLE `recipe_chef`
  ADD PRIMARY KEY (`recipe_id`,`chef_id`),
  ADD KEY `chef_id` (`chef_id`);

--
-- Ευρετήρια για πίνακα `recipe_equipment`
--
ALTER TABLE `recipe_equipment`
  ADD PRIMARY KEY (`recipe_id`,`equipment_id`),
  ADD KEY `recipe_equipment_ibfk_2` (`equipment_id`);

--
-- Ευρετήρια για πίνακα `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD PRIMARY KEY (`recipe_id`,`ingredient_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Ευρετήρια για πίνακα `recipe_section`
--
ALTER TABLE `recipe_section`
  ADD PRIMARY KEY (`recipe_id`,`section_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Ευρετήρια για πίνακα `recipe_step`
--
ALTER TABLE `recipe_step`
  ADD PRIMARY KEY (`recipe_id`,`step_id`),
  ADD KEY `step_id_fk` (`step_id`);

--
-- Ευρετήρια για πίνακα `recipe_tag`
--
ALTER TABLE `recipe_tag`
  ADD PRIMARY KEY (`recipe_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Ευρετήρια για πίνακα `recipe_tips`
--
ALTER TABLE `recipe_tips`
  ADD PRIMARY KEY (`recipe_id`,`tips_id`),
  ADD KEY `tips_id` (`tips_id`);

--
-- Ευρετήρια για πίνακα `scoring`
--
ALTER TABLE `scoring`
  ADD PRIMARY KEY (`chef_id`,`judge_id`),
  ADD KEY `judge_id` (`judge_id`);

--
-- Ευρετήρια για πίνακα `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Ευρετήρια για πίνακα `step`
--
ALTER TABLE `step`
  ADD PRIMARY KEY (`step_id`);

--
-- Ευρετήρια για πίνακα `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Ευρετήρια για πίνακα `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`tips_id`);

--
-- Ευρετήρια για πίνακα `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `belongs`
--
ALTER TABLE `belongs`
  ADD CONSTRAINT `belongs_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `belongs_ibfk_2` FOREIGN KEY (`meal_id`) REFERENCES `meal_type` (`meal_id`);

--
-- Περιορισμοί για πίνακα `chef`
--
ALTER TABLE `chef`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `choose_chef`
--
ALTER TABLE `choose_chef`
  ADD CONSTRAINT `chef_id_fk` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `episode_id_fk` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `choose_judge`
--
ALTER TABLE `choose_judge`
  ADD CONSTRAINT `choose_judge_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `choose_judge_ibfk_2` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `choose_recipe`
--
ALTER TABLE `choose_recipe`
  ADD CONSTRAINT `choose_recipe_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `choose_recipe_ibfk_2` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `competition_id_fk` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`competition_id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `ingredient`
--
ALTER TABLE `ingredient`
  ADD CONSTRAINT `ingredient_category_fk` FOREIGN KEY (`category_id`) REFERENCES `food_category` (`category_id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `nutritional information`
--
ALTER TABLE `nutritional information`
  ADD CONSTRAINT `recipe_info_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `recipe_chef`
--
ALTER TABLE `recipe_chef`
  ADD CONSTRAINT `recipe_chef_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_chef_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `recipe_equipment`
--
ALTER TABLE `recipe_equipment`
  ADD CONSTRAINT `recipe_equipment_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
  ADD CONSTRAINT `recipe_equipment_ibfk_2` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`equipment_id`);

--
-- Περιορισμοί για πίνακα `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD CONSTRAINT `recipe_ingredient_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_ingredient_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `recipe_section`
--
ALTER TABLE `recipe_section`
  ADD CONSTRAINT `recipe_id_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
  ADD CONSTRAINT `section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`);

--
-- Περιορισμοί για πίνακα `recipe_step`
--
ALTER TABLE `recipe_step`
  ADD CONSTRAINT `recipe_step_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `step_id_fk` FOREIGN KEY (`step_id`) REFERENCES `step` (`step_id`);

--
-- Περιορισμοί για πίνακα `recipe_tag`
--
ALTER TABLE `recipe_tag`
  ADD CONSTRAINT `recipe_tag_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `recipe_tips`
--
ALTER TABLE `recipe_tips`
  ADD CONSTRAINT `recipe_tips_ibfk_1` FOREIGN KEY (`tips_id`) REFERENCES `tips` (`tips_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_tips_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `scoring`
--
ALTER TABLE `scoring`
  ADD CONSTRAINT `scoring_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scoring_ibfk_2` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
