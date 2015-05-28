CREATE DATABASE  IF NOT EXISTS `smile` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `smile`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: smile
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Temporary table structure for view `data_jadwal`
--

DROP TABLE IF EXISTS `data_jadwal`;
/*!50001 DROP VIEW IF EXISTS `data_jadwal`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_jadwal` (
  `id_kereta` int(11),
  `nm_kereta` varchar(25),
  `nm_kelas` varchar(25),
  `tanggal` date,
  `jam_berangkat` time,
  `kota_asal` varchar(25),
  `kota_tujuan` varchar(25),
  `stasiun_asal` varchar(25),
  `stasiun_tujuan` varchar(25),
  `harga_jurusan` decimal(20,0),
  `harga_kelas` decimal(20,0),
  `keterangan` varchar(10)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_jurusan_dan_kelas`
--

DROP TABLE IF EXISTS `data_jurusan_dan_kelas`;
/*!50001 DROP VIEW IF EXISTS `data_jurusan_dan_kelas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_jurusan_dan_kelas` (
  `kota_asal` varchar(25),
  `kota_tujuan` varchar(25),
  `stasiun_asal` varchar(25),
  `stasiun_tujuan` varchar(25),
  `nm_kelas` varchar(25),
  `harga_jurusan` decimal(20,0),
  `harga_kelas` decimal(20,0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_kelas`
--

DROP TABLE IF EXISTS `data_kelas`;
/*!50001 DROP VIEW IF EXISTS `data_kelas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_kelas` (
  `id_kelas` int(11),
  `nm_kelas` varchar(25),
  `harga_kelas` decimal(20,0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_reservasi_by_jurusan`
--

DROP TABLE IF EXISTS `data_reservasi_by_jurusan`;
/*!50001 DROP VIEW IF EXISTS `data_reservasi_by_jurusan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_reservasi_by_jurusan` (
  `id_kereta` int(11),
  `nm_kereta` varchar(25),
  `nm_reservasi` varchar(25),
  `nm_kelas` varchar(25),
  `tanggal` date,
  `jam_berangkat` time,
  `stasiun_asal` varchar(25),
  `stasiun_tujuan` varchar(25)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `data_reservasi_by_tanggal_dan_pesanan`
--

DROP TABLE IF EXISTS `data_reservasi_by_tanggal_dan_pesanan`;
/*!50001 DROP VIEW IF EXISTS `data_reservasi_by_tanggal_dan_pesanan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `data_reservasi_by_tanggal_dan_pesanan` (
  `id_kereta` int(11),
  `nm_kereta` varchar(25),
  `nm_reservasi` varchar(25),
  `alamat_nya` varchar(25),
  `telp_nya` int(20),
  `dewasa` int(11),
  `anak` int(11),
  `nm_kelas` varchar(25),
  `tanggal` date,
  `jam_berangkat` time
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `detail_pemesanan`
--

DROP TABLE IF EXISTS `detail_pemesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_pemesanan` (
  `KTP_KK` int(11) NOT NULL,
  `ID_RESERVASI` int(11) default NULL,
  `NM_PEMESAN` varchar(25) collate latin1_general_ci default NULL,
  `TELP` decimal(15,0) default NULL,
  PRIMARY KEY  (`KTP_KK`),
  UNIQUE KEY `DETAIL_PEMESANAN_PK` (`KTP_KK`),
  KEY `ADA_DETAILPEMESANAN_FK` (`ID_RESERVASI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_pemesanan`
--

LOCK TABLES `detail_pemesanan` WRITE;
/*!40000 ALTER TABLE `detail_pemesanan` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_pemesanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal` (
  `ID_JADWAL` int(11) NOT NULL,
  `TANGGAL` date default NULL,
  `JAM_BERANGKAT` time default NULL,
  `JAM_TIBA` time default NULL,
  `KETERANGAN` varchar(10) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID_JADWAL`),
  UNIQUE KEY `JADWAL_PK` (`ID_JADWAL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal`
--

LOCK TABLES `jadwal` WRITE;
/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
INSERT INTO `jadwal` VALUES (1,'2015-07-01','07:00:00',NULL,'pagi'),(2,'2015-07-01','09:00:00',NULL,'pagi'),(3,'2015-07-01','12:00:00',NULL,'siang'),(4,'2015-07-01','13:00:00',NULL,'siang'),(5,'2015-07-02','05:00:00',NULL,'pagi'),(6,'2015-07-02','07:00:00',NULL,'pagi'),(7,'2015-07-02','15:00:00',NULL,'sore'),(9,'2015-07-02','18:00:00',NULL,'malam'),(10,'2015-07-02','19:00:00',NULL,'malam'),(11,'2015-07-03','05:00:00',NULL,'pagi'),(13,'2015-07-03','12:00:00',NULL,'siang'),(14,'2015-07-03','15:00:00',NULL,'sore'),(15,'2015-07-03','18:00:00',NULL,'malam');
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `ID_JURUSAN` int(11) NOT NULL,
  `KOTA_ASAL` varchar(25) collate latin1_general_ci default NULL,
  `KOTA_TUJUAN` varchar(25) collate latin1_general_ci default NULL,
  `STASIUN_ASAL` varchar(25) collate latin1_general_ci default NULL,
  `STASIUN_TUJUAN` varchar(25) collate latin1_general_ci default NULL,
  `HARGA_JURUSAN` decimal(20,0) default NULL,
  `Jumlah_Jurusan` int(11) NOT NULL,
  PRIMARY KEY  (`ID_JURUSAN`),
  UNIQUE KEY `JURUSAN_PK` (`ID_JURUSAN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES (1,'Mojokerto','Surabaya','Mojokerto','Surabaya Pasar- Turi',50000,0),(2,'Mojokerto','Surabaya','Mojokerto','Surabaya Wonokromo',45000,0),(3,'Mojokerto','Jombang','Mojokerto','Jombang',45000,0),(4,'Surabaya','Mojokerto','Surabaya Pasar- Turi','Mojokerto',50000,0),(5,'Surabaya','Jombang','Surabaya Wonokromo','Jombang',50000,0),(6,'Surabaya','Banyuwangi','Surabaya Wonokromo','Kalibaru',100000,0),(7,'Surabaya','Banyuwangi','Surabaya Pasar- Turi','Rogojampi',100000,0),(8,'Surabaya','Blitar','Surabaya Wonokromo','Talun',95000,0),(9,'Surabaya','Bogor','Surabaya Wonokromo','Maseng',120000,0),(10,'Surabaya','Bojonegoro','Surabaya Wonokromo','Kalitidu',110000,0);
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `ID_KELAS` int(11) NOT NULL,
  `NM_KELAS` varchar(25) collate latin1_general_ci default NULL,
  `HARGA_KELAS` decimal(20,0) default NULL,
  PRIMARY KEY  (`ID_KELAS`),
  UNIQUE KEY `KELAS_PK` (`ID_KELAS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'Ekonomi',90000),(2,'Bisnis',100000),(3,'Eksekutif',115000),(4,'Ekonomi (Libur)',100000),(5,'Bisnis (Libur)',110000),(6,'Eksekutif (Libur)',125000),(3456,'AD',45656),(0,'',0);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_kereta`
--

DROP TABLE IF EXISTS `master_kereta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_kereta` (
  `ID_KERETA` int(11) NOT NULL,
  `ID_JADWAL` int(11) default NULL,
  `ID_KELAS` int(11) default NULL,
  `ID_RESERVASI` int(11) default NULL,
  `ID_JURUSAN` int(11) default NULL,
  `NM_KERETA` varchar(25) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ID_KERETA`),
  UNIQUE KEY `MASTER_KERETA_PK` (`ID_KERETA`),
  KEY `ADA_JURUSAN_FK` (`ID_JURUSAN`),
  KEY `ADA_KELAS_FK` (`ID_KELAS`),
  KEY `ADA_JADWAL_FK` (`ID_JADWAL`),
  KEY `RELATIONSHIP_6_FK` (`ID_RESERVASI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_kereta`
--

LOCK TABLES `master_kereta` WRITE;
/*!40000 ALTER TABLE `master_kereta` DISABLE KEYS */;
INSERT INTO `master_kereta` VALUES (1,1,1,NULL,6,'Taksaka 1'),(2,2,3,NULL,7,'Taksaka 2'),(3,3,1,NULL,1,'Argo Muria'),(4,4,1,NULL,2,'Argo Sindoro');
/*!40000 ALTER TABLE `master_kereta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembatalan`
--

DROP TABLE IF EXISTS `pembatalan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembatalan` (
  `ID_PEMBATALAN` int(11) NOT NULL,
  `ID_RESERVASI` int(11) default NULL,
  PRIMARY KEY  (`ID_PEMBATALAN`),
  UNIQUE KEY `PEMBATALAN_PK` (`ID_PEMBATALAN`),
  KEY `PENUMPANG_BISA_FK` (`ID_RESERVASI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembatalan`
--

LOCK TABLES `pembatalan` WRITE;
/*!40000 ALTER TABLE `pembatalan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pembatalan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservasi`
--

DROP TABLE IF EXISTS `reservasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservasi` (
  `ID_RESERVASI` int(11) NOT NULL,
  `NM_RESERVASI` varchar(25) collate latin1_general_ci default NULL,
  `ALAMAT_NYA` varchar(25) collate latin1_general_ci NOT NULL,
  `TELP_NYA` int(20) NOT NULL,
  `DEWASA` int(11) default NULL,
  `ANAK` int(11) default NULL,
  PRIMARY KEY  (`ID_RESERVASI`),
  UNIQUE KEY `RESERVASI_PK` (`ID_RESERVASI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservasi`
--

LOCK TABLES `reservasi` WRITE;
/*!40000 ALTER TABLE `reservasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'smile'
--

--
-- Final view structure for view `data_jadwal`
--

/*!50001 DROP TABLE IF EXISTS `data_jadwal`*/;
/*!50001 DROP VIEW IF EXISTS `data_jadwal`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_jadwal` AS select `master_kereta`.`ID_KERETA` AS `id_kereta`,`master_kereta`.`NM_KERETA` AS `nm_kereta`,`kelas`.`NM_KELAS` AS `nm_kelas`,`jadwal`.`TANGGAL` AS `tanggal`,`jadwal`.`JAM_BERANGKAT` AS `jam_berangkat`,`jurusan`.`KOTA_ASAL` AS `kota_asal`,`jurusan`.`KOTA_TUJUAN` AS `kota_tujuan`,`jurusan`.`STASIUN_ASAL` AS `stasiun_asal`,`jurusan`.`STASIUN_TUJUAN` AS `stasiun_tujuan`,`jurusan`.`HARGA_JURUSAN` AS `harga_jurusan`,`kelas`.`HARGA_KELAS` AS `harga_kelas`,`jadwal`.`KETERANGAN` AS `keterangan` from (((`kelas` join `master_kereta` on((`master_kereta`.`ID_KELAS` = `kelas`.`ID_KELAS`))) join `jadwal` on((`master_kereta`.`ID_JADWAL` = `jadwal`.`ID_JADWAL`))) join `jurusan` on((`master_kereta`.`ID_JURUSAN` = `jurusan`.`ID_JURUSAN`))) */;

