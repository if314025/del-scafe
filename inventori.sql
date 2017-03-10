/*
SQLyog Ultimate v8.6 Beta2
MySQL - 5.5.5-10.1.9-MariaDB : Database - inventori
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inventori` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `inventori`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id_account` int(64) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(64) NOT NULL,
  `Nik` varchar(64) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Username` varchar(64) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `role` int(64) NOT NULL,
  PRIMARY KEY (`id_account`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`id_account`,`Nama`,`Nik`,`Email`,`Username`,`Password`,`role`) values (1,'Okta Nainggolan','11314025','if314025@students.del.ac.id','if314025','if314025',3),(2,'Ridho Tampubolon','11314007','if314007@students.del.ac.id','if314007','if314007',1),(3,'Yessi','11314031','if314031@students.del.ac.id','if314031','if314031',1),(4,'Desi Sihombing','11314016','11314016@students.del.ac.id','if314016','if314016',3);

/*Table structure for table `daftar_barang` */

DROP TABLE IF EXISTS `daftar_barang`;

CREATE TABLE `daftar_barang` (
  `id_barang` int(64) NOT NULL AUTO_INCREMENT,
  `Nama_Barang` varchar(64) DEFAULT NULL,
  `Jenis_Barang` varchar(128) DEFAULT NULL,
  `Jumlah_Barang` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `daftar_barang` */

insert  into `daftar_barang`(`id_barang`,`Nama_Barang`,`Jenis_Barang`,`Jumlah_Barang`) values (1,'Pulpen','Alat Tulis','3'),(2,'Buku Tulis','Alat Tulis','4'),(3,'Tinta Printer','Kebutuhan Printer','4'),(5,'Sapu','Alat Kebersihan','10'),(6,'Ekstensi 4 Cabang','Elektronik','11'),(7,'Ekstensi 3 Cabang','Elektronik','20'),(8,'Mouse','Elektronik','20'),(9,'Keyboard','Elektornik','25'),(10,'Kertas A4','Perlengkapan Tulis','12');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id_role` int(64) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`id_role`,`deskripsi`) values (1,'member'),(3,'admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
