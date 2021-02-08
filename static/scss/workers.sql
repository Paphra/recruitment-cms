-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2019 at 04:40 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workers`
--

-- --------------------------------------------------------

--
-- Table structure for table `bio_data`
--

DROP TABLE IF EXISTS `bio_data`;
CREATE TABLE IF NOT EXISTS `bio_data` (
  `id_bio_data` int(11) NOT NULL AUTO_INCREMENT,
  `bio_height` float DEFAULT NULL,
  `bio_weight` float DEFAULT NULL,
  `bio_waist` float DEFAULT NULL,
  `bio_chest` float DEFAULT NULL,
  `bio_shoe_size` float DEFAULT NULL,
  `bio_colar` float DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_bio_data`,`clients_id_clients`),
  KEY `fk_bio_data_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `id_branch` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(45) DEFAULT NULL,
  `date_branch_open` date DEFAULT NULL,
  `branch_maneger` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_branch`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id_clients` int(11) NOT NULL AUTO_INCREMENT,
  `c_first_name` varchar(45) NOT NULL,
  `c_last_name` varchar(45) NOT NULL,
  `c_genda` varchar(45) NOT NULL,
  `c_address` varchar(45) NOT NULL,
  `c_phone` varchar(45) NOT NULL,
  `c_reason` varchar(45) NOT NULL,
  `c_category` varchar(20) NOT NULL,
  `c_register_data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `c_branch` varchar(45) NOT NULL,
  `c_job` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
CREATE TABLE IF NOT EXISTS `contract` (
  `id_contract` int(11) NOT NULL AUTO_INCREMENT,
  `contract_status` varchar(10) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_contract`,`clients_id_clients`),
  KEY `fk_contract_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
CREATE TABLE IF NOT EXISTS `destination` (
  `id_destination` int(11) NOT NULL AUTO_INCREMENT,
  `destination_place` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_destination`,`clients_id_clients`),
  KEY `fk_destination_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id_documents` int(11) NOT NULL AUTO_INCREMENT,
  `yello_book` tinyint(1) DEFAULT '0',
  `diso` tinyint(1) DEFAULT '0',
  `visa_medical` tinyint(1) NOT NULL DEFAULT '0',
  `waqalah` tinyint(1) NOT NULL DEFAULT '0',
  `mini_clear_date` date NOT NULL,
  `musaned_aproval` tinyint(1) DEFAULT '0',
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_documents`,`clients_id_clients`),
  KEY `fk_documents_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `edu_id` int(11) NOT NULL,
  `edu_period` date DEFAULT NULL,
  `edu_qualification` varchar(250) DEFAULT NULL,
  `edu_sch` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`edu_id`,`clients_id_clients`),
  KEY `fk_education_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
CREATE TABLE IF NOT EXISTS `employment` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_duration` date DEFAULT NULL,
  `emp_country` varchar(100) DEFAULT NULL,
  `emp_position` varchar(100) DEFAULT NULL,
  `emp_employer` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`,`clients_id_clients`),
  KEY `fk_employment_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `id_expense` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item` varchar(45) DEFAULT NULL,
  `expense_amount` int(20) DEFAULT NULL,
  `expense_spent` varchar(45) DEFAULT NULL,
  `expense_reason` mediumtext,
  PRIMARY KEY (`id_expense`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id_files` int(11) NOT NULL AUTO_INCREMENT,
  `file_no` varchar(45) DEFAULT NULL,
  `file_date_opening` date DEFAULT NULL,
  `file_branch` varchar(45) DEFAULT NULL,
  `filescol` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_files`,`clients_id_clients`),
  UNIQUE KEY `id_files_UNIQUE` (`id_files`),
  UNIQUE KEY `file_no_UNIQUE` (`file_no`),
  KEY `fk_files_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interpol`
--