--
-- Final view structure for view `data_jurusan_dan_kelas`
--

/*!50001 DROP TABLE IF EXISTS `data_jurusan_dan_kelas`*/;
/*!50001 DROP VIEW IF EXISTS `data_jurusan_dan_kelas`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_jurusan_dan_kelas` AS select `jurusan`.`KOTA_ASAL` AS `kota_asal`,`jurusan`.`KOTA_TUJUAN` AS `kota_tujuan`,`jurusan`.`STASIUN_ASAL` AS `stasiun_asal`,`jurusan`.`STASIUN_TUJUAN` AS `stasiun_tujuan`,`kelas`.`NM_KELAS` AS `nm_kelas`,`jurusan`.`HARGA_JURUSAN` AS `harga_jurusan`,`kelas`.`HARGA_KELAS` AS `harga_kelas` from (((`kelas` join `master_kereta` on((`master_kereta`.`ID_KELAS` = `kelas`.`ID_KELAS`))) join `jadwal` on((`master_kereta`.`ID_JADWAL` = `jadwal`.`ID_JADWAL`))) join `jurusan` on((`master_kereta`.`ID_JURUSAN` = `jurusan`.`ID_JURUSAN`))) */;

--
-- Final view structure for view `data_kelas`
--

/*!50001 DROP TABLE IF EXISTS `data_kelas`*/;
/*!50001 DROP VIEW IF EXISTS `data_kelas`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_kelas` AS select `kelas`.`ID_KELAS` AS `id_kelas`,`kelas`.`NM_KELAS` AS `nm_kelas`,`kelas`.`HARGA_KELAS` AS `harga_kelas` from `kelas` */;

