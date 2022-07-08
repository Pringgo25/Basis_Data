/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.24-MariaDB : Database - db_toko
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_toko` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_toko`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

insert  into `barang`(`id`,`id_barang`,`id_kategori`,`nama_barang`,`merk`,`harga_beli`,`harga_jual`,`satuan_barang`,`stok`,`tgl_input`,`tgl_update`) values 
(1,'BR001',1,'Pensil','Fabel Castel','1500','3000','PCS','101','6 October 2020, 0:41',NULL),
(2,'BR002',5,'Sabun','Lifeboy','1800','3000','PCS','38','6 October 2020, 0:41','6 October 2020, 0:54'),
(3,'BR003',1,'Pulpen','Standard','1500','2000','PCS','68','6 October 2020, 1:34',NULL),
(4,'BR004',7,'Sprite','Sana','10000','12000','PCS','9','15 July 2021, 22:05','15 July 2021, 22:06'),
(6,'BR006',9,'Mouse','Logitech','50000','100000','PCS','100','16 July 2021, 17:45',NULL),
(7,'BR007',8,'ASUS ROG GX501VI-GZ001T - Black','ASUS','50000000','51000000','PCS','5','16 July 2021, 17:47',NULL),
(8,'BR008',10,'HDD Acer 1000GB','ACER','300000','350000','PCS','12','16 July 2021, 17:48',NULL),
(9,'BR009',10,'SSD VGEN 512GB','VGEN','500000','650000','PCS','10','16 July 2021, 17:49',NULL),
(10,'BR010',8,'Acer Aspire 3 A314-32','ACER','4600000','5000000','PCS','10','16 July 2021, 17:50',NULL),
(11,'BR011',11,'SSD VGEN 512GB','VGEN','600000','650001','PCS','18','16 July 2021, 17:52',NULL),
(12,'BR012',11,'HDD Acer 1000GB','ACER','300000','400000','PCS','19','16 July 2021, 17:53',NULL),
(15,'BR013',12,'FD','VGEN','20000','25000','PCS','7','17 July 2011, 6:44',NULL);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`,`tgl_input`) values 
(8,'Laptop','16 July 2021, 17:40'),
(11,'Memori','16 July 2021, 17:52');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id_login`,`user`,`pass`,`id_member`) values 
(1,'admin','21232f297a57a5a743894a0e4a801fc3',1);

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL,
  PRIMARY KEY (`id_member`),
  CONSTRAINT `member_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `login` (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `member` */

insert  into `member`(`id_member`,`nm_member`,`alamat_member`,`telepon`,`email`,`gambar`,`NIK`) values 
(1,'Pringgo Arif Himantoro','Penajam Paser Utara','081234567890','dayatgaming@gmail.com','IMG_6882.jpg','202010370311045');

/*Table structure for table `nota` */

DROP TABLE IF EXISTS `nota`;

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `nota` */

insert  into `nota`(`id_nota`,`id_barang`,`id_member`,`jumlah`,`total`,`tanggal_input`,`periode`) values 
(1,'BR001',1,'4','12000','6 October 2020, 0:45','10-2020'),
(2,'BR001',1,'4','12000','6 October 2020, 0:45','10-2020'),
(3,'BR001',1,'4','12000','6 October 2020, 0:45','10-2020'),
(4,'BR001',1,'4','12000','6 October 2020, 0:45','10-2020'),
(5,'BR001',1,'2','6000','6 October 2020, 0:49','10-2020'),
(6,'BR001',1,'2','6000','6 October 2020, 0:49','10-2020'),
(7,'BR001',1,'2','6000','6 October 2020, 1:15','10-2020'),
(8,'BR002',1,'2','6000','6 October 2020, 1:17','10-2020'),
(9,'BR001',1,'2','6000','6 October 2020, 1:20','10-2020'),
(10,'BR001',1,'2','6000','6 October 2020, 1:51','07-2021'),
(11,'BR003',1,'1','2000','14 July 2021, 18:13','07-2021'),
(12,'BR003',1,'1','2000','14 July 2021, 23:42','07-2021'),
(13,'BR004',1,'1','12000','15 July 2021, 22:07','07-2021'),
(14,'BR004',1,'2','24000','15 July 2021, 22:07','07-2021'),
(15,'BR012',1,'1','400000','16 July 2021, 17:54','07-2021'),
(16,'BR011',1,'1','650001','16 July 2021, 17:54','07-2021'),
(17,'BR011',1,'1','650001','16 July 2021, 18:17','07-2021'),
(18,'BR010',1,'1','5000000','16 July 2021, 18:17','07-2021'),
(19,'BR012',1,'2','800000','17 July 2011, 6:46','07-2011'),
(20,'BR010',1,'1','5000000','17 July 2011, 6:46','07-2011'),
(21,'BR012',1,'1','400000','20 November 2021, 21:29','11-2021'),
(22,'BR012',1,'1','400000','20 November 2021, 21:50','11-2021');

/*Table structure for table `penjualan` */

DROP TABLE IF EXISTS `penjualan`;

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `penjualan` */

insert  into `penjualan`(`id_penjualan`,`id_barang`,`id_member`,`jumlah`,`total`,`tanggal_input`) values 
(38,'BR012',1,'1','400000','20 November 2021, 21:50');

/*Table structure for table `toko` */

DROP TABLE IF EXISTS `toko`;

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  PRIMARY KEY (`id_toko`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `toko` */

insert  into `toko`(`id_toko`,`nama_toko`,`alamat_toko`,`tlp`,`nama_pemilik`) values 
(1,'GOGO COMPUTER','','','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
