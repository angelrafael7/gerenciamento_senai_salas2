-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: salas_db
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reserva_sala`
--

DROP TABLE IF EXISTS `reserva_sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_sala` (
  `reserva_id` bigint NOT NULL,
  `sala_id` bigint NOT NULL,
  PRIMARY KEY (`reserva_id`,`sala_id`),
  KEY `FKplm2ox2ftt06edmxssocdcv7d` (`sala_id`),
  CONSTRAINT `FKguc8o989ipdv14vjfxu15e1w7` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id`),
  CONSTRAINT `FKplm2ox2ftt06edmxssocdcv7d` FOREIGN KEY (`sala_id`) REFERENCES `salas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_sala`
--

LOCK TABLES `reserva_sala` WRITE;
/*!40000 ALTER TABLE `reserva_sala` DISABLE KEYS */;
INSERT INTO `reserva_sala` VALUES (36,2);
/*!40000 ALTER TABLE `reserva_sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva_usuario`
--

DROP TABLE IF EXISTS `reserva_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva_usuario` (
  `reserva_id` bigint NOT NULL,
  `usuario_id` bigint NOT NULL,
  PRIMARY KEY (`reserva_id`,`usuario_id`),
  KEY `FKk3wr53mwcvyd47fbhjrf5lyvy` (`usuario_id`),
  CONSTRAINT `FK9a3y2b8alxshlad0ayd2a54h1` FOREIGN KEY (`reserva_id`) REFERENCES `reservas` (`id`),
  CONSTRAINT `FKk3wr53mwcvyd47fbhjrf5lyvy` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva_usuario`
--

LOCK TABLES `reserva_usuario` WRITE;
/*!40000 ALTER TABLE `reserva_usuario` DISABLE KEYS */;
INSERT INTO `reserva_usuario` VALUES (36,4);
/*!40000 ALTER TABLE `reserva_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint DEFAULT NULL,
  `sala_id` bigint DEFAULT NULL,
  `data_reserva` datetime(6) NOT NULL,
  `data_hora_fim` datetime(6) DEFAULT NULL,
  `data_hora_inicio` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sala_id` (`sala_id`,`data_reserva`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `FK5nycg9b8h736nuu9g4aejw19n` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`id`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`sala_id`) REFERENCES `salas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (36,NULL,NULL,'2024-10-25 16:45:46.766095','2024-10-30 12:00:00.000000','2024-10-30 10:00:00.000000');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `departamento` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `capacidade` int NOT NULL,
  `equipamentos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,'Recursos Humanos','Sala de Reunião',_binary '',0,NULL),(2,'Policia','Sala de Treinamento',_binary '',0,NULL),(3,'Lanchonete','Sala de Lanche',_binary '',0,NULL),(4,NULL,'Sala 1',_binary '\0',0,NULL),(5,NULL,'Sala 1',_binary '\0',0,NULL),(6,NULL,'Sala 1',_binary '\0',0,NULL),(7,NULL,'Sala 1',_binary '\0',0,NULL),(8,NULL,'Sala 1',_binary '\0',0,NULL),(9,NULL,NULL,_binary '\0',0,NULL),(10,NULL,'Sala de Reunião',_binary '\0',0,NULL),(11,NULL,'Sala 1',_binary '\0',0,NULL),(12,NULL,'Sala 1',_binary '\0',0,NULL),(13,NULL,'Sala 1',_binary '\0',0,NULL),(14,NULL,'Sala 1',_binary '\0',0,NULL),(15,NULL,'Sala 1',_binary '\0',0,NULL);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `capacidade` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1,'Sala BeR','Administração',_binary '',22),(2,'Sala Treino','Administração',_binary '',22),(3,'Sala P','Administração',_binary '\0',22);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `excluido` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (4,'Rafael de Freitas','rafaelgwgu7@gmail.com','48991521248','77545787457','',_binary '\0'),(5,'João Silva P','joao.silva@example.com','123456789','12345678900','',_binary '\0'),(6,'Usuário 1',NULL,NULL,NULL,'',_binary '\0'),(7,'Usuário 1',NULL,NULL,NULL,'',_binary '\0'),(8,'Usuário 1',NULL,NULL,NULL,'',_binary '\0'),(9,'Usuário 1',NULL,NULL,NULL,'',_binary '\0'),(10,'Usuário 1',NULL,NULL,NULL,'',_binary '\0'),(11,'Usuário 1',NULL,NULL,NULL,'',_binary '\0');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25 21:01:20
