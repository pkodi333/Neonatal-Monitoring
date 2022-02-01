/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.5.30 : Database - onlinebanking
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlinebanking` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlinebanking`;

/*Table structure for table `bankemp` */

DROP TABLE IF EXISTS `bankemp`;

CREATE TABLE `bankemp` (
  `name` varchar(500) DEFAULT NULL,
  `unm` varchar(500) DEFAULT NULL,
  `pwd` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mno` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `token` varchar(500) DEFAULT NULL,
  `qry` varchar(1000) DEFAULT NULL,
  `unm` varchar(500) DEFAULT NULL,
  `ccexectr` varchar(500) DEFAULT NULL,
  `ansr` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `creditbills` */

DROP TABLE IF EXISTS `creditbills`;

CREATE TABLE `creditbills` (
  `acnt` varchar(500) DEFAULT NULL,
  `bill` varchar(500) DEFAULT NULL,
  `paid` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `custmrcare` */

DROP TABLE IF EXISTS `custmrcare`;

CREATE TABLE `custmrcare` (
  `name` varchar(500) DEFAULT NULL,
  `unm` varchar(500) DEFAULT NULL,
  `pwd` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mno` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `acno` varchar(500) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mno` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `state` varchar(500) DEFAULT NULL,
  `adrs` varchar(500) DEFAULT NULL,
  `balance` varchar(500) DEFAULT NULL,
  `dtacnt` varchar(500) DEFAULT NULL,
  `acnttype` varchar(500) DEFAULT NULL,
  `unm` varchar(500) DEFAULT NULL,
  `pwd` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`acno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `fundtransfer` */

DROP TABLE IF EXISTS `fundtransfer`;

CREATE TABLE `fundtransfer` (
  `frmacnt` varchar(500) DEFAULT NULL,
  `toacnt` varchar(500) DEFAULT NULL,
  `amnt` varchar(500) DEFAULT NULL,
  `dt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `queries` */

DROP TABLE IF EXISTS `queries`;

CREATE TABLE `queries` (
  `token` varchar(500) DEFAULT NULL,
  `query` varchar(1000) DEFAULT NULL,
  `unm` varchar(500) DEFAULT NULL,
  `ccexectr` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `teamleader` */

DROP TABLE IF EXISTS `teamleader`;

CREATE TABLE `teamleader` (
  `name` varchar(500) DEFAULT NULL,
  `unm` varchar(500) DEFAULT NULL,
  `pwd` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mno` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