--
-- Final view structure for view `data_reservasi_by_jurusan`
--

/*!50001 DROP TABLE IF EXISTS `data_reservasi_by_jurusan`*/;
/*!50001 DROP VIEW IF EXISTS `data_reservasi_by_jurusan`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_reservasi_by_jurusan` AS select `master_kereta`.`ID_KERETA` AS `id_kereta`,`master_kereta`.`NM_KERETA` AS `nm_kereta`,`reservasi`.`NM_RESERVASI` AS `nm_reservasi`,`kelas`.`NM_KELAS` AS `nm_kelas`,`jadwal`.`TANGGAL` AS `tanggal`,`jadwal`.`JAM_BERANGKAT` AS `jam_berangkat`,`jurusan`.`STASIUN_ASAL` AS `stasiun_asal`,`jurusan`.`STASIUN_TUJUAN` AS `stasiun_tujuan` from ((((`kelas` join `master_kereta` on((`master_kereta`.`ID_KELAS` = `kelas`.`ID_KELAS`))) join `jadwal` on((`master_kereta`.`ID_JADWAL` = `jadwal`.`ID_JADWAL`))) join `jurusan` on((`master_kereta`.`ID_JURUSAN` = `jurusan`.`ID_JURUSAN`))) join `reservasi` on((`master_kereta`.`ID_RESERVASI` = `reservasi`.`ID_RESERVASI`))) */;

