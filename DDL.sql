DROP TABLE IF EXISTS `admin`;
DROP TABLE IF EXISTS `belongs`;
DROP TABLE IF EXISTS `chef`;
DROP TABLE IF EXISTS `choose_chef`;
DROP TABLE IF EXISTS `choose_judge`;
DROP TABLE IF EXISTS `choose_recipe`;
DROP TABLE IF EXISTS `competition`;
DROP TABLE IF EXISTS `episode`;
DROP TABLE IF EXISTS `equipment`;
DROP TABLE IF EXISTS `food_category`;
DROP TABLE IF EXISTS `ingredient`;
DROP TABLE IF EXISTS `judge`;
DROP TABLE IF EXISTS `meal_type`;
DROP TABLE IF EXISTS `nutritionalinfo`;
DROP TABLE IF EXISTS `recipe`;
DROP TABLE IF EXISTS `recipe_chef`;
DROP TABLE IF EXISTS `recipe_equipment`;
DROP TABLE IF EXISTS `recipe_ingredient`;
DROP TABLE IF EXISTS `recipe_section`;
DROP TABLE IF EXISTS `recipe_step`;
DROP TABLE IF EXISTS `recipe_tag`;
DROP TABLE IF EXISTS `recipe_tips`;
DROP TABLE IF EXISTS `scoring`;
DROP TABLE IF EXISTS `section`;
DROP TABLE IF EXISTS `step`;
DROP TABLE IF EXISTS `tag`;
DROP TABLE IF EXISTS `tips`;
DROP TABLE IF EXISTS `user`;

DROP VIEW IF EXISTS `chefparticipation`;
DROP VIEW IF EXISTS `consecutivecompetitions`;
DROP VIEW IF EXISTS `cuisineparticipations`;
DROP VIEW IF EXISTS `judgeparticipation`;
DROP VIEW IF EXISTS `judgescores`;
DROP VIEW IF EXISTS `maxparticipation`;
DROP VIEW IF EXISTS `participationcount`;
DROP VIEW IF EXISTS `topjudgescores`;

DROP PROCEDURE IF EXISTS `InsertChefs`;
DROP PROCEDURE IF EXISTS `InsertJudges`;
DROP PROCEDURE IF EXISTS `InsertRecipes`;

