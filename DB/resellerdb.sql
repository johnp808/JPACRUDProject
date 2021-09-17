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
  `shoe_count` INT NULL,
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
