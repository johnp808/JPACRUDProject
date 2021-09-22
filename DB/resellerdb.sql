-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema reselldb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `reselldb` ;

-- -----------------------------------------------------
-- Schema reselldb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `reselldb` DEFAULT CHARACTER SET utf8 ;
USE `reselldb` ;

-- -----------------------------------------------------
-- Table `reseller`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reseller` ;

CREATE TABLE IF NOT EXISTS `reseller` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `shoes_sold` INT NULL,
  `starting_budget` DOUBLE NULL,
  `comic_books_sold` INT NULL,
  `hats_sold` INT NULL,
  `profits_made` DOUBLE NULL,
  `seller_user_name` VARCHAR(50) NOT NULL,
  `profile_picture` VARCHAR(4000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS reselluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'reselluser'@'localhost' IDENTIFIED BY 'reselluser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'reselluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `reseller`
-- -----------------------------------------------------
START TRANSACTION;
USE `reselldb`;
INSERT INTO `reseller` (`id`, `shoes_sold`, `starting_budget`, `comic_books_sold`, `hats_sold`, `profits_made`, `seller_user_name`, `profile_picture`) VALUES (1, 29, 4000, 0, 0, 1450, 'DylanHoneyCombxx', 'https://lh3.googleusercontent.com/GUT5WsaGy7mU7cX5VzujJbFFqD16X82sd7ARmrbB17TkUe0sccXy6lgyOl6HbBzkS8Zz1-bNnejIQvXhdlUNHd-0GRFysZgT29QyVg=s0');
INSERT INTO `reseller` (`id`, `shoes_sold`, `starting_budget`, `comic_books_sold`, `hats_sold`, `profits_made`, `seller_user_name`, `profile_picture`) VALUES (2, 700, 10000, 5, 3, 33732, 'Uzidontbrick', 'https://lh3.googleusercontent.com/6VOem5bP9NKAItaZd9BJCw0L2t8D3WV4YJir0AQD7xvnOX-tnrCCjrv8nz_-fjgFH4f1XYAgDF6sLHmNI__qNp01Ih_Y_eWFq7T2N-8=s0');
INSERT INTO `reseller` (`id`, `shoes_sold`, `starting_budget`, `comic_books_sold`, `hats_sold`, `profits_made`, `seller_user_name`, `profile_picture`) VALUES (3, 3, 400, NULL, NULL, 60, 'MarkBolivian', 'https://lh3.googleusercontent.com/gE0MkffwiFPcIM9mI2QINvPRVEINTL1yr_4He60p7KxKQlRaHQgc6xlCmJvMjM_OI4Zj53CEcg1jgmo1t5uLsJ5bTPJVfcpz7fyy7w=s0');
INSERT INTO `reseller` (`id`, `shoes_sold`, `starting_budget`, `comic_books_sold`, `hats_sold`, `profits_made`, `seller_user_name`, `profile_picture`) VALUES (4, NULL, 4500, 205, NULL, 8000, 'HammahDane', 'https://lh3.googleusercontent.com/8yctTPb-83tXO77_7zP41xZkQm4UN8AHGi2no6ZzPeJi_bgX9OrIAK7uszDuyF3werw1BYpQRN2UvJ9qLxJ2p4iJMgPfjili3R8aXA=s0');
INSERT INTO `reseller` (`id`, `shoes_sold`, `starting_budget`, `comic_books_sold`, `hats_sold`, `profits_made`, `seller_user_name`, `profile_picture`) VALUES (5, NULL, 1300, NULL, 36, -360, 'AcePac', 'https://lh3.googleusercontent.com/yTNNxZ4sl2zLchWC0JyjuLheyBXhlmydamWZsoq33p9psN3tUNYta9AqmmLt09UPy5MJy_6Oq0Y-GKNLq4C1_vFZ3eeRvNVSFe9T5Q=s0');

COMMIT;

