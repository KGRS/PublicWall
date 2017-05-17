-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema publicwall
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema publicwall
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `publicwall` DEFAULT CHARACTER SET utf8 ;
USE `publicwall` ;

-- -----------------------------------------------------
-- Table `publicwall`.`countrytable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`countrytable` (
  `logid` INT(11) NOT NULL AUTO_INCREMENT,
  `countryname` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`logid`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `publicwall`.`gender`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`gender` (
  `idgender` INT(11) NOT NULL AUTO_INCREMENT,
  `genderValue` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idgender`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `publicwall`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`users` (
  `idusers` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `birthday` DATE NOT NULL,
  `address` VARCHAR(555) NOT NULL,
  `email` VARCHAR(1005) NOT NULL,
  `photo` BLOB NULL DEFAULT NULL,
  `state` TINYINT(2) NULL DEFAULT NULL,
  `refid` INT(11) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `score` INT(11) NOT NULL DEFAULT '0',
  `countrytable_logid` INT(11) NOT NULL,
  `Gender_idGender` INT(11) NOT NULL,
  PRIMARY KEY (`idusers`),
  INDEX `fk_users_countrytable1_idx` (`countrytable_logid` ASC),
  INDEX `fk_users_Gender1_idx` (`Gender_idGender` ASC),
  CONSTRAINT `fk_users_countrytable1`
    FOREIGN KEY (`countrytable_logid`)
    REFERENCES `publicwall`.`countrytable` (`logid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `publicwall`.`posttable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`posttable` (
  `postid` INT(11) NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(4500) NOT NULL,
  `postdatetime` DATETIME NOT NULL,
  `isactive` INT(11) NOT NULL DEFAULT '1',
  `posttype` TINYINT(2) NOT NULL DEFAULT '1',
  `subject` VARCHAR(255) NOT NULL,
  `idofuser` INT(11) NOT NULL,
  PRIMARY KEY (`postid`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `publicwall`.`numberoflikes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`numberoflikes` (
  `numberoflikes_logid` INT(11) NOT NULL AUTO_INCREMENT,
  `idusers` INT(11) NOT NULL,
  `postid` INT(11) NOT NULL,
  `remarks` VARCHAR(450) NULL DEFAULT NULL,
  PRIMARY KEY (`numberoflikes_logid`),
  INDEX `fk_idusers_idx` (`idusers` ASC),
  INDEX `fkey_postid_idx` (`postid` ASC),
  CONSTRAINT `fkey_idusers`
    FOREIGN KEY (`idusers`)
    REFERENCES `publicwall`.`users` (`idusers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkey_postid`
    FOREIGN KEY (`postid`)
    REFERENCES `publicwall`.`posttable` (`postid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `publicwall`.`postkeywords`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`postkeywords` (
  `postkeywords` VARCHAR(455) NOT NULL,
  `postid` INT(11) NOT NULL,
  `logid` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`logid`),
  INDEX `fk_postid_idx` (`postid` ASC),
  CONSTRAINT `fk_postid`
    FOREIGN KEY (`postid`)
    REFERENCES `publicwall`.`posttable` (`postid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `publicwall`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`role` (
  `roleid` INT(11) NOT NULL,
  `rolediscription` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`roleid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `publicwall`.`userrole`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`userrole` (
  `roleid` INT(11) NOT NULL,
  `idusers` INT(11) NOT NULL,
  `logid` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`logid`),
  UNIQUE INDEX `logid_UNIQUE` (`logid` ASC),
  INDEX `fk_idusers_idx` (`idusers` ASC),
  INDEX `fk_roleid` (`roleid` ASC),
  CONSTRAINT `fk_idusers`
    FOREIGN KEY (`idusers`)
    REFERENCES `publicwall`.`users` (`idusers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_roleid`
    FOREIGN KEY (`roleid`)
    REFERENCES `publicwall`.`role` (`roleid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `publicwall`.`usersandpost`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `publicwall`.`usersandpost` (
  `userspost_logid` INT(11) NOT NULL,
  `userspost_idusers` INT(11) NOT NULL,
  `userspost_postid` INT(11) NOT NULL,
  `comment` VARCHAR(455) NOT NULL,
  `isactive` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`userspost_logid`),
  INDEX `fokey_idusers_idx` (`userspost_idusers` ASC),
  INDEX `fokey_postid_idx` (`userspost_postid` ASC),
  CONSTRAINT `fokey_idusers`
    FOREIGN KEY (`userspost_idusers`)
    REFERENCES `publicwall`.`users` (`idusers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fokey_postid`
    FOREIGN KEY (`userspost_postid`)
    REFERENCES `publicwall`.`posttable` (`postid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
