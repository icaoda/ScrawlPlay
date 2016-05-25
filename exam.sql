-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `Administrators`
--

DROP TABLE IF EXISTS `Administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Administrators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `passwords` varchar(50) NOT NULL,
  `department` varchar(200) NOT NULL,
  `unread` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrators`
--

LOCK TABLES `Administrators` WRITE;
/*!40000 ALTER TABLE `Administrators` DISABLE KEYS */;
INSERT INTO `Administrators` VALUES (1,'F7684885','HJKL:','PSD_NPI_TDE_SMT_FA','0'),(2,'F7684095','HJKL:','PSD_NPI_TDE_SMT_TDL','0'),(3,'F7683330','xxx','PSD_NPI_TDE_SMT_ST','0');
/*!40000 ALTER TABLE `Administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Administrators_Configuration`
--

DROP TABLE IF EXISTS `Administrators_Configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Administrators_Configuration` (
  `department` varchar(100) NOT NULL,
  `judge` int(10) unsigned NOT NULL,
  `judge_score` int(10) unsigned NOT NULL,
  `single` int(10) unsigned NOT NULL,
  `single_score` int(10) unsigned NOT NULL,
  `multiple` int(10) unsigned NOT NULL,
  `multiple_score` int(10) unsigned NOT NULL,
  `analysis` varchar(30) NOT NULL,
  `analysis_score` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `unread` varchar(30) NOT NULL,
  PRIMARY KEY (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrators_Configuration`
--

LOCK TABLES `Administrators_Configuration` WRITE;
/*!40000 ALTER TABLE `Administrators_Configuration` DISABLE KEYS */;
INSERT INTO `Administrators_Configuration` VALUES ('PSD_NPI_TDE_SMT_FA',3,5,2,5,3,5,'3','20','100','2'),('PSD_NPI_TDE_SMT_ST',34,3,2,2,20,2,'2','2','2','0');
/*!40000 ALTER TABLE `Administrators_Configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `F1012885_20160309112618`
--

DROP TABLE IF EXISTS `F1012885_20160309112618`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `F1012885_20160309112618` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `score` varchar(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `F1012885_20160309112618`
--

LOCK TABLES `F1012885_20160309112618` WRITE;
/*!40000 ALTER TABLE `F1012885_20160309112618` DISABLE KEYS */;
INSERT INTO `F1012885_20160309112618` VALUES (1,'20','请简析SoC工站各种模式之间的差异和联系。','RTH'),(2,'20','谈谈DFU工站在整个SMT测试线的地位及与前后各工站的关联。','FGHF'),(3,'20','请简析SoC工站各种模式之间的差异和联系。','FH');
/*!40000 ALTER TABLE `F1012885_20160309112618` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `F1012885_20160309113143`
--

DROP TABLE IF EXISTS `F1012885_20160309113143`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `F1012885_20160309113143` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `score` varchar(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `F1012885_20160309113143`
--

LOCK TABLES `F1012885_20160309113143` WRITE;
/*!40000 ALTER TABLE `F1012885_20160309113143` DISABLE KEYS */;
INSERT INTO `F1012885_20160309113143` VALUES (1,'20','谈谈DFU工站在整个SMT测试线的地位及与前后各工站的关联。','DF'),(2,'20','请简析SoC工站各种模式之间的差异和联系。','DF'),(3,'20','Scenario 603的fail如何展开FA工作，请从原理解析。','DF');
/*!40000 ALTER TABLE `F1012885_20160309113143` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PSD_NPI_TDE_SMT_FA_analysis`
--

DROP TABLE IF EXISTS `PSD_NPI_TDE_SMT_FA_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PSD_NPI_TDE_SMT_FA_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PSD_NPI_TDE_SMT_FA_analysis`
--

LOCK TABLES `PSD_NPI_TDE_SMT_FA_analysis` WRITE;
/*!40000 ALTER TABLE `PSD_NPI_TDE_SMT_FA_analysis` DISABLE KEYS */;
INSERT INTO `PSD_NPI_TDE_SMT_FA_analysis` VALUES (1,'请简析SoC工站各种模式之间的差异和联系。'),(2,'浅谈DFU工站的Wifi固件root包中prm文件的内容的理解。'),(3,'Scenario 603的fail如何展开FA工作，请从原理解析。'),(4,'谈谈DFU工站在整个SMT测试线的地位及与前后各工站的关联。'),(5,'请简析SoC工站各种模式之间的差异和联系。');
/*!40000 ALTER TABLE `PSD_NPI_TDE_SMT_FA_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PSD_NPI_TDE_SMT_FA_judge`
--

DROP TABLE IF EXISTS `PSD_NPI_TDE_SMT_FA_judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PSD_NPI_TDE_SMT_FA_judge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `answer` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PSD_NPI_TDE_SMT_FA_judge`
--

LOCK TABLES `PSD_NPI_TDE_SMT_FA_judge` WRITE;
/*!40000 ALTER TABLE `PSD_NPI_TDE_SMT_FA_judge` DISABLE KEYS */;
INSERT INTO `PSD_NPI_TDE_SMT_FA_judge` VALUES (1,' 目前的 SoC 測試主要包含PERTOS測試和RBM測試兩大部分。                      ','T'),(2,' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T'),(3,' 在FA使用mobile_restore做SoC測試時，“-D”的參數可使用SoC.pr，也可以用 DFU.pr。','T'),(4,'不同SoC revision的unit，通常需要使用不同的PERTOS和RBM image來測試。          ','T'),(5,' Kernel Panic的fail都是software的問題。                                          ','F'),(6,'Swap test是一種證明物料問題的好方法。                                        ','T'),(7,' 在FA重測“smokey Pad_DFU --run”的命令必須要先重新restore。                    ','T'),(8,'DFU測試時需要連接PDCA網路，SoC測試則不需要。                              ','T'),(9,'在Diag中turn on bluetooth只需要進diags然後輸入“bluetooth --on”回車就可以了 。    ','F'),(10,'CB 只有三种状态，分别是：Pass, Fail, Incomplete.                                 ','F'),(11,' 目前的 SoC 測試主要包含PERTOS測試和RBM測試兩大部分。                      ','T'),(12,' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T'),(13,' 在FA使用mobile_restore做SoC測試時，“-D”的參數可使用SoC.pr，也可以用 DFU.pr。','T'),(14,'不同SoC revision的unit，通常需要使用不同的PERTOS和RBM image來測試。          ','T'),(15,' Kernel Panic的fail都是software的問題。                                          ','F'),(16,'Swap test是一種證明物料問題的好方法。                                        ','T'),(17,' 在FA重測“smokey Pad_DFU --run”的命令必須要先重新restore。                    ','T'),(18,'DFU測試時需要連接PDCA網路，SoC測試則不需要。                              ','T'),(19,'在Diag中turn on bluetooth只需要進diags然後輸入“bluetooth --on”回車就可以了 。    ','F'),(20,'CB 只有三种状态，分别是：Pass, Fail, Incomplete.                                 ','F'),(21,' 目前的 SoC 測試主要包含PERTOS測試和RBM測試兩大部分。                      ','T'),(22,' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T'),(23,' 在FA使用mobile_restore做SoC測試時，“-D”的參數可使用SoC.pr，也可以用 DFU.pr。','T'),(24,'不同SoC revision的unit，通常需要使用不同的PERTOS和RBM image來測試。          ','T'),(25,' Kernel Panic的fail都是software的問題。                                          ','F'),(26,'Swap test是一種證明物料問題的好方法。                                        ','T'),(27,' 在FA重測“smokey Pad_DFU --run”的命令必須要先重新restore。                    ','T'),(28,'DFU測試時需要連接PDCA網路，SoC測試則不需要。                              ','T'),(29,'在Diag中turn on bluetooth只需要進diags然後輸入“bluetooth --on”回車就可以了 。    ','F'),(30,'CB 只有三种状态，分别是：Pass, Fail, Incomplete.                                 ','F'),(31,' 目前的 SoC 測試主要包含PERTOS測試和RBM測試兩大部分。                      ','T'),(32,' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T'),(33,' 在FA使用mobile_restore做SoC測試時，“-D”的參數可使用SoC.pr，也可以用 DFU.pr。','T'),(34,'不同SoC revision的unit，通常需要使用不同的PERTOS和RBM image來測試。          ','T'),(35,' Kernel Panic的fail都是software的問題。                                          ','F'),(36,'Swap test是一種證明物料問題的好方法。                                        ','T'),(37,' 在FA重測“smokey Pad_DFU --run”的命令必須要先重新restore。                    ','T'),(38,'DFU測試時需要連接PDCA網路，SoC測試則不需要。                              ','T'),(39,'在Diag中turn on bluetooth只需要進diags然後輸入“bluetooth --on”回車就可以了 。    ','F'),(40,'CB 只有三种状态，分别是：Pass, Fail, Incomplete.                                 ','F'),(41,' 目前的 SoC 測試主要包含PERTOS測試和RBM測試兩大部分。                      ','F'),(42,' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T');
/*!40000 ALTER TABLE `PSD_NPI_TDE_SMT_FA_judge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PSD_NPI_TDE_SMT_FA_multiple`
--

DROP TABLE IF EXISTS `PSD_NPI_TDE_SMT_FA_multiple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PSD_NPI_TDE_SMT_FA_multiple` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) NOT NULL,
  `optionD` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PSD_NPI_TDE_SMT_FA_multiple`
--

LOCK TABLES `PSD_NPI_TDE_SMT_FA_multiple` WRITE;
/*!40000 ALTER TABLE `PSD_NPI_TDE_SMT_FA_multiple` DISABLE KEYS */;
INSERT INTO `PSD_NPI_TDE_SMT_FA_multiple` VALUES (1,'那些是太阳的卫星','水星','木星','火星','月球','ABC'),(2,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD'),(3,' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','BD'),(4,' 以下SoC测试中，偏重于测试DDR的是哪些',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54','ACD'),(5,' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間',' -time',' -wait',' -waittime',' -tout','D'),(6,' Unit處於哪些mode時可以正常使用mobile_restore',' DFU',' iBoot',' OS',' Diag','ABC'),(7,' 以下哪些PERTOS命令可以show出DDR vendor',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','BC'),(8,' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断',' CK',' CA',' RD',' WR','BCD'),(9,' SoC測試fail主要可能涉及以下哪些物料的問題',' Memory',' Nand',' Charger IC',' SoC','AD'),(10,' Device處於哪些mode時可以在PurpleRestore3界面看到信息',' DFU',' iBoot',' OS',' Diag','ABC'),(11,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD'),(12,' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','BD'),(13,' 以下SoC测试中，偏重于测试DDR的是哪些',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54','ACD'),(14,' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間',' -time',' -wait',' -waittime',' -tout','D'),(15,' Unit處於哪些mode時可以正常使用mobile_restore',' DFU',' iBoot',' OS',' Diag','ABC'),(16,' 以下哪些PERTOS命令可以show出DDR vendor',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','BC'),(17,' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断',' CK',' CA',' RD',' WR','BCD'),(18,' SoC測試fail主要可能涉及以下哪些物料的問題',' Memory',' Nand',' Charger IC',' SoC','AD'),(19,' Device處於哪些mode時可以在PurpleRestore3界面看到信息',' DFU',' iBoot',' OS',' Diag','ABC'),(20,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD'),(21,' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','BD'),(22,' 以下SoC测试中，偏重于测试DDR的是哪些',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54','ACD'),(23,' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間',' -time',' -wait',' -waittime',' -tout','D'),(24,' Unit處於哪些mode時可以正常使用mobile_restore',' DFU',' iBoot',' OS',' Diag','ABC'),(25,' 以下哪些PERTOS命令可以show出DDR vendor',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','BC'),(26,' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断',' CK',' CA',' RD',' WR','BCD'),(27,' SoC測試fail主要可能涉及以下哪些物料的問題',' Memory',' Nand',' Charger IC',' SoC','AD'),(28,' Device處於哪些mode時可以在PurpleRestore3界面看到信息',' DFU',' iBoot',' OS',' Diag','ABC'),(29,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD'),(30,' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','BD'),(31,' 以下SoC测试中，偏重于测试DDR的是哪些',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54','ACD'),(32,' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間',' -time',' -wait',' -waittime',' -tout','D'),(33,' Unit處於哪些mode時可以正常使用mobile_restore',' DFU',' iBoot',' OS',' Diag','ABC'),(34,' 以下哪些PERTOS命令可以show出DDR vendor',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','BC'),(35,' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断',' CK',' CA',' RD',' WR','BCD'),(36,' SoC測試fail主要可能涉及以下哪些物料的問題',' Memory',' Nand',' Charger IC',' SoC','AD'),(37,' Device處於哪些mode時可以在PurpleRestore3界面看到信息',' DFU',' iBoot',' OS',' Diag','ABC'),(38,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD'),(39,' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','BD'),(40,' 以下SoC测试中，偏重于测试DDR的是哪些',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54','ACD'),(41,' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間',' -time',' -wait',' -waittime',' -tout','D'),(42,' Unit處於哪些mode時可以正常使用mobile_restore',' DFU',' iBoot',' OS',' Diag','ABC'),(43,' 以下哪些PERTOS命令可以show出DDR vendor',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','BC'),(44,' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断',' CK',' CA',' RD',' WR','BCD'),(45,' SoC測試fail主要可能涉及以下哪些物料的問題',' Memory',' Nand',' Charger IC',' SoC','AD'),(46,' Device處於哪些mode時可以在PurpleRestore3界面看到信息',' DFU',' iBoot',' OS',' Diag','ABC'),(47,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD'),(48,' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','BD'),(49,' 以下SoC测试中，偏重于测试DDR的是哪些',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54','ACD'),(50,' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間',' -time',' -wait',' -waittime',' -tout','D'),(51,' Unit處於哪些mode時可以正常使用mobile_restore',' DFU',' iBoot',' OS',' Diag','ABC'),(52,' 以下哪些PERTOS命令可以show出DDR vendor',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','BC'),(53,' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断',' CK',' CA',' RD',' WR','BCD'),(54,' SoC測試fail主要可能涉及以下哪些物料的問題',' Memory',' Nand',' Charger IC',' SoC','AD'),(55,' Device處於哪些mode時可以在PurpleRestore3界面看到信息',' DFU',' iBoot',' OS',' Diag','ABC'),(56,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD'),(57,' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','BD'),(58,' 以下SoC测试中，偏重于测试DDR的是哪些',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54','ACD'),(59,' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間',' -time',' -wait',' -waittime',' -tout','D'),(60,' Unit處於哪些mode時可以正常使用mobile_restore',' DFU',' iBoot',' OS',' Diag','ABC'),(61,' 以下哪些PERTOS命令可以show出DDR vendor',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','BC'),(62,' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断',' CK',' CA',' RD',' WR','BCD'),(63,' SoC測試fail主要可能涉及以下哪些物料的問題',' Memory',' Nand',' Charger IC',' SoC','AD'),(64,' Device處於哪些mode時可以在PurpleRestore3界面看到信息',' DFU',' iBoot',' OS',' Diag','ABC'),(65,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD'),(66,' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','BD'),(67,' 以下SoC测试中，偏重于测试DDR的是哪些',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54','ACD'),(68,' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間',' -time',' -wait',' -waittime',' -tout','D'),(69,' Unit處於哪些mode時可以正常使用mobile_restore',' DFU',' iBoot',' OS',' Diag','ABC'),(70,' 以下哪些PERTOS命令可以show出DDR vendor',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','BC'),(71,' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断',' CK',' CA',' RD',' WR','BCD'),(72,' SoC測試fail主要可能涉及以下哪些物料的問題',' Memory',' Nand',' Charger IC',' SoC','AD'),(73,' Device處於哪些mode時可以在PurpleRestore3界面看到信息',' DFU',' iBoot',' OS',' Diag','ABC'),(74,' 以下哪些參數是在FA使用mobile_restore時必需的',' variant',' usb address',' timeout',' bundle','ABD');
/*!40000 ALTER TABLE `PSD_NPI_TDE_SMT_FA_multiple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PSD_NPI_TDE_SMT_FA_single`
--

DROP TABLE IF EXISTS `PSD_NPI_TDE_SMT_FA_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PSD_NPI_TDE_SMT_FA_single` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) NOT NULL,
  `optionD` varchar(100) NOT NULL,
  `answer` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PSD_NPI_TDE_SMT_FA_single`
--

LOCK TABLES `PSD_NPI_TDE_SMT_FA_single` WRITE;
/*!40000 ALTER TABLE `PSD_NPI_TDE_SMT_FA_single` DISABLE KEYS */;
INSERT INTO `PSD_NPI_TDE_SMT_FA_single` VALUES (1,'12306的槽点。','服务器脆弱','网页界面丑陋','反人类的验证码','是国企','ABC'),(2,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D'),(3,' 我們在FA處理Kernel Panic的fail時，若遇到panic信息混亂無法識別時，可以使用下面哪些方法獲取清晰的信息',' 测试很多次，直到能够看出清晰的信息',' 在pr setting的 “Restore Boot-Args”中加入“cpus=1”的參數',' 在terminal里输“astrisctl isPanic”，同時需要使用特定的cable',' 換不同的cable進行測試','B'),(4,' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','D'),(5,' Pad_DFU的smokey测试包含以下哪些部分',' BBDFU',' BTDFU',' SHDFU',' WLDFU','C'),(6,' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','D'),(7,' SoC和baseband的fuse類型有哪',' production fuse  量產階段',' secure fuse',' development fuse  npi 階段',' root fuse','C'),(8,' 以下问题属于SMA问题的是',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','A'),(9,' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法',' 目檢',' X-Ray',' CT-Scan',' Cross section','A'),(10,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D'),(11,' 我們在FA處理Kernel Panic的fail時，若遇到panic信息混亂無法識別時，可以使用下面哪些方法獲取清晰的信息',' 测试很多次，直到能够看出清晰的信息',' 在pr setting的 “Restore Boot-Args”中加入“cpus=1”的參數',' 在terminal里输“astrisctl isPanic”，同時需要使用特定的cable',' 換不同的cable進行測試','B'),(12,' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','D'),(13,' Pad_DFU的smokey测试包含以下哪些部分',' BBDFU',' BTDFU',' SHDFU',' WLDFU','C'),(14,' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','D'),(15,' SoC和baseband的fuse類型有哪',' production fuse  量產階段',' secure fuse',' development fuse  npi 階段',' root fuse','C'),(16,' 以下问题属于SMA问题的是',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','A'),(17,' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法',' 目檢',' X-Ray',' CT-Scan',' Cross section','A'),(18,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D'),(19,' 我們在FA處理Kernel Panic的fail時，若遇到panic信息混亂無法識別時，可以使用下面哪些方法獲取清晰的信息',' 测试很多次，直到能够看出清晰的信息',' 在pr setting的 “Restore Boot-Args”中加入“cpus=1”的參數',' 在terminal里输“astrisctl isPanic”，同時需要使用特定的cable',' 換不同的cable進行測試','B'),(20,' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','D'),(21,' Pad_DFU的smokey测试包含以下哪些部分',' BBDFU',' BTDFU',' SHDFU',' WLDFU','C'),(22,' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','D'),(23,' SoC和baseband的fuse類型有哪',' production fuse  量產階段',' secure fuse',' development fuse  npi 階段',' root fuse','C'),(24,' 以下问题属于SMA问题的是',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','A'),(25,' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法',' 目檢',' X-Ray',' CT-Scan',' Cross section','A'),(26,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D'),(27,' 我們在FA處理Kernel Panic的fail時，若遇到panic信息混亂無法識別時，可以使用下面哪些方法獲取清晰的信息',' 测试很多次，直到能够看出清晰的信息',' 在pr setting的 “Restore Boot-Args”中加入“cpus=1”的參數',' 在terminal里输“astrisctl isPanic”，同時需要使用特定的cable',' 換不同的cable進行測試','B'),(28,' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','D'),(29,' Pad_DFU的smokey测试包含以下哪些部分',' BBDFU',' BTDFU',' SHDFU',' WLDFU','C'),(30,' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','D'),(31,' SoC和baseband的fuse類型有哪',' production fuse  量產階段',' secure fuse',' development fuse  npi 階段',' root fuse','C'),(32,' 以下问题属于SMA问题的是',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','A'),(33,' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法',' 目檢',' X-Ray',' CT-Scan',' Cross section','A'),(34,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D'),(35,' 我們在FA處理Kernel Panic的fail時，若遇到panic信息混亂無法識別時，可以使用下面哪些方法獲取清晰的信息',' 测试很多次，直到能够看出清晰的信息',' 在pr setting的 “Restore Boot-Args”中加入“cpus=1”的參數',' 在terminal里输“astrisctl isPanic”，同時需要使用特定的cable',' 換不同的cable進行測試','B'),(36,' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','D'),(37,' Pad_DFU的smokey测试包含以下哪些部分',' BBDFU',' BTDFU',' SHDFU',' WLDFU','C'),(38,' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','D'),(39,' SoC和baseband的fuse類型有哪',' production fuse  量產階段',' secure fuse',' development fuse  npi 階段',' root fuse','C'),(40,' 以下问题属于SMA问题的是',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','A'),(41,' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法',' 目檢',' X-Ray',' CT-Scan',' Cross section','A'),(42,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D'),(43,' 我們在FA處理Kernel Panic的fail時，若遇到panic信息混亂無法識別時，可以使用下面哪些方法獲取清晰的信息',' 测试很多次，直到能够看出清晰的信息',' 在pr setting的 “Restore Boot-Args”中加入“cpus=1”的參數',' 在terminal里输“astrisctl isPanic”，同時需要使用特定的cable',' 換不同的cable進行測試','B'),(44,' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','D'),(45,' Pad_DFU的smokey测试包含以下哪些部分',' BBDFU',' BTDFU',' SHDFU',' WLDFU','C'),(46,' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','D'),(47,' SoC和baseband的fuse類型有哪',' production fuse  量產階段',' secure fuse',' development fuse  npi 階段',' root fuse','C'),(48,' 以下问题属于SMA问题的是',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','A'),(49,' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法',' 目檢',' X-Ray',' CT-Scan',' Cross section','A'),(50,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D'),(51,' 我們在FA處理Kernel Panic的fail時，若遇到panic信息混亂無法識別時，可以使用下面哪些方法獲取清晰的信息',' 测试很多次，直到能够看出清晰的信息',' 在pr setting的 “Restore Boot-Args”中加入“cpus=1”的參數',' 在terminal里输“astrisctl isPanic”，同時需要使用特定的cable',' 換不同的cable進行測試','B'),(52,' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','D'),(53,' Pad_DFU的smokey测试包含以下哪些部分',' BBDFU',' BTDFU',' SHDFU',' WLDFU','C'),(54,' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','D'),(55,' SoC和baseband的fuse類型有哪',' production fuse  量產階段',' secure fuse',' development fuse  npi 階段',' root fuse','C'),(56,' 以下问题属于SMA问题的是',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','A'),(57,' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法',' 目檢',' X-Ray',' CT-Scan',' Cross section','A'),(58,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D'),(59,' 我們在FA處理Kernel Panic的fail時，若遇到panic信息混亂無法識別時，可以使用下面哪些方法獲取清晰的信息',' 测试很多次，直到能够看出清晰的信息',' 在pr setting的 “Restore Boot-Args”中加入“cpus=1”的參數',' 在terminal里输“astrisctl isPanic”，同時需要使用特定的cable',' 換不同的cable進行測試','B'),(60,' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','D'),(61,' Pad_DFU的smokey测试包含以下哪些部分',' BBDFU',' BTDFU',' SHDFU',' WLDFU','C'),(62,' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','D'),(63,' SoC和baseband的fuse類型有哪',' production fuse  量產階段',' secure fuse',' development fuse  npi 階段',' root fuse','C'),(64,' 以下问题属于SMA问题的是',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','A'),(65,' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法',' 目檢',' X-Ray',' CT-Scan',' Cross section','A'),(66,' 以下哪些不是第一次write cb之前可能需要先輸入的命令',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init','D');
/*!40000 ALTER TABLE `PSD_NPI_TDE_SMT_FA_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Test_Record_All`
--

DROP TABLE IF EXISTS `Test_Record_All`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Test_Record_All` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timeStmp` varchar(50) NOT NULL,
  `departme` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `timeRefe` varchar(50) NOT NULL,
  `timeCost` varchar(50) NOT NULL,
  `scoreTot` varchar(50) NOT NULL,
  `scoreGot` varchar(50) NOT NULL,
  `judgeQty` varchar(50) NOT NULL,
  `judgeSco` varchar(50) NOT NULL,
  `singlQty` varchar(50) NOT NULL,
  `singlSco` varchar(50) NOT NULL,
  `multiQty` varchar(50) NOT NULL,
  `multiSco` varchar(50) NOT NULL,
  `analyQty` varchar(50) NOT NULL,
  `analySco` varchar(50) NOT NULL,
  `judgTtl0` varchar(100) DEFAULT NULL,
  `judgAns0` varchar(5) DEFAULT NULL,
  `judgUAn0` varchar(5) DEFAULT NULL,
  `judgTtl1` varchar(100) DEFAULT NULL,
  `judgAns1` varchar(5) DEFAULT NULL,
  `judgUAn1` varchar(5) DEFAULT NULL,
  `judgTtl2` varchar(100) DEFAULT NULL,
  `judgAns2` varchar(5) DEFAULT NULL,
  `judgUAn2` varchar(5) DEFAULT NULL,
  `judgTtl3` varchar(100) DEFAULT NULL,
  `judgAns3` varchar(5) DEFAULT NULL,
  `judgUAn3` varchar(5) DEFAULT NULL,
  `judgTtl4` varchar(100) DEFAULT NULL,
  `judgAns4` varchar(5) DEFAULT NULL,
  `judgUAn4` varchar(5) DEFAULT NULL,
  `judgTtl5` varchar(100) DEFAULT NULL,
  `judgAns5` varchar(5) DEFAULT NULL,
  `judgUAn5` varchar(5) DEFAULT NULL,
  `judgTtl6` varchar(100) DEFAULT NULL,
  `judgAns6` varchar(5) DEFAULT NULL,
  `judgUAn6` varchar(5) DEFAULT NULL,
  `judgTtl7` varchar(100) DEFAULT NULL,
  `judgAns7` varchar(5) DEFAULT NULL,
  `judgUAn7` varchar(5) DEFAULT NULL,
  `judgTtl8` varchar(100) DEFAULT NULL,
  `judgAns8` varchar(5) DEFAULT NULL,
  `judgUAn8` varchar(5) DEFAULT NULL,
  `judgTtl9` varchar(100) DEFAULT NULL,
  `judgAns9` varchar(5) DEFAULT NULL,
  `judgUAn9` varchar(5) DEFAULT NULL,
  `singTtl0` varchar(100) DEFAULT NULL,
  `singAns0` varchar(5) DEFAULT NULL,
  `singUan0` varchar(5) DEFAULT NULL,
  `singOpa0` varchar(100) DEFAULT NULL,
  `singOpb0` varchar(100) DEFAULT NULL,
  `singOpc0` varchar(100) DEFAULT NULL,
  `singOpd0` varchar(100) DEFAULT NULL,
  `singTtl1` varchar(100) DEFAULT NULL,
  `singAns1` varchar(5) DEFAULT NULL,
  `singUan1` varchar(5) DEFAULT NULL,
  `singOpa1` varchar(100) DEFAULT NULL,
  `singOpb1` varchar(100) DEFAULT NULL,
  `singOpc1` varchar(100) DEFAULT NULL,
  `singOpd1` varchar(100) DEFAULT NULL,
  `singTtl2` varchar(100) DEFAULT NULL,
  `singAns2` varchar(5) DEFAULT NULL,
  `singUan2` varchar(5) DEFAULT NULL,
  `singOpa2` varchar(100) DEFAULT NULL,
  `singOpb2` varchar(100) DEFAULT NULL,
  `singOpc2` varchar(100) DEFAULT NULL,
  `singOpd2` varchar(100) DEFAULT NULL,
  `singTtl3` varchar(100) DEFAULT NULL,
  `singAns3` varchar(5) DEFAULT NULL,
  `singUan3` varchar(5) DEFAULT NULL,
  `singOpa3` varchar(100) DEFAULT NULL,
  `singOpb3` varchar(100) DEFAULT NULL,
  `singOpc3` varchar(100) DEFAULT NULL,
  `singOpd3` varchar(100) DEFAULT NULL,
  `singTtl4` varchar(100) DEFAULT NULL,
  `singAns4` varchar(5) DEFAULT NULL,
  `singUan4` varchar(5) DEFAULT NULL,
  `singOpa4` varchar(100) DEFAULT NULL,
  `singOpb4` varchar(100) DEFAULT NULL,
  `singOpc4` varchar(100) DEFAULT NULL,
  `singOpd4` varchar(100) DEFAULT NULL,
  `singTtl5` varchar(100) DEFAULT NULL,
  `singAns5` varchar(5) DEFAULT NULL,
  `singUan5` varchar(5) DEFAULT NULL,
  `singOpa5` varchar(100) DEFAULT NULL,
  `singOpb5` varchar(100) DEFAULT NULL,
  `singOpc5` varchar(100) DEFAULT NULL,
  `singOpd5` varchar(100) DEFAULT NULL,
  `singTtl6` varchar(100) DEFAULT NULL,
  `singAns6` varchar(5) DEFAULT NULL,
  `singUan6` varchar(5) DEFAULT NULL,
  `singOpa6` varchar(100) DEFAULT NULL,
  `singOpb6` varchar(100) DEFAULT NULL,
  `singOpc6` varchar(100) DEFAULT NULL,
  `singOpd6` varchar(100) DEFAULT NULL,
  `singTtl7` varchar(100) DEFAULT NULL,
  `singAns7` varchar(5) DEFAULT NULL,
  `singUan7` varchar(5) DEFAULT NULL,
  `singOpa7` varchar(100) DEFAULT NULL,
  `singOpb7` varchar(100) DEFAULT NULL,
  `singOpc7` varchar(100) DEFAULT NULL,
  `singOpd7` varchar(100) DEFAULT NULL,
  `singTtl8` varchar(100) DEFAULT NULL,
  `singAns8` varchar(5) DEFAULT NULL,
  `singUan8` varchar(5) DEFAULT NULL,
  `singOpa8` varchar(100) DEFAULT NULL,
  `singOpb8` varchar(100) DEFAULT NULL,
  `singOpc8` varchar(100) DEFAULT NULL,
  `singOpd8` varchar(100) DEFAULT NULL,
  `singTtl9` varchar(100) DEFAULT NULL,
  `singAns9` varchar(5) DEFAULT NULL,
  `singUan9` varchar(5) DEFAULT NULL,
  `singOpa9` varchar(100) DEFAULT NULL,
  `singOpb9` varchar(100) DEFAULT NULL,
  `singOpc9` varchar(100) DEFAULT NULL,
  `singOpd9` varchar(100) DEFAULT NULL,
  `multTtl0` varchar(100) DEFAULT NULL,
  `multAns0` varchar(5) DEFAULT NULL,
  `multUan0` varchar(5) DEFAULT NULL,
  `multOpa0` varchar(100) DEFAULT NULL,
  `multOpb0` varchar(100) DEFAULT NULL,
  `multOpc0` varchar(100) DEFAULT NULL,
  `multOpd0` varchar(100) DEFAULT NULL,
  `multTtl1` varchar(100) DEFAULT NULL,
  `multAns1` varchar(5) DEFAULT NULL,
  `multUan1` varchar(5) DEFAULT NULL,
  `multOpa1` varchar(100) DEFAULT NULL,
  `multOpb1` varchar(100) DEFAULT NULL,
  `multOpc1` varchar(100) DEFAULT NULL,
  `multOpd1` varchar(100) DEFAULT NULL,
  `multTtl2` varchar(100) DEFAULT NULL,
  `multAns2` varchar(5) DEFAULT NULL,
  `multUan2` varchar(5) DEFAULT NULL,
  `multOpa2` varchar(100) DEFAULT NULL,
  `multOpb2` varchar(100) DEFAULT NULL,
  `multOpc2` varchar(100) DEFAULT NULL,
  `multOpd2` varchar(100) DEFAULT NULL,
  `multTtl3` varchar(100) DEFAULT NULL,
  `multAns3` varchar(5) DEFAULT NULL,
  `multUan3` varchar(5) DEFAULT NULL,
  `multOpa3` varchar(100) DEFAULT NULL,
  `multOpb3` varchar(100) DEFAULT NULL,
  `multOpc3` varchar(100) DEFAULT NULL,
  `multOpd3` varchar(100) DEFAULT NULL,
  `multTtl4` varchar(100) DEFAULT NULL,
  `multAns4` varchar(5) DEFAULT NULL,
  `multUan4` varchar(5) DEFAULT NULL,
  `multOpa4` varchar(100) DEFAULT NULL,
  `multOpb4` varchar(100) DEFAULT NULL,
  `multOpc4` varchar(100) DEFAULT NULL,
  `multOpd4` varchar(100) DEFAULT NULL,
  `multTtl5` varchar(100) DEFAULT NULL,
  `multAns5` varchar(5) DEFAULT NULL,
  `multUan5` varchar(5) DEFAULT NULL,
  `multOpa5` varchar(100) DEFAULT NULL,
  `multOpb5` varchar(100) DEFAULT NULL,
  `multOpc5` varchar(100) DEFAULT NULL,
  `multOpd5` varchar(100) DEFAULT NULL,
  `multTtl6` varchar(100) DEFAULT NULL,
  `multAns6` varchar(5) DEFAULT NULL,
  `multUan6` varchar(5) DEFAULT NULL,
  `multOpa6` varchar(100) DEFAULT NULL,
  `multOpb6` varchar(100) DEFAULT NULL,
  `multOpc6` varchar(100) DEFAULT NULL,
  `multOpd6` varchar(100) DEFAULT NULL,
  `multTtl7` varchar(100) DEFAULT NULL,
  `multAns7` varchar(5) DEFAULT NULL,
  `multUan7` varchar(5) DEFAULT NULL,
  `multOpa7` varchar(100) DEFAULT NULL,
  `multOpb7` varchar(100) DEFAULT NULL,
  `multOpc7` varchar(100) DEFAULT NULL,
  `multOpd7` varchar(100) DEFAULT NULL,
  `multTtl8` varchar(100) DEFAULT NULL,
  `multAns8` varchar(5) DEFAULT NULL,
  `multUan8` varchar(5) DEFAULT NULL,
  `multOpa8` varchar(100) DEFAULT NULL,
  `multOpb8` varchar(100) DEFAULT NULL,
  `multOpc8` varchar(100) DEFAULT NULL,
  `multOpd8` varchar(100) DEFAULT NULL,
  `multTtl9` varchar(100) DEFAULT NULL,
  `multAns9` varchar(5) DEFAULT NULL,
  `multUan9` varchar(5) DEFAULT NULL,
  `multOpa9` varchar(100) DEFAULT NULL,
  `multOpb9` varchar(100) DEFAULT NULL,
  `multOpc9` varchar(100) DEFAULT NULL,
  `multOpd9` varchar(100) DEFAULT NULL,
  `analTtl0` varchar(100) DEFAULT NULL,
  `analAns0` varchar(100) DEFAULT NULL,
  `analCom0` varchar(100) DEFAULT NULL,
  `analSco0` varchar(10) DEFAULT NULL,
  `analTtl1` varchar(100) DEFAULT NULL,
  `analAns1` varchar(100) DEFAULT NULL,
  `analCom1` varchar(100) DEFAULT NULL,
  `analSco1` varchar(10) DEFAULT NULL,
  `analTtl2` varchar(100) DEFAULT NULL,
  `analAns2` varchar(100) DEFAULT NULL,
  `analCom2` varchar(100) DEFAULT NULL,
  `analSco2` varchar(10) DEFAULT NULL,
  `analTtl3` varchar(100) DEFAULT NULL,
  `analAns3` varchar(100) DEFAULT NULL,
  `analCom3` varchar(100) DEFAULT NULL,
  `analSco3` varchar(10) DEFAULT NULL,
  `analTtl4` varchar(100) DEFAULT NULL,
  `analAns4` varchar(100) DEFAULT NULL,
  `analCom4` varchar(100) DEFAULT NULL,
  `analSco4` varchar(10) DEFAULT NULL,
  `analTtl5` varchar(100) DEFAULT NULL,
  `analAns5` varchar(100) DEFAULT NULL,
  `analCom5` varchar(100) DEFAULT NULL,
  `analSco5` varchar(10) DEFAULT NULL,
  `analTtl6` varchar(100) DEFAULT NULL,
  `analAns6` varchar(100) DEFAULT NULL,
  `analCom6` varchar(100) DEFAULT NULL,
  `analSco6` varchar(10) DEFAULT NULL,
  `analTtl7` varchar(100) DEFAULT NULL,
  `analAns7` varchar(100) DEFAULT NULL,
  `analCom7` varchar(100) DEFAULT NULL,
  `analSco7` varchar(10) DEFAULT NULL,
  `analTtl8` varchar(100) DEFAULT NULL,
  `analAns8` varchar(100) DEFAULT NULL,
  `analCom8` varchar(100) DEFAULT NULL,
  `analSco8` varchar(10) DEFAULT NULL,
  `analTtl9` varchar(100) DEFAULT NULL,
  `analAns9` varchar(100) DEFAULT NULL,
  `analCom9` varchar(100) DEFAULT NULL,
  `analSco9` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Test_Record_All`
--

LOCK TABLES `Test_Record_All` WRITE;
/*!40000 ALTER TABLE `Test_Record_All` DISABLE KEYS */;
INSERT INTO `Test_Record_All` VALUES (1,'F1012885_201603080105821','PSD_NPI_TDE_SMT_FA','超级管理员','100','0','40','28','3','5','2','5','3','5','3','20',' 在FA重測“smokey Pad_DFU --run”的命令必須要先重新restore。                    ','T','F',' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T','F','Swap test是一種證明物料問題的好方法。                                        ','T','F','','','','','','','','','','','','','','','','','','','','','',' 以下问题属于SMA问题的是','A','B',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity',' 以下问题属于SMA问题的是','A','B',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',' Device處於哪些mode時可以在PurpleRestore3界面看到信息','ABC','B',' DFU',' iBoot',' OS',' Diag',' Device處於哪些mode時可以在PurpleRestore3界面看到信息','ABC','B',' DFU',' iBoot',' OS',' Diag',' RBM测试中，我們通過修改命令中哪個參數的值來控制最長測試時間','D','B',' -time',' -wait',' -waittime',' -tout','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','请简析SoC工站各种模式之间的差异和联系。','dfghdfshgffg','Comments:dfdsfdsf','6','谈谈DFU工站在整个SMT测试线的地位及与前后各工站的关联。','fghdfg','Comments:deaf','7','浅谈DFU工站的Wifi固件root包中prm文件的内容的理解。','rthtydhjntyh','Comments:','15','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(2,'F1012885_20160308160534','PSD_NPI_TDE_SMT_FA','超级管理员','100','0','100','48','3','5','2','5','3','5','3','20','CB 只有三种状态，分别是：Pass, Fail, Incomplete.                                 ','F','F','DFU測試時需要連接PDCA網路，SoC測試則不需要。                              ','T','F',' 在FA重測“smokey Pad_DFU --run”的命令必須要先重新restore。                    ','T','F','','','','','','','','','','','','','','','','','','','','','',' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的','D','C',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand',' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法','A','C',' 目檢',' X-Ray',' CT-Scan',' Cross section','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',' 以下SoC测试中，偏重于测试DDR的是哪些','ACD','BC',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54',' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的','BD','BC',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］',' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的','BD','BD',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','谈谈DFU工站在整个SMT测试线的地位及与前后各工站的关联。','wergbdfsbgbdfs','Comments:','18','请简析SoC工站各种模式之间的差异和联系。','dfghdfsghs','Comments:','20','Scenario 603的fail如何展开FA工作，请从原理解析。','dfbhsfghdf','Comments:','10','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(3,'F1012885_20160308170547','PSD_NPI_TDE_SMT_FA','超级管理员','100','0','100','53','3','5','2','5','3','5','3','20','不同SoC revision的unit，通常需要使用不同的PERTOS和RBM image來測試。          ','T','T',' Kernel Panic的fail都是software的問題。                                          ','F','T','在Diag中turn on bluetooth只需要進diags然後輸入“bluetooth --on”回車就可以了 。    ','F','F','','','','','','','','','','','','','','','','','','','','','',' Pad_DFU的smokey测试包含以下哪些部分','C','B',' BBDFU',' BTDFU',' SHDFU',' WLDFU',' 通常情況下，以下哪些chip相關的fail是ICT, FCT cover不到，會在DFU抓到的','D','A',' SEP EEPROM',' Tristar   (開關)',' Compass （指南針',' Nand','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',' Unit處於哪些mode時可以正常使用mobile_restore','ABC','AB',' DFU',' iBoot',' OS',' Diag',' 在使用mobile_restore 讓unit進入PERTOS時，下列組合中的哪些是可以使用的','BD','BD',' -T ［PathToFile］',' -T PERTOS',' -F PERTOS',' -F ［PathToFile］',' SoC測試fail主要可能涉及以下哪些物料的問題','AD','AC',' Memory',' Nand',' Charger IC',' SoC','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Scenario 603的fail如何展开FA工作，请从原理解析。','是感到快樂時','Comments:','18','请简析SoC工站各种模式之间的差异和联系。','阿都分手根深蒂固 ','Comments:','15','浅谈DFU工站的Wifi固件root包中prm文件的内容的理解。','阿的說法','Comments:','10','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(4,'F1012885_20160309112618','PSD_NPI_TDE_SMT_FA','超级管理员','100','0','100','20','3','5','2','5','3','5','3','20','Swap test是一種證明物料問題的好方法。                                        ','T','F','DFU測試時需要連接PDCA網路，SoC測試則不需要。                              ','T','T',' 在FA重測“smokey Pad_DFU --run”的命令必須要先重新restore。                    ','T','T','','','','','','','','','','','','','','','','','','','','','',' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法','A','A',' 目檢',' X-Ray',' CT-Scan',' Cross section',' 一般來說，下列哪些部門是我們在FA過程中需要經常聯繫的','D','A',' SQE 材料問題(切板，寄料)',' DFM/ME   （CT掃描切料',' OPM   寄板子',' IE','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',' 以下SoC测试中，偏重于测试DDR的是哪些','ACD','A',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54',' 以下哪些參數是在FA使用mobile_restore時必需的','ABD','A',' variant',' usb address',' timeout',' bundle',' 以下哪些PERTOS命令可以show出DDR vendor','BC','AB',' ddr cal',' ddr print info',' ddr calw nocheck',' fuse config','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','请简析SoC工站各种模式之间的差异和联系。','RTH','','','谈谈DFU工站在整个SMT测试线的地位及与前后各工站的关联。','FGHF','','','请简析SoC工站各种模式之间的差异和联系。','FH','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(5,'F1012885_20160309113143','PSD_NPI_TDE_SMT_FA','超级管理员','100','0','100','10','3','5','2','5','3','5','3','20','DFU測試時需要連接PDCA網路，SoC測試則不需要。                              ','T','F',' 目前的 SoC 測試主要包含PERTOS測試和RBM測試兩大部分。                      ','T','T',' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T','T','','','','','','','','','','','','','','','','','','','','','',' 以下哪些不是第一次write cb之前可能需要先輸入的命令','D','B',' cbini  （init control bit',' nandinit',' rtc –set (rtc set time)',' syscfg init',' 以下哪些是用來檢查測試fail有沒有SMA 问题的方法','A','C',' 目檢',' X-Ray',' CT-Scan',' Cross section','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',' 以下哪些參數是在FA使用mobile_restore時必需的','ABD','B',' variant',' usb address',' timeout',' bundle',' 以下SoC测试中，偏重于测试DDR的是哪些','ACD','B',' sc run 603',' sc run 46（gpu)',' ddr margin test 0x303 50',' sc run 54',' SoC測試fail主要可能涉及以下哪些物料的問題','AD','BC',' Memory',' Nand',' Charger IC',' SoC','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','谈谈DFU工站在整个SMT测试线的地位及与前后各工站的关联。','DF','','','请简析SoC工站各种模式之间的差异和联系。','DF','','','Scenario 603的fail如何展开FA工作，请从原理解析。','DF','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(6,'F1012885_20160311164018','PSD_NPI_TDE_SMT_FA','超级管理员','100','0','100','55','3','5','2','5','3','5','3','20','Swap test是一種證明物料問題的好方法。                                        ','T','F',' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T','F',' 在PERTOS中，我們可以使用“help”獲取更多的命令信息。                     ','T','F','','','','','','','','','','','','','','','','','','','','','',' Pad_DFU的smokey测试包含以下哪些部分','C','C',' BBDFU',' BTDFU',' SHDFU',' WLDFU',' 以下问题属于SMA问题的是','A','C',' Solder open',' Solder bridge',' Foreign material under chip',' Incorrect material polarity','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',' Device處於哪些mode時可以在PurpleRestore3界面看到信息','ABC','ABC',' DFU',' iBoot',' OS',' Diag',' Unit處於哪些mode時可以正常使用mobile_restore','ABC','ACD',' DFU',' iBoot',' OS',' Diag',' 分析ddr margin test的fail时，需要读出以下那些的margin值輔助判断','BCD','A',' CK',' CA',' RD',' WR','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','浅谈DFU工站的Wifi固件root包中prm文件的内容的理解。','都是法国的风格和山东','Comments:fdsfdsfdsfdsf','17','请简析SoC工站各种模式之间的差异和联系。','地方很多改变的让他好好','Comments:gdfsgdfgsdfgdfgft','8','请简析SoC工站各种模式之间的差异和联系。','人挺好吧','Comments:dsfgdgdfgf','20','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Test_Record_All` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Testers`
--

DROP TABLE IF EXISTS `Testers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Testers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `passwords` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `unread` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testers`
--

LOCK TABLES `Testers` WRITE;
/*!40000 ALTER TABLE `Testers` DISABLE KEYS */;
INSERT INTO `Testers` VALUES (1,'F1012885','HJKL;','超级管理员','PSD_NPI_TDE_SMT_FA','2');
/*!40000 ALTER TABLE `Testers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Testers_Record`
--

DROP TABLE IF EXISTS `Testers_Record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Testers_Record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `time` varchar(30) NOT NULL,
  `cost` varchar(30) NOT NULL,
  `sum` varchar(30) NOT NULL,
  `score_obj` varchar(30) NOT NULL,
  `timeStamp` varchar(50) DEFAULT NULL,
  `unread` varchar(30) NOT NULL,
  `score` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testers_Record`
--

LOCK TABLES `Testers_Record` WRITE;
/*!40000 ALTER TABLE `Testers_Record` DISABLE KEYS */;
INSERT INTO `Testers_Record` VALUES (1,'F1012885','超级管理员','100','1','40','0','201603080105821','N','28'),(2,'F1012885','超级管理员','100','0','100','5','20160308160534','N','53'),(3,'F1012885','超级管理员','100','0','100','10','20160308170547','N','53'),(4,'F1012885','超级管理员','100','0','100','20','20160309112618','Y','0'),(5,'F1012885','超级管理员','100','0','100','10','20160309113143','Y','0'),(6,'F1012885','超级管理员','100','1','100','10','20160311164018','N','55');
/*!40000 ALTER TABLE `Testers_Record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-25  8:00:09
