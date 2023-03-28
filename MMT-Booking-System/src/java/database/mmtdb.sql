DROP SCHEMA IF EXISTS `mmtdb`;
CREATE SCHEMA IF NOT EXISTS `mmtdb` DEFAULT CHARACTER SET latin1;
USE `mmtdb`;

-- -----------------------------------------------------
-- Table `mmtdb`.`service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmtdb`.`service` (
  `service_id` INT(11) NOT NULL AUTO_INCREMENT,
  `service_type` VARCHAR(40) NOT NULL,
  `service_desc` VARCHAR(200) NOT NULL,
  `service_cost` DOUBLE NOT NULL,
  PRIMARY KEY (`service_id`));


-- -----------------------------------------------------
-- Table `mmtdb`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmtdb`.`role` (
  `role_id` INT(11) NOT NULL,
  `role_name` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`role_id`));

-- -----------------------------------------------------
-- Table `mmtdb`.`emergency_contact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmtdb`.`emergency_contact` (
  `ec_name` VARCHAR(40) NOT NULL,
  `ec_phone` VARCHAR(10) NOT NULL,
  `ec_email` VARCHAR(40),
  PRIMARY KEY (`ec_name`));

-- -----------------------------------------------------
-- Table `mmtdb`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmtdb`.`account` (
  `full_name` VARCHAR(20) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  `active` TINYINT(1) NOT NULL DEFAULT '1',
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(30) NOT NULL,
  `phone` VARCHAR(10) NOT NULL,
  `role` INT(11) NOT NULL,
  `birthdate` DATE,
  `address` VARCHAR(50) NOT NULL,
  `ec_contact` VARCHAR(40),
  `medical_info` VARCHAR(100),
  PRIMARY KEY (`username`),
  CONSTRAINT `fk_account_role`
    FOREIGN KEY (`role`)
    REFERENCES `mmtdb`.`role` (`role_id`),
  CONSTRAINT `fk_account_ec`
    FOREIGN KEY (`ec_contact`)
    REFERENCES `mmtdb`.`emergency_contact` (`ec_name`));

-- -----------------------------------------------------
-- Table `mmtdb`.`appointment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmtdb`.`appointment` (
  `appointment_id` INT(11) NOT NULL AUTO_INCREMENT,
  `account` VARCHAR(20) NOT NULL,
  `service` INT(11) NOT NULL,
  `appointment_address` VARCHAR(50) NOT NULL,
  `appointment_date` DATE NOT NULL,
  `start_time` TIME NOT NULL,
  `end_time` TIME NOT NULL,
  `status` BOOLEAN NOT NULL,
  `additional_info` VARCHAR(100),
  PRIMARY KEY (`appointment_id`),
  CONSTRAINT `fk_appointment_account`
    FOREIGN KEY (`account`)
    REFERENCES `mmtdb`.`account` (`username`),
  CONSTRAINT `fk_appointment_service`
    FOREIGN KEY (`service`)
    REFERENCES `mmtdb`.`service` (`service_id`));

-- ------------
-- CREATE ROLES
-- ------------
INSERT INTO `role` VALUES (1, 'administrator');
INSERT INTO `role` VALUES (2, 'client');

INSERT INTO `service` (`service_type`,`service_desc`,`service_cost`)
  VALUES ('Service Options','Service placeholder',0.00);
INSERT INTO `service` (`service_type`,`service_desc`,`service_cost`)
  VALUES ('Therapeutic Massage','A therapeutic massage is a type of massage that aims to relieve pain, reduce stress, and improve physical and mental well-being.',0.00);
INSERT INTO `service` (`service_type`,`service_desc`,`service_cost`)
  VALUES ('Deep Tissue Massage','A deep tissue massage is a type of massage therapy that focuses on realigning deeper layers of muscles and connective tissue.',0.00);
INSERT INTO `service` (`service_type`,`service_desc`,`service_cost`)
  VALUES ('Relaxation Massage','A relaxation massage, also known as a Swedish massage, is a type of therapeutic massage designed to promote overall relaxation and well-being.',0.00);
INSERT INTO `service` (`service_type`,`service_desc`,`service_cost`)
  VALUES ('Lymphatic Massage','Lymphatic massage is a therapeutic massage technique that focuses on the network of vessels and tissues in the body responsible for filtering waste and excess fluids from the tissues',0.00);
INSERT INTO `service` (`service_type`,`service_desc`,`service_cost`)
  VALUES ('Hot Stone Massage','Hot stone massage is a type of massage therapy that uses smooth, heated stones, usually made of basalt, a type of volcanic rock that retains heat well.',0.00);
INSERT INTO `service` (`service_type`,`service_desc`,`service_cost`)
  VALUES ('Cupping','Cupping is a traditional Chinese therapy that involves placing suction cups on the skin to create a vacuum effect.',0.00);
INSERT INTO `service` (`service_type`,`service_desc`,`service_cost`)
  VALUES ('Facial','A facial is a cosmetic treatment for the face that is designed to cleanse, exfoliate, and nourish the skin.',0.00);

INSERT INTO `emergency_contact` (`ec_name`, `ec_phone`, `ec_email`)
    VALUES ('Bobby Vance', '9998887777', 'Bobby@gmail.com');

INSERT INTO `account` (`full_name`, `email`, `active` ,`username`, `password`, `phone`, `role`, `birthdate`, `address`, `ec_contact`)
  VALUES ('bob vance', 'bob@gmail.com', true, 'bob', 'password', '4037779999', 2, '1997-03-25', '808 Sumwhere St Bobtown, BOB', 'Bobby Vance');
INSERT INTO `account` (`full_name`, `email`, `active` ,`username`, `password`, `role`, `phone`, `address`)
  VALUES ('admin one', 'admin@gmail.com', true,'admin', 'password', 1, '1110002222', '58 Fredson Dr SE Calgary, AB T2H 1E1');