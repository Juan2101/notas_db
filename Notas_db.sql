CREATE DATABASE  IF NOT EXISTS `Notas_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Notas_db`;
-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: Notas_db
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Musica'),(2,'Entretenimiento'),(3,'Fantacia'),(4,'Deportes'),(5,'Ciencia Ficcion'),(6,'Historia'),(7,'Clasico'),(8,'Infantil'),(9,'Violento'),(10,'Juvenil');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modificacion` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `descripcion` varchar(500) NOT NULL,
  `eliminar` tinyint NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_notas_usuarios_idx` (`usuario_id`),
  CONSTRAINT `FK_notas_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Star Wars: Episodio IV - Una nueva esperanza','2021-08-31 23:38:17',NULL,'Fue la primera pel??cula que se estren?? de la saga Star Wars, y se ordena como la cuarta en t??rminos de su cronolog??a interna: dos filmes siguientes continuar??an la trama de la trilog??a original (El Imperio contraataca y El retorno del Jedi), mientras que otra trilog??a (La amenaza fantasma, El ataque de los clones y La venganza de los Sith) describir??a los eventos previos a La guerra de las galaxias, centrada en torno al antagonista principal Darth Vader. El despertar de la fuerza fue ',0,5),(2,'Back to the Future','2021-08-31 23:38:17',NULL,'Back to the Future (titulada Volver al futuro o Vuelta al futuro en Hispanoam??rica y Regreso al futuro en Espa??a) es una pel??cula estadounidense de ciencia ficci??n y comedia de 1985 dirigida y escrita por Robert Zemeckis ???Bob Gale tambi??n colabor?? como guionista???, producida por Steven Spielberg y protagonizada por Michael J. Fox, Christopher Lloyd, Lea Thompson, Crispin Glover y Thomas F. Wilson. Relata las aventuras de Marty McFly, un joven rebelde e impulsivo que vive con sus padres y ',1,9),(3,'Raiders of the Lost Ark','2021-08-31 23:38:17',NULL,'Raiders of the Lost Ark (titulada En busca del arca perdida en Espa??a, posteriormente Indiana Jones en busca del arca perdida; e Indiana Jones y los cazadores del arca perdida en Hispanoam??rica) es una pel??cula estadounidense dirigida por Steven Spielberg y producida por George Lucas, y estrenada en 1981. Se trata de la primera pel??cula de la serie Indiana Jones y la segunda en t??rminos cronol??gicos del canon. ',1,2),(4,'The Matrix','2021-08-31 23:38:17',NULL,'The Matrix (titulada: Matrix en Hispanoam??rica y Espa??a) es una pel??cula de ciencia ficci??n escrita y dirigida por las hermanas Wachowski y protagonizada por Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss y Hugo Weaving. Estrenada en los Estados Unidos el 31 de marzo de 1999. Es la primera entrega de la trilog??a de Matrix de la que derivan (dado su ??xito) una serie de videojuegos, cortos animados y c??mics.',0,4),(5,'Spider-Man 2','2021-08-31 23:38:17',NULL,'Spider-Man 2 (conocida como El Hombre Ara??a 2 en Hispanoam??rica) es una pel??cula de superh??roes estadounidense de 2004 dirigida por Sam Raimi y escrita por Alvin Sargent a partir de una historia de Alfred Gough, Miles Millar y Michael ',1,8),(6,'Liga de la Justicia de Zack Snyder','2021-08-31 23:38:17',NULL,'La Liga de la Justicia de Zack Snyder1???2??? (en ingl??s: Zack Snyder\'s Justice League), com??nmente conocida como ??Snyder Cut??, es una versi??n del director de la pel??cula estadounidense de superh??roes del mismo nombre de 2017, la quinta pel??cula del Universo extendido de DC (DCEU) y basada en el equipo de superh??roes del mismo nombre de DC Comics. Esta versi??n de 4 horas de duraci??n es la visi??n original del director Zack Snyder ',0,6),(7,'Parque Jur??sico','2021-08-31 23:38:17',NULL,'Parque Jur??sico (t??tulo original en ingl??s: Jurassic Park) es una pel??cula de ciencia ficci??n y aventuras dirigida por el cineasta estadounidense Steven Spielberg y estrenada en 1993. Su trama est?? basada en el libro hom??nimo de Michael Crichton y relata las vivencias ',0,3),(8,'Atr??pame si puedes','2021-08-31 23:38:17',NULL,'Atr??pame si puedes (Catch Me If You Can, en la versi??n original en ingl??s) es una pel??cula biogr??fica estadounidense de comedia dram??tica criminal de 2002, basada en la vida de Frank Abagnale Jr., que antes de cumplir diecinueve a??os consigui?? millones de d??lares haci??ndose pasar por piloto de una empresa a??rea, por m??dico y por abogado. Su principal modus operandi era la falsificaci??n de',0,7),(9,'Inglourious Basterds','2021-08-31 23:38:17',NULL,'Inglourious Basterds es una pel??cula de 2009 escrita y dirigida por Quentin Tarantino y protagonizada por Brad Pitt, Christoph Waltz y M??lanie Laurent. Titulada Malditos bastardos2??? en Espa??a y Bastardos sin gloria3??? en Hispanoam??rica, la pel??cula es una ficci??n ucr??nica sobre la Alemania nazi. El estilo recuerda al spaghetti western y al cine b??lico ',1,10),(10,'Shrek','2021-08-31 23:38:17',NULL,'Shrek es una pel??cula animada estadounidense de 2001, dirigida por el neozeland??s Andrew Adamson y la estadounidense Vicky Jenson. La cinta cuenta con las voces de Mike Myers, Cameron Diaz, Eddie Murphy y John Lithgow, entre otros. Est?? basada en el libro titulado Shrek!, de William Steig (1990). La pel??cula gan?? el ??scar ',1,1);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nota_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Fk_notas_categorias_notas_idx` (`nota_id`),
  KEY `FK_notas_categorias_2_idx` (`categoria_id`),
  CONSTRAINT `FK_notas_categorias_1` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `FK_notas_categorias_2` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (1,1,4),(2,1,6),(3,2,10),(4,3,5),(5,3,4),(6,3,8),(7,4,7),(8,5,9),(9,6,1),(10,6,3),(11,7,2),(12,8,6),(13,9,7),(14,10,4);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'James','James@gmail.com'),(2,'Ingrid','Ingrid@gmail.com'),(3,'Greta','Greta@gmail.com'),(4,'Henry','Henry@gmail.com'),(5,'Charlie','Charlie@gmail.com'),(6,'John','John@gmail.com'),(7,'Lillian','Lillian@gmail.com'),(8,'Sophia','Sophia@gmail.com'),(9,'Robert','Robert@gmail.com'),(10,'William','William@gmail.com');
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

-- Dump completed on 2021-09-01 13:19:01
