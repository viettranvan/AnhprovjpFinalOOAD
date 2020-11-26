-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: qlthuvien
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `idAdmin` int NOT NULL AUTO_INCREMENT,
  `idChiNhanh` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`idAdmin`),
  UNIQUE KEY `username` (`username`),
  KEY `idChiNhanh` (`idChiNhanh`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`idChiNhanh`) REFERENCES `chinhanh` (`idChiNhanh`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'1','admin','1'),(2,'2','admin2','1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chinhanh`
--

DROP TABLE IF EXISTS `chinhanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chinhanh` (
  `idChiNhanh` varchar(200) NOT NULL,
  `DiaChi` varchar(300) NOT NULL,
  PRIMARY KEY (`idChiNhanh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chinhanh`
--

LOCK TABLES `chinhanh` WRITE;
/*!40000 ALTER TABLE `chinhanh` DISABLE KEYS */;
INSERT INTO `chinhanh` VALUES ('1','Quận 1, TPHCM'),('2','Quận 2, TPHCM');
/*!40000 ALTER TABLE `chinhanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietphieumuon`
--

DROP TABLE IF EXISTS `chitietphieumuon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietphieumuon` (
  `idSach` varchar(200) NOT NULL,
  `idDocGia` varchar(200) NOT NULL,
  `idPhieuMuon` varchar(200) NOT NULL,
  KEY `idDocGia` (`idDocGia`),
  KEY `idSach` (`idSach`),
  KEY `idPhieuMuon` (`idPhieuMuon`),
  CONSTRAINT `chitietphieumuon_ibfk_1` FOREIGN KEY (`idDocGia`) REFERENCES `docgia` (`idDocGia`),
  CONSTRAINT `chitietphieumuon_ibfk_2` FOREIGN KEY (`idSach`) REFERENCES `sach` (`idSach`),
  CONSTRAINT `chitietphieumuon_ibfk_3` FOREIGN KEY (`idPhieuMuon`) REFERENCES `phieumuon` (`idPhieuMuon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietphieumuon`
--

LOCK TABLES `chitietphieumuon` WRITE;
/*!40000 ALTER TABLE `chitietphieumuon` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietphieumuon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chudesach`
--

DROP TABLE IF EXISTS `chudesach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chudesach` (
  `idChuDe` varchar(200) NOT NULL,
  `TenChuDe` varchar(200) NOT NULL,
  PRIMARY KEY (`idChuDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chudesach`
--

LOCK TABLES `chudesach` WRITE;
/*!40000 ALTER TABLE `chudesach` DISABLE KEYS */;
INSERT INTO `chudesach` VALUES ('1','Tình Yêu'),('2','IT');
/*!40000 ALTER TABLE `chudesach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docgia`
--

DROP TABLE IF EXISTS `docgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docgia` (
  `idDocGia` varchar(200) NOT NULL,
  `idUser` varchar(200) NOT NULL,
  `idChiNhanh` varchar(200) NOT NULL,
  `NgayLap` varchar(50) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`idDocGia`),
  UNIQUE KEY `username` (`username`),
  KEY `idUser` (`idUser`),
  KEY `idChiNhanh` (`idChiNhanh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docgia`
--

LOCK TABLES `docgia` WRITE;
/*!40000 ALTER TABLE `docgia` DISABLE KEYS */;
INSERT INTO `docgia` VALUES ('517','517','1','2020 - 10 - 18','asdasd','asd123123123'),('575','575','1','2020 - 10 - 18','user','1');
/*!40000 ALTER TABLE `docgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loainguoidung`
--

DROP TABLE IF EXISTS `loainguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loainguoidung` (
  `idLoaiNguoiDung` varchar(200) NOT NULL,
  `TenLoaiNguoiDung` varchar(200) NOT NULL,
  PRIMARY KEY (`idLoaiNguoiDung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loainguoidung`
--

LOCK TABLES `loainguoidung` WRITE;
/*!40000 ALTER TABLE `loainguoidung` DISABLE KEYS */;
INSERT INTO `loainguoidung` VALUES ('1','Sinh Viên'),('2','Giảng Viên'),('3','Khách');
/*!40000 ALTER TABLE `loainguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidung` (
  `idUser` varchar(200) NOT NULL,
  `idLoaiNguoiDung` varchar(200) NOT NULL,
  `HoTen` varchar(200) NOT NULL,
  `NgaySinh` varchar(50) NOT NULL,
  `DiaChi` varchar(300) NOT NULL,
  `SDT` varchar(200) NOT NULL,
  `CMND` varchar(200) NOT NULL,
  PRIMARY KEY (`idUser`),
  KEY `idLoaiNguoiDung` (`idLoaiNguoiDung`),
  CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`idLoaiNguoiDung`) REFERENCES `loainguoidung` (`idLoaiNguoiDung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('1','1','Nguyễn Văn A','2020-11-05 20:14:40','TPHCM','0483746593','341284726'),('2','2','Nguyễn Văn B','2000-11-05 ','HN','0736483956','328303849'),('284','2','asd','asd','asd','asd','dasdsad'),('292','2','asd','asdádasd','ádsad','ádad','ádsaasdádadád'),('435','3','Việt','ádsadáđáád','sadasd','ád','ádádádádsad'),('517','2','Ahihi huhu','45-09-3000','TPHCM','0372746758','adasd'),('575','2','Ngô Hữu Văn','23-3-2000','TPHCM','038746282','38172982232'),('594','3','asdasdasdas','asdasdsadsad','asdsad','asdsadd','asdasd'),('642','2','asd','asd','asdasd','asd','asd'),('692','3','asd','asd','asd','asdsa0321213','asd'),('743','2','asd','asdádasd','ádsad','ádad','ádsaasdádadád'),('760','1','dasdsa','asdsad','dsadas','dasdsad','asdsad'),('950','2','asd','asdádasd','ádsad','ádad','ádsaasdádadád');
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhaxuatban`
--

DROP TABLE IF EXISTS `nhaxuatban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhaxuatban` (
  `idNXB` varchar(200) NOT NULL,
  `Ten_NXB` varchar(200) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `DienThoai` varchar(200) NOT NULL,
  PRIMARY KEY (`idNXB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhaxuatban`
--

LOCK TABLES `nhaxuatban` WRITE;
/*!40000 ALTER TABLE `nhaxuatban` DISABLE KEYS */;
INSERT INTO `nhaxuatban` VALUES ('1','NXB Thế Giới','Quận 1, TPHCM','0928475768'),('2','NXB Trẻ','Quận 7, TPHCM','08477284343');
/*!40000 ALTER TABLE `nhaxuatban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieumuon`
--

DROP TABLE IF EXISTS `phieumuon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieumuon` (
  `idPhieuMuon` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `NgayMuon` varchar(50) NOT NULL,
  `NgayTra` varchar(50) NOT NULL,
  `idSach` varchar(45) NOT NULL,
  PRIMARY KEY (`idPhieuMuon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieumuon`
--

LOCK TABLES `phieumuon` WRITE;
/*!40000 ALTER TABLE `phieumuon` DISABLE KEYS */;
INSERT INTO `phieumuon` VALUES ('1575','Đang mượn','Sat Nov 21 2020 15:47:21 GMT+0700 (Indochina Time)','Sat Nov 28 2020 15:47:21 GMT+0700 (Indochina Time)','1');
/*!40000 ALTER TABLE `phieumuon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach` (
  `idSach` varchar(200) NOT NULL,
  `idChuDe` varchar(200) NOT NULL,
  `TenSach` varchar(200) NOT NULL,
  `MoTa` text NOT NULL,
  `SoLuongTon` int NOT NULL,
  `idNXB` varchar(200) NOT NULL,
  `TenTacGia` varchar(100) NOT NULL,
  `img` varchar(150) NOT NULL,
  `NamXuatBan` varchar(45) NOT NULL,
  PRIMARY KEY (`idSach`),
  KEY `idNXB` (`idNXB`),
  KEY `idChuDe` (`idChuDe`),
  CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`idNXB`) REFERENCES `nhaxuatban` (`idNXB`),
  CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`idChuDe`) REFERENCES `chudesach` (`idChuDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
INSERT INTO `sach` VALUES ('1','1','Tony Buổi Sáng - Trên Đường Băng','\"Khi còn trẻ, hãy ra ngoài nhiều hơn ở nhà. Hãy nhào vô xin người khác “bóc hết, lột sạch” khả năng của mình...\"',2,'2','Tony','https://salt.tikicdn.com/cache/w444/ts/product/61/87/8a/082a07cec3232115e2b22636fd71593c.jpg','2017'),('2','2','Sách Người Trong Muôn Nghề: Ngành IT có gì?','\"Trong quá trình thực hiện bộ sách hướng nghiệp cho các bạn trẻ, chúng tôi cũng không ngừng trăn trở: Ngành CNTT có thật sự như vậy không?\"',1,'1','TopCV','https://salt.tikicdn.com/cache/w444/ts/product/6e/6f/e0/40d33719f67c9df7ea34d2bac9e52320.jpg','2018');
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongtinadmin`
--

DROP TABLE IF EXISTS `thongtinadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongtinadmin` (
  `idAdmin` int NOT NULL,
  `HoTen` varchar(200) NOT NULL,
  `NgaySinh` datetime NOT NULL,
  `SDT` varchar(200) NOT NULL,
  PRIMARY KEY (`idAdmin`),
  CONSTRAINT `thongtinadmin_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongtinadmin`
--

LOCK TABLES `thongtinadmin` WRITE;
/*!40000 ALTER TABLE `thongtinadmin` DISABLE KEYS */;
INSERT INTO `thongtinadmin` VALUES (1,'Ngô Hữu Văn','2020-11-04 19:59:09','0372746758'),(2,'Trần Văn Việt','2020-11-03 19:59:09','08364837442');
/*!40000 ALTER TABLE `thongtinadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xulivipham`
--

DROP TABLE IF EXISTS `xulivipham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xulivipham` (
  `idXuLiVP` int NOT NULL AUTO_INCREMENT,
  `idAdmin` int NOT NULL,
  `idDocGia` varchar(200) NOT NULL,
  `idSach` varchar(200) NOT NULL,
  `NgayBiPhat` datetime NOT NULL,
  `NgayHetHan` datetime NOT NULL,
  PRIMARY KEY (`idXuLiVP`),
  KEY `idAdmin` (`idAdmin`),
  KEY `idDocGia` (`idDocGia`),
  KEY `idSach` (`idSach`),
  CONSTRAINT `xulivipham_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`),
  CONSTRAINT `xulivipham_ibfk_2` FOREIGN KEY (`idDocGia`) REFERENCES `docgia` (`idDocGia`),
  CONSTRAINT `xulivipham_ibfk_3` FOREIGN KEY (`idSach`) REFERENCES `sach` (`idSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xulivipham`
--

LOCK TABLES `xulivipham` WRITE;
/*!40000 ALTER TABLE `xulivipham` DISABLE KEYS */;
/*!40000 ALTER TABLE `xulivipham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeucaumuonsach`
--

DROP TABLE IF EXISTS `yeucaumuonsach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yeucaumuonsach` (
  `idYeuCauMuonSach` int NOT NULL AUTO_INCREMENT,
  `idDocGia` varchar(200) NOT NULL,
  `idSach` varchar(200) NOT NULL,
  `ThoiGianYeuCau` datetime NOT NULL,
  PRIMARY KEY (`idYeuCauMuonSach`),
  KEY `idDocGia` (`idDocGia`),
  KEY `idSach` (`idSach`),
  CONSTRAINT `yeucaumuonsach_ibfk_1` FOREIGN KEY (`idDocGia`) REFERENCES `docgia` (`idDocGia`),
  CONSTRAINT `yeucaumuonsach_ibfk_2` FOREIGN KEY (`idSach`) REFERENCES `sach` (`idSach`),
  CONSTRAINT `yeucaumuonsach_ibfk_3` FOREIGN KEY (`idSach`) REFERENCES `sach` (`idSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeucaumuonsach`
--

LOCK TABLES `yeucaumuonsach` WRITE;
/*!40000 ALTER TABLE `yeucaumuonsach` DISABLE KEYS */;
/*!40000 ALTER TABLE `yeucaumuonsach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-23 15:15:39
