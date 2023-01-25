CREATE DATABASE  IF NOT EXISTS `retoree_termproject` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `retoree_termproject`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: retoree_termproject
-- ------------------------------------------------------
-- Server version	8.0.31

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
  `ADMIN_UID` varchar(200) NOT NULL COMMENT '관리자 대표값',
  `ADMIN_ID` varchar(200) NOT NULL COMMENT '관리자 아이디',
  `ADMIN_PWD` varchar(200) NOT NULL COMMENT '관리자 비밀번호',
  PRIMARY KEY (`ADMIN_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='관리자';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('AD1','admin01','admin01');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `QUESTIONS_UID` varchar(200) NOT NULL COMMENT '문항 대표값',
  `EXAMPLE_UID` varchar(200) NOT NULL COMMENT '설문답항 대표값',
  KEY `FK_QUESTIONS_LIST_TO_ANSWERS` (`QUESTIONS_UID`),
  KEY `FK_EXAMPLE_LIST_TO_ANSWERS` (`EXAMPLE_UID`),
  CONSTRAINT `FK_EXAMPLE_LIST_TO_ANSWERS` FOREIGN KEY (`EXAMPLE_UID`) REFERENCES `example_list` (`EXAMPLE_UID`),
  CONSTRAINT `FK_QUESTIONS_LIST_TO_ANSWERS` FOREIGN KEY (`QUESTIONS_UID`) REFERENCES `questions_list` (`QUESTIONS_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='답변';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES ('Q1','E1-1'),('Q1','E1-2'),('Q1','E1-3'),('Q2','E1'),('Q2','E2'),('Q2','E3'),('Q2','E4'),('Q2','E5'),('Q3','E1'),('Q3','E2'),('Q3','E3'),('Q3','E4'),('Q3','E5'),('Q4','E1'),('Q4','E2'),('Q4','E3'),('Q4','E4'),('Q4','E5'),('Q5','E1'),('Q5','E2'),('Q5','E3'),('Q5','E4'),('Q5','E5');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example_list`
--

DROP TABLE IF EXISTS `example_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `example_list` (
  `EXAMPLE_UID` varchar(200) NOT NULL COMMENT '설문답항 대표값',
  `EXAMPLE` varchar(200) NOT NULL COMMENT '설문답항',
  `ORDERS` varchar(200) NOT NULL COMMENT '주문',
  PRIMARY KEY (`EXAMPLE_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='설문답항목록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example_list`
--

LOCK TABLES `example_list` WRITE;
/*!40000 ALTER TABLE `example_list` DISABLE KEYS */;
INSERT INTO `example_list` VALUES ('E1','전혀 아니다','1'),('E1-1','무선 이어폰','1'),('E1-2','헤드셋','2'),('E1-3','유선 이어폰','3'),('E2','아니다','2'),('E3','보통이다','3'),('E4','그렇다','4'),('E5','매우 그렇다','5');
/*!40000 ALTER TABLE `example_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_list`
--

DROP TABLE IF EXISTS `questions_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_list` (
  `QUESTIONS_UID` varchar(200) NOT NULL COMMENT '문항 대표값',
  `QUESTIONS` varchar(200) NOT NULL COMMENT '설문문항',
  `ORDERS` varchar(200) NOT NULL COMMENT '주문',
  PRIMARY KEY (`QUESTIONS_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='설문문항 목록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_list`
--

LOCK TABLES `questions_list` WRITE;
/*!40000 ALTER TABLE `questions_list` DISABLE KEYS */;
INSERT INTO `questions_list` VALUES ('Q1','현재 사용중인 제품을 선택해주세요. (답은 한가지만 선택 가능)','1'),('Q2','현재 사용중인 제품의 가격이 적당하다고 생각하십니까? (답은 한가지만 선택 가능) ','2'),('Q3','사용중인 제품의 음향은 만족스러우신가요? (답은 한가지만 선택 가능)','3'),('Q4','사용중인 제품의 디자인은 만족스러우신가요? (답은 한가지만 선택 가능)','4'),('Q5','사용중인 제품은 사용이 편리한가요? (답은 한가지만 선택 가능)','5');
/*!40000 ALTER TABLE `questions_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_list`
--

DROP TABLE IF EXISTS `users_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_list` (
  `USERS_UID` varchar(200) NOT NULL COMMENT '사용자 대표값',
  `PHONE` varchar(200) NOT NULL COMMENT '핸드폰번호',
  `NAME` varchar(200) NOT NULL COMMENT '이름',
  `EMAIL` varchar(200) NOT NULL COMMENT '이메일',
  `ID` varchar(200) NOT NULL COMMENT '아이디',
  `PWD` varchar(200) NOT NULL COMMENT '비밀번호',
  `SURVEYCHECK` varchar(200) NOT NULL COMMENT '설문 체크',
  `AUTH` varchar(200) NOT NULL COMMENT '권한',
  PRIMARY KEY (`USERS_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='사용자(설문자) 목록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_list`
--

LOCK TABLES `users_list` WRITE;
/*!40000 ALTER TABLE `users_list` DISABLE KEYS */;
INSERT INTO `users_list` VALUES ('U2','010-4444-4444','머라이어 캐리','mariah1as@gmail.com','mariah','111111','YES','NO'),('U3','010-3456-3456','테일러 스위프트','taylor@gmail.com','taylor','taylor','YES','NO'),('U6','010-2023-0102','관리자','admin@gmail.com','admin01','admin01','NO','YES');
/*!40000 ALTER TABLE `users_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24 17:57:26