--
-- Final view structure for view `data_reservasi_by_tanggal_dan_pesanan`
--

/*!50001 DROP TABLE IF EXISTS `data_reservasi_by_tanggal_dan_pesanan`*/;
/*!50001 DROP VIEW IF EXISTS `data_reservasi_by_tanggal_dan_pesanan`*/;
/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `data_reservasi_by_tanggal_dan_pesanan` AS select `master_kereta`.`ID_KERETA` AS `id_kereta`,`master_kereta`.`NM_KERETA` AS `nm_kereta`,`reservasi`.`NM_RESERVASI` AS `nm_reservasi`,`reservasi`.`ALAMAT_NYA` AS `alamat_nya`,`reservasi`.`TELP_NYA` AS `telp_nya`,`reservasi`.`DEWASA` AS `dewasa`,`reservasi`.`ANAK` AS `anak`,`kelas`.`NM_KELAS` AS `nm_kelas`,`jadwal`.`TANGGAL` AS `tanggal`,`jadwal`.`JAM_BERANGKAT` AS `jam_berangkat` from (((`kelas` join `master_kereta` on((`master_kereta`.`ID_KELAS` = `kelas`.`ID_KELAS`))) join `jadwal` on((`master_kereta`.`ID_JADWAL` = `jadwal`.`ID_JADWAL`))) join `reservasi` on((`master_kereta`.`ID_RESERVASI` = `reservasi`.`ID_RESERVASI`))) */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-24 15:53:40