DROP TABLE IF EXISTS `interpol`;
CREATE TABLE IF NOT EXISTS `interpol` (
  `id_interpol` int(11) NOT NULL AUTO_INCREMENT,
  `submit_date` date DEFAULT NULL,
  `deliver_date` varchar(45) DEFAULT NULL,
  `interpol_status` tinyint(4) DEFAULT '0',
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_interpol`,`clients_id_clients`),
  KEY `fk_interpol_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
CREATE TABLE IF NOT EXISTS `interview` (
  `id_interview` int(11) NOT NULL AUTO_INCREMENT,
  `i_salary` int(20) DEFAULT NULL,
  `i_contract_period` smallint(9) DEFAULT NULL,
  `i_nationality` varchar(45) DEFAULT NULL,
  `i_religion` varchar(45) DEFAULT NULL,
  `i_dob` date DEFAULT NULL,
  `i_place_ob` varchar(45) DEFAULT NULL,
  `i_civil_status` varchar(45) DEFAULT NULL,
  `i_spouse_names` varchar(45) DEFAULT NULL,
  `i_children_no` smallint(6) DEFAULT NULL,
  `i_status` varchar(45) DEFAULT 'pending',
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_interview`,`clients_id_clients`),
  KEY `fk_interview_clients_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `job_order`
--

DROP TABLE IF EXISTS `job_order`;
CREATE TABLE IF NOT EXISTS `job_order` (
  `id_job_order` int(11) NOT NULL AUTO_INCREMENT,
  `job_order_titile` varchar(45) DEFAULT NULL,
  `job_order_quantity` int(20) DEFAULT NULL,
  `job_country` varchar(45) DEFAULT NULL,
  `job_salary` varchar(45) DEFAULT NULL,
  `job_order_status` tinyint(4) DEFAULT '0',
  `job_date` date DEFAULT NULL,
  PRIMARY KEY (`id_job_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_english` varchar(45) DEFAULT NULL,
  `lang_arabic` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`lang_id`,`clients_id_clients`),
  KEY `fk_language_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `next_of_kin`
--

DROP TABLE IF EXISTS `next_of_kin`;
CREATE TABLE IF NOT EXISTS `next_of_kin` (
  `id_next_of_kin` int(11) NOT NULL AUTO_INCREMENT,
  `next_first_name` varchar(45) DEFAULT NULL,
  `next_last_name` varchar(45) DEFAULT NULL,
  `next_contact` int(20) DEFAULT NULL,
  `next_address` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_next_of_kin`,`clients_id_clients`),
  KEY `fk_next_of_kin_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
CREATE TABLE IF NOT EXISTS `partner` (
  `id_partner` int(11) NOT NULL AUTO_INCREMENT,
  `partner_company_name` varchar(45) DEFAULT NULL,
  `partner_company_address` varchar(45) DEFAULT NULL,
  `partner_company_city` varchar(45) DEFAULT NULL,
  `partner_company_phone_number` int(20) DEFAULT NULL,
  `partner_company_email` varchar(45) DEFAULT NULL,
  `partner_agent_name` varchar(45) DEFAULT NULL,
  `partner_agent_email` varchar(45) DEFAULT NULL,
  `partner_agent_phone` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_partner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passports`
--

DROP TABLE IF EXISTS `passports`;
CREATE TABLE IF NOT EXISTS `passports` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_passport_number` varchar(10) NOT NULL,
  `p_nationality` varchar(45) NOT NULL,
  `p_date_birth` date NOT NULL,
  `p_place_birth` varchar(45) NOT NULL,
  `p_date_issue` date DEFAULT NULL,
  `p_expiry_date` date DEFAULT NULL,
  `p_place_issue` varchar(150) DEFAULT NULL,
  `p_count_number` int(11) DEFAULT NULL,
  `p_professional` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`p_id`,`clients_id_clients`),
  KEY `fk_passports_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id_payment` int(11) NOT NULL AUTO_INCREMENT,
  `payment_registration` int(10) DEFAULT NULL,
  `finance_uniform` int(20) DEFAULT NULL,
  `payment_sleepover` int(20) DEFAULT NULL,
  `payment_balance` int(20) DEFAULT NULL,
  `paymentcol` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_payment`,`clients_id_clients`),
  KEY `fk_payment_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publicity_agent`
--

DROP TABLE IF EXISTS `publicity_agent`;
CREATE TABLE IF NOT EXISTS `publicity_agent` (
  `id_publicity` int(11) NOT NULL AUTO_INCREMENT,
  `publicty_company_name` varchar(45) DEFAULT NULL,
  `publicity_contact_person` varchar(45) DEFAULT NULL,
  `publicity_phone` int(20) DEFAULT NULL,
  `publicity_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_publicity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_issue_date` date DEFAULT NULL,
  `ticket_departure_date` date DEFAULT NULL,
  `ticket_arrival_date` date DEFAULT NULL,
  `ticket_issuing_airline` varchar(45) DEFAULT NULL,
  `ticket_checkin` date DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_ticket`,`clients_id_clients`),
  KEY `fk_ticket_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
CREATE TABLE IF NOT EXISTS `training` (
  `id_training` int(11) NOT NULL AUTO_INCREMENT,
  `t_reporting_date` date DEFAULT NULL,
  `t_return_date` date DEFAULT NULL,
  `t_train_name` varchar(45) DEFAULT NULL,
  `t_traing_type` varchar(45) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  `t_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_training`,`clients_id_clients`),
  KEY `fk_training_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
CREATE TABLE IF NOT EXISTS `travel` (
  `id_travel` int(11) NOT NULL AUTO_INCREMENT,
  `travel_liason_officer` varchar(45) DEFAULT NULL,
  `travel_destination_partner` varchar(40) DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_travel`,`clients_id_clients`),
  KEY `fk_travel_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `u_last_name` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `register_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `u_branch` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visa`
--

DROP TABLE IF EXISTS `visa`;
CREATE TABLE IF NOT EXISTS `visa` (
  `id_visa` int(11) NOT NULL,
  `visa_date_received` date DEFAULT NULL,
  `visa_validity` date DEFAULT NULL,
  `clients_id_clients` int(11) NOT NULL,
  PRIMARY KEY (`id_visa`,`clients_id_clients`),
  KEY `fk_visa_clients1_idx` (`clients_id_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bio_data`
--
ALTER TABLE `bio_data`
  ADD CONSTRAINT `fk_bio_data_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `fk_contract_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `destination`
--
ALTER TABLE `destination`
  ADD CONSTRAINT `fk_destination_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `fk_education_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employment`
--
ALTER TABLE `employment`
  ADD CONSTRAINT `fk_employment_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `fk_files_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `interpol`
--
ALTER TABLE `interpol`
  ADD CONSTRAINT `fk_interpol_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `interview`
--
ALTER TABLE `interview`
  ADD CONSTRAINT `fk_interview_clients` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `language`
--
ALTER TABLE `language`
  ADD CONSTRAINT `fk_language_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `next_of_kin`
--
ALTER TABLE `next_of_kin`
  ADD CONSTRAINT `fk_next_of_kin_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `passports`
--
ALTER TABLE `passports`
  ADD CONSTRAINT `fk_passports_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_ticket_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `fk_training_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `fk_travel_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `visa`
--
ALTER TABLE `visa`
  ADD CONSTRAINT `fk_visa_clients1` FOREIGN KEY (`clients_id_clients`) REFERENCES `clients` (`id_clients`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
