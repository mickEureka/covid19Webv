-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: proyect_covid19
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `tb_administrador`
--

DROP TABLE IF EXISTS `tb_administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_administrador` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `nomape_admin` varchar(45) DEFAULT NULL,
  `fono_admin` varchar(45) DEFAULT NULL,
  `usuario_admin` varchar(45) DEFAULT NULL,
  `contra_admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_administrador`
--

LOCK TABLES `tb_administrador` WRITE;
/*!40000 ALTER TABLE `tb_administrador` DISABLE KEYS */;
INSERT INTO `tb_administrador` VALUES (1,'Miguel Angel Huillca','963254125','admin01','admin'),(2,'Andrea Gutierrez','33333','admin02','admin'),(7,'Erick Prado','956321454','admin04','admin');
/*!40000 ALTER TABLE `tb_administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sintomas`
--

DROP TABLE IF EXISTS `tb_sintomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sintomas` (
  `cod_sintomas` int(2) NOT NULL,
  `Departamento` varchar(45) DEFAULT NULL,
  `Provincia` varchar(45) DEFAULT NULL,
  `Distrito` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `NumeroFamiliar` varchar(45) DEFAULT NULL,
  `Profesion` varchar(45) DEFAULT NULL,
  `PrimerSintoma` varchar(45) DEFAULT NULL,
  `SegundoSintoma` varchar(45) DEFAULT NULL,
  `TercerSintoma` varchar(45) DEFAULT NULL,
  `CuartoSintoma` varchar(45) DEFAULT NULL,
  `QuintoSintoma` varchar(45) DEFAULT NULL,
  `SextoSintoma` varchar(45) DEFAULT NULL,
  `Ninguna` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `cod_usuario` int(2) NOT NULL,
  PRIMARY KEY (`cod_sintomas`),
  KEY `fk_tb_sintomas_tb_usuario_idx` (`cod_usuario`),
  CONSTRAINT `fk_tb_sintomas_tb_usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `tb_usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sintomas`
--

LOCK TABLES `tb_sintomas` WRITE;
/*!40000 ALTER TABLE `tb_sintomas` DISABLE KEYS */;
INSERT INTO `tb_sintomas` VALUES (0,'Lima','Lima','Comas','Urb. San Jose 156','3','salud','Fiebre','Tos','Dolor de cabeza','Dolor de garganta','Dificultad en Respirar','Dolores Musculares','No tiene','prez@gmail.com',2),(1,'Lima','Lima','Lince','Av. Jose Dominguez 452','4','negocios','Fiebre ','Tos','Dolor de cabeza','Dolor de garganta','Dificuttad en respriar','Dolores Musciulares',NULL,'marianag@gmail.com',3),(2,'Lima','Lima','Miraflores','Av Larco Herrera 478','2','negocios','Fiebre','Tos','Dolor de cabeza','Dolor de garganta','Dificultad en respirar','Dolores Musculares',NULL,'rodri@hotmail.com',4),(3,'Lima','Lima','Agustino','jr. Marco Calaran 415','2','salud','Fiebre','Tos','Dolor de cabeza','Dolor de garganta','Dificultad en respirar','Dolores Musculares','No tiene','tanyrd@yahoo.es',5),(4,'Lima','Lima','Comas','Av. Tupac Amaru 1001','2','negocios','Fiebre ','Tos','Dolor de cabeza','Dolor de garganta','Dificultad en respirar','Dolores Musculares',NULL,'carlosgr@gmail.com',6),(5,'Lima','Lima','Cercado de lima','Av. Salvador Sur 120','1','negocios','Fiebre','Tos','Dolor de cabeza','Dolor de garganta','Dificultad en respirar','Dolores Musculares','No tiene','dashagt@yahoo.es',7);
/*!40000 ALTER TABLE `tb_sintomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `cod_usuario` int(2) NOT NULL AUTO_INCREMENT,
  `nom_usuario` varchar(20) DEFAULT NULL,
  `ape_usuario` varchar(20) DEFAULT NULL,
  `doc_usuario` varchar(8) DEFAULT NULL,
  `tel_usuario` varchar(9) DEFAULT NULL,
  `login_usuario` varchar(10) DEFAULT NULL,
  `pass_usuario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (2,'Erick Alberto','Peralta Rojas','58745214','3652145','miguelp','erickp'),(3,'Mariana','Gonzalez Robles','74589632','985214521','marianag','mariana'),(4,'Rodrigo','Rangel Perez','85412547','958741254','rodrir','rodri'),(5,'Tania','Del Prado Rot','21458741','965214587','taniap','tania'),(6,'Carlos Gerardo','Huillca Derap','52145874','963254125','carlosh','carlos'),(7,'Dasha','Hernandez Perez','45214521','3625145','dashah','dasha');
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-02 17:56:21
