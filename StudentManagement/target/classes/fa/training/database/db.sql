-- MySQL Script generated by MySQL Workbench
-- Mon May 25 02:24:20 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema student_management
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema student_management
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `student_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `student_management` ;

-- -----------------------------------------------------
-- Table `student_management`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `student_management`.`course` (
  `course_id` VARCHAR(5) NOT NULL,
  `title` VARCHAR(100) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `credit` FLOAT NULL DEFAULT NULL,
  `enrollment` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `student_management`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `student_management`.`student` (
  `student_id` INT(11) NOT NULL,
  `student_name` VARCHAR(100) CHARACTER SET 'utf8' NOT NULL,
  `phone` VARCHAR(11) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NULL DEFAULT NULL,
  `gender` VARCHAR(10) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `gpa` FLOAT NOT NULL,
  `course_id` VARCHAR(5) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  INDEX `fk_student_course_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_course`
    FOREIGN KEY (`course_id`)
    REFERENCES `student_management`.`course` (`course_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
