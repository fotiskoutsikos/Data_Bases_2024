-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 12:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `belongs`
--

CREATE TABLE `belongs` (
  `recipe_id` int(11) NOT NULL,
  `meal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `belongs`
--

INSERT INTO `belongs` (`recipe_id`, `meal_id`) VALUES
(1, 5),
(2, 1),
(3, 3),
(4, 1),
(5, 2),
(6, 4),
(7, 3),
(8, 3),
(10, 1),
(11, 5),
(12, 5),
(13, 5),
(14, 3),
(15, 4),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 2),
(21, 4),
(22, 3),
(23, 5),
(24, 4),
(26, 4),
(27, 3),
(29, 4),
(30, 2),
(31, 1),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 4),
(38, 5),
(39, 4),
(41, 5),
(42, 4),
(43, 4),
(44, 4),
(45, 3),
(46, 5),
(47, 5),
(48, 4),
(49, 5),
(50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chef`
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
-- Dumping data for table `chef`
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
-- Table structure for table `choose_chef`
--

CREATE TABLE `choose_chef` (
  `episode_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `choose_judge`
--

CREATE TABLE `choose_judge` (
  `episode_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `choose_recipe`
--

CREATE TABLE `choose_recipe` (
  `recipe_id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

CREATE TABLE `competition` (
  `competition_id` int(11) NOT NULL,
  `number of episodes` varchar(2) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `episode_id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equipment_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `instruction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipment_id`, `name`, `instruction`) VALUES
(1, 'Chef\'s Knife', 'Hold the knife with a firm grip, place the ingredient on a cutting board, and use a rocking motion to cut through the food.'),
(2, 'Paring Knife', 'Hold the knife with a comfortable grip, and use controlled movements to peel or cut small items.'),
(3, 'Cutting Board', 'Place the cutting board on a stable surface to prevent slipping. Use different boards for meats and vegetables to avoid cross-contamination.'),
(4, 'Mixing Bowls', 'Choose a bowl size appropriate for the amount of ingredients. Use the bowl to combine ingredients as needed for your recipe.'),
(5, 'Measuring Cups and Spoons', 'Use dry measuring cups for dry ingredients (flour, sugar) and liquid measuring cups for liquids (water, milk). Level off dry ingredients with a straight edge.'),
(6, 'Wooden Spoon', 'Use the spoon to stir ingredients in pots and pans, ensuring even cooking and preventing sticking.'),
(7, 'Whisk', 'Hold the whisk and move it in a circular motion to mix or aerate ingredients.'),
(8, 'Tongs', 'Squeeze the handles to grip the food securely, then release to drop or turn the food.'),
(9, 'Spatula', 'Slide the spatula under the food and lift gently to turn or serve.'),
(10, 'Ladle', 'Dip the ladle into the liquid and lift, keeping it steady to avoid spills, and pour into bowls or containers.'),
(11, 'Peeler', 'Hold the peeler in one hand and the vegetable or fruit in the other. Pull the peeler towards you or away from you to remove the skin.'),
(12, 'Grater', 'Hold the grater with one hand and the ingredient with the other. Move the ingredient against the grater in a downward motion.'),
(13, 'Colander', 'Place the colander in the sink. Pour the contents you need to drain into the colander, allowing the liquid to pass through the holes.'),
(14, 'Grill or Grill Pan', 'Preheat the grill or grill pan. Place the food on the grill and cook, turning as necessary, until done.'),
(15, 'Blender or Immersion Blender', 'Add ingredients to the blender and secure the lid. Blend until the desired consistency is reached. For immersion blenders, place the blade in the container and blend.'),
(16, 'Dutch Oven or Large Pot', 'Heat the pot on the stove. Add ingredients and cook according to the recipe.'),
(17, 'Pie Dish and Tart Pan', 'Prepare the crust and filling. Place the crust in the dish or pan, add the filling, and bake according to the recipe.'),
(18, 'Rolling Pin', 'Place the dough on a floured surface and roll it out to the desired thickness with the pin.'),
(19, 'Baking Sheet', 'Line the sheet with parchment paper or a silicone mat if necessary. Place the food on the sheet and bake as directed.'),
(20, 'Skillet or Sauté Pan', 'Heat the pan on the stove, add oil or butter, and cook the ingredients as required.'),
(21, 'Saucepan', 'Add ingredients to the saucepan and cook over medium heat, stirring as necessary.'),
(22, 'Baking Dish', 'Prepare the ingredients and place them in the baking dish. Bake according to the recipe.'),
(23, 'Meat Thermometer', 'Insert the thermometer into the thickest part of the meat to check for doneness.'),
(24, 'Griddle or Non-stick Skillet', 'Preheat the griddle or skillet and cook the food, flipping as necessary.'),
(25, 'Stockpot', 'Add ingredients to the pot and cook over medium to high heat, stirring occasionally.'),
(26, 'Mixer (Stand or Handheld)', 'Attach the appropriate mixing attachment. Add ingredients to the bowl and mix at the desired speed.'),
(27, 'Air Fryer', 'Preheat the air fryer if needed, place the food in the basket, and set the temperature and time according to the recipe.'),
(28, 'Skewers', 'Thread the food onto the skewers and place them on the grill. Turn as necessary to cook evenly.');

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE `food_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_category`
--

INSERT INTO `food_category` (`category_id`, `name`, `description`) VALUES
(1, 'vegetables', ''),
(2, 'fruit', ''),
(3, 'cereals', 'bread,pasta,rice,potatoes'),
(4, 'milk and dairy products', 'no butter'),
(5, 'red meat', 'beef pork etc'),
(6, 'white meat and poultry', 'chicken'),
(7, 'eggs', ''),
(8, 'fish and seafood', ''),
(9, 'legumes', ''),
(10, 'added lipids, olives and nuts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `ingredient_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`ingredient_id`, `name`, `category_id`, `image`) VALUES
(1, 'Chicken breasts', 6, 0),
(2, 'Olive oil', 10, 0),
(3, 'Garlic', 1, 0),
(4, 'Paprika', 10, 0),
(5, 'Cayenne pepper', 10, 0),
(6, 'Salt', 10, 0),
(7, 'Black pepper', 10, 0),
(8, 'Lemon juice', 2, 0),
(9, 'Tomatoes', 2, 0),
(10, 'Onion', 1, 0),
(11, 'Garlic', 1, 0),
(12, 'Vegetable or chicken broth', 4, 0),
(13, 'Heavy cream', 4, 0),
(14, 'Butter', 4, 0),
(15, 'Salt', 10, 0),
(16, 'Black pepper', 10, 0),
(17, 'Fresh basil', 1, 0),
(18, 'Stewing beef', 5, 0),
(19, 'Carrots', 1, 0),
(20, 'Potatoes', 3, 0),
(21, 'Onion', 1, 0),
(22, 'Garlic', 1, 0),
(23, 'Beef broth', 4, 0),
(24, 'Tomato paste', 2, 0),
(25, 'Worcestershire sauce', 10, 0),
(26, 'Bay leaves', 7, 0),
(27, 'Salt', 10, 0),
(28, 'Black pepper', 10, 0),
(29, 'Olive oil', 10, 0),
(30, 'Flour', 3, 0),
(31, 'Pie crust', 3, 0),
(32, 'Apples', 2, 0),
(33, 'Sugar', 10, 0),
(34, 'Cinnamon', 7, 0),
(35, 'Nutmeg', 7, 0),
(36, 'Lemon juice', 2, 0),
(37, 'Butter', 4, 0),
(38, 'Flour', 3, 0),
(39, 'Pie crust', 3, 0),
(40, 'Lemons', 2, 0),
(41, 'Sugar', 10, 0),
(42, 'Eggs', 7, 0),
(43, 'Butter', 4, 0),
(44, 'Cornstarch', 3, 0),
(45, 'French bread or baguette', 3, 0),
(46, 'Butter', 4, 0),
(47, 'Garlic', 1, 0),
(48, 'Parsley', 1, 0),
(49, 'Mozzarella cheese', 4, 0),
(50, 'Parmesan cheese', 4, 0),
(51, 'Assorted vegetables', 1, 0),
(52, 'Olive oil', 10, 0),
(53, 'Garlic', 1, 0),
(54, 'Salt', 10, 0),
(55, 'Black pepper', 10, 0),
(56, 'Italian seasoning', 7, 0),
(57, 'Shrimp', 8, 0),
(58, 'Pasta', 3, 0),
(59, 'Olive oil', 10, 0),
(60, 'Garlic', 1, 0),
(61, 'Red pepper flakes', 7, 0),
(62, 'Cherry tomatoes', 2, 0),
(63, 'Lemon', 2, 0),
(64, 'Parsley', 1, 0),
(65, 'Salt', 10, 0),
(66, 'Black pepper', 10, 0),
(67, 'Parmesan cheese', 4, 0),
(68, 'Lentils', 9, 0),
(69, 'Cucumber', 1, 0),
(70, 'Tomatoes', 2, 0),
(71, 'Red onion', 1, 0),
(72, 'Bell pepper', 1, 0),
(73, 'Olive oil', 10, 0),
(74, 'Lemon juice', 2, 0),
(75, 'Garlic', 1, 0),
(76, 'Cumin', 7, 0),
(77, 'Paprika', 10, 0),
(78, 'Salt', 10, 0),
(79, 'Black pepper', 10, 0),
(80, 'Parsley', 1, 0),
(81, 'All-purpose flour', 3, 0),
(82, 'Baking powder', 7, 0),
(83, 'Sugar', 10, 0),
(84, 'Salt', 10, 0),
(85, 'Milk', 4, 0),
(86, 'Eggs', 7, 0),
(87, 'Butter', 4, 0),
(88, 'Maple syrup', 10, 0),
(89, 'Boneless, skinless chicken breasts', 6, 0),
(90, 'Salt and pepper to taste', 10, 0),
(91, 'Olive oil', 10, 0),
(92, 'Ripe mangoes', 2, 0),
(93, 'Red bell pepper', 1, 0),
(94, 'Red onion', 1, 0),
(95, 'Jalapeño', 1, 0),
(96, 'Limes', 2, 0),
(97, 'Fresh cilantro', 1, 0),
(98, 'Fettuccine', 3, 0),
(99, 'Shrimp', 8, 0),
(100, 'Baby spinach', 1, 0),
(101, 'Parsley', 1, 0),
(102, 'Heavy cream', 4, 0),
(103, 'Grated Parmesan cheese', 4, 0),
(104, 'Salmon fillets', 8, 0),
(105, 'Fresh dill', 1, 0),
(106, 'Fresh thyme', 1, 0),
(107, 'Lemon', 2, 0),
(108, 'Bell peppers', 1, 0),
(109, 'Quinoa', 3, 0),
(110, 'Vegetable broth', 1, 0),
(111, 'Chickpeas', 9, 0),
(112, 'Cherry tomatoes', 1, 0),
(113, 'Kalamata olives', 10, 0),
(114, 'Feta cheese', 4, 0),
(115, 'Honey', 10, 0),
(116, 'Dijon mustard', 10, 0),
(117, 'Apple cider vinegar', 10, 0),
(118, 'Red tomatoes', 1, 0),
(119, 'Large onion', 1, 0),
(120, 'Garlic cloves', 1, 0),
(121, 'Fresh basil leaves', 1, 0),
(122, 'Avocados', 2, 0),
(123, 'Romaine lettuce', 1, 0),
(124, 'Cherry tomatoes', 1, 0),
(125, 'Red onion', 1, 0),
(126, 'Fresh cilantro', 1, 0),
(127, 'Limes', 2, 0),
(128, 'Olive oil', 10, 0),
(129, 'Salt and pepper to taste', 10, 0),
(130, 'Sweet potatoes', 1, 0),
(131, 'Black beans', 9, 0),
(132, 'Olive oil', 10, 0),
(133, 'Chili powder', 10, 0),
(134, 'Cumin', 10, 0),
(135, 'Corn tortillas', 3, 0),
(136, 'Avocado', 2, 0),
(137, 'Lime', 2, 0),
(138, 'Fresh cilantro', 1, 0),
(139, 'Butternut squash', 1, 0),
(140, 'Olive oil', 10, 0),
(141, 'Salt and pepper to taste', 10, 0),
(142, 'Onion', 1, 0),
(143, 'Garlic', 1, 0),
(144, 'Arborio rice', 3, 0),
(145, 'Dry white wine', 7, 0),
(146, 'Chicken broth', 4, 0),
(147, 'Vegetable broth', 4, 0),
(148, 'Parmesan cheese', 4, 0),
(149, 'Fresh sage', 1, 0),
(150, 'Pre-made tart crust', 3, 0),
(151, 'Heavy cream', 4, 0),
(152, 'Dark chocolate', 5, 0),
(153, 'Hazelnut spread', 10, 0),
(154, 'Vanilla extract', 6, 0),
(155, 'Brussels sprouts', 1, 0),
(156, 'Onion', 1, 0),
(157, 'Garlic', 1, 0),
(158, 'Bell peppers', 1, 0),
(159, 'Red onion', 1, 0),
(160, 'Carrots', 1, 0),
(161, 'Celery', 1, 0),
(162, 'Cherry tomatoes', 1, 0),
(163, 'Spinach', 1, 0),
(164, 'Portobello mushrooms', 1, 0),
(165, 'Zucchini', 1, 0),
(166, 'Cucumbers', 1, 0),
(167, 'Tomatoes', 1, 0),
(168, 'Mixed vegetables', 1, 0),
(169, 'Fresh herbs (rosemary, thyme, parsley)', 1, 0),
(170, 'Fresh basil', 1, 0),
(171, 'Fresh cilantro', 1, 0),
(172, 'Kimchi', 1, 0),
(173, 'Green onions', 1, 0),
(174, 'Fresh sage', 1, 0),
(175, 'Pineapple chunks', 2, 0),
(176, 'Oranges', 2, 0),
(177, 'Grapefruit', 2, 0),
(178, 'Lime juice', 2, 0),
(179, 'Lemon juice', 2, 0),
(180, 'Lemon zest', 2, 0),
(181, 'Lemon', 2, 0),
(182, 'Mango', 2, 0),
(183, 'Blueberry preserves', 2, 0),
(184, 'Raspberries', 2, 0),
(185, 'Apple', 2, 0),
(186, 'Rice', 3, 0),
(187, 'Arborio rice', 3, 0),
(188, 'Couscous', 3, 0),
(189, 'Quinoa', 3, 0),
(190, 'Flour', 3, 0),
(191, 'Graham cracker crumbs', 3, 0),
(192, 'Oats', 3, 0),
(193, 'Egg noodles', 3, 0),
(194, 'Butter', 4, 0),
(195, 'Heavy cream', 4, 0),
(196, 'Cream cheese', 4, 0),
(197, 'Sour cream', 4, 0),
(198, 'Parmesan cheese', 4, 0),
(199, 'Cheese', 4, 0),
(200, 'Feta cheese', 4, 0),
(201, 'Milk', 4, 0),
(202, 'Thinly sliced beef', 5, 0),
(203, 'Pork chops', 5, 0),
(204, 'Chicken breasts', 6, 0),
(205, 'Chicken', 6, 0),
(206, 'Cooked bacon', 6, 0),
(207, 'Eggs', 7, 0),
(208, 'Salmon fillets', 8, 0),
(209, 'Shrimp', 8, 0),
(210, 'Scallops', 8, 0),
(211, 'Chickpeas', 9, 0),
(212, 'Black beans', 9, 0),
(213, 'Lentils', 9, 0),
(214, 'Olive oil', 10, 0),
(215, 'Peanut butter', 10, 0),
(216, 'Soy sauce', 10, 0),
(217, 'Sriracha', 10, 0),
(218, 'Peanuts', 10, 0),
(219, 'Maple syrup', 10, 0),
(220, 'Dijon mustard', 10, 0),
(221, 'Vanilla extract', 10, 0),
(222, 'Honey', 10, 0),
(223, 'Fish sauce', 10, 0),
(224, 'Balsamic glaze', 10, 0),
(225, 'Chia seeds', 10, 0),
(226, 'Almonds', 10, 0),
(227, 'Salt', 10, 0),
(228, 'Pepper', 10, 0),
(229, 'Sugar', 10, 0),
(230, 'Paprika', 10, 0),
(231, 'Cumin', 10, 0),
(232, 'Cinnamon', 10, 0),
(233, 'Coriander', 10, 0),
(234, 'Curry powder', 10, 0),
(235, 'Ginger', 10, 0),
(236, 'Coconut milk', 10, 0),
(237, 'Coconut oil', 10, 0),
(238, 'Sesame oil', 10, 0),
(239, 'Tahini', 10, 0),
(240, 'Sun-dried tomatoes', 10, 0),
(241, 'Raisins', 10, 0),
(242, 'Tomato paste', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `judge`
--

CREATE TABLE `judge` (
  `judge_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meal_type`
--

CREATE TABLE `meal_type` (
  `meal_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meal_type`
--

INSERT INTO `meal_type` (`meal_id`, `name`) VALUES
(1, 'Breakfast'),
(2, 'Elevenses'),
(3, 'Lunch'),
(4, 'Afternoon snack'),
(5, 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `nutritionalinfo`
--

CREATE TABLE `nutritionalinfo` (
  `nutritional_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `fat_per_seving` int(11) NOT NULL,
  `protein_per_serving` int(11) NOT NULL,
  `carbohydrates_per_serving` int(11) NOT NULL,
  `calories_per_serving` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutritionalinfo`
--

INSERT INTO `nutritionalinfo` (`nutritional_id`, `recipe_id`, `fat_per_seving`, `protein_per_serving`, `carbohydrates_per_serving`, `calories_per_serving`) VALUES
(1, 1, 17, 27, 3, 282),
(2, 2, 13, 3, 9, 152),
(3, 3, 22, 23, 22, 364),
(4, 4, 14, 1, 40, 290),
(5, 5, 17, 3, 25, 292),
(6, 6, 15, 11, 32, 306),
(7, 7, 7, 3, 14, 132),
(8, 8, 17, 28, 35, 380),
(9, 9, 11, 15, 42, 312),
(10, 10, 15, 10, 53, 390),
(11, 11, 10, 30, 30, 300),
(12, 12, 20, 40, 60, 600),
(13, 13, 15, 35, 10, 350),
(14, 14, 10, 15, 40, 300),
(15, 15, 12, 25, 15, 280),
(16, 16, 10, 5, 20, 200),
(17, 17, 15, 5, 20, 250),
(18, 18, 8, 10, 30, 250),
(19, 19, 10, 5, 40, 300),
(20, 20, 20, 4, 30, 300),
(21, 21, 15, 35, 35, 420),
(22, 22, 20, 15, 60, 520),
(23, 23, 25, 20, 5, 340),
(24, 24, 35, 15, 60, 600),
(25, 25, 10, 10, 35, 290),
(26, 26, 40, 30, 20, 540),
(27, 27, 10, 15, 60, 410),
(28, 28, 20, 30, 20, 440),
(29, 29, 25, 10, 30, 360),
(30, 30, 15, 5, 40, 320),
(31, 31, 20, 30, 5, 350),
(32, 32, 25, 10, 50, 520),
(33, 33, 15, 5, 30, 320),
(34, 34, 15, 10, 50, 420),
(35, 35, 25, 20, 40, 490),
(36, 36, 40, 15, 60, 680),
(37, 37, 20, 5, 35, 380),
(38, 38, 20, 30, 60, 580),
(39, 39, 20, 30, 40, 470),
(40, 40, 30, 20, 50, 570),
(41, 41, 20, 10, 60, 480),
(42, 42, 25, 25, 40, 520),
(43, 43, 15, 15, 50, 420),
(44, 44, 25, 20, 20, 400),
(45, 45, 10, 10, 40, 300),
(46, 46, 25, 10, 45, 450),
(47, 47, 25, 20, 5, 380),
(48, 48, 20, 40, 5, 390),
(49, 49, 20, 10, 60, 500),
(50, 50, 25, 5, 40, 420);

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(45) NOT NULL,
  `primary_ingredient_id` int(11) NOT NULL,
  `prep_time` int(11) NOT NULL,
  `bake_time` int(11) NOT NULL,
  `natioanla_cuisine` varchar(45) NOT NULL,
  `image` int(11) NOT NULL,
  `image_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `name`, `description`, `type`, `primary_ingredient_id`, `prep_time`, `bake_time`, `natioanla_cuisine`, `image`, `image_description`) VALUES
(1, 'Spicy Grilled Chicken', 'Succulent chicken breasts marinated in a spicy blend of olive oil, garlic, paprika, cayenne pepper, and lemon juice, grilled to perfection.\r\n\r\n', '', 0, 0, 0, '', 0, ''),
(2, 'Creamy Tomato Soup', 'A comforting classic made with ripe tomatoes, onions, and garlic simmered in vegetable or chicken broth, blended with heavy cream, and finished with a hint of butter and fresh basil.', '', 0, 0, 0, '', 0, ''),
(3, 'Savory Beef Stew', 'ender chunks of stewing beef, hearty potatoes, and carrots cooked low and slow in a rich broth infused with onions, garlic, tomato paste, Worcestershire sauce, and aromatic bay leaves.', '', 0, 0, 0, '', 0, ''),
(4, 'Sweet Apple Pie', '\r\n Flaky pie crust filled with sweet and spiced apple slices, baked until golden brown and fragrant, perfect for any occasion.', '', 0, 0, 0, '', 0, ''),
(5, 'Tangy Lemon Tart:', 'A delightful dessert featuring a buttery crust filled with tangy lemon curd made from fresh lemons, sugar, eggs, and a hint of butter, baked to perfection and garnished with whipped cream.', '', 0, 0, 0, '', 0, ''),
(6, 'Cheesy Garlic Bread', 'Crispy French bread or baguette slices slathered with garlic-infused butter, topped with a generous layer of melted mozzarella and Parmesan cheese, and sprinkled with fresh parsley.', '', 0, 0, 0, '', 0, ''),
(7, 'Roasted Veggie Medley', 'Colorful assortment of vegetables roasted to caramelized perfection with olive oil, garlic, and a medley of herbs and spices, resulting in a flavorful and nutritious side dish.', '', 0, 0, 0, '', 0, ''),
(8, 'Zesty Shrimp Pasta', 'Succulent shrimp sautéed with garlic and red pepper flakes, tossed with al dente pasta, cherry tomatoes, and fresh parsley in a zesty lemon-infused olive oil sauce, finished with a sprinkle of Parmesan cheese.', '', 0, 0, 0, '', 0, ''),
(9, 'Hearty Lentil Salad', 'Nutritious and satisfying salad featuring hearty lentils mixed with crisp cucumber, juicy tomatoes, red onion, and bell pepper, tossed in a tangy olive oil and lemon dressing, and garnished with fresh parsley.\r\n\r\n', '', 0, 0, 0, '', 0, ''),
(10, 'Fluffy Pancake Stack', 'Light and fluffy pancakes made with a simple batter of all-purpose flour, baking powder, sugar, salt, milk, and eggs, cooked until golden brown and served in a tall stack with butter and maple syrup.', '', 0, 0, 0, '', 0, ''),
(11, 'Spicy Mango Salsa Chicken', 'Juicy grilled chicken breasts topped with a fresh, zesty mango salsa spiced with jalapeños, lime juice, and cilantro, offering a perfect blend of sweet and heat.', '', 0, 0, 0, '', 0, ''),
(12, 'Creamy Garlic Parmesan Shrimp Pasta', 'Tender shrimp sautéed in a rich, creamy garlic Parmesan sauce, served over a bed of al dente fettuccine for a comforting, indulgent meal.', '', 0, 0, 0, '', 0, ''),
(13, 'Herb-Crusted Lemon Salmon', 'Succulent salmon fillets coated in a fragrant herb crust, baked to perfection, and finished with a squeeze of fresh lemon juice for a burst of brightness.', '', 0, 0, 0, '', 0, ''),
(14, 'Mediterranean Quinoa Stuffed Peppers', 'Bell peppers filled with a hearty mix of quinoa, chickpeas, tomatoes, olives, and feta, baked until tender and flavorful for a wholesome vegetarian dish.', '', 0, 0, 0, '', 0, ''),
(15, 'Honey Glazed Pork Tenderloin', 'Juicy pork tenderloin marinated and glazed with a sweet and tangy honey mixture, roasted to golden perfection for a delightful main course.', '', 0, 0, 0, '', 0, ''),
(16, 'Roasted Red Pepper and Tomato Soup', 'A velvety, savory soup made from roasted red peppers and ripe tomatoes, blended with garlic and basil for a comforting, flavorful bowl of warmth.', '', 0, 0, 0, '', 0, ''),
(17, 'Avocado Lime Cilantro Salad', 'A refreshing salad featuring creamy avocado, crisp lettuce, and juicy tomatoes, all tossed in a zesty lime and cilantro dressing for a burst of fresh flavors.\r\n\r\n', '', 0, 0, 0, '', 0, ''),
(18, 'Sweet Potato Black Bean Tacos', 'Soft tortillas filled with roasted sweet potatoes, black beans, and a hint of smoky spices, topped with fresh avocado and a squeeze of lime for a vibrant, healthy meal.', '', 0, 0, 0, '', 0, ''),
(19, 'Butternut Squash and Sage Risotto', 'Creamy arborio rice cooked with tender butternut squash and fragrant sage, finished with Parmesan cheese for a rich, comforting dish perfect for autumn.', '', 0, 0, 0, '', 0, ''),
(20, 'Chocolate Hazelnut Tart with Sea Salt', 'A decadent dessert featuring a rich chocolate hazelnut filling in a buttery crust, sprinkled with flaky sea salt to enhance the luscious flavors.', '', 0, 0, 0, '', 0, ''),
(21, 'Sweet Chili Pineapple Chicken', 'Juicy chicken thighs marinated in a sweet chili and pineapple sauce, grilled to perfection and served with a side of steamed jasmine rice.', '', 0, 0, 0, '', 0, ''),
(22, 'Citrus Avocado Quinoa Bowl', 'A vibrant and refreshing bowl filled with fluffy quinoa, creamy avocado slices, tangy citrus segments, and a zesty lime vinaigrette.', '', 0, 0, 0, '', 0, ''),
(23, 'Garlic Butter Shrimp Skewers', 'Succulent shrimp marinated in a rich garlic butter sauce, skewered and grilled until golden brown, perfect for a summer barbecue.', '', 0, 0, 0, '', 0, ''),
(24, 'Creamy Basil Tomato Pasta', 'Al dente pasta tossed in a luscious basil and tomato cream sauce, topped with freshly grated Parmesan cheese and a sprinkle of fresh basil leaves.', '', 0, 0, 0, '', 0, ''),
(25, 'Smoky Chipotle Veggie Tacos', 'Soft tortillas filled with a smoky chipotle-infused mixture of grilled vegetables, black beans, and topped with avocado crema and cilantro.', '', 0, 0, 0, '', 0, ''),
(26, 'Maple Glazed Salmon with Pecans', 'Tender salmon fillets brushed with a sweet and tangy maple glaze, topped with crunchy pecans, and baked until flaky and delicious.', '', 0, 0, 0, '', 0, ''),
(27, 'Saffron Rice and Lentil Pilaf', 'Fragrant saffron-infused rice mixed with tender lentils, aromatic spices, and garnished with toasted almonds and fresh herbs.', '', 0, 0, 0, '', 0, ''),
(28, 'Honey Dijon Grilled Pork Chops', 'Juicy pork chops marinated in a sweet and tangy honey Dijon sauce, grilled to perfection and served with roasted vegetables.', '', 0, 0, 0, '', 0, ''),
(29, 'Tropical Coconut Curry Soup', 'A creamy and flavorful soup made with coconut milk, vibrant curry spices, and a medley of tropical vegetables, garnished with fresh cilantro.', '', 0, 0, 0, '', 0, ''),
(30, 'Raspberry Almond Crumble Bars', 'Buttery almond crust topped with sweet raspberry filling and a crumbly almond streusel, baked to golden perfection for a delightful dessert.', '', 0, 0, 0, '', 0, ''),
(31, 'Lemon Herb Grilled Chicken', 'Tender chicken breasts marinated in a zesty lemon herb mixture and grilled to perfection.', '', 0, 0, 0, '', 0, ''),
(32, 'Spicy Thai Peanut Noodles', 'Noodles tossed in a spicy and creamy Thai peanut sauce, topped with crunchy peanuts and fresh cilantro.', '', 0, 0, 0, '', 0, ''),
(33, 'Balsamic Glazed Brussels Sprouts', 'Roasted Brussels sprouts drizzled with a sweet and tangy balsamic glaze, perfect as a side dish.', '', 0, 0, 0, '', 0, ''),
(34, 'Moroccan Chickpea Stew', 'A hearty stew made with chickpeas, tomatoes, and a blend of Moroccan spices, served with couscous.', '', 0, 0, 0, '', 0, ''),
(35, 'Cajun Shrimp and Grits', 'Juicy shrimp cooked in a spicy Cajun sauce, served over creamy, buttery grits.', '', 0, 0, 0, '', 0, ''),
(36, 'Pesto Pasta with Sun-Dried Tomatoes', 'Pasta tossed in a rich basil pesto sauce with sun-dried tomatoes and Parmesan cheese.', '', 0, 0, 0, '', 0, ''),
(37, 'Maple Bacon Brussels Sprouts', 'Crispy Brussels sprouts caramelized with maple syrup and bacon, a sweet and savory delight.', '', 0, 0, 0, '', 0, ''),
(38, 'Teriyaki Salmon Bowl', 'Grilled salmon fillets glazed with teriyaki sauce, served over rice with steamed vegetables.', '', 0, 0, 0, '', 0, ''),
(39, 'Greek Chicken Gyros', 'Marinated chicken wrapped in warm pita bread with tzatziki sauce, fresh tomatoes, and onions.', '', 0, 0, 0, '', 0, ''),
(40, 'Coconut Lime Chicken Curry', 'A creamy coconut milk curry with tender chicken pieces, flavored with lime and aromatic spices.', '', 0, 0, 0, '', 0, ''),
(41, 'Butternut Squash Risotto', 'Creamy risotto made with roasted butternut squash, Parmesan cheese, and fresh sage.', '', 0, 0, 0, '', 0, ''),
(42, 'Korean BBQ Beef Tacos', 'Soft tortillas filled with marinated Korean BBQ beef, kimchi, and a spicy sriracha mayo.', '', 0, 0, 0, '', 0, ''),
(43, 'Mediterranean Quinoa Salad', 'A refreshing salad with quinoa, cucumbers, tomatoes, olives, and feta cheese, tossed in a lemon vinaigrette.', '', 0, 0, 0, '', 0, ''),
(44, 'Honey Sriracha Chicken Wings', 'Crispy baked chicken wings coated in a sweet and spicy honey sriracha sauce.', '', 0, 0, 0, '', 0, ''),
(45, 'Stuffed Bell Peppers with Quinoa', 'Bell peppers stuffed with a flavorful mixture of quinoa, black beans, corn, and spices, then baked until tender.', '', 0, 0, 0, '', 0, ''),
(46, 'Creamy Mushroom Stroganoff', 'A rich and creamy stroganoff made with sautéed mushrooms, onions, and a hint of garlic, served over egg noodles.', '', 0, 0, 0, '', 0, ''),
(47, 'Lemon Garlic Butter Scallops', 'Seared scallops in a luscious lemon garlic butter sauce, perfect for an elegant dinner.', '', 0, 0, 0, '', 0, ''),
(48, 'Spinach and Feta Stuffed Chicken Breast', 'Juicy chicken breasts stuffed with a savory mixture of spinach, feta, and garlic, then baked to perfection.', '', 0, 0, 0, '', 0, ''),
(49, 'Thai Green Curry with Vegetables', 'A fragrant Thai green curry made with assorted vegetables, simmered in a coconut milk-based sauce.', '', 0, 0, 0, '', 0, ''),
(50, 'Blueberry Lemon Cheesecake Bars', 'Creamy cheesecake bars with a fresh blueberry and lemon swirl, baked on a buttery graham cracker crust.', '', 0, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_chef`
--

CREATE TABLE `recipe_chef` (
  `recipe_id` int(11) NOT NULL,
  `chef_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_equipment`
--

CREATE TABLE `recipe_equipment` (
  `recipe_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_equipment`
--

INSERT INTO `recipe_equipment` (`recipe_id`, `equipment_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 14),
(2, 1),
(2, 3),
(2, 15),
(2, 25),
(3, 1),
(3, 3),
(3, 4),
(3, 16),
(4, 18),
(5, 17),
(5, 18),
(6, 1),
(6, 3),
(6, 20),
(7, 1),
(7, 3),
(7, 19),
(8, 1),
(8, 3),
(8, 4),
(8, 20),
(9, 1),
(9, 3),
(9, 4),
(10, 4),
(10, 24),
(11, 1),
(11, 3),
(11, 4),
(11, 20),
(12, 1),
(12, 3),
(12, 4),
(12, 20),
(13, 1),
(13, 3),
(13, 22),
(14, 1),
(14, 3),
(14, 4),
(14, 16),
(15, 1),
(15, 3),
(15, 4),
(15, 22),
(16, 1),
(16, 3),
(16, 19),
(16, 25),
(17, 1),
(17, 3),
(17, 4),
(18, 1),
(18, 3),
(18, 20),
(19, 1),
(19, 3),
(19, 25),
(20, 17),
(20, 18),
(21, 1),
(21, 3),
(21, 4),
(21, 20),
(22, 1),
(22, 3),
(22, 4),
(22, 25),
(23, 1),
(23, 3),
(23, 27),
(24, 1),
(24, 3),
(24, 4),
(24, 25),
(25, 1),
(25, 3),
(25, 4),
(25, 20),
(26, 1),
(26, 3),
(26, 22),
(27, 1),
(27, 3),
(27, 25),
(28, 1),
(28, 3),
(28, 4),
(28, 20),
(29, 1),
(29, 3),
(29, 25),
(30, 17),
(30, 18),
(31, 1),
(31, 3),
(31, 4),
(31, 14),
(32, 1),
(32, 3),
(32, 4),
(32, 20),
(33, 1),
(33, 3),
(33, 4),
(33, 20),
(34, 1),
(34, 3),
(34, 25),
(35, 1),
(35, 3),
(35, 25),
(36, 1),
(36, 3),
(36, 4),
(36, 20),
(37, 1),
(37, 3),
(37, 4),
(37, 20),
(38, 1),
(38, 3),
(38, 22),
(39, 1),
(39, 3),
(39, 20),
(40, 1),
(40, 3),
(40, 25),
(41, 1),
(41, 3),
(41, 25),
(42, 1),
(42, 3),
(42, 4),
(42, 20),
(43, 1),
(43, 3),
(43, 4),
(44, 1),
(44, 3),
(44, 19),
(45, 1),
(45, 3),
(45, 22),
(46, 1),
(46, 3),
(46, 4),
(46, 20),
(47, 1),
(47, 3),
(47, 20),
(48, 1),
(48, 3),
(48, 22),
(49, 1),
(49, 3),
(49, 25),
(50, 17),
(50, 18);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_ingredient`
--

CREATE TABLE `recipe_ingredient` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_ingredient`
--

INSERT INTO `recipe_ingredient` (`recipe_id`, `ingredient_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 6),
(2, 7),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(3, 2),
(3, 3),
(3, 6),
(3, 7),
(3, 10),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(4, 14),
(4, 23),
(4, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(5, 14),
(5, 24),
(5, 27),
(5, 28),
(5, 30),
(5, 31),
(6, 3),
(6, 14),
(6, 15),
(6, 32),
(6, 33),
(6, 34),
(7, 2),
(7, 3),
(7, 6),
(7, 7),
(7, 35),
(7, 36),
(8, 2),
(8, 3),
(8, 6),
(8, 7),
(8, 15),
(8, 30),
(8, 34),
(8, 37),
(8, 38),
(8, 39),
(8, 40),
(9, 2),
(9, 3),
(9, 6),
(9, 7),
(9, 15),
(9, 29),
(9, 30),
(9, 41),
(9, 42),
(9, 43),
(9, 44),
(9, 45),
(9, 46),
(10, 6),
(10, 14),
(10, 24),
(10, 28),
(10, 47),
(10, 48),
(10, 49),
(10, 50),
(11, 89),
(11, 90),
(11, 91),
(11, 92),
(11, 93),
(11, 94),
(11, 95),
(11, 96),
(11, 97),
(12, 90),
(12, 91),
(12, 98),
(12, 99),
(12, 100),
(12, 101),
(12, 102),
(12, 103),
(13, 90),
(13, 91),
(13, 104),
(13, 105),
(13, 106),
(13, 107),
(14, 97),
(14, 108),
(14, 109),
(14, 110),
(14, 111),
(14, 112),
(14, 113),
(14, 114),
(15, 90),
(15, 91),
(15, 115),
(15, 116),
(15, 117),
(16, 90),
(16, 91),
(16, 102),
(16, 118),
(16, 119),
(16, 120),
(16, 121),
(17, 90),
(17, 91),
(17, 122),
(17, 123),
(17, 124),
(17, 125),
(17, 126),
(17, 127),
(18, 91),
(18, 97),
(18, 130),
(18, 131),
(18, 133),
(18, 134),
(18, 135),
(18, 136),
(18, 137),
(19, 90),
(19, 91),
(19, 139),
(19, 142),
(19, 143),
(19, 144),
(19, 145),
(19, 146),
(19, 147),
(20, 150),
(20, 151),
(20, 152),
(20, 153),
(20, 154),
(21, 157),
(21, 171),
(21, 173),
(21, 175),
(21, 204),
(21, 216),
(21, 217),
(22, 159),
(22, 166),
(22, 171),
(22, 176),
(22, 177),
(22, 178),
(22, 179),
(22, 189),
(22, 214),
(22, 227),
(22, 228),
(23, 157),
(23, 171),
(23, 179),
(23, 194),
(23, 209),
(24, 157),
(24, 162),
(24, 170),
(24, 193),
(24, 195),
(24, 198),
(24, 214),
(24, 227),
(24, 228),
(25, 158),
(25, 159),
(25, 166),
(25, 167),
(25, 171),
(25, 212),
(25, 217),
(26, 208),
(26, 214),
(26, 219),
(26, 220),
(26, 226),
(26, 227),
(26, 228),
(27, 156),
(27, 157),
(27, 186),
(27, 213),
(27, 228),
(27, 235),
(28, 157),
(28, 203),
(28, 214),
(28, 220),
(28, 222),
(28, 227),
(28, 228),
(29, 156),
(29, 157),
(29, 158),
(29, 171),
(29, 175),
(29, 178),
(29, 187),
(29, 234),
(29, 235),
(29, 236),
(30, 184),
(30, 190),
(30, 192),
(30, 194),
(30, 221),
(30, 226),
(30, 229),
(31, 157),
(31, 169),
(31, 179),
(31, 204),
(31, 214),
(31, 227),
(31, 228),
(32, 155),
(32, 157),
(32, 171),
(32, 173),
(32, 178),
(32, 193),
(32, 215),
(32, 216),
(32, 217),
(32, 218),
(33, 155),
(33, 214),
(33, 224),
(33, 227),
(33, 228),
(34, 156),
(34, 157),
(34, 167),
(34, 171),
(34, 188),
(34, 211),
(34, 213),
(34, 214),
(34, 230),
(34, 231),
(34, 232),
(34, 233),
(34, 241),
(35, 186),
(35, 194),
(35, 209),
(35, 227),
(35, 228),
(35, 230),
(36, 164),
(36, 170),
(36, 193),
(36, 198),
(36, 214),
(36, 227),
(36, 228),
(36, 240),
(37, 155),
(37, 206),
(37, 214),
(37, 219),
(37, 227),
(37, 228),
(38, 157),
(38, 158),
(38, 173),
(38, 193),
(38, 208),
(38, 214),
(38, 216),
(38, 235),
(39, 157),
(39, 159),
(39, 166),
(39, 171),
(39, 179),
(39, 193),
(39, 200),
(39, 204),
(39, 214),
(39, 227),
(39, 228),
(40, 155),
(40, 171),
(40, 178),
(40, 204),
(40, 214),
(40, 234),
(40, 235),
(40, 236),
(41, 157),
(41, 160),
(41, 171),
(41, 186),
(41, 194),
(41, 214),
(41, 228),
(41, 230),
(41, 235),
(42, 155),
(42, 157),
(42, 158),
(42, 162),
(42, 171),
(42, 202),
(42, 214),
(42, 235),
(43, 158),
(43, 162),
(43, 164),
(43, 166),
(43, 171),
(43, 189),
(43, 214),
(44, 157),
(44, 171),
(44, 205),
(44, 214),
(44, 217),
(44, 222),
(44, 227),
(44, 228),
(44, 229),
(45, 158),
(45, 166),
(45, 171),
(45, 189),
(45, 213),
(45, 214),
(46, 157),
(46, 162),
(46, 164),
(46, 171),
(46, 194),
(46, 214),
(46, 227),
(46, 228),
(47, 157),
(47, 171),
(47, 179),
(47, 194),
(47, 210),
(47, 214),
(47, 228),
(47, 235),
(48, 163),
(48, 171),
(48, 200),
(48, 204),
(48, 214),
(48, 227),
(49, 155),
(49, 171),
(49, 178),
(49, 214),
(49, 234),
(49, 235),
(49, 236),
(50, 179),
(50, 183),
(50, 184),
(50, 191),
(50, 198),
(50, 221),
(50, 226),
(50, 227),
(50, 229);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_section`
--

CREATE TABLE `recipe_section` (
  `recipe_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_section`
--

INSERT INTO `recipe_section` (`recipe_id`, `section_id`) VALUES
(1, 1),
(1, 8),
(2, 2),
(2, 8),
(3, 2),
(3, 8),
(4, 7),
(4, 10),
(5, 7),
(5, 10),
(6, 9),
(7, 4),
(7, 9),
(8, 6),
(8, 8),
(9, 4),
(9, 8),
(10, 2),
(10, 8),
(11, 1),
(11, 8),
(12, 6),
(12, 8),
(13, 3),
(13, 8),
(14, 4),
(14, 5),
(14, 8),
(15, 8),
(15, 9),
(16, 2),
(16, 8),
(17, 4),
(17, 8),
(18, 5),
(18, 10),
(19, 4),
(19, 10),
(20, 7),
(20, 10),
(21, 1),
(21, 8),
(22, 4),
(22, 8),
(23, 3),
(23, 8),
(24, 6),
(24, 8),
(25, 5),
(25, 10),
(26, 3),
(26, 8),
(27, 8),
(27, 10),
(28, 1),
(28, 8),
(29, 2),
(29, 8),
(30, 7),
(30, 10),
(31, 1),
(31, 8),
(32, 6),
(32, 8),
(33, 9),
(33, 10),
(34, 4),
(34, 8),
(35, 6),
(35, 8),
(36, 6),
(36, 8),
(37, 9),
(37, 10),
(38, 3),
(38, 8),
(39, 1),
(39, 5),
(39, 8),
(40, 6),
(40, 8),
(41, 9),
(41, 10),
(42, 5),
(42, 10),
(43, 4),
(43, 8),
(44, 1),
(44, 8),
(45, 5),
(45, 10),
(46, 3),
(46, 8),
(47, 3),
(47, 8),
(48, 4),
(48, 8),
(49, 6),
(49, 8),
(50, 7),
(50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_step`
--

CREATE TABLE `recipe_step` (
  `recipe_id` int(11) NOT NULL,
  `step_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_step`
--

INSERT INTO `recipe_step` (`recipe_id`, `step_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(5, 19),
(5, 20),
(5, 21),
(5, 22),
(5, 23),
(6, 24),
(6, 25),
(6, 26),
(6, 27),
(7, 28),
(7, 29),
(7, 30),
(7, 31),
(7, 32),
(7, 33),
(8, 34),
(8, 35),
(8, 36),
(8, 37),
(8, 38),
(9, 39),
(9, 40),
(9, 41),
(9, 42),
(9, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 47),
(10, 48),
(10, 49),
(11, 50),
(11, 51),
(11, 52),
(11, 53),
(12, 54),
(12, 55),
(12, 56),
(12, 57),
(12, 58),
(13, 59),
(13, 60),
(13, 61),
(13, 62),
(13, 63),
(13, 64),
(14, 65),
(14, 66),
(14, 67),
(14, 68),
(14, 69),
(14, 70),
(14, 71),
(15, 72),
(15, 73),
(15, 74),
(15, 75),
(15, 76),
(15, 77),
(16, 78),
(16, 79),
(16, 80),
(16, 81),
(16, 82),
(16, 83),
(16, 84),
(17, 85),
(17, 86),
(17, 87),
(17, 88),
(18, 89),
(18, 90),
(18, 91),
(18, 92),
(18, 93),
(18, 94),
(18, 95),
(19, 96),
(19, 97),
(19, 98),
(19, 99),
(19, 100),
(19, 101),
(19, 102),
(20, 103),
(20, 104),
(20, 105),
(20, 106),
(20, 107),
(20, 108),
(21, 109),
(21, 110),
(21, 111),
(21, 112),
(21, 113),
(22, 114),
(22, 115),
(22, 116),
(22, 117),
(22, 118),
(22, 119),
(23, 120),
(23, 121),
(23, 122),
(23, 123),
(23, 124),
(23, 125),
(24, 126),
(24, 127),
(24, 128),
(24, 129),
(24, 130),
(24, 131),
(24, 132),
(25, 133),
(25, 134),
(25, 135),
(25, 136),
(25, 137),
(26, 138),
(26, 139),
(26, 140),
(26, 141),
(26, 142),
(26, 143),
(27, 144),
(27, 145),
(27, 146),
(27, 147),
(27, 148),
(27, 149),
(27, 150),
(28, 151),
(28, 152),
(28, 153),
(28, 154),
(28, 155),
(28, 156),
(29, 157),
(29, 158),
(29, 159),
(29, 160),
(29, 161),
(30, 162),
(30, 163),
(30, 164),
(30, 165),
(30, 166),
(30, 167),
(31, 169),
(31, 170),
(31, 171),
(31, 172),
(31, 173),
(32, 174),
(32, 175),
(32, 176),
(32, 177),
(33, 178),
(33, 179),
(33, 180),
(33, 181),
(34, 182),
(34, 183),
(34, 184),
(34, 185),
(34, 186),
(35, 187),
(35, 188),
(35, 189),
(35, 190),
(36, 191),
(36, 192),
(36, 193),
(37, 194),
(37, 195),
(37, 196),
(37, 197),
(37, 198),
(38, 199),
(38, 200),
(38, 201),
(38, 202),
(39, 203),
(39, 204),
(39, 205),
(39, 206),
(40, 207),
(40, 208),
(40, 209),
(40, 210),
(40, 211),
(41, 212),
(41, 213),
(41, 214),
(41, 215),
(41, 216),
(42, 217),
(42, 218),
(42, 219),
(42, 220),
(43, 221),
(43, 222),
(43, 223),
(44, 224),
(44, 225),
(44, 226),
(44, 227),
(44, 228),
(45, 229),
(45, 230),
(45, 231),
(45, 232),
(45, 233),
(46, 234),
(46, 235),
(46, 236),
(46, 237),
(46, 238),
(47, 239),
(47, 240),
(47, 241),
(47, 242),
(48, 243),
(48, 244),
(48, 245),
(48, 246),
(48, 247),
(49, 248),
(49, 249),
(49, 250),
(49, 251),
(49, 252),
(50, 253),
(50, 254),
(50, 255),
(50, 256),
(50, 257);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_tag`
--

CREATE TABLE `recipe_tag` (
  `recipe_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_tag`
--

INSERT INTO `recipe_tag` (`recipe_id`, `tag_id`) VALUES
(1, 2),
(1, 3),
(1, 9),
(2, 3),
(2, 8),
(2, 9),
(3, 4),
(3, 7),
(3, 9),
(4, 1),
(4, 10),
(5, 1),
(5, 10),
(6, 8),
(7, 5),
(7, 6),
(8, 2),
(8, 3),
(8, 9),
(9, 5),
(9, 6),
(10, 1),
(10, 4),
(11, 8),
(11, 9),
(12, 3),
(12, 6),
(13, 6),
(13, 10),
(14, 3),
(14, 5),
(15, 7),
(15, 10),
(16, 2),
(16, 3),
(17, 4),
(17, 6),
(18, 3),
(18, 5),
(19, 6),
(19, 10),
(20, 2),
(20, 9),
(21, 5),
(21, 9),
(22, 3),
(22, 6),
(23, 2),
(23, 8),
(24, 4),
(24, 8),
(25, 2),
(25, 5),
(25, 8),
(25, 9),
(26, 6),
(26, 9),
(27, 3),
(27, 7),
(27, 8),
(28, 4),
(28, 5),
(28, 9),
(29, 2),
(29, 3),
(29, 6),
(30, 8),
(30, 10),
(31, 5),
(31, 9),
(32, 2),
(32, 6),
(33, 5),
(33, 8),
(34, 5),
(34, 6),
(34, 7),
(35, 3),
(35, 7),
(36, 3),
(36, 5),
(36, 8),
(37, 5),
(37, 8),
(38, 6),
(38, 9),
(39, 3),
(39, 5),
(39, 8),
(40, 3),
(40, 6),
(40, 9),
(41, 3),
(41, 5),
(41, 6),
(41, 9),
(42, 2),
(42, 5),
(42, 8),
(43, 3),
(43, 5),
(43, 6),
(43, 8),
(44, 8),
(44, 9),
(45, 3),
(45, 5),
(45, 6),
(46, 3),
(46, 5),
(46, 6),
(46, 8),
(47, 3),
(47, 8),
(48, 3),
(48, 5),
(48, 6),
(48, 8),
(49, 2),
(49, 5),
(49, 6),
(49, 8),
(50, 8),
(50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_tips`
--

CREATE TABLE `recipe_tips` (
  `recipe_id` int(11) NOT NULL,
  `tips_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_tips`
--

INSERT INTO `recipe_tips` (`recipe_id`, `tips_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20),
(11, 21),
(11, 22),
(12, 23),
(12, 24),
(13, 25),
(13, 26),
(14, 27),
(14, 28),
(15, 29),
(15, 30),
(16, 31),
(16, 32),
(17, 33),
(17, 34),
(18, 35),
(18, 36),
(19, 37),
(19, 38),
(20, 39),
(20, 40),
(21, 41),
(21, 42),
(22, 43),
(22, 44),
(23, 45),
(23, 46),
(24, 47),
(24, 48),
(25, 49),
(25, 50),
(26, 51),
(26, 52),
(27, 53),
(27, 54),
(28, 55),
(28, 56),
(29, 57),
(29, 58),
(30, 59),
(30, 60),
(31, 61),
(31, 62),
(32, 63),
(32, 64),
(33, 65),
(33, 66),
(34, 67),
(34, 68),
(35, 69),
(35, 70),
(36, 71),
(36, 72),
(37, 73),
(37, 74),
(38, 75),
(38, 76),
(39, 77),
(39, 78),
(40, 79),
(40, 80),
(41, 81),
(41, 82),
(42, 83),
(42, 84),
(43, 85),
(43, 86),
(44, 87),
(44, 88),
(45, 89),
(45, 90),
(46, 91),
(46, 92),
(47, 93),
(47, 94),
(48, 95),
(48, 96),
(49, 97),
(49, 98),
(50, 99),
(50, 100);

-- --------------------------------------------------------

--
-- Table structure for table `scoring`
--

CREATE TABLE `scoring` (
  `chef_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `description`) VALUES
(1, 'Spicy Delights', 'A collection of recipes that pack a spicy punch'),
(2, 'Comfort Classics', 'Classic comfort foods that warm the soul'),
(3, 'Seafood Sensations', 'Delicious seafood dishes to delight your palate'),
(4, 'Healthy & Fresh', 'Fresh and healthy recipes for a balanced diet'),
(5, 'Vegetarian Favorites', 'Tasty and satisfying vegetarian dishes'),
(6, 'International Flavors', 'Recipes with flavors from around the world'),
(7, 'Decadent Desserts', 'Indulgent desserts to satisfy your sweet tooth'),
(8, 'Hearty Mains', 'Substantial main courses for any meal'),
(9, 'Flavorful Sides', 'Sides that complement any main dish'),
(10, 'Pasta and Grains', 'Pasta and grain-based recipes for all tastes');

-- --------------------------------------------------------

--
-- Table structure for table `step`
--

CREATE TABLE `step` (
  `step_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `step`
--

INSERT INTO `step` (`step_id`, `description`) VALUES
(1, 'In a bowl, combine chicken breast strips with olive oil, lime juice, garlic, chili powder, cumin, paprika, salt, and pepper. Marinate for at least 30 minutes.'),
(2, 'Preheat the grill to medium-high heat.'),
(3, 'Grill the marinated chicken for 5-7 minutes on each side until fully cooked.'),
(4, 'While the chicken is grilling, warm the tortillas on the grill for about 30 seconds on each side.'),
(5, 'Slice the grilled chicken and place it on the tortillas. Add toppings like diced onions, cilantro, sliced avocado, and a squeeze of lime.'),
(6, 'Serve the tacos with your favorite salsa and a side of Mexican rice.'),
(7, 'Heat chicken or vegetable broth in a pot and keep it warm.'),
(8, 'In a large pan, sauté sliced mushrooms in butter until golden brown. Remove and set aside.In the same pan, add more butter and sauté finely chopped onions and garlic until translucent.'),
(9, 'Add Arborio rice to the pan and toast for 2-3 minutes until slightly translucent.'),
(10, 'Add a ladleful of warm broth to the rice, stirring continuously until absorbed. Repeat until the rice is creamy and cooked through.'),
(11, ' Stir in the sautéed mushrooms, grated Parmesan cheese, and a bit of cream. Garnish with chopped parsley and serve immediately.'),
(12, 'In a bowl, combine shrimp with lemon juice, minced garlic, olive oil, salt, pepper, and red pepper flakes. Marinate for 15-20 minutes.'),
(13, 'In a large skillet, heat some olive oil over medium-high heat.\r\n Add the marinated shrimp to the skillet and cook for 2-3 minutes on each side until pink and opaque.\r\n In the same skillet, add more lemon juice and zest, a bit of white wine, and butter. Cook until the sauce slightly thickens.'),
(14, 'Return the shrimp to the skillet and toss to coat with the sauce. Serve immediately with a side of pasta or rice.'),
(15, 'Cut beef chuck into bite-sized pieces. Chop onions, carrots, potatoes, and celery.'),
(16, 'In a large pot, heat oil over medium-high heat and brown the beef on all sides.\r\nAdd onions, garlic, carrots, celery, and potatoes to the pot. Cook until the onions are translucent.'),
(17, 'Pour in beef broth, add bay leaves, thyme, salt, and pepper. Bring to a boil.\r\nReduce the heat to low, cover, and simmer for 2-3 hours until the beef is tender and the flavors are well combined.'),
(18, 'Serve the stew hot with crusty bread.'),
(19, 'In a bowl, mix soy sauce, honey, garlic, ginger, and a bit of orange juice.Place pork chops in the marinade and refrigerate for at least 1 hour.'),
(20, 'In an oven-safe skillet, heat oil and sear the pork chops on both sides until golden brown.'),
(21, 'Transfer the skillet to the oven and bake for 15-20 minutes until the pork chops are cooked through.'),
(22, 'In a small saucepan, reduce the leftover marinade until it thickens into a glaze.'),
(23, 'Drizzle the glaze over the pork chops and serve with steamed vegetables.'),
(24, 'Slice a baguette into thin pieces and toast them lightly in the oven.'),
(25, 'In a bowl, combine diced tomatoes, minced garlic, chopped fresh basil, olive oil, balsamic vinegar, salt, and pepper.'),
(26, ' Spoon the tomato mixture onto the toasted baguette slices.'),
(27, 'Garnish with additional fresh basil leaves.\r\n Serve immediately as an appetizer.'),
(28, 'Roll out pizza dough on a floured surface to your desired thickness.'),
(29, 'Preheat the oven to the highest setting (usually around 475°F or 250°C) and place a pizza stone inside if you have one.'),
(30, 'Spread a thin layer of tomato sauce over the dough.'),
(31, 'Add fresh mozzarella cheese slices and fresh basil leaves.'),
(32, 'Transfer the pizza to the preheated oven and bake for 10-12 minutes until the crust is golden and the cheese is bubbly.'),
(33, 'Drizzle with a bit of olive oil and a sprinkle of salt. Slice and serve hot.'),
(34, ' Rub a pork shoulder with a mixture of smoked paprika, brown sugar, salt, pepper, garlic powder, and onion powder.'),
(35, 'Place the pork shoulder in a slow cooker and add a bit of apple cider vinegar and chicken broth. Cook on low for 8-10 hours.'),
(36, ' In a saucepan, combine ketchup, apple cider vinegar, brown sugar, Worcestershire sauce, and spices. Simmer until thickened.'),
(37, 'Toss the shredded pork with the BBQ sauce.'),
(38, 'Serve the pulled pork on toasted buns with coleslaw.'),
(39, 'In a bowl, mix flour, sugar, baking powder, and salt. In another bowl, whisk together milk, eggs, and melted butter.'),
(40, ' Pour the wet ingredients into the dry ingredients and mix until just combined. Gently fold in fresh blueberries.'),
(41, 'Heat a griddle or non-stick skillet over medium heat and grease it lightly with butter.'),
(42, ' Pour batter onto the griddle to form pancakes. Cook until bubbles form on the surface, then flip and cook until golden brown.'),
(43, 'Serve the pancakes hot with maple syrup and additional blueberries.'),
(44, 'Preheat the oven to 425°F (220°C). Grease and flour the ramekins.'),
(45, 'In a microwave-safe bowl, melt dark chocolate and butter together.'),
(46, 'In another bowl, whisk together eggs, egg yolks, sugar, and a pinch of salt. Add the melted chocolate mixture and mix. Fold in flour until just combined.'),
(47, 'Pour the batter into the prepared ramekins.'),
(48, 'Bake for 12-14 minutes until the edges are set but the center is still soft.'),
(49, ' Let the cakes cool for a minute, then run a knife around the edges and invert onto plates. Serve immediately with a scoop of vanilla ice cream.'),
(50, 'Preheat the grill to medium-high heat.'),
(51, 'Drizzle with olive oil and grill for 6-7 minutes per side, until cooked through.'),
(52, 'In a bowl, combine mangoes, bell pepper, red onion, jalapeño, lime juice, and cilantro.\r\nMix well and season with salt to taste.'),
(53, 'Serve the grilled chicken with the mango salsa on top.'),
(54, 'Cook fettuccine according to package instructions. Drain and set aside.'),
(55, 'Heat olive oil in a large skillet over medium-high heat. Cook shrimp for 2-3 minutes per side until pink. Remove and set aside.'),
(56, 'n the same skillet, add garlic and sauté until fragrant, about 1 minute.\r\nPour in heavy cream and bring to a simmer.\r\nStir in Parmesan cheese until melted and smooth.'),
(57, 'Add cooked pasta, shrimp, and baby spinach (if using) to the skillet. Toss to coat.'),
(58, 'Garnish with parsley and serve immediately.'),
(59, 'Preheat the oven to 400°F (200°C).'),
(60, 'Season the salmon fillets with salt and pepper.'),
(61, 'Mix parsley, dill, and thyme in a bowl.\r\nPress the herb mixture onto the top of each salmon fillet.'),
(62, 'Heat olive oil in an ovenproof skillet over medium-high heat. Sear salmon, herb-side down, for 2-3 minutes.'),
(63, 'Transfer the skillet to the oven and bake for 10-12 minutes, until salmon is cooked through.'),
(64, 'Serve with additional lemon wedges.'),
(65, 'Preheat the oven to 375°F (190°C).'),
(66, 'Cut the tops off the bell peppers and remove seeds and membranes.'),
(67, 'In a pot, bring quinoa and vegetable broth to a boil. Reduce heat, cover, and simmer for 15 minutes until quinoa is cooked.'),
(68, 'In a bowl, combine cooked quinoa, chickpeas, tomatoes, olives, feta, parsley, salt, and pepper.'),
(69, 'Stuff the mixture into the bell peppers.'),
(70, 'Place stuffed peppers in a baking dish and drizzle with olive oil.\r\nCover with foil and bake for 30 minutes. Remove foil and bake for an additional 10 minutes.'),
(71, 'Serve warm.'),
(72, 'Preheat the oven to 375°F (190°C).'),
(73, 'Heat olive oil in a large ovenproof skillet over medium-high heat. Sear pork on all sides until browned, about 4 minutes per side.'),
(74, 'In a small bowl, whisk together honey, Dijon mustard, garlic, and apple cider vinegar.'),
(75, 'Brush the honey mixture over the pork.'),
(76, 'Transfer the skillet to the oven and roast for 15-20 minutes, until the internal temperature reaches 145°F (63°C).'),
(77, 'Serve with extra glaze on the side.'),
(78, 'Preheat the oven to 425°F (220°C).'),
(79, 'Arrange bell peppers, tomatoes, onion, and garlic on a baking sheet. Drizzle with olive oil and season with salt and pepper.'),
(80, 'Roast for 25-30 minutes until vegetables are tender and slightly charred.'),
(81, 'Transfer roasted vegetables to a blender. Add vegetable broth and blend until smooth.'),
(82, 'Pour the soup into a pot and bring to a simmer over medium heat.'),
(83, 'Adjust seasoning to taste and serve hot.'),
(84, 'In a large bowl, combine avocados, lettuce, tomatoes, red onion, and cilantro.'),
(85, 'In a large bowl, combine avocados, lettuce, tomatoes, red onion, and cilantro.'),
(86, 'In a small bowl, whisk together lime juice, olive oil, salt, and pepper.'),
(87, 'Pour the dressing over the salad and toss gently to combine.'),
(88, 'Serve immediately.'),
(89, 'Preheat the oven to 400°F (200°C).'),
(90, 'Toss sweet potatoes with olive oil, chili powder, cumin, salt, and pepper. Spread on a baking sheet.'),
(91, 'Roast for 25-30 minutes until tender and lightly browned.'),
(92, 'In a small saucepan, heat black beans until warm.'),
(93, 'Fill tortillas with roasted sweet potatoes and black beans.'),
(94, 'Top with avocado slices, a squeeze of lime, and fresh cilantro.'),
(95, 'Serve immediately.'),
(96, 'Toss butternut squash with 1 tbsp olive oil, salt, and pepper. Roast for 20-25 minutes until tender.'),
(97, 'In a large pot, heat remaining olive oil over medium heat. Sauté onion until translucent, about 5 minutes.'),
(98, 'Add garlic and arborio rice, stirring for 2 minutes.'),
(99, 'Gradually add warmed broth, one ladle at a time, stirring continuously until absorbed before adding more.'),
(100, 'Continue until rice is creamy and al dente, about 20 minutes.'),
(101, 'Stir in roasted squash, Parmesan cheese, and sage.'),
(102, 'Adjust seasoning and serve immediately.'),
(103, 'Pre-bake the tart crust according to package instructions or your homemade recipe. Let cool completely.'),
(104, 'In a saucepan, heat heavy cream over medium heat until it just begins to simmer.'),
(105, 'Remove from heat and add the chopped dark chocolate. Let sit for 2-3 minutes to melt the chocolate, then stir until smooth.'),
(106, 'Add hazelnut spread and vanilla extract to the chocolate mixture, stirring until fully combined.'),
(107, 'Pour the chocolate hazelnut filling into the cooled tart crust, spreading evenly.'),
(108, 'Chill the tart in the refrigerator for at least an hour to set the filling.Slice and serve.'),
(109, 'In a bowl, combine pineapple juice, sweet chili sauce, garlic, soy sauce, and ginger.'),
(110, 'Marinate the chicken thighs in the mixture for at least 1 hour.'),
(111, 'Preheat the grill to medium-high heat.'),
(112, 'Grill the chicken thighs for 6-7 minutes on each side, or until fully cooked.'),
(113, 'Serve with steamed jasmine rice.'),
(114, 'Rinse quinoa under cold water.'),
(115, 'In a pot, bring water to a boil and add quinoa.'),
(116, 'Reduce heat, cover, and simmer for 15 minutes, or until water is absorbed.'),
(117, 'In a large bowl, combine cooked quinoa, avocado, orange, grapefruit, and red onion.'),
(118, 'Drizzle with olive oil and lime juice, and season with salt and pepper.'),
(119, 'Toss gently to combine and serve.'),
(120, 'Preheat grill to medium-high heat.'),
(121, 'In a bowl, combine melted butter, garlic, lemon juice, salt, and pepper.'),
(122, 'Thread shrimp onto skewers.'),
(123, 'Brush shrimp with garlic butter mixture.'),
(124, 'Grill shrimp for 2-3 minutes on each side, or until pink and opaque.'),
(125, 'Serve immediately.'),
(126, 'Cook pasta according to package instructions.'),
(127, 'In a large skillet, sauté garlic in olive oil until fragrant.'),
(128, 'Add cherry tomatoes and cook until softened.'),
(129, 'Stir in heavy cream and bring to a simmer.'),
(130, 'Add Parmesan cheese and stir until melted.'),
(131, 'Toss cooked pasta with the sauce and basil.'),
(132, 'Season with salt and pepper to taste and serve.'),
(133, 'Preheat oven to 400°F (200°C).'),
(134, 'In a bowl, toss bell peppers, onion, and zucchini with olive oil, chipotle powder, cumin, smoked paprika, salt, and pepper.'),
(135, 'Spread vegetables on a baking sheet and roast for 20 minutes, or until tender.'),
(136, 'Warm tortillas and fill with roasted vegetables and black beans.'),
(137, 'Top with avocado crema and cilantro, and serve.'),
(138, 'Preheat oven to 375°F (190°C).'),
(139, 'In a bowl, combine maple syrup and Dijon mustard.'),
(140, 'Place salmon fillets on a baking sheet and season with salt and pepper.'),
(141, 'Brush salmon with maple syrup mixture and top with chopped pecans.'),
(142, 'Bake for 15-20 minutes, or until salmon is cooked through.'),
(143, 'Serve immediately.'),
(144, 'Rinse rice and lentils under cold water.'),
(145, 'In a pot, sauté onion and garlic in olive oil until softened.'),
(146, 'Add rice, lentils, and saffron threads, and stir to combine.'),
(147, 'Pour in vegetable broth and bring to a boil.'),
(148, 'Reduce heat, cover, and simmer for 20 minutes, or until rice and lentils are tender.'),
(149, 'Fluff with a fork and garnish with toasted almonds and fresh herbs.'),
(150, 'Season with salt and pepper to taste and serve.'),
(151, 'In a bowl, combine honey, Dijon mustard, and apple cider vinegar.'),
(152, 'Season pork chops with salt and pepper.'),
(153, 'Brush pork chops with honey Dijon mixture.'),
(154, 'Preheat grill to medium-high heat.'),
(155, 'Grill pork chops for 4-5 minutes on each side, or until fully cooked.'),
(156, 'Serve with roasted vegetables.'),
(157, 'In a pot, combine coconut milk, vegetable broth, red curry paste, and fish sauce.'),
(158, 'Bring to a simmer and add bell pepper, sweet potato, and pineapple chunks.'),
(159, 'Cook until vegetables are tender, about 15 minutes.'),
(160, 'Stir in lime juice and garnish with fresh cilantro.'),
(161, 'Serve hot.'),
(162, 'Preheat oven to 350°F (175°C).'),
(163, 'In a bowl, combine flour, oats, almond flour, melted butter, brown sugar, and granulated sugar.'),
(164, 'Press half of the mixture into the bottom of a greased baking pan.'),
(165, 'Spread raspberry jam over the crust.'),
(166, 'Sprinkle remaining crumble mixture and sliced almonds on top.'),
(167, 'Bake for 25-30 minutes, or until golden brown'),
(168, 'Let cool before cutting into bars and serving.'),
(169, 'In a bowl, combine olive oil, lemon juice, minced garlic, chopped fresh herbs (such as rosemary, thyme, and parsley), salt, and pepper.'),
(170, 'Marinate the chicken breasts in the mixture for at least 30 minutes.'),
(171, 'Preheat the grill to medium-high heat.'),
(172, 'Grill the chicken breasts for 6-7 minutes on each side, or until fully cooked.'),
(173, 'Let the chicken rest for a few minutes before serving.'),
(174, 'Cook the noodles according to package instructions and drain.'),
(175, 'In a bowl, whisk together peanut butter, soy sauce, sriracha, lime juice, and a bit of warm water until smooth.'),
(176, 'Toss the cooked noodles with the peanut sauce.'),
(177, 'Top with chopped peanuts, cilantro, and green onions before serving.'),
(178, 'Preheat the oven to 400°F (200°C).'),
(179, 'Toss halved Brussels sprouts with olive oil, salt, and pepper.'),
(180, 'Spread them on a baking sheet and roast for 20-25 minutes, until tender and caramelized.'),
(181, 'Drizzle with balsamic glaze before serving.'),
(182, 'In a pot, sauté chopped onions and garlic in olive oil until softened.'),
(183, 'Add cumin, coriander, paprika, and cinnamon, and cook for another minute.'),
(184, 'Stir in canned chickpeas, diced tomatoes, vegetable broth, and dried apricots.'),
(185, 'Simmer for 20-25 minutes until the flavors meld.'),
(186, 'Serve with couscous and garnish with fresh cilantro.'),
(187, 'Cook grits according to package instructions, adding butter and cheese for extra creaminess.'),
(188, 'In a bowl, toss shrimp with Cajun seasoning.'),
(189, 'Sauté the seasoned shrimp in a skillet with butter until cooked through, about 2-3 minutes per side.'),
(190, 'Serve the shrimp over the creamy grits.'),
(191, 'Cook pasta according to package instructions and drain.'),
(192, 'In a large bowl, toss the cooked pasta with basil pesto sauce and chopped sun-dried tomatoes.'),
(193, 'Sprinkle with Parmesan cheese and serve immediately.'),
(194, 'Preheat the oven to 400°F (200°C).'),
(195, 'Toss halved Brussels sprouts with olive oil, salt, and pepper.'),
(196, 'Spread them on a baking sheet and roast for 20-25 minutes, until tender and caramelized.'),
(197, 'In the last 5 minutes, sprinkle chopped cooked bacon over the sprouts.'),
(198, 'Drizzle with maple syrup before serving.'),
(199, 'Marinate salmon fillets in teriyaki sauce for at least 30 minutes.'),
(200, 'Preheat the grill to medium-high heat.'),
(201, 'Grill the salmon fillets for 4-5 minutes on each side, or until cooked through.'),
(202, 'Serve the salmon over rice with steamed vegetables and extra teriyaki sauce.'),
(203, 'Marinate chicken pieces in a mixture of olive oil, lemon juice, garlic, oregano, salt, and pepper for at least 1 hour.'),
(204, 'Preheat a skillet over medium-high heat and cook the chicken until fully cooked.'),
(205, 'Warm pita bread and fill with the cooked chicken, tzatziki sauce, sliced tomatoes, and onions.'),
(206, 'Serve immediately.'),
(207, 'In a pot, sauté chopped onions, garlic, and ginger in coconut oil until fragrant.'),
(208, 'Add curry powder and cook for another minute.'),
(209, 'Stir in chicken pieces and cook until browned.'),
(210, 'Add coconut milk, lime juice, and chicken broth, and simmer for 15-20 minutes until the chicken is cooked through.'),
(211, 'Garnish with fresh cilantro and serve with rice.'),
(212, 'In a pot, sauté chopped onions and garlic in butter until softened.'),
(213, 'Add Arborio rice and cook for 1-2 minutes.'),
(214, 'Gradually add hot chicken broth, one ladle at a time, stirring constantly until the rice is creamy and cooked through.'),
(215, 'Stir in roasted butternut squash, Parmesan cheese, and fresh sage.'),
(216, 'Season with salt and pepper to taste and serve.'),
(217, 'Marinate thinly sliced beef in Korean BBQ sauce for at least 1 hour.'),
(218, 'Preheat a skillet over medium-high heat and cook the beef until fully cooked.'),
(219, 'Warm tortillas and fill with the cooked beef, kimchi, and a drizzle of sriracha mayo.'),
(220, 'Serve immediately.'),
(221, 'Cook quinoa according to package instructions and let cool.'),
(222, 'In a large bowl, combine the cooked quinoa with diced cucumbers, tomatoes, olives, and crumbled feta cheese.'),
(223, 'Toss with a lemon vinaigrette and serve chilled.'),
(224, 'Preheat the oven to 400°F (200°C).'),
(225, 'Toss chicken wings with salt, pepper, and a bit of oil.'),
(226, 'Spread them on a baking sheet and bake for 40-45 minutes, turning halfway through, until crispy.'),
(227, 'In a bowl, mix honey and sriracha, then toss the baked wings in the sauce.'),
(228, 'Serve immediately.'),
(229, 'Preheat the oven to 375°F (190°C).'),
(230, 'Cook quinoa according to package instructions and let cool.'),
(231, 'Mix the cooked quinoa with black beans, corn, diced tomatoes, and spices.'),
(232, 'Stuff the bell peppers with the quinoa mixture and place them in a baking dish.'),
(233, 'Cover with foil and bake for 30-35 minutes, until the peppers are tender.'),
(234, 'In a skillet, sauté sliced mushrooms and onions in butter until softened.'),
(235, 'Add garlic and cook for another minute.'),
(236, 'Stir in sour cream, beef broth, and a bit of flour to thicken.'),
(237, 'Simmer until the sauce is creamy and thickened.'),
(238, 'Serve over egg noodles and garnish with fresh parsley.'),
(239, 'Pat the scallops dry with paper towels.'),
(240, 'In a skillet, melt butter and add minced garlic and lemon zest.'),
(241, 'Sear the scallops in the garlic butter for 2-3 minutes on each side, until golden and cooked through.'),
(242, 'Squeeze fresh lemon juice over the scallops and serve immediately.'),
(243, 'Preheat the oven to 375°F (190°C).'),
(244, 'In a bowl, mix chopped spinach, crumbled feta, minced garlic, salt, and pepper.'),
(245, 'Cut a pocket into each chicken breast and stuff with the spinach mixture.'),
(246, 'Secure with toothpicks and place in a baking dish.'),
(247, 'Bake for 25-30 minutes, until the chicken is cooked through.'),
(248, 'In a pot, sauté green curry paste in a bit of coconut oil until fragrant.'),
(249, 'Add coconut milk and bring to a simmer.'),
(250, 'Stir in mixed vegetables and cook until tender, about 10-15 minutes.'),
(251, 'Season with fish sauce and lime juice to taste.'),
(252, 'Serve with jasmine rice.'),
(253, 'Preheat the oven to 350°F (175°C).'),
(254, 'In a bowl, mix graham cracker crumbs, melted butter, and sugar, and press into a baking pan.'),
(255, 'In another bowl, beat cream cheese, sugar, eggs, lemon zest, and lemon juice until smooth.'),
(256, 'Pour the cream cheese mixture over the crust and swirl in blueberry preserves.'),
(257, 'Bake for 25-30 minutes, until set. Let cool completely before cutting into bars.');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `description`) VALUES
(1, 'brunch'),
(2, 'quick-lunch'),
(3, 'lunch'),
(4, 'comfort food'),
(5, 'vegeterian'),
(6, 'healthy'),
(7, 'slow-cooked'),
(8, 'starter'),
(9, 'dinner'),
(10, 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `tips_id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`tips_id`, `description`) VALUES
(1, 'Marinate the chicken for at least 2 hours to ensure it absorbs the flavors well.'),
(2, 'Use a meat thermometer to check for doneness; chicken should reach an internal temperature of 165°F.'),
(3, 'Roast the tomatoes before adding them to the soup for a richer flavor.'),
(4, 'Add a splash of cream or coconut milk for extra creaminess.'),
(5, 'Brown the beef well before stewing to develop deep, rich flavors.'),
(6, 'Cook the stew low and slow to ensure the meat becomes tender.'),
(7, 'Use a mix of apple varieties for a balanced flavor and texture.'),
(8, 'Chill the pie dough before rolling it out to prevent it from shrinking.'),
(9, 'Use fresh lemon juice and zest for the best flavor.'),
(10, 'Blind bake the tart crust to avoid a soggy bottom.'),
(11, 'Mix the garlic into softened butter for even distribution.'),
(12, 'Use a combination of cheeses for a richer taste.'),
(13, 'Cut vegetables into uniform sizes to ensure even roasting.'),
(14, 'Toss the veggies with olive oil and your favorite herbs before roasting.'),
(15, 'Don’t overcook the shrimp; they only need a few minutes until they turn pink.'),
(16, 'Reserve some pasta water to adjust the sauce consistency if needed.'),
(17, 'Cook lentils until just tender to avoid mushiness.'),
(18, 'Add a splash of vinegar or lemon juice to brighten the flavors.'),
(19, 'Don’t overmix the batter; it’s okay if it’s a bit lumpy.'),
(20, 'Let the batter rest for a few minutes before cooking.'),
(21, 'Use ripe mangoes for the best flavor and sweetness.'),
(22, 'Grill or sear the chicken to add a smoky flavor to the dish.'),
(23, 'Use freshly grated Parmesan for a better texture and taste.'),
(24, 'Add the garlic at the end of cooking to prevent it from burning.'),
(25, 'Press the herb mixture firmly onto the salmon to help it adhere.'),
(26, 'Bake the salmon on a lined baking sheet for easy cleanup.'),
(27, 'Precook the quinoa to ensure it’s fully cooked inside the peppers.'),
(28, 'Top with a bit of cheese and broil at the end for a golden crust.'),
(29, 'Sear the pork tenderloin before glazing to lock in juices.'),
(30, 'Let the meat rest after cooking to allow the juices to redistribute.'),
(31, 'Roast the peppers and tomatoes to enhance their natural sweetness.'),
(32, 'Blend the soup until smooth for a silky texture.'),
(33, 'Add the avocado last to prevent it from browning.'),
(34, 'Use fresh lime juice and zest for the best flavor.'),
(35, 'Roast the sweet potatoes with spices to bring out their natural sweetness.'),
(36, 'Warm the tortillas before serving for better pliability and flavor.'),
(37, 'Stir the risotto frequently to release the starch and achieve a creamy texture.'),
(38, 'Roast the butternut squash separately and fold it in at the end.'),
(39, 'Use high-quality chocolate for the best flavor.'),
(40, 'Sprinkle sea salt just before serving for a delightful contrast.'),
(41, 'Marinate the chicken in the sweet chili sauce for at least an hour.'),
(42, 'Use fresh pineapple for a more vibrant flavor.'),
(43, 'Cook the quinoa in vegetable or chicken broth for added flavor.'),
(44, 'Add the citrus segments just before serving to keep them fresh and juicy.'),
(45, 'Soak wooden skewers in water for 30 minutes to prevent burning.'),
(46, 'Brush the shrimp with garlic butter while grilling for maximum flavor.'),
(47, 'Use fresh basil for a more vibrant and aromatic dish.'),
(48, 'Add a splash of pasta water to the sauce for a silky texture.'),
(49, 'Use chipotle peppers in adobo sauce for a smoky, spicy flavor.'),
(50, 'Top with fresh cilantro and a squeeze of lime for added brightness.'),
(51, 'Toast the pecans before using them to enhance their flavor.'),
(52, 'Brush the salmon with the glaze in the last few minutes of baking to prevent burning.'),
(53, 'Soak the saffron in warm water before adding it to the rice for better color and flavor.'),
(54, 'Cook the lentils separately to ensure they don’t overcook and become mushy.'),
(55, 'Marinate the pork chops for at least an hour to infuse them with flavor.'),
(56, 'Grill the chops over medium heat to avoid drying them out.'),
(57, 'Use full-fat coconut milk for a richer, creamier soup.'),
(58, 'Garnish with fresh cilantro and lime for a burst of freshness.'),
(59, 'Use fresh or high-quality frozen raspberries for the best taste.'),
(60, 'Toast the almonds before adding them to the crumble for extra flavor.'),
(61, 'Marinate the chicken in lemon juice and herbs for at least 2 hours.'),
(62, 'Grill over medium-high heat to get nice grill marks without burning.'),
(63, 'Use smooth peanut butter for a creamy sauce.'),
(64, 'Add a bit of sriracha or chili paste for an extra kick of heat.'),
(65, 'Roast the Brussels sprouts until they are crispy and caramelized.'),
(66, 'Toss with the balsamic glaze just before serving to maintain their crunch.'),
(67, 'Use a blend of warm spices like cumin, coriander, and cinnamon.'),
(68, 'Simmer the stew slowly to let the flavors meld together.'),
(69, 'Use stone-ground grits for the best texture.'),
(70, 'Season the shrimp with Cajun spices and cook them quickly to avoid overcooking.'),
(71, 'Use fresh basil for the pesto to achieve a vibrant green color.'),
(72, 'Rehydrate the sun-dried tomatoes in hot water if they are too dry.'),
(73, 'Roast the Brussels sprouts with the bacon to let the flavors meld.'),
(74, 'Drizzle with maple syrup just before serving for a sweet finish.'),
(75, 'Marinate the salmon in teriyaki sauce for at least 30 minutes.'),
(76, 'Serve with steamed rice and vegetables for a complete meal.'),
(77, 'Marinate the chicken in yogurt and spices for at least 2 hours.'),
(78, 'Serve with homemade tzatziki for an authentic taste.'),
(79, 'Use coconut cream for a richer, creamier curry.'),
(80, 'Add lime zest and juice just before serving for a fresh, zesty flavor.'),
(81, 'Stir frequently and add broth gradually for a creamy texture.'),
(82, 'Roast the butternut squash before adding it to the risotto for a deeper flavor.'),
(83, 'Marinate the beef in a mix of soy sauce, garlic, ginger, and sesame oil.'),
(84, 'Top with kimchi or pickled vegetables for a tangy contrast.'),
(85, 'Cook quinoa in vegetable broth for extra flavor.'),
(86, 'Add a mix of fresh herbs like parsley, mint, and dill.'),
(87, 'Bake or grill the wings for a healthier alternative to frying.'),
(88, 'Toss in honey and sriracha mixture just before serving for maximum stickiness.'),
(89, 'Precook the quinoa and mix with beans, corn, and spices before stuffing.'),
(90, 'Top with cheese and bake until the peppers are tender and the cheese is melted.'),
(91, 'Use a mix of mushrooms for a deeper, more complex flavor.'),
(92, 'Add a splash of white wine to the sauce for extra depth.'),
(93, 'Pat the scallops dry before cooking to get a good sear.'),
(94, 'Cook over high heat for just a few minutes on each side.'),
(95, 'Pound the chicken breasts to an even thickness for uniform cooking.'),
(96, 'Secure with toothpicks to keep the stuffing in place while cooking.'),
(97, 'Use fresh, high-quality curry paste for the best flavor.'),
(98, 'Add the vegetables in stages to ensure they are all cooked properly.'),
(99, 'Use fresh blueberries and lemon zest for the best flavor.'),
(100, 'Chill the bars thoroughly before cutting for clean slices.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `belongs`
--
ALTER TABLE `belongs`
  ADD PRIMARY KEY (`recipe_id`,`meal_id`),
  ADD KEY `meal_id` (`meal_id`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`chef_id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Indexes for table `choose_chef`
--
ALTER TABLE `choose_chef`
  ADD PRIMARY KEY (`episode_id`,`chef_id`),
  ADD KEY `chef_id_fk` (`chef_id`);

--
-- Indexes for table `choose_judge`
--
ALTER TABLE `choose_judge`
  ADD PRIMARY KEY (`episode_id`,`judge_id`),
  ADD KEY `judge_id` (`judge_id`);

--
-- Indexes for table `choose_recipe`
--
ALTER TABLE `choose_recipe`
  ADD PRIMARY KEY (`recipe_id`,`episode_id`),
  ADD KEY `episode_id` (`episode_id`);

--
-- Indexes for table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`competition_id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`episode_id`),
  ADD KEY `competition_id_fk` (`competition_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `ingredient_category_fk` (`category_id`);

--
-- Indexes for table `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`judge_id`);

--
-- Indexes for table `meal_type`
--
ALTER TABLE `meal_type`
  ADD PRIMARY KEY (`meal_id`);

--
-- Indexes for table `nutritionalinfo`
--
ALTER TABLE `nutritionalinfo`
  ADD PRIMARY KEY (`nutritional_id`),
  ADD KEY `recipe_info_fk` (`recipe_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `recipe_chef`
--
ALTER TABLE `recipe_chef`
  ADD PRIMARY KEY (`recipe_id`,`chef_id`),
  ADD KEY `chef_id` (`chef_id`);

--
-- Indexes for table `recipe_equipment`
--
ALTER TABLE `recipe_equipment`
  ADD PRIMARY KEY (`recipe_id`,`equipment_id`),
  ADD KEY `recipe_equipment_ibfk_2` (`equipment_id`);

--
-- Indexes for table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD PRIMARY KEY (`recipe_id`,`ingredient_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indexes for table `recipe_section`
--
ALTER TABLE `recipe_section`
  ADD PRIMARY KEY (`recipe_id`,`section_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `recipe_step`
--
ALTER TABLE `recipe_step`
  ADD PRIMARY KEY (`recipe_id`,`step_id`),
  ADD KEY `step_id_fk` (`step_id`);

--
-- Indexes for table `recipe_tag`
--
ALTER TABLE `recipe_tag`
  ADD PRIMARY KEY (`recipe_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `recipe_tips`
--
ALTER TABLE `recipe_tips`
  ADD PRIMARY KEY (`recipe_id`,`tips_id`),
  ADD KEY `tips_id` (`tips_id`);

--
-- Indexes for table `scoring`
--
ALTER TABLE `scoring`
  ADD PRIMARY KEY (`chef_id`,`judge_id`),
  ADD KEY `judge_id` (`judge_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `step`
--
ALTER TABLE `step`
  ADD PRIMARY KEY (`step_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`tips_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `belongs`
--
ALTER TABLE `belongs`
  ADD CONSTRAINT `belongs_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `belongs_ibfk_2` FOREIGN KEY (`meal_id`) REFERENCES `meal_type` (`meal_id`);

--
-- Constraints for table `chef`
--
ALTER TABLE `chef`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE;

--
-- Constraints for table `choose_chef`
--
ALTER TABLE `choose_chef`
  ADD CONSTRAINT `chef_id_fk` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `episode_id_fk` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE;

--
-- Constraints for table `choose_judge`
--
ALTER TABLE `choose_judge`
  ADD CONSTRAINT `choose_judge_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `choose_judge_ibfk_2` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`) ON UPDATE CASCADE;

--
-- Constraints for table `choose_recipe`
--
ALTER TABLE `choose_recipe`
  ADD CONSTRAINT `choose_recipe_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `choose_recipe_ibfk_2` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE;

--
-- Constraints for table `episode`
--
ALTER TABLE `episode`
  ADD CONSTRAINT `competition_id_fk` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`competition_id`) ON UPDATE CASCADE;

--
-- Constraints for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD CONSTRAINT `ingredient_category_fk` FOREIGN KEY (`category_id`) REFERENCES `food_category` (`category_id`) ON UPDATE CASCADE;

--
-- Constraints for table `nutritionalinfo`
--
ALTER TABLE `nutritionalinfo`
  ADD CONSTRAINT `recipe_info_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE;

--
-- Constraints for table `recipe_chef`
--
ALTER TABLE `recipe_chef`
  ADD CONSTRAINT `recipe_chef_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_chef_ibfk_2` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipe_equipment`
--
ALTER TABLE `recipe_equipment`
  ADD CONSTRAINT `recipe_equipment_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
  ADD CONSTRAINT `recipe_equipment_ibfk_2` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`equipment_id`);

--
-- Constraints for table `recipe_ingredient`
--
ALTER TABLE `recipe_ingredient`
  ADD CONSTRAINT `recipe_ingredient_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_ingredient_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipe_section`
--
ALTER TABLE `recipe_section`
  ADD CONSTRAINT `recipe_id_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
  ADD CONSTRAINT `section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`);

--
-- Constraints for table `recipe_step`
--
ALTER TABLE `recipe_step`
  ADD CONSTRAINT `recipe_step_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_step_ibfk_2` FOREIGN KEY (`step_id`) REFERENCES `step` (`step_id`) ON UPDATE CASCADE;

--
-- Constraints for table `recipe_tag`
--
ALTER TABLE `recipe_tag`
  ADD CONSTRAINT `recipe_tag_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recipe_tips`
--
ALTER TABLE `recipe_tips`
  ADD CONSTRAINT `recipe_tips_ibfk_1` FOREIGN KEY (`tips_id`) REFERENCES `tips` (`tips_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipe_tips_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scoring`
--
ALTER TABLE `scoring`
  ADD CONSTRAINT `scoring_ibfk_1` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scoring_ibfk_2` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