CREATE TABLE `admin` (
 `admin_id` int(11) NOT NULL,
 `user_id` int(11) NOT NULL,
 PRIMARY KEY (`admin_id`),
 KEY `user_id` (`user_id`),
 CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `belongs` (
 `recipe_id` int(11) NOT NULL,
 `meal_id` int(11) NOT NULL,
 PRIMARY KEY (`recipe_id`,`meal_id`),
 KEY `meal_id` (`meal_id`),
 CONSTRAINT `belongs_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE,
 CONSTRAINT `belongs_ibfk_2` FOREIGN KEY (`meal_id`) REFERENCES `meal_type` (`meal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `chef` (
 `chef_id` int(11) NOT NULL,
 `first_name` varchar(45) NOT NULL,
 `last_name` varchar(45) NOT NULL,
 `contact_number` varchar(10) NOT NULL,
 `birth_date` date NOT NULL,
 `age` int(11) NOT NULL,
 `experience` varchar(25) NOT NULL,
 `specialization` varchar(25) NOT NULL,
 `training` text NOT NULL,
 `user_id` int(11) NOT NULL,
 `image` int(11) NOT NULL,
 PRIMARY KEY (`chef_id`),
 KEY `user_id_fk` (`user_id`),
 CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `choose_chef` (
 `choose_chef_id` int(11) NOT NULL AUTO_INCREMENT,
 `episode_id` int(11) NOT NULL,
 `chef_id` int(11) NOT NULL,
 PRIMARY KEY (`choose_chef_id`),
 KEY `chef_id_fk` (`chef_id`),
 KEY `episode_id` (`episode_id`),
 CONSTRAINT `chef_id_fk` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON UPDATE CASCADE,
 CONSTRAINT `episode_id_fk` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6437 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

 
CREATE TABLE `choose_judge` (
 `choose_judge_id` int(11) NOT NULL AUTO_INCREMENT,
 `episode_id` int(11) NOT NULL,
 `judge_id` int(11) NOT NULL,
 PRIMARY KEY (`choose_judge_id`),
 KEY `judge_id` (`judge_id`),
 KEY `judge_id_2` (`judge_id`),
 KEY `episode_id` (`episode_id`),
 CONSTRAINT `choose_judge_ibfk_1` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE,
 CONSTRAINT `choose_judge_ibfk_2` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=718 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `choose_recipe` (
 `choose_recipe_id` int(11) NOT NULL AUTO_INCREMENT,
 `episode_id` int(11) NOT NULL,
 `recipe_id` int(11) NOT NULL,
 PRIMARY KEY (`choose_recipe_id`),
 KEY `episode_id` (`episode_id`),
 KEY `recipe_id` (`recipe_id`),
 CONSTRAINT `choose_recipe_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE,
 CONSTRAINT `choose_recipe_ibfk_2` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=993 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `competition` (
 `competition_id` int(11) NOT NULL,
 `number_of_episodes` int(2) NOT NULL,
 `year` year(4) NOT NULL,
 PRIMARY KEY (`competition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `episode` (
 `episode_id` int(11) NOT NULL,
 `competition_id` int(11) NOT NULL,
 `number` int(11) NOT NULL,
 `date` date NOT NULL,
 PRIMARY KEY (`episode_id`),
 KEY `competition_id_fk` (`competition_id`),
 CONSTRAINT `competition_id_fk` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`competition_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `equipment` (
 `equipment_id` int(11) NOT NULL,
 `name` varchar(45) NOT NULL,
 `instruction` text NOT NULL,
 PRIMARY KEY (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `food_category` (
 `category_id` int(11) NOT NULL,
 `name` varchar(45) NOT NULL,
 `description` text NOT NULL,
 PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `ingredient` (
 `ingredient_id` int(11) NOT NULL,
 `name` varchar(45) NOT NULL,
 `category_id` int(11) NOT NULL,
 `image` int(11) NOT NULL,
 PRIMARY KEY (`ingredient_id`),
 KEY `ingredient_category_fk` (`category_id`),
 CONSTRAINT `ingredient_category_fk` FOREIGN KEY (`category_id`) REFERENCES `food_category` (`category_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `judge` (
 `judge_id` int(11) NOT NULL,
 `first_name` varchar(45) NOT NULL,
 `last_name` varchar(45) NOT NULL,
 `image` int(11) NOT NULL,
 PRIMARY KEY (`judge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `meal_type` (
 `meal_id` int(11) NOT NULL,
 `name` varchar(45) NOT NULL,
 PRIMARY KEY (`meal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `nutritionalinfo` (
 `nutritional_id` int(11) NOT NULL,
 `recipe_id` int(11) NOT NULL,
 `fat_per_seving` int(11) NOT NULL,
 `protein_per_serving` int(11) NOT NULL,
 `carbohydrates_per_serving` int(11) NOT NULL,
 `calories_per_serving` int(11) NOT NULL,
 PRIMARY KEY (`nutritional_id`),
 KEY `recipe_info_fk` (`recipe_id`),
 CONSTRAINT `recipe_info_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `recipe` (
 `recipe_id` int(11) NOT NULL,
 `name` varchar(45) NOT NULL,
 `description` text NOT NULL,
 `type` varchar(45) NOT NULL,
 `primary_ingredient` text NOT NULL,
 `difficulty_rating` int(11) NOT NULL,
 `prep_time` int(11) NOT NULL,
 `bake_time` int(11) NOT NULL,
 `national_cuisine` varchar(45) NOT NULL,
 `image` int(11) NOT NULL,
 `image_description` text NOT NULL,
 `quantity_portions` int(11) NOT NULL,
 PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `recipe_chef` (
 `recipe_chef_id` int(11) NOT NULL AUTO_INCREMENT,
 `episode_id` int(11) NOT NULL,
 `chef_id` int(11) NOT NULL,
 `recipe_id` int(11) NOT NULL,
 PRIMARY KEY (`recipe_chef_id`),
 KEY `episode_id` (`episode_id`),
 KEY `recipe_id` (`recipe_id`),
 KEY `chef_id` (`chef_id`),
 CONSTRAINT `chef_id` FOREIGN KEY (`chef_id`) REFERENCES `chef` (`chef_id`) ON UPDATE CASCADE,
 CONSTRAINT `episode_id` FOREIGN KEY (`episode_id`) REFERENCES `episode` (`episode_id`) ON UPDATE CASCADE,
 CONSTRAINT `recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `recipe_equipment` (
 `recipe_id` int(11) NOT NULL,
 `equipment_id` int(11) NOT NULL,
 PRIMARY KEY (`recipe_id`,`equipment_id`),
 KEY `recipe_equipment_ibfk_2` (`equipment_id`),
 CONSTRAINT `recipe_equipment_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
 CONSTRAINT `recipe_equipment_ibfk_2` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `recipe_ingredient` (
 `recipe_id` int(11) NOT NULL,
 `ingredient_id` int(11) NOT NULL,
 PRIMARY KEY (`recipe_id`,`ingredient_id`),
 KEY `ingredient_id` (`ingredient_id`),
 CONSTRAINT `recipe_ingredient_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT `recipe_ingredient_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`ingredient_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `recipe_section` (
 `recipe_id` int(11) NOT NULL,
 `section_id` int(11) NOT NULL,
 PRIMARY KEY (`recipe_id`,`section_id`),
 KEY `section_id` (`section_id`),
 CONSTRAINT `recipe_id_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
 CONSTRAINT `section_id` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `recipe_step` (
 `recipe_id` int(11) NOT NULL,
 `step_id` int(11) NOT NULL,
 PRIMARY KEY (`recipe_id`,`step_id`),
 KEY `step_id_fk` (`step_id`),
 CONSTRAINT `recipe_step_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON UPDATE CASCADE,
 CONSTRAINT `recipe_step_ibfk_2` FOREIGN KEY (`step_id`) REFERENCES `step` (`step_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `recipe_tag` (
 `recipe_id` int(11) NOT NULL,
 `tag_id` int(11) NOT NULL,
 PRIMARY KEY (`recipe_id`,`tag_id`),
 KEY `tag_id` (`tag_id`),
 CONSTRAINT `recipe_tag_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT `recipe_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `recipe_tips` (
 `recipe_id` int(11) NOT NULL,
 `tips_id` int(11) NOT NULL,
 PRIMARY KEY (`recipe_id`,`tips_id`),
 KEY `tips_id` (`tips_id`),
 CONSTRAINT `recipe_tips_ibfk_1` FOREIGN KEY (`tips_id`) REFERENCES `tips` (`tips_id`) ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT `recipe_tips_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `scoring` (
 `scoring_id` int(11) NOT NULL AUTO_INCREMENT,
 `recipe_chef_id` int(11) NOT NULL,
 `judge_id` int(11) NOT NULL,
 `score` int(11) NOT NULL,
 PRIMARY KEY (`scoring_id`),
 KEY `judge_id` (`judge_id`),
 KEY `recipe_chef_id` (`recipe_chef_id`),
 CONSTRAINT `scoring_ibfk_1` FOREIGN KEY (`recipe_chef_id`) REFERENCES `recipe_chef` (`recipe_chef_id`) ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT `scoring_ibfk_2` FOREIGN KEY (`judge_id`) REFERENCES `judge` (`judge_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4096 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `section` (
 `section_id` int(11) NOT NULL,
 `name` varchar(45) NOT NULL,
 `description` text NOT NULL,
 PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `step` (
 `step_id` int(11) NOT NULL,
 `description` text NOT NULL,
 PRIMARY KEY (`step_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `tag` (
 `tag_id` int(11) NOT NULL,
 `description` text NOT NULL,
 PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `tips` (
 `tips_id` int(11) NOT NULL,
 `description` text NOT NULL,
 PRIMARY KEY (`tips_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


CREATE TABLE `user` (
 `user_id` int(11) NOT NULL,
 `username` varchar(15) NOT NULL,
 `password` varchar(15) NOT NULL,
 `type` varchar(11) NOT NULL,
 PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci


DELIMITER $$
--
-- Διαδικασίες
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertChefs` ()   BEGIN
    DECLARE episode INT DEFAULT 1;
    DECLARE last_episode INT DEFAULT 80;
    
    WHILE episode <= last_episode DO
        INSERT INTO choose_chef (chef_id, episode_id)
        SELECT chef_id, episode
        FROM (
            SELECT chef_id, ROW_NUMBER() OVER (PARTITION BY specialization ORDER BY RAND()) AS row_num
            FROM chef
            WHERE chef_id NOT IN (
                SELECT chef_id
                FROM choose_chef
                WHERE episode_id BETWEEN episode - 2 AND episode
            )
        ) AS ranked
        WHERE row_num = 1
        LIMIT 10;
        
        SET episode = episode + 1;
    END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertJudges` ()   BEGIN
    DECLARE episode INT DEFAULT 1;
    DECLARE last_episode INT DEFAULT 80;
    
    WHILE episode <= last_episode DO
        INSERT INTO choose_judge (judge_id, episode_id)
        SELECT judge_id, episode
        FROM (
            SELECT judge_id, ROW_NUMBER() OVER (ORDER BY RAND()) AS row_num
            FROM judge
            WHERE judge_id NOT IN (
                SELECT judge_id
                FROM choose_judge
                WHERE episode_id BETWEEN episode - 2 AND episode
            )
        ) AS ranked
        WHERE row_num <= 3
        LIMIT 3;
        
        SET episode = episode + 1;
    END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertRecipes` ()   BEGIN
    DECLARE episode INT DEFAULT 1;
    DECLARE last_episode INT DEFAULT 80;
    
    WHILE episode <= last_episode DO
        INSERT INTO choose_recipe (recipe_id, episode_id)
        SELECT recipe_id, episode
        FROM (
            SELECT recipe_id, ROW_NUMBER() OVER (PARTITION BY national_cuisine ORDER BY RAND()) AS row_num
            FROM recipe
            WHERE recipe_id NOT IN (
                SELECT recipe_id
                FROM choose_recipe
                WHERE episode_id BETWEEN episode - 2 AND episode
            )
        ) AS ranked
        WHERE row_num = 1
        LIMIT 10;
        
        SET episode = episode + 1;
    END WHILE;
END$$

DELIMITER ;


