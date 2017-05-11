-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: 192.168.5.10    Database: 192.168.5.10
-- ------------------------------------------------------
-- Server version	5.0.95-log

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
-- Table structure for table `afialta`
--

DROP TABLE IF EXISTS `afialta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afialta` (
  `matricula` varchar(12) collate utf8_unicode_ci NOT NULL,
  `paterno` varchar(20) collate utf8_unicode_ci default NULL,
  `materno` varchar(20) collate utf8_unicode_ci default NULL,
  `nombre` varchar(25) collate utf8_unicode_ci default NULL,
  `hclinica` varchar(12) collate utf8_unicode_ci default NULL,
  `empresa` varchar(255) collate utf8_unicode_ci default NULL,
  `tafiliado` varchar(12) collate utf8_unicode_ci default NULL,
  `relacion` tinyint(2) unsigned NOT NULL default '0',
  `fcesantia` date default '0000-00-00',
  `uaporte` date default '0000-00-00',
  `eclasifica` tinyint(2) unsigned NOT NULL default '0',
  `nominal` tinyint(2) unsigned NOT NULL default '0',
  `npatronal` varchar(12) collate utf8_unicode_ci NOT NULL,
  `mora` tinyint(2) unsigned NOT NULL default '0',
  `fretiro` date default '0000-00-00',
  PRIMARY KEY  (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `afibaja`
--

DROP TABLE IF EXISTS `afibaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afibaja` (
  `matricula` varchar(12) collate utf8_unicode_ci NOT NULL,
  `paterno` varchar(20) collate utf8_unicode_ci default NULL,
  `materno` varchar(20) collate utf8_unicode_ci default NULL,
  `nombre` varchar(25) collate utf8_unicode_ci default NULL,
  `hclinica` varchar(12) collate utf8_unicode_ci default NULL,
  `empresa` varchar(255) collate utf8_unicode_ci default NULL,
  `tafiliado` varchar(12) collate utf8_unicode_ci default NULL,
  `relacion` tinyint(2) unsigned NOT NULL default '0',
  `fcesantia` date default '0000-00-00',
  `uaporte` date default '0000-00-00',
  `eclasifica` tinyint(2) unsigned NOT NULL default '0',
  `nominal` tinyint(2) unsigned NOT NULL default '0',
  `npatronal` varchar(12) collate utf8_unicode_ci NOT NULL,
  `mora` tinyint(2) unsigned NOT NULL default '0',
  `fretiro` date default '0000-00-00',
  PRIMARY KEY  (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `afiliado`
--

DROP TABLE IF EXISTS `afiliado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afiliado` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `matricula` varchar(12) collate utf8_unicode_ci NOT NULL,
  `paterno` varchar(20) collate utf8_unicode_ci default NULL,
  `materno` varchar(20) collate utf8_unicode_ci default NULL,
  `nombre` varchar(25) collate utf8_unicode_ci NOT NULL,
  `hclinica` varchar(12) collate utf8_unicode_ci NOT NULL,
  `empresa` varchar(255) collate utf8_unicode_ci NOT NULL,
  `tafiliado` varchar(12) collate utf8_unicode_ci NOT NULL,
  `activo` char(1) collate utf8_unicode_ci NOT NULL default '1',
  `grupofam` char(1) collate utf8_unicode_ci NOT NULL default '1',
  `relacion` tinyint(2) unsigned NOT NULL default '0',
  `fcesantia` date default '0000-00-00',
  `uaporte` date default '0000-00-00',
  `eclasifica` tinyint(2) unsigned NOT NULL default '0',
  `nominal` tinyint(2) unsigned NOT NULL default '0',
  `npatronal` varchar(12) collate utf8_unicode_ci NOT NULL,
  `mora` tinyint(2) unsigned NOT NULL default '0',
  `fretiro` date default '0000-00-00',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `matricula` (`matricula`),
  KEY `idx_matricula` (`matricula`),
  KEY `idx_paterno` (`paterno`),
  KEY `idx_materno` (`materno`),
  KEY `idx_nombre` (`nombre`),
  KEY `idx_tafiliado` (`tafiliado`)
) ENGINE=InnoDB AUTO_INCREMENT=68036 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `afioff`
--

DROP TABLE IF EXISTS `afioff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afioff` (
  `id` mediumint(7) unsigned NOT NULL auto_increment,
  `matricula` varchar(12) collate utf8_unicode_ci NOT NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `afion`
--

DROP TABLE IF EXISTS `afion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afion` (
  `id` mediumint(7) unsigned NOT NULL auto_increment,
  `matricula` varchar(12) collate utf8_unicode_ci NOT NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `agudezavisual`
--

DROP TABLE IF EXISTS `agudezavisual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agudezavisual` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `created_by` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_agudezavisual_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_agudezavisual_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6977 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aiepi`
--

DROP TABLE IF EXISTS `aiepi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aiepi` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `codigo` varchar(5) collate utf8_unicode_ci NOT NULL default '',
  `diagnostico` text collate utf8_unicode_ci NOT NULL,
  `servicio_id` smallint(2) unsigned NOT NULL,
  `observacion` varchar(45) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `fk_aiepi_servicio1_idx` (`servicio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alergias`
--

DROP TABLE IF EXISTS `alergias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alergias` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `alergia` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `afiliado_id` (`afiliado_id`,`medico_id`),
  KEY `medico_id` (`medico_id`),
  CONSTRAINT `alergias_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `alergias_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alta_medica`
--

DROP TABLE IF EXISTS `alta_medica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alta_medica` (
  `id` int(11) NOT NULL auto_increment,
  `matricula` varchar(15) collate utf8_unicode_ci NOT NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `analisis`
--

DROP TABLE IF EXISTS `analisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analisis` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL,
  `tipodato_id` smallint(2) unsigned NOT NULL,
  `parametroClinicoInicial` varchar(10) default NULL,
  `parametroClinicoFinal` varchar(20) default NULL,
  `parametroLinealidadInicial` varchar(10) default NULL,
  `parametroLinealidadFinal` varchar(10) default NULL,
  `unidad` varchar(10) default NULL,
  `posiblesvalores` text,
  `tipoanalisis_id` smallint(2) unsigned NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  `centro_salud_id` smallint(2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `tipodato_id` (`tipodato_id`),
  KEY `tipoanalisis_id` (`tipoanalisis_id`),
  KEY `centro_salud_id` (`centro_salud_id`),
  CONSTRAINT `analisis_ibfk_1` FOREIGN KEY (`tipodato_id`) REFERENCES `tipodato` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `analisis_ibfk_2` FOREIGN KEY (`tipoanalisis_id`) REFERENCES `tipoanalisis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `analisis_ibfk_3` FOREIGN KEY (`centro_salud_id`) REFERENCES `centro_salud` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `analisislaboratorio`
--

DROP TABLE IF EXISTS `analisislaboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analisislaboratorio` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `analisis_id` smallint(4) unsigned NOT NULL,
  `laboratorio_id` smallint(3) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `laboratorio_id` (`laboratorio_id`),
  KEY `analisis_id` (`analisis_id`),
  CONSTRAINT `analisislaboratorio_ibfk_1` FOREIGN KEY (`laboratorio_id`) REFERENCES `laboratorio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `analisislaboratorio_ibfk_2` FOREIGN KEY (`analisis_id`) REFERENCES `analisis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesbase`
--

DROP TABLE IF EXISTS `antecedentesbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesbase` (
  `id` int(11) NOT NULL auto_increment,
  `descripcion` varchar(45) default NULL,
  `cie10_id` smallint(5) unsigned NOT NULL,
  `servicio_id` smallint(2) unsigned default NULL,
  `uso` smallint(1) NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesBase_cie101_idx` (`cie10_id`),
  KEY `fk_antecedentesBase_servicio1_idx` (`servicio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesgenerales`
--

DROP TABLE IF EXISTS `antecedentesgenerales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesgenerales` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteOtroSeguro_id` int(11) default NULL,
  `edad` int(3) default NULL,
  `alfaBeta` tinyint(1) default NULL,
  `estudios_id` smallint(2) unsigned default NULL,
  `aniosAprobados` smallint(1) default NULL,
  `estadoCivil_id` smallint(6) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesgenerales_afiliado1_idx` (`afiliado_id`),
  KEY `fk_antecedentesgenerales_pacienteOtroSeguro1_idx` (`pacienteOtroSeguro_id`),
  KEY `fk_antecedentesgenerales_estudios1_idx` (`estudios_id`),
  KEY `fk_antecedentesgenerales_estadoCivil1_idx` (`estadoCivil_id`),
  CONSTRAINT `fk_antecedentesgenerales_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesgenerales_estadoCivil1` FOREIGN KEY (`estadoCivil_id`) REFERENCES `estadocivil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesgenerales_estudios1` FOREIGN KEY (`estudios_id`) REFERENCES `estudios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesgenerales_pacienteOtroSeguro1` FOREIGN KEY (`pacienteOtroSeguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7422 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesgeneralespacienteginecologia`
--

DROP TABLE IF EXISTS `antecedentesgeneralespacienteginecologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesgeneralespacienteginecologia` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteOtroSeguro_id` int(11) default NULL,
  `diabetesFamiliar` tinyint(1) default NULL,
  `tuberculosisFamiliar` tinyint(1) default NULL,
  `hipertensionFamiliar` tinyint(1) default NULL,
  `gemelaresFamiliar` tinyint(1) default NULL,
  `preeclampsiaFamiliar` tinyint(1) default NULL,
  `eclampsiaFamiliar` tinyint(1) default NULL,
  `tuberculosisPersonal` tinyint(1) default NULL,
  `diabetesPersonal` tinyint(1) default NULL,
  `hipertensionPersonal` tinyint(1) default NULL,
  `cirugiaPelvicoUterinaPersonal` tinyint(1) default NULL,
  `infertilidadPersonal` tinyint(1) default NULL,
  `preeclampsiaPersonal` tinyint(1) default NULL,
  `eclampsiaPersonal` tinyint(1) default NULL,
  `cardiopatiaPersonal` tinyint(1) default NULL,
  `nefropatiaPersonal` tinyint(1) default NULL,
  `violenciaPersonal` tinyint(1) default NULL,
  `vihPersonal` tinyint(1) default NULL,
  `gestas` int(2) default NULL,
  `menor2500` tinyint(1) default NULL,
  `mayor4000` tinyint(1) default NULL,
  `gemelares` tinyint(1) default NULL,
  `abortos` int(2) default NULL,
  `partos` int(2) default NULL,
  `vaginales` int(2) default NULL,
  `cesareas` int(1) default NULL,
  `nacidosVivos` int(2) default NULL,
  `nacidosMuertos` int(1) default NULL,
  `viven` int(2) default NULL,
  `muertosPrimeraSemana` int(1) default NULL,
  `muertosDespuesPrimeraSemana` int(1) default NULL,
  `finAnteriorEmbarazo` datetime default NULL,
  `rnConMayorPeso` int(4) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesgeneralespacienteginecologia_afiliado1_idx` (`afiliado_id`),
  KEY `fk_antecedentesgeneralespacienteginecologia_pacienteOtroSeg_idx` (`pacienteOtroSeguro_id`),
  CONSTRAINT `fk_antecedentesgeneralespacienteginecologia_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesgeneralespacienteginecologia_pacienteOtroSeguro1` FOREIGN KEY (`pacienteOtroSeguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7422 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesnopatologicosbase`
--

DROP TABLE IF EXISTS `antecedentesnopatologicosbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesnopatologicosbase` (
  `id` int(11) NOT NULL auto_increment,
  `descripcion` varchar(45) default NULL,
  `servicio_id` smallint(2) unsigned default NULL,
  `uso` smallint(1) NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesNoPatologicosBase_servicio1_idx` (`servicio_id`),
  CONSTRAINT `fk_antecedentesNoPatologicosBase_servicio1` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesnopatologicospaciente`
--

DROP TABLE IF EXISTS `antecedentesnopatologicospaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesnopatologicospaciente` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `antecedentesNoPatologicosBase_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesNoPatologicosPaciente_afiliado1_idx` (`afiliado_id`),
  KEY `fk_antecedentesNoPatologicosPaciente_antecedentesNoPatologi_idx` (`antecedentesNoPatologicosBase_id`),
  CONSTRAINT `fk_antecedentesNoPatologicosPaciente_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesNoPatologicosPaciente_antecedentesNoPatologico1` FOREIGN KEY (`antecedentesNoPatologicosBase_id`) REFERENCES `antecedentesnopatologicosbase` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesoftalmologicos`
--

DROP TABLE IF EXISTS `antecedentesoftalmologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesoftalmologicos` (
  `id` int(11) NOT NULL auto_increment,
  `lentes` varchar(250) default NULL,
  `cirugia` varchar(250) default NULL,
  `gotas` varchar(250) default NULL,
  `visco` varchar(250) default NULL,
  `accidente` varchar(250) default NULL,
  `familiarCiego` varchar(250) default NULL,
  `familiarLentes` varchar(250) default NULL,
  `familiarEnfermedades` varchar(250) default NULL,
  `otro` varchar(250) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentespatologicos`
--

DROP TABLE IF EXISTS `antecedentespatologicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentespatologicos` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `patologia_id` int(11) NOT NULL,
  `forma` varchar(10) collate utf8_unicode_ci NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesPatologicos_patologia1_idx` (`patologia_id`),
  KEY `fk_antecedentesPatologicos_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_antecedentesPatologicos_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesPatologicos_patologia1` FOREIGN KEY (`patologia_id`) REFERENCES `patologia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentespatologicospaciente`
--

DROP TABLE IF EXISTS `antecedentespatologicospaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentespatologicospaciente` (
  `id` int(11) NOT NULL auto_increment,
  `familiar` tinyint(1) default NULL,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteOtroSeguro_id` int(11) default NULL,
  `cie10_id` smallint(5) unsigned NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesPatologicosPaciente_afiliado1_idx` (`afiliado_id`),
  KEY `fk_antecedentesPatologicosPaciente_cie101_idx` (`cie10_id`),
  KEY `fk_antecedentesPatologicosPaciente_pacienteOtroSeguro1_idx` (`pacienteOtroSeguro_id`),
  CONSTRAINT `fk_antecedentesPatologicosPaciente_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesPatologicosPaciente_cie101` FOREIGN KEY (`cie10_id`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesPatologicosPaciente_pacienteOtroSeguro1` FOREIGN KEY (`pacienteOtroSeguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12059 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesperinatales`
--

DROP TABLE IF EXISTS `antecedentesperinatales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesperinatales` (
  `id` int(11) NOT NULL auto_increment,
  `lugarParto` varchar(45) collate utf8_unicode_ci default NULL,
  `quienAtiende` varchar(45) collate utf8_unicode_ci default NULL,
  `carnetPerinatal` tinyint(1) default NULL,
  `patologiaEmbarazoPartoPuerperio` tinyint(1) default NULL,
  `edadGestacionalNacer` int(11) default NULL,
  `pesoNacer` int(11) default NULL,
  `tallaNacer` int(11) default NULL,
  `PerimetroCraneano` int(11) default NULL,
  `apgarPrimerMinuto` int(11) default NULL,
  `apgarQuintoMinuto` int(11) default NULL,
  `asfixia` tinyint(1) default NULL,
  `reanimacion` tinyint(1) default NULL,
  `patologias` tinyint(1) default NULL,
  `egreso` varchar(45) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesquirurjicosbase`
--

DROP TABLE IF EXISTS `antecedentesquirurjicosbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesquirurjicosbase` (
  `id` int(11) NOT NULL auto_increment,
  `descripcion` varchar(45) default NULL,
  `servicio_id` smallint(2) unsigned default NULL,
  `uso` smallint(1) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesQuirurjicosBase_servicio1_idx` (`servicio_id`),
  CONSTRAINT `fk_antecedentesQuirurjicosBase_servicio1` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antecedentesquirurjicospaciente`
--

DROP TABLE IF EXISTS `antecedentesquirurjicospaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antecedentesquirurjicospaciente` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `antecedentesQuirurjicosBase_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_antecedentesQuirurjicosPaciente_afiliado1_idx` (`afiliado_id`),
  KEY `fk_antecedentesQuirurjicosPaciente_antecedentesQuirurjicosB_idx` (`antecedentesQuirurjicosBase_id`),
  CONSTRAINT `fk_antecedentesQuirurjicosPaciente_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_antecedentesQuirurjicosPaciente_antecedentesQuirurjicosBase1` FOREIGN KEY (`antecedentesQuirurjicosBase_id`) REFERENCES `antecedentesquirurjicosbase` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=473 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `anteojos`
--

DROP TABLE IF EXISTS `anteojos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anteojos` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `dpl` varchar(50) NOT NULL,
  `dpc` varchar(50) NOT NULL,
  `observaciones` text,
  `created_by` smallint(6) default NULL,
  `created_at` datetime default NULL,
  `updated_by` smallint(6) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_anteojos_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_anteojos_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4923 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aplicacionfluor`
--

DROP TABLE IF EXISTS `aplicacionfluor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicacionfluor` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `periodo` varchar(15) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_aplicacionFluor_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_aplicacionFluor_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `backndpacientefi`
--

DROP TABLE IF EXISTS `backndpacientefi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backndpacientefi` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `afiliadoid` int(11) unsigned NOT NULL,
  `especialidadid` smallint(3) unsigned NOT NULL,
  `medicoid` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `hora` varchar(5) collate utf8_unicode_ci NOT NULL,
  `horario_medico_especialidad_filial_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `backndpacientefi_ibfk_1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cama`
--

DROP TABLE IF EXISTS `cama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cama` (
  `id` int(11) NOT NULL auto_increment,
  `pieza_id` int(11) NOT NULL,
  `codigo` varchar(4) default NULL,
  `ocupada` int(11) default '0',
  `observaciones` varchar(250) default NULL,
  `codigo_activo` varchar(16) default NULL,
  `activo_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `cama_FI_1` (`pieza_id`),
  CONSTRAINT `cama_FK_1` FOREIGN KEY (`pieza_id`) REFERENCES `pieza` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cambiocama`
--

DROP TABLE IF EXISTS `cambiocama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cambiocama` (
  `id` int(11) NOT NULL auto_increment,
  `internado_id` int(11) NOT NULL,
  `cama_anterior_id` int(11) NOT NULL,
  `cama_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `motivo_movimiento` varchar(1000) default NULL,
  `observaciones` varchar(1000) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `cambioCama_FI_1` (`internado_id`),
  KEY `cambioCama_FI_2` (`cama_anterior_id`),
  KEY `cambioCama_FI_3` (`cama_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `cambioCama_FK_1` FOREIGN KEY (`internado_id`) REFERENCES `internado` (`id`),
  CONSTRAINT `cambioCama_FK_2` FOREIGN KEY (`cama_anterior_id`) REFERENCES `cama` (`id`),
  CONSTRAINT `cambioCama_FK_3` FOREIGN KEY (`cama_id`) REFERENCES `cama` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` smallint(2) NOT NULL auto_increment,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `categoria_FI_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `centro_salud`
--

DROP TABLE IF EXISTS `centro_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centro_salud` (
  `id` smallint(2) NOT NULL auto_increment,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cie10`
--

DROP TABLE IF EXISTS `cie10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cie10` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `codigo` varchar(5) collate utf8_unicode_ci NOT NULL default '',
  `diagnostico` text character set utf8 collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=14604 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `hora` varchar(5) collate utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `telefono` varchar(30) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `afiliado_id` (`afiliado_id`),
  KEY `especialidad_id` (`especialidad_id`),
  KEY `medico_id` (`medico_id`),
  KEY `created_by` (`created_by`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `citas_ibfk_3` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `citas_ibfk_4` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17808 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comollego`
--

DROP TABLE IF EXISTS `comollego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comollego` (
  `id` smallint(2) NOT NULL auto_increment,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `condicionadmision`
--

DROP TABLE IF EXISTS `condicionadmision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condicionadmision` (
  `id` smallint(2) NOT NULL auto_increment,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultaembarazoactual`
--

DROP TABLE IF EXISTS `consultaembarazoactual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultaembarazoactual` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `embarazoactual_id` int(11) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `especialidad_id` smallint(2) unsigned default NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `fecha` date default NULL,
  `semanasDeAmenorrea` int(2) default NULL,
  `peso` float default NULL,
  `imc` float default NULL,
  `descImc` varchar(15) default NULL,
  `tensionArterial` varchar(7) default NULL,
  `alturaUterina` int(2) default NULL,
  `presentCefPelvTr` varchar(45) default NULL,
  `fcf` int(2) default NULL,
  `movimientoFetal` int(2) default NULL,
  `nroTabletasSulfatoFerroso` int(2) default NULL,
  `proteinuria` varchar(3) default NULL,
  `nroTabletasSulfatoderroso` int(2) default NULL,
  `cie10_id` smallint(5) unsigned default NULL,
  `plan_tratamiento` text,
  `recomendaciones` text,
  `tipoConsulta` varchar(8) default NULL,
  `riesgoLaboral` varchar(45) default NULL,
  `diasBaja` int(2) default NULL,
  `fechaProximaVisita` date default NULL,
  `referido` varchar(100) default NULL,
  `inter_especialidad_id` smallint(3) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_consultaEmbarazoActual_embarazoActual1` (`embarazoactual_id`),
  KEY `fk_consultaEmbarazoActual_medico1` (`medico_id`),
  KEY `fk_consultaEmbarazoActual_cie101` (`cie10_id`),
  KEY `especialidad_id` (`especialidad_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `consultaembarazoactual_ibfk_1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`),
  CONSTRAINT `consultaembarazoactual_ibfk_2` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`),
  CONSTRAINT `fk_consultaembarazoactual_cie101` FOREIGN KEY (`cie10_id`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12477 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultaemergencias`
--

DROP TABLE IF EXISTS `consultaemergencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultaemergencias` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteotroseguro_id` int(11) default NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `fum` date default NULL,
  `comollego_id` smallint(2) default NULL,
  `condicionadmision_id` smallint(2) default NULL,
  `categoria_id` smallint(2) default NULL,
  `motivoConsulta` text,
  `enfermedadActual` text,
  `resultadoExamenes` text,
  `examenFisico` text,
  `cie10_id1` smallint(5) unsigned NOT NULL,
  `diagnosticoDefinitivo` tinyint(1) default NULL,
  `cie10_id2` smallint(5) unsigned default NULL,
  `cie10_id3` smallint(5) unsigned default NULL,
  `planAccion` text,
  `riesgoLaboral` varchar(45) default NULL,
  `diasBaja` int(1) default NULL,
  `fechaProximaVisita` date default NULL,
  `inter_especialidad_id` smallint(3) unsigned default NULL,
  `referido` varchar(100) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `parto_id` int(11) default NULL,
  `hospitalizacion` smallint(1) NOT NULL default '0',
  `descripcionDiagnostico` text,
  `consultaexterna` smallint(1) NOT NULL default '0',
  `observacion` smallint(1) NOT NULL default '0',
  `reanimacion` smallint(1) NOT NULL default '0',
  `areareferencia` tinyint(1) default NULL,
  `servicioreferencia` tinyint(1) default NULL,
  `personareferencia` varchar(250) default NULL,
  `observacionesreferencia` text,
  `impreso` smallint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `fk_consultaMedica_afiliado2_idx` (`afiliado_id`),
  KEY `fk_consultaMedica_especialidad2_idx` (`especialidad_id`),
  KEY `fk_consultaMedica_cie104_idx` (`cie10_id3`),
  KEY `fk_consultaMedica_cie105_idx` (`cie10_id1`),
  KEY `fk_consultaMedica_cie106_idx` (`cie10_id2`),
  KEY `fk_consultaMedica_especialidad3_idx` (`inter_especialidad_id`),
  KEY `fk_consultaMedica_medico1_idx` (`medico_id`),
  KEY `fk_consultaMedica_pacienteotroseguro_idx` (`pacienteotroseguro_id`),
  KEY `condicionadmision_id` (`condicionadmision_id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `parto_id` (`parto_id`),
  KEY `comollego_id` (`comollego_id`),
  CONSTRAINT `consultaemergencias_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_10` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_11` FOREIGN KEY (`parto_id`) REFERENCES `parto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_12` FOREIGN KEY (`comollego_id`) REFERENCES `comollego` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_2` FOREIGN KEY (`pacienteotroseguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_3` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_4` FOREIGN KEY (`cie10_id1`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_5` FOREIGN KEY (`cie10_id2`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_6` FOREIGN KEY (`cie10_id3`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_7` FOREIGN KEY (`inter_especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_8` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaemergencias_ibfk_9` FOREIGN KEY (`condicionadmision_id`) REFERENCES `condicionadmision` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23183 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultaginecologica`
--

DROP TABLE IF EXISTS `consultaginecologica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultaginecologica` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `pacienteOtroSeguro_id` int(11) default NULL,
  `afiliado_id` int(11) unsigned default NULL,
  `especialidad_id` smallint(2) unsigned default NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `tipoConsulta` varchar(8) default NULL,
  `motivoconsulta` text NOT NULL,
  `enfermedad_actual` text,
  `examen_fisico` text NOT NULL,
  `resultadoexamenes` text NOT NULL,
  `cie10_id1` smallint(5) unsigned NOT NULL,
  `cie10_id2` smallint(5) unsigned default NULL,
  `cie10_id3` smallint(5) unsigned default NULL,
  `plan_tratamiento` text NOT NULL,
  `recomendaciones` text NOT NULL,
  `postNatal` tinyint(1) default NULL,
  `menarquia` int(2) default NULL,
  `dismenorrea` tinyint(1) default NULL,
  `fum` date default NULL,
  `senoIzquierdo` text,
  `senoDerecho` text,
  `abdomen` text,
  `vagina` text,
  `utero` text,
  `cervix` text,
  `riesgoLaboral` varchar(45) default NULL,
  `diasBaja` int(2) default NULL,
  `fechaProximaVisita` date default NULL,
  `inter_especialidad_id` smallint(3) default NULL,
  `referido` varchar(100) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  `descripcionDiagnostico` text,
  `pidepap` smallint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fk_consultaginecologica_afiliado1` (`afiliado_id`),
  KEY `fk_consultaginecologica_medico1` (`medico_id`),
  KEY `fk_consultaginecologica_pacienteOtroSeguro1` (`pacienteOtroSeguro_id`),
  KEY `fk_consultaGinecologica_cie101` (`cie10_id1`),
  KEY `fk_consultaGinecologica_cie102` (`cie10_id2`),
  KEY `fk_consultaGinecologica_cie103` (`cie10_id3`),
  KEY `especialidad_id` (`especialidad_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `consultaginecologica_ibfk_1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`),
  CONSTRAINT `consultaginecologica_ibfk_2` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`),
  CONSTRAINT `fk_consultaginecologica_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaGinecologica_cie101` FOREIGN KEY (`cie10_id1`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaGinecologica_cie102` FOREIGN KEY (`cie10_id2`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaGinecologica_cie103` FOREIGN KEY (`cie10_id3`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaginecologica_pacienteOtroSeguro1` FOREIGN KEY (`pacienteOtroSeguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25533 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultamedica`
--

DROP TABLE IF EXISTS `consultamedica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultamedica` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `fum` date default NULL,
  `tipoConsulta` varchar(8) default NULL,
  `motivoConsulta` text,
  `enfermedadActual` text,
  `resultadoExamenes` text,
  `examenFisico` text,
  `cie10_id1` smallint(5) unsigned NOT NULL,
  `diagnosticoDefinitivo` tinyint(1) default NULL,
  `cie10_id2` smallint(5) unsigned default NULL,
  `cie10_id3` smallint(5) unsigned default NULL,
  `cie10_id4` smallint(5) unsigned default NULL,
  `cie10_id5` smallint(5) unsigned default NULL,
  `planAccion` text,
  `riesgoLaboral` varchar(45) default NULL,
  `diasBaja` int(1) default NULL,
  `fechaProximaVisita` date default NULL,
  `inter_especialidad_id` smallint(3) unsigned default NULL,
  `referido` varchar(100) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `descripcionDiagnostico` text,
  PRIMARY KEY  (`id`),
  KEY `fk_consultaMedica_afiliado2_idx` (`afiliado_id`),
  KEY `fk_consultaMedica_especialidad2_idx` (`especialidad_id`),
  KEY `fk_consultaMedica_cie104_idx` (`cie10_id3`),
  KEY `fk_consultaMedica_cie105_idx` (`cie10_id1`),
  KEY `fk_consultaMedica_cie106_idx` (`cie10_id2`),
  KEY `fk_consultaMedica_especialidad3_idx` (`inter_especialidad_id`),
  KEY `fk_consultaMedica_medico1_idx` (`medico_id`),
  KEY `fk_consultaMedica_cie107_idx` (`cie10_id4`),
  KEY `fk_consultaMedica_cie108_idx` (`cie10_id5`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `consultamedica_ibfk_1` FOREIGN KEY (`cie10_id4`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultamedica_ibfk_2` FOREIGN KEY (`cie10_id5`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultamedica_ibfk_3` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`),
  CONSTRAINT `fk_consultaMedica_afiliado2` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_cie104` FOREIGN KEY (`cie10_id3`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_cie105` FOREIGN KEY (`cie10_id1`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_cie106` FOREIGN KEY (`cie10_id2`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_especialidad2` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_especialidad3` FOREIGN KEY (`inter_especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_medico1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=243392 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultamedicapediatria`
--

DROP TABLE IF EXISTS `consultamedicapediatria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultamedicapediatria` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(2) unsigned default NULL,
  `medico_id` smallint(2) unsigned default NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `tipoConsulta` varchar(8) NOT NULL,
  `motivoConsulta` text NOT NULL,
  `examenFisico` text,
  `cie10_id1` smallint(5) unsigned NOT NULL,
  `cie10_id2` smallint(5) unsigned default NULL,
  `cie10_id3` smallint(5) unsigned default NULL,
  `planAccion` text NOT NULL,
  `riesgoLaboral` varchar(45) default NULL,
  `diasBaja` int(1) default NULL,
  `fechaProximaVisita` date default NULL,
  `inter_especialidad_id` smallint(3) unsigned default NULL,
  `Referido` varchar(100) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `descripcionDiagnostico` text,
  PRIMARY KEY  (`id`),
  KEY `fk_consultaMedica_cie101_idx` (`cie10_id1`),
  KEY `fk_consultaMedica_cie102_idx` (`cie10_id2`),
  KEY `fk_consultaMedica_cie103_idx` (`cie10_id3`),
  KEY `fk_consultaMedica_afiliado1_idx` (`afiliado_id`),
  KEY `fk_consultaMedica_especialidad1_idx` (`inter_especialidad_id`),
  KEY `especialidad_id` (`especialidad_id`),
  KEY `medico_id` (`medico_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `consultamedicapediatria_ibfk_1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`),
  CONSTRAINT `consultamedicapediatria_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `consultamedicapediatria_ibfk_3` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`),
  CONSTRAINT `fk_consultaMedica_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_cie101` FOREIGN KEY (`cie10_id1`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_cie102` FOREIGN KEY (`cie10_id2`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_cie103` FOREIGN KEY (`cie10_id3`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaMedica_especialidad1` FOREIGN KEY (`inter_especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64892 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultaodontologica`
--

DROP TABLE IF EXISTS `consultaodontologica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultaodontologica` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(2) unsigned default NULL,
  `medico_id` smallint(2) unsigned default NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `tipoConsulta` varchar(8) NOT NULL default '0',
  `motivoConsulta` text NOT NULL,
  `enfermedadActual` text NOT NULL,
  `examenfisico` text,
  `pieza` int(11) default NULL,
  `cie10_id1` smallint(5) unsigned NOT NULL,
  `cie10_id2` smallint(5) unsigned default NULL,
  `cie10_id3` smallint(5) unsigned default NULL,
  `cie10_id4` smallint(5) unsigned default NULL,
  `observaciones` text,
  `otratamiento_id` smallint(6) default NULL,
  `operiodoncia_id` smallint(6) default NULL,
  `oprevenpromo_id` smallint(6) default NULL,
  `oendodoncia_id` smallint(6) default NULL,
  `ocirugia_id` smallint(6) default NULL,
  `orestauracion_id` smallint(6) default NULL,
  `plan` text,
  `riesgoLaboral` varchar(100) default NULL,
  `diasBaja` smallint(1) default NULL,
  `fechaProximaVisita` date default NULL,
  `inter_especialidad_id` smallint(3) unsigned default NULL,
  `referido` varchar(45) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default '0',
  `pieza2` int(11) default NULL,
  `pieza3` int(11) default NULL,
  `pieza4` int(11) default NULL,
  `tratamiento1` text,
  `tratamiento2` text,
  `tratamiento3` text,
  `tratamiento4` text,
  `descripcionDiagnostico` text,
  `descripcionDiagnostico2` text,
  `descripcionDiagnostico3` text,
  `descripciondiagnostico4` text,
  PRIMARY KEY  (`id`),
  KEY `riesgop_id` (`riesgoLaboral`),
  KEY `created_by` (`created_by`),
  KEY `fk_consultaOdontologica_afiliado1_idx` (`afiliado_id`),
  KEY `fk_consultaOdontologica_otratamiento1_idx` (`otratamiento_id`),
  KEY `fk_consultaOdontologica_operiodoncia1_idx` (`operiodoncia_id`),
  KEY `fk_consultaOdontologica_oprevenpromo1_idx` (`oprevenpromo_id`),
  KEY `fk_consultaOdontologica_oendodoncia1_idx` (`oendodoncia_id`),
  KEY `fk_consultaOdontologica_ocirugia1_idx` (`ocirugia_id`),
  KEY `fk_consultaOdontologica_orestauracion1_idx` (`orestauracion_id`),
  KEY `fk_consultaOdontologica_cie101_idx` (`cie10_id3`),
  KEY `fk_consultaOdontologica_cie102_idx` (`cie10_id1`),
  KEY `fk_consultaOdontologica_cie103_idx` (`cie10_id2`),
  KEY `fk_consultaOdontologica_especialidad1_idx` (`inter_especialidad_id`),
  KEY `cie10_id4` (`cie10_id4`),
  KEY `pieza4` (`pieza4`),
  KEY `especialidad_id` (`especialidad_id`),
  KEY `medico_id` (`medico_id`),
  KEY `filial_id` (`filial_id`),
  KEY `pieza` (`pieza`),
  KEY `pieza2` (`pieza2`),
  KEY `pieza3` (`pieza3`),
  CONSTRAINT `consultaodontologica_cie10_id4` FOREIGN KEY (`cie10_id4`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaodontologica_ibfk_1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`),
  CONSTRAINT `consultaodontologica_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `consultaodontologica_ibfk_3` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`),
  CONSTRAINT `consultaodontologica_ibfk_4` FOREIGN KEY (`pieza`) REFERENCES `diente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaodontologica_ibfk_5` FOREIGN KEY (`pieza2`) REFERENCES `diente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaodontologica_ibfk_6` FOREIGN KEY (`pieza3`) REFERENCES `diente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `consultaodontologica_pieza4` FOREIGN KEY (`pieza4`) REFERENCES `diente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_cie101` FOREIGN KEY (`cie10_id3`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_cie102` FOREIGN KEY (`cie10_id1`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_cie103` FOREIGN KEY (`cie10_id2`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_especialidad1` FOREIGN KEY (`inter_especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_ocirugia1` FOREIGN KEY (`ocirugia_id`) REFERENCES `ocirugia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_oendodoncia1` FOREIGN KEY (`oendodoncia_id`) REFERENCES `oendodoncia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_operiodoncia1` FOREIGN KEY (`operiodoncia_id`) REFERENCES `operiodoncia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_oprevenpromo1` FOREIGN KEY (`oprevenpromo_id`) REFERENCES `oprevenpromo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_orestauracion1` FOREIGN KEY (`orestauracion_id`) REFERENCES `orestauracion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaOdontologica_otratamiento1` FOREIGN KEY (`otratamiento_id`) REFERENCES `otratamiento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultaodontologica_has_oexradiologico`
--

DROP TABLE IF EXISTS `consultaodontologica_has_oexradiologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultaodontologica_has_oexradiologico` (
  `id` smallint(6) NOT NULL auto_increment,
  `consultaOdontologica_id` int(11) NOT NULL,
  `oexradiologico_id` smallint(6) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_consultaOdontologica_has_oexradiologico_consultaOdontolo_idx` (`consultaOdontologica_id`),
  KEY `fk_consultaOdontologica_has_oexradiologico_oexradiologico1_idx` (`oexradiologico_id`),
  CONSTRAINT `fk_consultaOdontologica_has_oexradiologico_oexradiologico1` FOREIGN KEY (`oexradiologico_id`) REFERENCES `oexradiologico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultaoftalmologica`
--

DROP TABLE IF EXISTS `consultaoftalmologica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultaoftalmologica` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(2) unsigned default NULL,
  `medico_id` smallint(2) unsigned default NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `tipoConsulta` varchar(8) NOT NULL,
  `motivoConsulta` text NOT NULL,
  `cie10_id1` smallint(5) unsigned NOT NULL,
  `cie10_id2` smallint(5) unsigned default NULL,
  `cie10_id3` smallint(5) unsigned default NULL,
  `plan` text,
  `riesgoLaboral` varchar(45) default NULL,
  `diasBaja` int(1) default NULL,
  `fechaProximaVisita` date default NULL,
  `inter_especialidad_id` smallint(3) unsigned default NULL,
  `referido` varchar(45) default NULL,
  `created_by` smallint(6) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `descripcionDiagnostico` text,
  `enfermedadActual` text,
  PRIMARY KEY  (`id`),
  KEY `fk_consultaoftalmologica_afiliado1_idx` (`afiliado_id`),
  KEY `fk_consultaoftalmologica_cie101_idx` (`cie10_id3`),
  KEY `fk_consultaoftalmologica_cie102_idx` (`cie10_id1`),
  KEY `fk_consultaoftalmologica_cie103_idx` (`cie10_id2`),
  KEY `fk_consultaoftalmologica_especialidad1_idx` (`inter_especialidad_id`),
  KEY `especialidad_id` (`especialidad_id`),
  KEY `medico_id` (`medico_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `consultaoftalmologica_ibfk_1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`),
  CONSTRAINT `consultaoftalmologica_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `consultaoftalmologica_ibfk_3` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`),
  CONSTRAINT `fk_consultaoftalmologica_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaoftalmologica_cie102` FOREIGN KEY (`cie10_id1`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaoftalmologica_cie103` FOREIGN KEY (`cie10_id2`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultaoftalmologica_especialidad1` FOREIGN KEY (`inter_especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27222 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `consultavaloracionespecialista`
--

DROP TABLE IF EXISTS `consultavaloracionespecialista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultavaloracionespecialista` (
  `id` int(11) NOT NULL auto_increment,
  `consultaemergencias_id` int(11) NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `fecha` date default NULL,
  `valoracion` text,
  `cie10_id` smallint(5) unsigned NOT NULL,
  `inter_especialidad_id` smallint(4) unsigned default NULL,
  `comentario` text,
  `created_by` smallint(6) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `especialista_FI_co` (`consultaemergencias_id`),
  KEY `especialista_FI_me` (`medico_id`),
  KEY `especialista_FI_ci` (`cie10_id`),
  KEY `especialista_FI_mi` (`inter_especialidad_id`),
  CONSTRAINT `consultavaloracionespecialista_ibfk_1` FOREIGN KEY (`consultaemergencias_id`) REFERENCES `consultaemergencias` (`id`),
  CONSTRAINT `consultavaloracionespecialista_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `consultavaloracionespecialista_ibfk_3` FOREIGN KEY (`cie10_id`) REFERENCES `cie10` (`id`),
  CONSTRAINT `consultavaloracionespecialista_ibfk_4` FOREIGN KEY (`inter_especialidad_id`) REFERENCES `especialidad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1463 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `controlpesotalla`
--

DROP TABLE IF EXISTS `controlpesotalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controlpesotalla` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `pacienteotroseguro_id` int(11) default NULL,
  `peso` decimal(7,4) default NULL,
  `tallaLongitud` decimal(4,1) default NULL,
  `perimetroCraneano` decimal(4,1) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_controlPesoTalla_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_controlPesoTalla_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=305970 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cuadrovacuna`
--

DROP TABLE IF EXISTS `cuadrovacuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuadrovacuna` (
  `id` smallint(6) NOT NULL auto_increment,
  `vacunas_id` int(11) NOT NULL,
  `tiempo` varchar(5) collate utf8_unicode_ci default NULL,
  `dosis_id` int(2) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_cuadroVacuna_vacunas1` (`vacunas_id`),
  KEY `fk_cuadroVacuna_dosis1_idx` (`dosis_id`),
  CONSTRAINT `fk_cuadroVacuna_dosis1` FOREIGN KEY (`dosis_id`) REFERENCES `dosis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuadroVacuna_vacunas10` FOREIGN KEY (`vacunas_id`) REFERENCES `vacunas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curvacmiedad`
--

DROP TABLE IF EXISTS `curvacmiedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curvacmiedad` (
  `id` int(11) NOT NULL auto_increment,
  `sexo` int(1) default NULL COMMENT '1 = M,  2 = F',
  `mes` int(2) default NULL,
  `l` decimal(6,4) default NULL,
  `m` decimal(7,4) default NULL,
  `s` decimal(6,4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curvapesoedad`
--

DROP TABLE IF EXISTS `curvapesoedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curvapesoedad` (
  `id` int(11) NOT NULL auto_increment,
  `sexo` int(1) default NULL COMMENT '1 = M,  2 = F',
  `dias` int(4) default NULL,
  `l` decimal(6,4) default NULL,
  `m` decimal(6,4) default NULL,
  `s` decimal(6,4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3715 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curvapesolongitud`
--

DROP TABLE IF EXISTS `curvapesolongitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curvapesolongitud` (
  `id` int(11) NOT NULL auto_increment,
  `sexo` int(1) default NULL COMMENT '1 = M,  2 = F',
  `longitud` decimal(4,1) default NULL,
  `l` decimal(6,4) default NULL,
  `m` decimal(6,4) default NULL,
  `s` decimal(6,4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1303 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curvapesotalla`
--

DROP TABLE IF EXISTS `curvapesotalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curvapesotalla` (
  `id` int(11) NOT NULL auto_increment,
  `sexo` int(1) default NULL COMMENT '1 = M,  2 = F',
  `talla` decimal(4,1) default NULL,
  `l` decimal(6,4) default NULL,
  `m` decimal(6,4) default NULL,
  `s` decimal(6,4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `curvatallaedad`
--

DROP TABLE IF EXISTS `curvatallaedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curvatallaedad` (
  `id` int(11) NOT NULL auto_increment,
  `sexo` int(1) default NULL COMMENT '1 = M,  2 = F',
  `dias` int(4) default NULL,
  `l` decimal(6,4) default NULL,
  `m` decimal(7,4) default NULL,
  `s` decimal(6,4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3715 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `delndpacientefi`
--

DROP TABLE IF EXISTS `delndpacientefi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delndpacientefi` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `hora` varchar(5) default NULL,
  `fecha` date default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  `deleted_by` int(11) default NULL,
  `deleted_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_delndpacientefi_afiliado1_idx` (`afiliado_id`),
  KEY `fk_delndpacientefi_especialidad1_idx` (`especialidad_id`),
  KEY `fk_delndpacientefi_medico1_idx` (`medico_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `delndpacientefi_ibfk_1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1347 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `delpacientefi`
--

DROP TABLE IF EXISTS `delpacientefi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delpacientefi` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `hora` varchar(5) default NULL,
  `atendido` char(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  `deleted_by` int(11) default NULL,
  `deleted_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_delpacientefi_afiliado1_idx` (`afiliado_id`),
  KEY `fk_delpacientefi_especialidad1_idx` (`especialidad_id`),
  KEY `fk_delpacientefi_medico1_idx` (`medico_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `delpacientefi_ibfk_1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `derivaciones`
--

DROP TABLE IF EXISTS `derivaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `derivaciones` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `created_at` timestamp NULL default NULL,
  `created_by` int(11) default NULL,
  `updated_at` timestamp NULL default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `afiliado_id` (`afiliado_id`),
  KEY `especialidad_id` (`especialidad_id`),
  CONSTRAINT `derivaciones_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`),
  CONSTRAINT `derivaciones_ibfk_2` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `desarrollopaciente`
--

DROP TABLE IF EXISTS `desarrollopaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desarrollopaciente` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `hitosDesarrollo_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_desarrolloPaciente_afiliado1_idx` (`afiliado_id`),
  KEY `fk_desarrolloPaciente_hitosDesarrollo1_idx` (`hitosDesarrollo_id`),
  CONSTRAINT `fk_desarrolloPaciente_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_desarrolloPaciente_hitosDesarrollo1` FOREIGN KEY (`hitosDesarrollo_id`) REFERENCES `hitosdesarrollo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22786 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `despacho`
--

DROP TABLE IF EXISTS `despacho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despacho` (
  `id` int(10) NOT NULL auto_increment,
  `entrega_medicamento_id` int(11) NOT NULL,
  `farmacia_id` smallint(2) NOT NULL,
  `empleado_id` smallint(3) NOT NULL,
  `cantidad_despachada` int(6) NOT NULL,
  `fecha_despacho` date NOT NULL,
  `ppp` float(11,5) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `despacho_FI_1` (`entrega_medicamento_id`),
  KEY `despacho_FI_2` (`farmacia_id`),
  KEY `despacho_FI_3` (`empleado_id`),
  CONSTRAINT `despacho_FI_1` FOREIGN KEY (`entrega_medicamento_id`) REFERENCES `entrega_medicamento` (`id`),
  CONSTRAINT `despacho_FI_2` FOREIGN KEY (`farmacia_id`) REFERENCES `farmacia` (`id`),
  CONSTRAINT `despacho_FI_3` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=346678 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `despachoce`
--

DROP TABLE IF EXISTS `despachoce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despachoce` (
  `id` int(10) NOT NULL auto_increment,
  `recetace_id` int(10) NOT NULL,
  `farmacia_id` smallint(2) NOT NULL,
  `empleado_id` smallint(3) NOT NULL,
  `cantidad_despachada` int(6) NOT NULL,
  `fecha_despacho` date NOT NULL,
  `ppp` float(11,5) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `despachoce_FI_1` (`recetace_id`),
  KEY `despachoce_FI_2` (`farmacia_id`),
  KEY `despachoce_FI_3` (`empleado_id`),
  CONSTRAINT `despachoce_FI_1` FOREIGN KEY (`recetace_id`) REFERENCES `recetace` (`id`),
  CONSTRAINT `despachoce_FI_2` FOREIGN KEY (`farmacia_id`) REFERENCES `farmacia` (`id`),
  CONSTRAINT `despachoce_FI_3` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=411903 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `despachoos`
--

DROP TABLE IF EXISTS `despachoos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despachoos` (
  `id` int(10) NOT NULL auto_increment,
  `entrega_medicamento_os_id` int(10) NOT NULL,
  `farmacia_id` smallint(2) NOT NULL,
  `empleado_id` smallint(3) NOT NULL,
  `cantidad_despachada` int(6) NOT NULL,
  `fecha_despacho` date NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `despachoos_FI_1` (`entrega_medicamento_os_id`),
  KEY `despachoos_FI_2` (`farmacia_id`),
  KEY `despachoos_FI_3` (`empleado_id`),
  CONSTRAINT `despachoos_FI_1` FOREIGN KEY (`entrega_medicamento_os_id`) REFERENCES `entrega_medicamento_os` (`id`),
  CONSTRAINT `despachoos_FI_2` FOREIGN KEY (`farmacia_id`) REFERENCES `farmacia` (`id`),
  CONSTRAINT `despachoos_FI_3` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleagudezavisual`
--

DROP TABLE IF EXISTS `detalleagudezavisual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleagudezavisual` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `agudezavisual_id` int(11) NOT NULL,
  `ojo_id` smallint(3) default NULL,
  `dojo` varchar(250) NOT NULL,
  `cc` varchar(250) NOT NULL,
  `cae` varchar(250) NOT NULL,
  `sk` varchar(250) NOT NULL,
  `created_by` smallint(6) default NULL,
  `created_at` datetime default NULL,
  `updated_by` smallint(6) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_detalleagudezavisual_ojo1_idx` (`ojo_id`),
  KEY `fk_detalleagudezavisual_afiliado1_idx` (`afiliado_id`),
  KEY `fk_detalleagudezavisual_agudezavisual1_idx` (`agudezavisual_id`),
  CONSTRAINT `fk_detalleagudezavisual_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleagudezavisual_agudezavisual1` FOREIGN KEY (`agudezavisual_id`) REFERENCES `agudezavisual` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleagudezavisual_ojo1` FOREIGN KEY (`ojo_id`) REFERENCES `ojo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13812 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detallebiomicroscopia`
--

DROP TABLE IF EXISTS `detallebiomicroscopia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallebiomicroscopia` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `microscopia_id` int(11) NOT NULL,
  `ojo_id` smallint(3) default NULL,
  `dojo` varchar(250) NOT NULL,
  `cornea` varchar(250) NOT NULL,
  `ca` varchar(250) NOT NULL,
  `iris` varchar(250) NOT NULL,
  `cristalino` varchar(250) NOT NULL,
  `vitreo` varchar(250) NOT NULL,
  `papila` text NOT NULL,
  `rvascularizacion` text NOT NULL,
  `rmacular` text NOT NULL,
  `rperiferica` text NOT NULL,
  `created_by` smallint(6) default NULL,
  `created_at` datetime default NULL,
  `updated_by` smallint(6) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_detallebiomicroscopia_ojo1_idx` (`ojo_id`),
  KEY `fk_detallebiomicroscopia_afiliado1_idx` (`afiliado_id`),
  KEY `fk_detallebiomicroscopia_microscopia1_idx` (`microscopia_id`),
  CONSTRAINT `fk_detallebiomicroscopia_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detallebiomicroscopia_microscopia1` FOREIGN KEY (`microscopia_id`) REFERENCES `microscopia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detallebiomicroscopia_ojo1` FOREIGN KEY (`ojo_id`) REFERENCES `ojo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6023 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleexamenoftalmologico`
--

DROP TABLE IF EXISTS `detalleexamenoftalmologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleexamenoftalmologico` (
  `id` int(11) NOT NULL auto_increment,
  `examenOftalmologico_id` int(11) NOT NULL,
  `tipoexamenoftalmologico_id` int(11) NOT NULL,
  `od` varchar(250) NOT NULL,
  `oi` varchar(250) NOT NULL,
  `created_by` smallint(6) default NULL,
  `created_at` datetime default NULL,
  `updated_by` smallint(6) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_detalleexamenoftalmologico_examenOftalmologico1_idx` (`examenOftalmologico_id`),
  KEY `fk_detalleexamenoftalmologico_tipoexamenoftalmologico1_idx` (`tipoexamenoftalmologico_id`),
  CONSTRAINT `fk_detalleexamenoftalmologico_examenOftalmologico1` FOREIGN KEY (`examenOftalmologico_id`) REFERENCES `examenoftalmologico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleexamenoftalmologico_tipoexamenoftalmologico1` FOREIGN KEY (`tipoexamenoftalmologico_id`) REFERENCES `tipoexamenoftalmologico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalleodontograma`
--

DROP TABLE IF EXISTS `detalleodontograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleodontograma` (
  `id` int(11) NOT NULL auto_increment,
  `odontograma_id` int(11) NOT NULL,
  `diente_id` int(11) NOT NULL,
  `momenclatura_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_detalleOdontograma_diente1_idx` (`diente_id`),
  KEY `fk_detalleOdontograma_momenclatura1_idx` (`momenclatura_id`),
  KEY `fk_detalleOdontograma_odontograma1_idx` (`odontograma_id`),
  CONSTRAINT `fk_detalleOdontograma_diente1` FOREIGN KEY (`diente_id`) REFERENCES `diente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleOdontograma_momenclatura1` FOREIGN KEY (`momenclatura_id`) REFERENCES `nomenclatura` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleOdontograma_odontograma1` FOREIGN KEY (`odontograma_id`) REFERENCES `odontograma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=139477 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diagnosticoaiepipaciente`
--

DROP TABLE IF EXISTS `diagnosticoaiepipaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosticoaiepipaciente` (
  `id` int(11) NOT NULL auto_increment,
  `aiepi_id` smallint(5) unsigned NOT NULL,
  `seguimientoPediatria_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_diagnosticoAiepiPaciente_aiepi1_idx` (`aiepi_id`),
  KEY `fk_diagnosticoAiepiPaciente_seguimientoPediatria1_idx` (`seguimientoPediatria_id`),
  CONSTRAINT `fk_diagnosticoAiepiPaciente_aiepi1` FOREIGN KEY (`aiepi_id`) REFERENCES `aiepi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_diagnosticoAiepiPaciente_seguimientoPediatria1` FOREIGN KEY (`seguimientoPediatria_id`) REFERENCES `seguimientopediatria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diagnosticoaiepipacientegi`
--

DROP TABLE IF EXISTS `diagnosticoaiepipacientegi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosticoaiepipacientegi` (
  `id` int(11) NOT NULL auto_increment,
  `aiepi_id` smallint(5) unsigned NOT NULL,
  `consultaginecologica_id` int(11) unsigned NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_diagnosticoAiepiPacientegi_aiepi1_idx` (`aiepi_id`),
  KEY `fk_diagnosticoAiepiPacientegi_consultaginecologica1_idx` (`consultaginecologica_id`),
  CONSTRAINT `fk_diagnosticoAiepiPacientegi_aiepi1` FOREIGN KEY (`aiepi_id`) REFERENCES `aiepi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_diagnosticoAiepiPacientegi_consultaginecologica1` FOREIGN KEY (`consultaginecologica_id`) REFERENCES `consultaginecologica` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dias`
--

DROP TABLE IF EXISTS `dias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dias` (
  `id` smallint(1) unsigned NOT NULL auto_increment,
  `dia` varchar(10) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dias_horario_medico_especialidad_filial`
--

DROP TABLE IF EXISTS `dias_horario_medico_especialidad_filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dias_horario_medico_especialidad_filial` (
  `id` int(11) NOT NULL auto_increment,
  `dias_id` smallint(1) unsigned NOT NULL,
  `horario_medico_especialidad_filial_id` int(10) unsigned NOT NULL,
  `cupos` smallint(2) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_dias_horario_medico_especialidad_filial_dias1_idx` (`dias_id`),
  KEY `fk_dias_horario_medico_especialidad_filial_horario_medico_e_idx` (`horario_medico_especialidad_filial_id`),
  CONSTRAINT `fk_dias_horario_medico_especialidad_filial_dias1` FOREIGN KEY (`dias_id`) REFERENCES `dias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_dias_horario_medico_especialidad_filial_horario_medico_esp1` FOREIGN KEY (`horario_medico_especialidad_filial_id`) REFERENCES `horario_medico_especialidad_filial` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9798 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `diente`
--

DROP TABLE IF EXISTS `diente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diente` (
  `id` int(11) NOT NULL auto_increment,
  `idn` varchar(3) default NULL,
  `nombre` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dispositivo`
--

DROP TABLE IF EXISTS `dispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dispositivo` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) NOT NULL,
  `uuid` varchar(50) collate utf8_unicode_ci NOT NULL,
  `plataforma` varchar(50) collate utf8_unicode_ci NOT NULL,
  `model` varchar(50) collate utf8_unicode_ci NOT NULL,
  `manufactura` varchar(50) collate utf8_unicode_ci NOT NULL,
  `estado` smallint(2) NOT NULL,
  `versionname` varchar(10) collate utf8_unicode_ci NOT NULL,
  `versioncode` smallint(3) NOT NULL,
  `ultimo_acceso` datetime NOT NULL,
  `estado_ficha` smallint(2) NOT NULL,
  `estado_receta` smallint(2) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `afiliado_id` (`afiliado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9322 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dosis`
--

DROP TABLE IF EXISTS `dosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosis` (
  `id` int(2) NOT NULL auto_increment,
  `descripcion` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `embarazoactual`
--

DROP TABLE IF EXISTS `embarazoactual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `embarazoactual` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteOtroSeguro_id` int(11) default NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `fecha` date default NULL,
  `embarazoPlaneado` tinyint(1) default NULL,
  `metodosAnticoncepcion_id` int(11) NOT NULL default '1',
  `pesoAnterior` float default NULL,
  `talla` int(3) default NULL,
  `imc` float default NULL,
  `descImc` varchar(15) default NULL,
  `fum` date default NULL,
  `fpp` date default NULL,
  `fechabaja` date default NULL,
  `edadGestacionalConfiable` varchar(20) NOT NULL,
  `antitetanicaPrevia` tinyint(1) default NULL,
  `antitetanicaActual1Mes` int(1) default NULL,
  `antitetanicaActual2RGesta` int(1) default NULL,
  `grupoSanguineo` varchar(2) default NULL,
  `rh` varchar(1) default NULL,
  `sensibilidad` tinyint(1) default NULL,
  `fumaActivoPrimerTrimestre` tinyint(1) default NULL,
  `fumaActivoSegundoTrimestre` tinyint(1) default NULL,
  `fumaActivoTercerTrimestre` tinyint(1) default NULL,
  `fumaPasivoPrimerTrimestre` tinyint(1) default NULL,
  `fumaPasivoSegundoTrimestre` tinyint(1) default NULL,
  `fumaPasivoTercerTrimestre` tinyint(1) default NULL,
  `drogasPrimerTrimestre` tinyint(1) default NULL,
  `drogasSegundoTrimestre` tinyint(1) default NULL,
  `drogasTercerTrimestre` tinyint(1) default NULL,
  `alcoholPrimerTrimestre` tinyint(1) default NULL,
  `alcoholSegundoTrimestre` tinyint(1) default NULL,
  `alcoholTercerTrimestre` tinyint(1) default NULL,
  `violenciaPrimerTrimestre` tinyint(1) default NULL,
  `violenciaSegundoTrimestre` tinyint(1) default NULL,
  `violenciaTercerTrimestre` tinyint(1) default NULL,
  `rubeola` varchar(20) NOT NULL,
  `hospitalizacion` tinyint(1) default NULL,
  `traslado` tinyint(1) default NULL,
  `lugar` varchar(100) default NULL,
  `examenClinicoNormal` tinyint(1) default NULL,
  `examenMamasNormal` tinyint(1) default NULL,
  `examenOdontologicoNormal` tinyint(1) default NULL,
  `pelvisNormal` tinyint(1) default NULL,
  `papanicolaoNormal` tinyint(1) default NULL,
  `colposcopiaNormal` tinyint(1) default NULL,
  `cervixNormal` tinyint(1) default NULL,
  `toxoplasmosisMenor20` varchar(10) default NULL,
  `toxoplasmosisMayor20` varchar(10) default NULL,
  `toxoplasmosis1raConsulta` varchar(10) default NULL,
  `hierro` varchar(1) default NULL,
  `folatos` varchar(1) default NULL,
  `vihMenor20` varchar(10) default NULL,
  `vihResultadoMenor20` varchar(10) default NULL,
  `tarvEmbMenor20` varchar(10) default NULL,
  `vihMayor20` varchar(10) default NULL,
  `vihResultadoMayor20` varchar(10) default NULL,
  `tarvEmbMayor20` varchar(10) default NULL,
  `tipoPruebaSifilisMenor20` varchar(10) default NULL,
  `semanaPruebaSifilisMenor20` varchar(2) default NULL,
  `resultadoPruebaSifilisMenor20` varchar(10) default NULL,
  `tratamientoParejaSifilisMenor20` varchar(10) default NULL,
  `tipoPruebaSifilisMayor20` varchar(10) default NULL,
  `semanaPruebaSifilisMayor20` varchar(2) default NULL,
  `resultadoPruebaSifilisMayor20` varchar(10) default NULL,
  `tratamientoParejaSifilisMayor20` varchar(10) default NULL,
  `chagas` varchar(10) default NULL,
  `paludismo` varchar(10) default NULL,
  `bacteriuriaMenor20` varchar(10) default NULL,
  `bacteriuriaMayor20` varchar(10) default NULL,
  `glicemiaMenor30` int(3) default NULL,
  `glicemiaMayor30` int(3) default NULL,
  `detectProtOrina` tinyint(1) default NULL,
  `estreptococo` varchar(10) default NULL,
  `planeandoParto` tinyint(1) default NULL,
  `orientacionLactancia` tinyint(1) default NULL,
  `vdrl1` varchar(1) default NULL,
  `fechaVdrl1` date default NULL,
  `vdrl2` varchar(2) default NULL,
  `fechaVdrl2` date default NULL,
  `hbMenor20` float default NULL,
  `descHbMenor20` varchar(10) default NULL,
  `hbMayor20` float default NULL,
  `descHbMayor20` varchar(10) default NULL,
  `created_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_embarazoactual_afiliado1_idx` (`afiliado_id`),
  KEY `fk_embarazoactual_medico1_idx` (`medico_id`),
  KEY `fk_embarazoactual_pacienteOtroSeguro1_idx` (`pacienteOtroSeguro_id`),
  KEY `fk_embarazoactual_metodosAnticoncepcion1_idx` (`metodosAnticoncepcion_id`),
  CONSTRAINT `fk_embarazoactual_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_embarazoactual_medico1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_embarazoactual_metodosAnticoncepcion1` FOREIGN KEY (`metodosAnticoncepcion_id`) REFERENCES `metodosanticoncepcion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_embarazoactual_pacienteOtroSeguro1` FOREIGN KEY (`pacienteOtroSeguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2323 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id` smallint(2) NOT NULL auto_increment,
  `matricula` varchar(20) collate utf8_unicode_ci NOT NULL,
  `profesion` varchar(20) collate utf8_unicode_ci NOT NULL,
  `centro_salud_id` smallint(2) NOT NULL,
  `nombre` varchar(45) collate utf8_unicode_ci NOT NULL,
  `apellido` varchar(45) collate utf8_unicode_ci NOT NULL,
  `cargo` varchar(45) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `matricula` (`matricula`),
  KEY `fk_empleado_centro_salud1_idx` (`centro_salud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleado_filial`
--

DROP TABLE IF EXISTS `empleado_filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado_filial` (
  `id` int(11) NOT NULL auto_increment,
  `empleado_id` smallint(2) NOT NULL,
  `filial_id` smallint(2) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_empleado_filial_empleado1_idx` (`empleado_id`),
  KEY `fk_empleado_filial_filial1_idx` (`filial_id`),
  CONSTRAINT `fk_empleado_filial_empleado1` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleado_filial_filial1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL auto_increment,
  `cod` varchar(15) collate utf8_unicode_ci NOT NULL,
  `nom` varchar(100) collate utf8_unicode_ci NOT NULL,
  `deudor` varchar(2) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entrega_medicamento`
--

DROP TABLE IF EXISTS `entrega_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrega_medicamento` (
  `id` int(10) NOT NULL auto_increment,
  `recetauh_id` int(10) NOT NULL,
  `medicamento_id` int(5) NOT NULL,
  `cantidad` int(6) NOT NULL,
  `tratamiento` text NOT NULL,
  `via` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `entrega_medicamento_FI_1` (`recetauh_id`),
  KEY `entrega_medicamento_FI_2` (`medicamento_id`),
  CONSTRAINT `entrega_medicamento_FI_1` FOREIGN KEY (`recetauh_id`) REFERENCES `recetauh` (`id`),
  CONSTRAINT `entrega_medicamento_FI_2` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357072 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entrega_medicamento_os`
--

DROP TABLE IF EXISTS `entrega_medicamento_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrega_medicamento_os` (
  `id` int(10) NOT NULL auto_increment,
  `recetaos_id` int(10) NOT NULL,
  `medicamento_id` int(4) NOT NULL,
  `cantidad` int(6) NOT NULL,
  `tratamiento` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `entrega_medicamento_os_FI_1` (`recetaos_id`),
  KEY `entrega_medicamento_os_FI_2` (`medicamento_id`),
  CONSTRAINT `entrega_medicamento_os_FI_2` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`),
  CONSTRAINT `entrega_medicamento_os_ibfk_1` FOREIGN KEY (`recetaos_id`) REFERENCES `recetaos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `id` smallint(3) unsigned NOT NULL auto_increment,
  `nombre` varchar(50) collate utf8_unicode_ci NOT NULL,
  `servicio_id` smallint(2) unsigned NOT NULL,
  `observacion` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_especialidad_servicio1_idx` (`servicio_id`),
  CONSTRAINT `fk_especialidad_servicio1` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `especialidad_filial`
--

DROP TABLE IF EXISTS `especialidad_filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad_filial` (
  `id` int(11) NOT NULL auto_increment,
  `filial_id` smallint(2) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_filial_has_especialidad_especialidad1_idx` (`especialidad_id`),
  KEY `fk_filial_has_especialidad_filial1_idx` (`filial_id`),
  CONSTRAINT `fk_filial_has_especialidad_especialidad1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filial_has_especialidad_filial1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadocivil`
--

DROP TABLE IF EXISTS `estadocivil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadocivil` (
  `id` smallint(6) NOT NULL auto_increment,
  `descripcion` varchar(13) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estudios`
--

DROP TABLE IF EXISTS `estudios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudios` (
  `id` smallint(2) unsigned NOT NULL auto_increment,
  `descripcion` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examen` (
  `id` smallint(2) NOT NULL auto_increment,
  `descripcion` varchar(150) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `examenclinicobucodental`
--

DROP TABLE IF EXISTS `examenclinicobucodental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examenclinicobucodental` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `gradoHigiene` varchar(8) default NULL,
  `portadorProtesis` varchar(9) default NULL,
  `estadoProtesis` varchar(45) default NULL,
  `patologiaProtesis` varchar(255) default NULL,
  `signosDentarios` varchar(45) default NULL,
  `signosPeriodoncia` varchar(45) default NULL,
  `signosOclusion` varchar(45) default NULL,
  `signosMusosa` varchar(45) default NULL,
  `signosLengua` varchar(45) default NULL,
  `signosLabio` varchar(45) default NULL,
  `signosGrandulaSalival` varchar(45) default NULL,
  `signosPatologiaGanglionar` varchar(45) default NULL,
  `signosATM` varchar(45) default NULL,
  `signosOtros` varchar(45) default NULL,
  `observaciones` text,
  `created_by` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_examenClinicoBucoDental_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_examenClinicoBucoDental_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15639 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `examenoftalmologico`
--

DROP TABLE IF EXISTS `examenoftalmologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examenoftalmologico` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `observaciones` varchar(250) default NULL,
  `created_by` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_examenOftalmologico_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_examenOftalmologico_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25779 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `familia`
--

DROP TABLE IF EXISTS `familia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familia` (
  `id` int(11) NOT NULL auto_increment,
  `madre_afiliado_id` int(11) unsigned default NULL,
  `madreFechaNacimiento` date default NULL,
  `madreEstudiosAprobados` int(2) default NULL,
  `madreAlfabeta` tinyint(1) default NULL,
  `madreOcupacion` varchar(45) collate utf8_unicode_ci default NULL,
  `madreHorasFueraCasa` int(2) default NULL,
  `cuidadoAdecuado` tinyint(1) default NULL,
  `estadoCivilMadre_id` smallint(6) default NULL,
  `padre_afiliado_id` int(11) unsigned default NULL,
  `padreFechaNacimiento` date default NULL,
  `padreEstudiosAprobados` int(2) default NULL,
  `padreAlfabeta` tinyint(1) default NULL,
  `padreOcupacion` varchar(45) collate utf8_unicode_ci default NULL,
  `integrantemadre` tinyint(1) default NULL,
  `integrantepadre` tinyint(1) default NULL,
  `integrantehermanos` int(2) default NULL,
  `integranteotros` int(2) default NULL,
  `hermanosVivos` int(2) default NULL,
  `hermanosMuertos` int(2) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_FAMILIA_afiliado1` (`madre_afiliado_id`),
  KEY `fk_FAMILIA_afiliado2` (`padre_afiliado_id`),
  KEY `fk_familia_estadoCivil1_idx` (`estadoCivilMadre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `farmacia`
--

DROP TABLE IF EXISTS `farmacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `farmacia` (
  `id` smallint(2) NOT NULL auto_increment,
  `centro_salud_id` smallint(2) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `farmacia_id` smallint(2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `farmacia_FI_1` (`centro_salud_id`),
  CONSTRAINT `farmacia_FI_1` FOREIGN KEY (`centro_salud_id`) REFERENCES `centro_salud` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `farmacia_has_medicamento`
--

DROP TABLE IF EXISTS `farmacia_has_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `farmacia_has_medicamento` (
  `id` int(6) NOT NULL auto_increment,
  `farmacia_id` smallint(2) NOT NULL,
  `medicamento_id` int(5) NOT NULL,
  `saldo` int(8) default NULL,
  `minimo_existente` int(8) NOT NULL,
  `valorpromedio` float(11,5) NOT NULL,
  `fechaulting` date NOT NULL,
  `diferencia` float(11,5) NOT NULL,
  `ppant` float(11,5) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `farmacia_has_medicamento_FI_1` (`farmacia_id`),
  KEY `farmacia_has_medicamento_FI_2` (`medicamento_id`),
  CONSTRAINT `farmacia_has_medicamento_FI_1` FOREIGN KEY (`farmacia_id`) REFERENCES `farmacia` (`id`),
  CONSTRAINT `farmacia_has_medicamento_FI_2` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2567 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feriado`
--

DROP TABLE IF EXISTS `feriado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feriado` (
  `id` int(11) NOT NULL auto_increment,
  `fecha` date NOT NULL,
  `motivo` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filial`
--

DROP TABLE IF EXISTS `filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filial` (
  `id` smallint(2) unsigned NOT NULL auto_increment,
  `nombre` varchar(50) collate utf8_unicode_ci NOT NULL,
  `direccion` varchar(250) collate utf8_unicode_ci default NULL,
  `telefono` varchar(10) collate utf8_unicode_ci default NULL,
  `telefono2` varchar(10) collate utf8_unicode_ci default NULL,
  `telefono3` varchar(10) collate utf8_unicode_ci default NULL,
  `descripcion` varchar(250) collate utf8_unicode_ci default NULL,
  `codigo` varchar(250) collate utf8_unicode_ci default NULL,
  `geoubicacion` varchar(600) collate utf8_unicode_ci default NULL,
  `geoubicacion2` varchar(600) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `diasficha` smallint(6) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gabinete`
--

DROP TABLE IF EXISTS `gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gabinete` (
  `id` int(3) NOT NULL auto_increment,
  `descripcion` varchar(255) collate utf8_unicode_ci NOT NULL,
  `grupoimpre` int(2) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grupo_terapeutico`
--

DROP TABLE IF EXISTS `grupo_terapeutico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo_terapeutico` (
  `id` smallint(2) NOT NULL auto_increment,
  `terapeutico` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `terapeutico` (`terapeutico`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grupotratamientodental`
--

DROP TABLE IF EXISTS `grupotratamientodental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupotratamientodental` (
  `id` int(11) NOT NULL auto_increment,
  `descripcion` varchar(100) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hcmedicinainterna`
--

DROP TABLE IF EXISTS `hcmedicinainterna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hcmedicinainterna` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteOtroSeguro_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_hcmedicinainterna_pacienteOtroSeguro1_idx` (`pacienteOtroSeguro_id`),
  KEY `fk_hcmedicinainterna_afiliado1_idx` (`afiliado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1886 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hcodontologia`
--

DROP TABLE IF EXISTS `hcodontologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hcodontologia` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `odontograma_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_hcodontologia_afiliado1_idx` (`afiliado_id`),
  KEY `fk_hcodontologia_odontograma1_idx` (`odontograma_id`),
  CONSTRAINT `fk_hcodontologia_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hcodontologia_odontograma1` FOREIGN KEY (`odontograma_id`) REFERENCES `odontograma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hcpediatria`
--

DROP TABLE IF EXISTS `hcpediatria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hcpediatria` (
  `id` int(11) NOT NULL auto_increment,
  `tipoPaciente_id` smallint(6) NOT NULL,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteOtroSeguro_id` int(11) default NULL,
  `antecedentesPerinatales_id` int(11) default NULL,
  `familia_id` int(11) default NULL,
  `vivienda_id` int(11) default NULL,
  `lactancia_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_hcpediatria_pacienteOtroSeguro1_idx` (`pacienteOtroSeguro_id`),
  KEY `fk_hcpediatria_afiliado1_idx` (`afiliado_id`),
  KEY `fk_hcpediatria_tipoPaciente1_idx` (`tipoPaciente_id`),
  KEY `fk_hcpediatria_antecedentesPerinatales1_idx` (`antecedentesPerinatales_id`),
  KEY `fk_hcpediatria_familia1_idx` (`familia_id`),
  KEY `fk_hcpediatria_vivienda1_idx` (`vivienda_id`),
  KEY `fk_hcpediatria_lactancia1_idx` (`lactancia_id`),
  CONSTRAINT `fk_hcpediatria_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hcpediatria_antecedentesPerinatales1` FOREIGN KEY (`antecedentesPerinatales_id`) REFERENCES `antecedentesperinatales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hcpediatria_familia1` FOREIGN KEY (`familia_id`) REFERENCES `familia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hcpediatria_lactancia1` FOREIGN KEY (`lactancia_id`) REFERENCES `lactancia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hcpediatria_pacienteOtroSeguro1` FOREIGN KEY (`pacienteOtroSeguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hcpediatria_tipoPaciente1` FOREIGN KEY (`tipoPaciente_id`) REFERENCES `tipopaciente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hcpediatria_vivienda1` FOREIGN KEY (`vivienda_id`) REFERENCES `vivienda` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hispacientefi`
--

DROP TABLE IF EXISTS `hispacientefi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hispacientefi` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `hora` varchar(5) collate utf8_unicode_ci NOT NULL,
  `atendido` char(1) collate utf8_unicode_ci NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_hispacientefi_afiliado1_idx` (`afiliado_id`),
  KEY `fk_hispacientefi_especialidad1_idx` (`especialidad_id`),
  KEY `fk_hispacientefi_medico1_idx` (`medico_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `fk_hispacientefi_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hispacientefi_especialidad1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hispacientefi_medico1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hispacientefi_ibfk_1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=502705 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hispacientefiadmision`
--

DROP TABLE IF EXISTS `hispacientefiadmision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hispacientefiadmision` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteotroseguro_id` int(11) default NULL,
  `categoria_id` smallint(2) NOT NULL,
  `condicionadmision_id` smallint(2) NOT NULL,
  `consultaemergencias_id` int(11) default NULL,
  `emergencia` int(11) default '0',
  `hospitalizacion` int(11) default '0',
  `atendido` int(11) default '0',
  `atendidosv` tinyint(1) NOT NULL default '0',
  `prioridad` int(1) default NULL,
  `hospitalizado` int(1) default '0',
  `area` smallint(1) unsigned NOT NULL default '0',
  `comollego_id` smallint(2) default '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `hispacientefiadmision_FI_1` (`afiliado_id`),
  KEY `hispacientefiadmision_FI_2` (`pacienteotroseguro_id`),
  KEY `hispacientefiadmision_FI_3` (`categoria_id`),
  KEY `hispacientefiadmision_FI_4` (`consultaemergencias_id`),
  KEY `condicionadmision` (`condicionadmision_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `comollego_id` (`comollego_id`),
  CONSTRAINT `hispacientefiadmision_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hispacientefiadmision_ibfk_2` FOREIGN KEY (`pacienteotroseguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hispacientefiadmision_ibfk_3` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hispacientefiadmision_ibfk_4` FOREIGN KEY (`consultaemergencias_id`) REFERENCES `consultaemergencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hispacientefiadmision_ibfk_5` FOREIGN KEY (`condicionadmision_id`) REFERENCES `condicionadmision` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hispacientefiadmision_ibfk_8` FOREIGN KEY (`comollego_id`) REFERENCES `comollego` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23709 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historiaclinicaoftalmologica`
--

DROP TABLE IF EXISTS `historiaclinicaoftalmologica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historiaclinicaoftalmologica` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `antecedentesoftalmologicos_id` int(11) default NULL,
  `created_by` smallint(6) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_historiaclinicaoftalmologica_afiliado1_idx` (`afiliado_id`),
  KEY `fk_historiaclinicaoftalmologica_antecedentesoftalmologicos1_idx` (`antecedentesoftalmologicos_id`),
  CONSTRAINT `fk_historiaclinicaoftalmologica_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_historiaclinicaoftalmologica_antecedentesoftalmologicos1` FOREIGN KEY (`antecedentesoftalmologicos_id`) REFERENCES `antecedentesoftalmologicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial` (
  `id` int(11) NOT NULL auto_increment,
  `farmacia_has_medicamento_id` int(10) NOT NULL,
  `auxreging` int(11) default NULL,
  `auxregtra` int(11) default NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(45) default NULL,
  `destino` varchar(45) default NULL,
  `salanterior` int(10) NOT NULL,
  `salactual` int(10) NOT NULL,
  `pppalafecha` float(11,5) default NULL,
  `auxregce` int(11) default NULL,
  `auxregos` int(11) default NULL,
  `auxreguh` int(11) default NULL,
  `preciounitario` float(11,5) default NULL,
  PRIMARY KEY  (`id`),
  KEY `historial_FI_1` (`farmacia_has_medicamento_id`),
  KEY `auxreging` (`auxreging`),
  KEY `auxregtra` (`auxregtra`),
  KEY `fecha` (`fecha`),
  KEY `auxregce` (`auxregce`),
  KEY `auxreguh` (`auxreguh`),
  CONSTRAINT `historial_FI_1` FOREIGN KEY (`farmacia_has_medicamento_id`) REFERENCES `farmacia_has_medicamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=805290 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historial_cupos`
--

DROP TABLE IF EXISTS `historial_cupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial_cupos` (
  `id` int(11) NOT NULL auto_increment,
  `medico_id` smallint(4) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `hor_ini` varchar(5) character set utf8 collate utf8_unicode_ci default NULL,
  `hor_fin` varchar(5) character set utf8 collate utf8_unicode_ci default NULL,
  `intervalo` smallint(2) default NULL,
  `cupos` smallint(3) default NULL,
  `otorgados` smallint(3) NOT NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_historial_cupos_medico1_idx` (`medico_id`),
  KEY `fk_historial_cupos_especialidad1_idx` (`especialidad_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `fk_historial_cupos_especialidad1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_historial_cupos_medico1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `historial_cupos_ibfk_1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52468 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hisufv`
--

DROP TABLE IF EXISTS `hisufv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hisufv` (
  `id` int(6) NOT NULL auto_increment,
  `medicamento_id` int(5) NOT NULL,
  `saldo` bigint(8) default NULL,
  `valoractualizado` float(11,5) default NULL,
  `ufvulting` float(11,5) default NULL,
  `fechaulting` date default NULL,
  `ufvactualizacion` float(11,5) default NULL,
  `fechaactualizacion` date default NULL,
  `diferencia` float(11,5) default NULL,
  `valoranterior` float(11,5) default NULL,
  PRIMARY KEY  (`id`),
  KEY `hisufv_FI_2` (`medicamento_id`),
  CONSTRAINT `hisufv_FI_2` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=720 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hitosdesarrollo`
--

DROP TABLE IF EXISTS `hitosdesarrollo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hitosdesarrollo` (
  `id` int(11) NOT NULL auto_increment,
  `mesInicio` int(1) NOT NULL,
  `mesFin` int(1) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hora0`
--

DROP TABLE IF EXISTS `hora0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hora0` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `idhora` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `hora` varchar(5) collate utf8_unicode_ci NOT NULL,
  `activo` char(1) collate utf8_unicode_ci NOT NULL default '1',
  `horario_medico_especialidad_filial_id` int(10) unsigned NOT NULL,
  `tafiliado` varchar(12) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_horario_horario_medico_especialidad_filial1_idx` (`horario_medico_especialidad_filial_id`),
  CONSTRAINT `fk_horario_horario_medico_especialidad_filial1` FOREIGN KEY (`horario_medico_especialidad_filial_id`) REFERENCES `horario_medico_especialidad_filial` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1499 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `horario_medico_especialidad_filial`
--

DROP TABLE IF EXISTS `horario_medico_especialidad_filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario_medico_especialidad_filial` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `medico_especialidad_filial_id` int(11) NOT NULL,
  `hor_ini` varchar(5) collate utf8_unicode_ci NOT NULL,
  `hor_fin` varchar(5) collate utf8_unicode_ci NOT NULL,
  `intervalo` smallint(2) unsigned NOT NULL,
  `activo` char(1) collate utf8_unicode_ci NOT NULL default '1',
  `cupos` smallint(2) default NULL,
  `consultorio` varchar(30) collate utf8_unicode_ci default '',
  `observacion` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_horario_medico_especialidad_filial_medico_especialidad_f_idx` (`medico_especialidad_filial_id`),
  CONSTRAINT `fk_horario_medico_especialidad_filial_medico_especialidad_fil1` FOREIGN KEY (`medico_especialidad_filial_id`) REFERENCES `medico_especialidad_filial` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `informemedico`
--

DROP TABLE IF EXISTS `informemedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informemedico` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `para` text NOT NULL,
  `informe` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `medico_id` (`medico_id`),
  KEY `afiliado_id` (`afiliado_id`),
  CONSTRAINT `informemedico_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`),
  CONSTRAINT `informemedico_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ingreso_medicamento_compra`
--

DROP TABLE IF EXISTS `ingreso_medicamento_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso_medicamento_compra` (
  `id` int(10) NOT NULL auto_increment,
  `numero` int(6) NOT NULL,
  `farmacia_id` smallint(2) NOT NULL,
  `proveedores_id` smallint(3) NOT NULL,
  `empleado_id` smallint(3) NOT NULL,
  `fecha_compra` date NOT NULL,
  `factura` varchar(20) NOT NULL,
  `ordencompra` int(11) NOT NULL,
  `nrocotizacion` int(11) NOT NULL,
  `nropedido` varchar(20) NOT NULL,
  `cuenta` varchar(255) NOT NULL,
  `autorizacion` int(1) NOT NULL default '0',
  `autorizado` int(1) NOT NULL default '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `ingreso_medicamento_compra_FI_1` (`farmacia_id`),
  KEY `ingreso_medicamento_compra_FI_2` (`empleado_id`),
  KEY `ingreso_medicamento_compra_FI_3` (`proveedores_id`),
  CONSTRAINT `ingreso_medicamento_compra_FI_1` FOREIGN KEY (`farmacia_id`) REFERENCES `farmacia` (`id`),
  CONSTRAINT `ingreso_medicamento_compra_FI_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`),
  CONSTRAINT `ingreso_medicamento_compra_FI_3` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `internado`
--

DROP TABLE IF EXISTS `internado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internado` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned default NULL,
  `noAfiliado_id` int(11) default NULL,
  `categoria_id` smallint(2) default NULL,
  `cama_id` int(11) NOT NULL,
  `medico_id` smallint(4) unsigned default NULL,
  `medico_consulta_id` smallint(4) unsigned default NULL,
  `medico_referencia_id` smallint(4) unsigned default NULL,
  `formulario_referencia` varchar(200) default NULL,
  `cie10_id1` smallint(5) unsigned NOT NULL,
  `procedencia` varchar(1000) default NULL,
  `medio_referencia` varchar(200) default NULL,
  `observaciones` varchar(1000) default NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `conducto` varchar(1000) default NULL,
  `es_afiliado` int(11) default '1',
  `alta` int(11) default '0',
  `altaFecha` date default NULL,
  `altaHora` time default NULL,
  `cie10_id2` smallint(5) unsigned default NULL,
  `tratamientio` varchar(200) default NULL,
  `lugar_referencia_salida` varchar(200) default NULL,
  `medio_referencia_salida` varchar(200) default NULL,
  `motivo_refe_retorno` varchar(200) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `internado_FI_1` (`afiliado_id`),
  KEY `internado_FI_2` (`noAfiliado_id`),
  KEY `internado_FI_3` (`categoria_id`),
  KEY `internado_FI_4` (`cama_id`),
  KEY `internado_FI_5` (`medico_id`),
  KEY `internado_FI_6` (`medico_consulta_id`),
  KEY `internado_FI_7` (`medico_referencia_id`),
  KEY `cie10_id1` (`cie10_id1`),
  KEY `cie10_id2` (`cie10_id2`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `internado_FK_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`),
  CONSTRAINT `internado_FK_2` FOREIGN KEY (`noAfiliado_id`) REFERENCES `pacienteotroseguro` (`id`),
  CONSTRAINT `internado_FK_3` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  CONSTRAINT `internado_FK_4` FOREIGN KEY (`cama_id`) REFERENCES `cama` (`id`),
  CONSTRAINT `internado_FK_5` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `internado_FK_6` FOREIGN KEY (`medico_consulta_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `internado_FK_7` FOREIGN KEY (`medico_referencia_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `internado_ibfk_1` FOREIGN KEY (`cie10_id1`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `internado_ibfk_2` FOREIGN KEY (`cie10_id2`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ips`
--

DROP TABLE IF EXISTS `ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ips` (
  `id` smallint(5) NOT NULL auto_increment,
  `ip` varchar(45) NOT NULL,
  `centro_salud_id` smallint(2) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `ips_FI_1` (`centro_salud_id`),
  CONSTRAINT `ips_FI_1` FOREIGN KEY (`centro_salud_id`) REFERENCES `centro_salud` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` smallint(2) unsigned NOT NULL auto_increment,
  `denominacion` varchar(30) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio` (
  `id` smallint(3) NOT NULL auto_increment,
  `nombre` varchar(50) collate utf8_unicode_ci NOT NULL,
  `examen_id` smallint(2) NOT NULL,
  `grupoimpre` int(2) default NULL,
  `mostrar` smallint(1) NOT NULL default '1' COMMENT 'se muestra en la lista de opciones',
  PRIMARY KEY  (`id`),
  KEY `fk_laboratorio_examen1_idx` (`examen_id`),
  CONSTRAINT `fk_laboratorio_examen1` FOREIGN KEY (`examen_id`) REFERENCES `examen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lactancia`
--

DROP TABLE IF EXISTS `lactancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lactancia` (
  `id` int(11) NOT NULL auto_increment,
  `exclusiva` int(2) default NULL,
  `desteteDefinitivo` int(2) default NULL,
  `alimentacionComplementaria` int(2) default NULL,
  `adecuado` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `llamarpaciente`
--

DROP TABLE IF EXISTS `llamarpaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `llamarpaciente` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) NOT NULL,
  `medico_id` smallint(4) NOT NULL,
  `filial_id` smallint(2) NOT NULL,
  `especialidad_id` smallint(3) NOT NULL,
  `consultorio` varchar(30) collate utf8_unicode_ci default NULL,
  `nroficha` int(3) NOT NULL,
  `estado` bigint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `afiliado_id` (`afiliado_id`),
  KEY `medico_id` (`medico_id`,`especialidad_id`,`consultorio`),
  KEY `medico_id_2` (`medico_id`,`especialidad_id`,`consultorio`)
) ENGINE=InnoDB AUTO_INCREMENT=12200 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lotes`
--

DROP TABLE IF EXISTS `lotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lotes` (
  `id` int(11) NOT NULL auto_increment,
  `farmacia_id` smallint(2) NOT NULL,
  `medicamento_id` int(5) NOT NULL,
  `auxreging` int(11) default NULL,
  `auxregtra` int(11) default NULL,
  `aux` int(11) NOT NULL,
  `fecha_mov` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `lote` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `saldolote` int(11) NOT NULL,
  `cant_mov` int(11) NOT NULL,
  `activo` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `farmacia_id` (`farmacia_id`),
  KEY `medicamento_id` (`medicamento_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35972 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamento` (
  `id` int(5) NOT NULL auto_increment,
  `codigo` varchar(20) NOT NULL,
  `grupo_terapeutico_id` smallint(2) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `concentracion` varchar(45) NOT NULL,
  `unidad` varchar(20) NOT NULL,
  `presentacion` varchar(255) NOT NULL,
  `control` smallint(3) NOT NULL,
  `ce` tinyint(1) NOT NULL,
  `estupefaciente` smallint(1) NOT NULL default '0',
  `psicotropico` smallint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `medicamento_FI_1` (`grupo_terapeutico_id`),
  CONSTRAINT `medicamento_FI_1` FOREIGN KEY (`grupo_terapeutico_id`) REFERENCES `grupo_terapeutico` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medicamento_especialidad`
--

DROP TABLE IF EXISTS `medicamento_especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamento_especialidad` (
  `id` int(6) NOT NULL auto_increment,
  `medicamento_id` int(5) NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `medicamento_FI_1` (`medicamento_id`),
  KEY `especialidad_FI_2` (`especialidad_id`),
  CONSTRAINT `medicamento_especialidad_FI_1` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`),
  CONSTRAINT `medicamento_especialidad_FI_2` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medicamentos_compra`
--

DROP TABLE IF EXISTS `medicamentos_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamentos_compra` (
  `id` int(11) NOT NULL auto_increment,
  `ingreso_medicamento_compra_id` int(11) NOT NULL,
  `medicamento_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `lote` varchar(20) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `valor_unitario_cotizado` decimal(11,5) NOT NULL,
  `total` decimal(15,5) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `ingreso_medicamento_compra_FI_1` (`ingreso_medicamento_compra_id`),
  KEY `ingreso_medicamento_compra_FI_2` (`medicamento_id`),
  CONSTRAINT `medicamentos_compra_FI_1` FOREIGN KEY (`ingreso_medicamento_compra_id`) REFERENCES `ingreso_medicamento_compra` (`id`),
  CONSTRAINT `medicamentos_compra_FI_2` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11561 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `id` smallint(4) unsigned NOT NULL auto_increment,
  `codigo` varchar(8) collate utf8_unicode_ci NOT NULL,
  `nombrec` varchar(100) collate utf8_unicode_ci NOT NULL,
  `cargahor` smallint(4) unsigned NOT NULL default '0',
  `observacion` text collate utf8_unicode_ci,
  `item_id` smallint(2) unsigned NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  KEY `fk_medico_item1_idx` (`item_id`),
  CONSTRAINT `fk_medico_item1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medico_especialidad_filial`
--

DROP TABLE IF EXISTS `medico_especialidad_filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico_especialidad_filial` (
  `id` int(11) NOT NULL auto_increment,
  `medico_id` smallint(4) unsigned NOT NULL,
  `especialidad_filial_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_medico_especialidad_filial_medico1_idx` (`medico_id`),
  KEY `fk_medico_especialidad_filial_especialidad_filial1_idx` (`especialidad_filial_id`),
  CONSTRAINT `fk_medico_especialidad_filial_especialidad_filial1` FOREIGN KEY (`especialidad_filial_id`) REFERENCES `especialidad_filial` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medico_especialidad_filial_medico1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metodosanticoncepcion`
--

DROP TABLE IF EXISTS `metodosanticoncepcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metodosanticoncepcion` (
  `id` int(11) NOT NULL auto_increment,
  `descripcion` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `microscopia`
--

DROP TABLE IF EXISTS `microscopia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microscopia` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `created_by` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_microscopia_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_microscopia_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3380 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nd`
--

DROP TABLE IF EXISTS `nd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nd` (
  `id` smallint(2) NOT NULL auto_increment,
  `fecha` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ndpacientefi`
--

DROP TABLE IF EXISTS `ndpacientefi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ndpacientefi` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `horario_id` mediumint(8) unsigned NOT NULL,
  `fecha` date default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `horario_id` (`horario_id`),
  KEY `fk_ndpacientefi_afiliado1_idx` (`afiliado_id`),
  KEY `fk_ndpacientefi_especialidad1_idx` (`especialidad_id`),
  KEY `fk_ndpacientefi_medico1_idx` (`medico_id`),
  KEY `fk_ndpacientefi_horario1_idx` (`horario_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `fk_ndpacientefi_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ndpacientefi_especialidad1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ndpacientefi_horario1` FOREIGN KEY (`horario_id`) REFERENCES `horario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ndpacientefi_medico1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ndpacientefi_ibfk_1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nomenclatura`
--

DROP TABLE IF EXISTS `nomenclatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nomenclatura` (
  `id` int(11) NOT NULL auto_increment,
  `idn` smallint(6) default NULL,
  `nombre` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `observaciones`
--

DROP TABLE IF EXISTS `observaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observaciones` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `observacion` text collate utf8_unicode_ci NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_observaciones_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_observaciones_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ocirugia`
--

DROP TABLE IF EXISTS `ocirugia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocirugia` (
  `id` smallint(6) NOT NULL auto_increment,
  `descripcion` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `odontograma`
--

DROP TABLE IF EXISTS `odontograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `odontograma` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `tipoOdontograma` varchar(10) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_odontograma_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_odontograma_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40854 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oendodoncia`
--

DROP TABLE IF EXISTS `oendodoncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oendodoncia` (
  `id` smallint(6) NOT NULL auto_increment,
  `descripcion` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oexradiologico`
--

DROP TABLE IF EXISTS `oexradiologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oexradiologico` (
  `id` smallint(6) NOT NULL auto_increment,
  `descripcion` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ojo`
--

DROP TABLE IF EXISTS `ojo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ojo` (
  `id` smallint(3) NOT NULL auto_increment,
  `descripcion` varchar(45) default NULL,
  `abreviatura` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operiodoncia`
--

DROP TABLE IF EXISTS `operiodoncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operiodoncia` (
  `id` smallint(6) NOT NULL auto_increment,
  `descripcion` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oprevenpromo`
--

DROP TABLE IF EXISTS `oprevenpromo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oprevenpromo` (
  `id` smallint(6) NOT NULL auto_increment,
  `descripcion` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordeninternacion`
--

DROP TABLE IF EXISTS `ordeninternacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordeninternacion` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `telefono` varchar(12) default NULL,
  `fechainternacion` date default NULL,
  `horainternacion` time default NULL,
  `fechaoperacion` date default NULL,
  `horaoperacion` time default NULL,
  `cie10_id1` smallint(5) unsigned NOT NULL,
  `tratamientoquirurgico` text,
  `anestesia` text,
  `otros` text,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `afiliado_id` (`afiliado_id`),
  KEY `medico_id` (`medico_id`),
  KEY `cie10_id1` (`cie10_id1`),
  KEY `especialidad_id` (`especialidad_id`),
  CONSTRAINT `ordeninternacion_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ordeninternacion_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ordeninternacion_ibfk_3` FOREIGN KEY (`cie10_id1`) REFERENCES `cie10` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ordeninternacion_ibfk_4` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=883 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orestauracion`
--

DROP TABLE IF EXISTS `orestauracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orestauracion` (
  `id` smallint(6) NOT NULL auto_increment,
  `descripcion` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otratamiento`
--

DROP TABLE IF EXISTS `otratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otratamiento` (
  `id` smallint(6) NOT NULL auto_increment,
  `descripcion` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacientefi`
--

DROP TABLE IF EXISTS `pacientefi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientefi` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `filial_id` smallint(2) unsigned default NULL,
  `horario_id` mediumint(8) unsigned NOT NULL,
  `atendido` char(1) collate utf8_unicode_ci NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `horario_id` (`horario_id`),
  KEY `created_by` (`created_by`),
  KEY `fk_pacientefi_afiliado1_idx` (`afiliado_id`),
  KEY `fk_pacientefi_especialidad1_idx` (`especialidad_id`),
  KEY `fk_pacientefi_medico1_idx` (`medico_id`),
  KEY `fk_pacientefi_horario1_idx` (`horario_id`),
  KEY `filial_id` (`filial_id`),
  CONSTRAINT `fk_pacientefi_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pacientefi_especialidad1` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pacientefi_horario1` FOREIGN KEY (`horario_id`) REFERENCES `horario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pacientefi_ibfk_1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pacientefi_ibfk_2` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=798 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacientefiadmision`
--

DROP TABLE IF EXISTS `pacientefiadmision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientefiadmision` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned default NULL,
  `pacienteotroseguro_id` int(11) default NULL,
  `categoria_id` smallint(2) NOT NULL,
  `condicionadmision_id` smallint(2) NOT NULL,
  `consultaemergencias_id` int(11) default NULL,
  `emergencia` int(11) default '0',
  `hospitalizacion` int(11) default '0',
  `atendido` int(11) default '0',
  `atendidosv` tinyint(1) NOT NULL default '0',
  `prioridad` int(1) default NULL,
  `hospitalizado` int(1) default '0',
  `area` smallint(1) unsigned NOT NULL default '0',
  `comollego_id` smallint(2) default '0',
  `glasgowocular` tinyint(4) NOT NULL,
  `glasgowverbal` tinyint(4) NOT NULL,
  `glasgowmotora` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `pacientefiadmision_FI_1` (`afiliado_id`),
  KEY `pacientefiadmision_FI_2` (`pacienteotroseguro_id`),
  KEY `pacientefiadmision_FI_3` (`categoria_id`),
  KEY `pacientefiadmision_FI_4` (`consultaemergencias_id`),
  KEY `condicionadmision` (`condicionadmision_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `comollego_id` (`comollego_id`),
  CONSTRAINT `pacientefiadmision_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pacientefiadmision_ibfk_2` FOREIGN KEY (`pacienteotroseguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pacientefiadmision_ibfk_3` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pacientefiadmision_ibfk_4` FOREIGN KEY (`consultaemergencias_id`) REFERENCES `consultaemergencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pacientefiadmision_ibfk_5` FOREIGN KEY (`condicionadmision_id`) REFERENCES `condicionadmision` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pacientefiadmision_ibfk_8` FOREIGN KEY (`comollego_id`) REFERENCES `comollego` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23755 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacientefichamedico`
--

DROP TABLE IF EXISTS `pacientefichamedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientefichamedico` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `atendido` char(1) collate utf8_unicode_ci NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_pacienteFichaMedico_afiliado1_idx` (`afiliado_id`),
  KEY `fk_pacienteFichaMedico_especialidad1_idx` (`especialidad_id`),
  KEY `fk_pacienteFichaMedico_medico1_idx` (`medico_id`),
  CONSTRAINT `fk_pacienteFichaMedico_afiliado10` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pacienteFichaMedico_especialidad10` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pacienteFichaMedico_medico10` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacienteotroseguro`
--

DROP TABLE IF EXISTS `pacienteotroseguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacienteotroseguro` (
  `id` int(11) NOT NULL auto_increment,
  `cedula` varchar(12) collate utf8_unicode_ci NOT NULL,
  `hclinica` varchar(45) collate utf8_unicode_ci NOT NULL,
  `paterno` varchar(45) collate utf8_unicode_ci default NULL,
  `materno` varchar(45) collate utf8_unicode_ci default NULL,
  `nombre` varchar(45) collate utf8_unicode_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `sexo` varchar(45) collate utf8_unicode_ci NOT NULL,
  `ocupacion` varchar(45) collate utf8_unicode_ci default NULL,
  `domicilio` varchar(100) collate utf8_unicode_ci default NULL,
  `departamento` varchar(45) collate utf8_unicode_ci default NULL,
  `ciudad` varchar(45) collate utf8_unicode_ci default NULL,
  `provincia` varchar(45) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parto`
--

DROP TABLE IF EXISTS `parto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parto` (
  `id` int(11) NOT NULL auto_increment,
  `fum` date default NULL,
  `fpp` date default NULL,
  `fup` date default NULL,
  `gesta` smallint(2) NOT NULL,
  `para` smallint(2) NOT NULL,
  `aborto` smallint(2) NOT NULL,
  `cesarea` smallint(2) NOT NULL,
  `causa` varchar(255) NOT NULL,
  `altuterina` smallint(2) NOT NULL,
  `posicion` varchar(100) NOT NULL,
  `presentacion` varchar(100) NOT NULL,
  `fcf` smallint(3) NOT NULL,
  `contracciones` smallint(2) NOT NULL,
  `edemas` varchar(100) NOT NULL,
  `cuello` varchar(100) NOT NULL,
  `borramiento` smallint(3) NOT NULL,
  `dilatacion` smallint(2) NOT NULL,
  `membranas` varchar(100) NOT NULL,
  `presentaciontv` varchar(100) NOT NULL,
  `hodge` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patologia`
--

DROP TABLE IF EXISTS `patologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patologia` (
  `id` int(11) NOT NULL auto_increment,
  `tipo` varchar(10) collate utf8_unicode_ci NOT NULL,
  `cod` varchar(4) collate utf8_unicode_ci default NULL,
  `descripcion` varchar(255) collate utf8_unicode_ci NOT NULL,
  `cod_cie10` varchar(15) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patologiasperinatales`
--

DROP TABLE IF EXISTS `patologiasperinatales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patologiasperinatales` (
  `id` int(11) NOT NULL auto_increment,
  `antecedentesPerinatales_id` int(11) NOT NULL,
  `patologia_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_patologias_antecedentesPerinatales1` (`antecedentesPerinatales_id`),
  KEY `fk_patologias_patologia1` (`patologia_id`),
  CONSTRAINT `fk_patologias_antecedentesPerinatales10` FOREIGN KEY (`antecedentesPerinatales_id`) REFERENCES `antecedentesperinatales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_patologias_patologia10` FOREIGN KEY (`patologia_id`) REFERENCES `patologia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `periodoncia`
--

DROP TABLE IF EXISTS `periodoncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodoncia` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `presenciaTartaro` varchar(3) default NULL,
  `bolsasPeriodontales` varchar(3) default NULL,
  `movilidadDentaria` varchar(3) default NULL,
  `gradoMovilidad` varchar(3) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_periodoncia_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_periodoncia_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3591 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `id` int(11) NOT NULL auto_increment,
  `medico_id` smallint(4) unsigned NOT NULL,
  `hor_ini` varchar(5) default NULL,
  `hor_fin` varchar(5) default NULL,
  `fch_ini` date default NULL,
  `fch_fin` date default NULL,
  `motivo` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_permisos_medico1_idx` (`medico_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1792 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pieza`
--

DROP TABLE IF EXISTS `pieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pieza` (
  `id` int(11) NOT NULL auto_increment,
  `planta_id` int(11) NOT NULL,
  `nombre` varchar(100) default NULL,
  `codigo` varchar(10) default NULL,
  `descripcion` varchar(250) default NULL,
  `observaciones` varchar(250) default NULL,
  `plano` varchar(200) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `pieza_FI_1` (`planta_id`),
  CONSTRAINT `pieza_FK_1` FOREIGN KEY (`planta_id`) REFERENCES `planta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planta`
--

DROP TABLE IF EXISTS `planta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planta` (
  `id` int(11) NOT NULL auto_increment,
  `filial_id` smallint(2) unsigned NOT NULL,
  `nombre` varchar(100) default NULL,
  `descripcion` varchar(200) default NULL,
  `observaciones` varchar(250) default NULL,
  `codigo` varchar(10) default NULL,
  `plano` varchar(100) default NULL,
  `numero` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `planta_FI_1` (`filial_id`),
  CONSTRAINT `planta_FK_1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prescripcionanteojos`
--

DROP TABLE IF EXISTS `prescripcionanteojos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prescripcionanteojos` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `anteojos_id` int(11) default NULL,
  `tipoanteojos_id` int(11) default NULL,
  `ojo_id` smallint(3) default NULL,
  `dojo` varchar(50) NOT NULL,
  `sph` varchar(50) NOT NULL,
  `cyla` varchar(50) NOT NULL,
  `eje` varchar(50) NOT NULL,
  `created_by` smallint(6) default NULL,
  `created_at` datetime default NULL,
  `updated_by` smallint(6) default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_prescripcionanteojos_anteojos1_idx` (`anteojos_id`),
  KEY `fk_prescripcionanteojos_tipoanteojos1_idx` (`tipoanteojos_id`),
  KEY `fk_prescripcionanteojos_ojo1_idx` (`ojo_id`),
  KEY `fk_prescripcionanteojos_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_prescripcionanteojos_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prescripcionanteojos_anteojos1` FOREIGN KEY (`anteojos_id`) REFERENCES `anteojos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prescripcionanteojos_ojo1` FOREIGN KEY (`ojo_id`) REFERENCES `ojo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prescripcionanteojos_tipoanteojos1` FOREIGN KEY (`tipoanteojos_id`) REFERENCES `tipoanteojos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13608 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `presionintraocular`
--

DROP TABLE IF EXISTS `presionintraocular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presionintraocular` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) NOT NULL,
  `tiempo` smallint(6) default NULL,
  `od` int(11) default NULL,
  `oi` int(11) default NULL,
  `hora` time default NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `afiliado_id` (`afiliado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2648 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `procedimientosenfermeria`
--

DROP TABLE IF EXISTS `procedimientosenfermeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedimientosenfermeria` (
  `id` int(4) NOT NULL auto_increment,
  `descripcion` varchar(255) collate utf8_unicode_ci NOT NULL,
  `area` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `procedimientosrealizados`
--

DROP TABLE IF EXISTS `procedimientosrealizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedimientosrealizados` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `empleado_id` smallint(2) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `consultaemergencias_id` int(11) default NULL,
  `consultavaloracionespecialista_id` int(11) default NULL,
  `pacienteotroseguro_id` int(11) default NULL,
  `observaciones` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`),
  KEY `afiliado_id` (`afiliado_id`),
  KEY `empleado_id` (`empleado_id`),
  KEY `consultaemergencias_id` (`consultaemergencias_id`),
  KEY `consultavaloracionespecialista_id` (`consultavaloracionespecialista_id`),
  KEY `pacienteotroseguro_id` (`pacienteotroseguro_id`),
  CONSTRAINT `procedimientosrealizados_ibfk_1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `procedimientosrealizados_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `procedimientosrealizados_ibfk_3` FOREIGN KEY (`consultaemergencias_id`) REFERENCES `consultaemergencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `procedimientosrealizados_ibfk_4` FOREIGN KEY (`consultavaloracionespecialista_id`) REFERENCES `consultavaloracionespecialista` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `procedimientosrealizados_ibfk_5` FOREIGN KEY (`pacienteotroseguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `procedimientosrealizados_procedimientosenfermeria`
--

DROP TABLE IF EXISTS `procedimientosrealizados_procedimientosenfermeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedimientosrealizados_procedimientosenfermeria` (
  `id` int(11) NOT NULL auto_increment,
  `procedimientosrealizados_id` int(11) NOT NULL,
  `procedimientosenfermeria_id` int(4) NOT NULL,
  `realizado` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `procedimientosenfermeria_id` (`procedimientosenfermeria_id`),
  KEY `procedimientosrealizados_id` (`procedimientosrealizados_id`),
  CONSTRAINT `procedimientosrealizados_procedimientosenfermeria_ibfk_1` FOREIGN KEY (`procedimientosrealizados_id`) REFERENCES `procedimientosrealizados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `procedimientosrealizados_procedimientosenfermeria_ibfk_2` FOREIGN KEY (`procedimientosenfermeria_id`) REFERENCES `procedimientosenfermeria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` smallint(3) NOT NULL auto_increment,
  `nit_laboratorio` varchar(20) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` int(11) default NULL,
  `representante` varchar(45) NOT NULL,
  `representante_legal` varchar(45) NOT NULL,
  `tipo` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nit_laboratorio` (`nit_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rayosx`
--

DROP TABLE IF EXISTS `rayosx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rayosx` (
  `id` int(3) NOT NULL auto_increment,
  `descripcion` varchar(255) collate utf8_unicode_ci NOT NULL,
  `grupoimpre` int(2) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recetace`
--

DROP TABLE IF EXISTS `recetace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recetace` (
  `id` int(10) NOT NULL auto_increment,
  `id_receta` int(10) default NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `centro_salud_id` smallint(2) NOT NULL,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `valido_hasta` date NOT NULL,
  `medicamento_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `dias_tratamiento` int(11) NOT NULL,
  `indicaciones` varchar(255) default NULL,
  `autorizacion` int(1) NOT NULL default '0',
  `autorizado` int(1) NOT NULL default '0',
  `jefemedico` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `recetace_FI_1` (`medico_id`),
  KEY `recetace_FI_2` (`afiliado_id`),
  KEY `recetace_FI_4` (`centro_salud_id`),
  KEY `recetace_FI_5` (`especialidad_id`),
  KEY `recetace_FI_6` (`medicamento_id`),
  CONSTRAINT `recetace_FK_1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `recetace_FK_2` FOREIGN KEY (`centro_salud_id`) REFERENCES `centro_salud` (`id`),
  CONSTRAINT `recetace_FK_3` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`),
  CONSTRAINT `recetace_FK_4` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`),
  CONSTRAINT `recetace_FK_5` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=594162 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recetaos`
--

DROP TABLE IF EXISTS `recetaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recetaos` (
  `id` int(10) NOT NULL auto_increment,
  `id_receta` int(11) NOT NULL,
  `seguro` varchar(10) NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `centro_salud_id` smallint(2) NOT NULL,
  `pacienteOtroSeguro_id` int(11) NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `valido_hasta` date NOT NULL,
  `consultaemergencias_id` int(11) default NULL,
  `consultavaloracionespecialista_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `recetaos_id_receta_unique` (`id_receta`),
  KEY `recetaos_FI_1` (`medico_id`),
  KEY `recetaos_FI_2` (`centro_salud_id`),
  KEY `fk_recetaos_pacienteOtroSeguro1` (`pacienteOtroSeguro_id`),
  KEY `recetaos_FI_4` (`especialidad_id`),
  KEY `consultaemergencias_id` (`consultaemergencias_id`),
  KEY `consultavaloracionespecialista_id` (`consultavaloracionespecialista_id`),
  CONSTRAINT `fk_recetaos_pacienteOtroSeguro1` FOREIGN KEY (`pacienteOtroSeguro_id`) REFERENCES `pacienteotroseguro` (`id`),
  CONSTRAINT `recetaos_FI_1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `recetaos_FI_2` FOREIGN KEY (`centro_salud_id`) REFERENCES `centro_salud` (`id`),
  CONSTRAINT `recetaos_FI_4` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`),
  CONSTRAINT `recetaos_ibfk_5` FOREIGN KEY (`consultaemergencias_id`) REFERENCES `consultaemergencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `recetaos_ibfk_6` FOREIGN KEY (`consultavaloracionespecialista_id`) REFERENCES `consultavaloracionespecialista` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recetauh`
--

DROP TABLE IF EXISTS `recetauh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recetauh` (
  `id` int(10) NOT NULL auto_increment,
  `id_receta` int(11) NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `afiliado_id` int(11) unsigned NOT NULL,
  `especialidad_id` smallint(3) unsigned NOT NULL,
  `centro_salud_id` smallint(2) NOT NULL,
  `fecha` date NOT NULL,
  `valido_hasta` date NOT NULL,
  `nrocama` smallint(3) NOT NULL,
  `consultaemergencias_id` int(11) default NULL,
  `consultavaloracionespecialista_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `recetauh_id_receta_unique` (`id_receta`),
  KEY `recetauh_FI_1` (`medico_id`),
  KEY `recetauh_FI_2` (`afiliado_id`),
  KEY `recetauh_FI_4` (`especialidad_id`),
  KEY `recetauh_FI_5` (`centro_salud_id`),
  KEY `consultaemergencias_id` (`consultaemergencias_id`),
  KEY `consultavaloracionespecialista_id` (`consultavaloracionespecialista_id`),
  CONSTRAINT `recetauh_FI_1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`),
  CONSTRAINT `recetauh_FI_2` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`),
  CONSTRAINT `recetauh_FI_3` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidad` (`id`),
  CONSTRAINT `recetauh_FI_4` FOREIGN KEY (`centro_salud_id`) REFERENCES `centro_salud` (`id`),
  CONSTRAINT `recetauh_ibfk_5` FOREIGN KEY (`consultaemergencias_id`) REFERENCES `consultaemergencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `recetauh_ibfk_6` FOREIGN KEY (`consultavaloracionespecialista_id`) REFERENCES `consultavaloracionespecialista` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=130841 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recomendacion`
--

DROP TABLE IF EXISTS `recomendacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recomendacion` (
  `id` int(11) NOT NULL auto_increment,
  `descripcion` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recomendacionpediatria`
--

DROP TABLE IF EXISTS `recomendacionpediatria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recomendacionpediatria` (
  `id` int(11) NOT NULL auto_increment,
  `seguimientoPediatria_id` int(11) NOT NULL,
  `recomendacion_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_recomendacionPediatria_seguimientoPediatria1_idx` (`seguimientoPediatria_id`),
  KEY `fk_recomendacionPediatria_recomendacion1_idx` (`recomendacion_id`),
  CONSTRAINT `fk_recomendacionPediatria_recomendacion1` FOREIGN KEY (`recomendacion_id`) REFERENCES `recomendacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recomendacionPediatria_seguimientoPediatria1` FOREIGN KEY (`seguimientoPediatria_id`) REFERENCES `seguimientopediatria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29282 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `repetida`
--

DROP TABLE IF EXISTS `repetida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repetida` (
  `id` int(11) NOT NULL auto_increment,
  `nueva_consultaMedica_id` int(11) NOT NULL,
  `repetida_consultaMedica_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_repetida_consultaMedica1_idx` (`nueva_consultaMedica_id`),
  KEY `fk_repetida_consultaMedica2_idx` (`repetida_consultaMedica_id`),
  CONSTRAINT `fk_repetida_consultaMedica1` FOREIGN KEY (`nueva_consultaMedica_id`) REFERENCES `consultamedicapediatria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_repetida_consultaMedica2` FOREIGN KEY (`repetida_consultaMedica_id`) REFERENCES `consultamedicapediatria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `repetidaginecologica`
--

DROP TABLE IF EXISTS `repetidaginecologica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repetidaginecologica` (
  `id` int(11) NOT NULL auto_increment,
  `nueva_consultaginecologica_id` int(11) unsigned NOT NULL,
  `repetida_consultaginecologica_id` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_repetidaginecologica_consultaginecologica1_idx` (`nueva_consultaginecologica_id`),
  KEY `fk_repetidaginecologica_consultaginecologica2_idx` (`repetida_consultaginecologica_id`),
  CONSTRAINT `fk_repetidaginecologica_consultaginecologica1` FOREIGN KEY (`nueva_consultaginecologica_id`) REFERENCES `consultaginecologica` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_repetidaginecologica_consultaginecologica2` FOREIGN KEY (`repetida_consultaginecologica_id`) REFERENCES `consultaginecologica` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resultadoslaboratorio`
--

DROP TABLE IF EXISTS `resultadoslaboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultadoslaboratorio` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `analisislaboratorio_id` int(11) unsigned NOT NULL,
  `solservicio_laboratorio_id` int(11) NOT NULL,
  `parametroClinicoInicial` varchar(20) default NULL,
  `parametroClinicoFinal` varchar(20) default NULL,
  `resultado` varchar(255) character set latin1 NOT NULL,
  `observaciones` text character set latin1 NOT NULL,
  `tipoanalisis` smallint(2) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `analisis_id` (`analisislaboratorio_id`),
  KEY `solservicio_laboratorio_id` (`solservicio_laboratorio_id`),
  CONSTRAINT `resultadoslaboratorio_ibfk_2` FOREIGN KEY (`solservicio_laboratorio_id`) REFERENCES `solservicio_laboratorio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resultadoslaboratorio_ibfk_3` FOREIGN KEY (`analisislaboratorio_id`) REFERENCES `analisislaboratorio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=371138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seguimientopediatria`
--

DROP TABLE IF EXISTS `seguimientopediatria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguimientopediatria` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `consulta` varchar(7) collate utf8_unicode_ci default NULL COMMENT 'ni?o sano o enfermo',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_seguimientoPediatria_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_seguimientoPediatria_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=57519 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sellados`
--

DROP TABLE IF EXISTS `sellados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellados` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_sellados_afiliado1_idx` (`afiliado_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `id` smallint(2) unsigned NOT NULL auto_increment,
  `nombre` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_guard_group`
--

DROP TABLE IF EXISTS `sf_guard_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_guard_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `sf_guard_group_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_guard_group_permission`
--

DROP TABLE IF EXISTS `sf_guard_group_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_guard_group_permission` (
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`group_id`,`permission_id`),
  KEY `sf_guard_group_permission_FI_2` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_guard_permission`
--

DROP TABLE IF EXISTS `sf_guard_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_guard_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `sf_guard_permission_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_guard_remember_key`
--

DROP TABLE IF EXISTS `sf_guard_remember_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_guard_remember_key` (
  `user_id` int(11) NOT NULL,
  `remember_key` varchar(32) default NULL,
  `ip_address` varchar(50) NOT NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`user_id`,`ip_address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_guard_user`
--

DROP TABLE IF EXISTS `sf_guard_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_guard_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(128) NOT NULL,
  `algorithm` varchar(128) NOT NULL default 'sha1',
  `salt` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `created_at` datetime default NULL,
  `last_login` datetime default NULL,
  `is_active` int(11) NOT NULL default '1',
  `is_super_admin` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `sf_guard_user_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_guard_user_group`
--

DROP TABLE IF EXISTS `sf_guard_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_guard_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`group_id`),
  KEY `sf_guard_user_group_FI_2` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_guard_user_permission`
--

DROP TABLE IF EXISTS `sf_guard_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_guard_user_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`user_id`,`permission_id`),
  KEY `sf_guard_user_permission_FI_2` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_guard_user_profile`
--

DROP TABLE IF EXISTS `sf_guard_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_guard_user_profile` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `medico_id` smallint(6) default NULL,
  `empleado_id` smallint(6) default NULL,
  PRIMARY KEY  (`id`),
  KEY `sf_guard_user_profile_FI_1` (`user_id`),
  KEY `sf_guard_user_profile_FI_2` (`medico_id`),
  KEY `sf_guard_user_profile_FI_3` (`empleado_id`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `signospeligropaciente`
--

DROP TABLE IF EXISTS `signospeligropaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signospeligropaciente` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_signosPeligroPaciente_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_signosPeligroPaciente_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `signosvitales`
--

DROP TABLE IF EXISTS `signosvitales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signosvitales` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `pacienteotroseguro_id` int(11) default NULL,
  `temperatura` decimal(4,2) default NULL COMMENT 'temperatura',
  `saturacionoxigeno` smallint(3) default NULL,
  `frecuenciaCardiaca` smallint(3) default NULL COMMENT 'Frecuenacia Cardiaca',
  `presionArterial` varchar(7) default NULL COMMENT 'Presi?n Arterial',
  `frecuenciaRespiratoria` smallint(3) default NULL COMMENT 'Frecuencia Respiratoria',
  `tipotemperatura_id` smallint(2) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `consultaemergencias_id` int(11) default NULL,
  `observaciones` text,
  `empleado_id` smallint(2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_signosVitales_afiliado1_idx` (`afiliado_id`),
  KEY `tipotemperatura_id` (`tipotemperatura_id`),
  KEY `consultaemergencias_id` (`consultaemergencias_id`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `fk_signosVitales_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `signosvitales_ibfk_1` FOREIGN KEY (`empleado_id`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `signosvitales_ibfk_2` FOREIGN KEY (`tipotemperatura_id`) REFERENCES `tipotemperatura` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `signosvitales_ibfk_3` FOREIGN KEY (`consultaemergencias_id`) REFERENCES `consultaemergencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=284091 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `solservicio`
--

DROP TABLE IF EXISTS `solservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solservicio` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `consultaemergencias_id` int(11) default NULL,
  `consultavaloracionespecialista_id` int(11) default NULL,
  `pacienteotroseguro_id` int(11) default NULL,
  `fechahoralabo` datetime default NULL,
  `nroasignadolabo` int(11) default NULL,
  `fechahorarx` datetime default NULL,
  `nroasignadorx` int(11) default NULL,
  `fechahoragab` datetime default NULL,
  `nroasignadogab` int(11) default NULL,
  `centro_salud_id` smallint(2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_solservicio_afiliado1_idx` (`afiliado_id`),
  KEY `fk_solservicio_medico1_idx` (`medico_id`),
  KEY `consultaemergencias_id` (`consultaemergencias_id`),
  KEY `consultavaloracionespecialista_id` (`consultavaloracionespecialista_id`),
  KEY `pacienteotroseguro_id` (`pacienteotroseguro_id`),
  KEY `fechahoralabo` (`fechahoralabo`),
  KEY `nroasignadolabo` (`nroasignadolabo`),
  KEY `fechahorarx` (`fechahorarx`),
  KEY `nroasignadorx` (`nroasignadorx`),
  KEY `fechahoragab` (`fechahoragab`),
  KEY `nroasignadogab` (`nroasignadogab`),
  KEY `centro_salud_id` (`centro_salud_id`),
  CONSTRAINT `fk_solservicio_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solservicio_medico1` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `solservicio_ibfk_1` FOREIGN KEY (`pacienteotroseguro_id`) REFERENCES `pacienteotroseguro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `solservicio_ibfk_2` FOREIGN KEY (`consultavaloracionespecialista_id`) REFERENCES `consultavaloracionespecialista` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `solservicio_ibfk_3` FOREIGN KEY (`consultaemergencias_id`) REFERENCES `consultaemergencias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=113066 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `solservicio_gabinete`
--

DROP TABLE IF EXISTS `solservicio_gabinete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solservicio_gabinete` (
  `id` int(11) NOT NULL auto_increment,
  `solservicio_id` int(11) NOT NULL,
  `gabinete_id` int(3) NOT NULL,
  `realizado` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `fk_solservicio_gabinete_gabinete1_idx` (`gabinete_id`),
  KEY `fk_solservicio_gabinete_solservicio1_idx` (`solservicio_id`),
  CONSTRAINT `fk_solservicio_gabinete_gabinete1` FOREIGN KEY (`gabinete_id`) REFERENCES `gabinete` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solservicio_gabinete_solservicio1` FOREIGN KEY (`solservicio_id`) REFERENCES `solservicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=58304 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `solservicio_laboratorio`
--

DROP TABLE IF EXISTS `solservicio_laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solservicio_laboratorio` (
  `id` int(11) NOT NULL auto_increment,
  `solservicio_id` int(11) NOT NULL,
  `laboratorio_id` smallint(3) NOT NULL,
  `mat_enviado` varchar(255) collate utf8_unicode_ci NOT NULL,
  `realizado` tinyint(1) default '0',
  `centro_salud_id` smallint(2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_solservicio_laboratorio_laboratorio1_idx` (`laboratorio_id`),
  KEY `fk_solservicio_laboratorio_solservicio1_idx` (`solservicio_id`),
  KEY `centro_salud_id` (`centro_salud_id`),
  CONSTRAINT `fk_solservicio_laboratorio_laboratorio1` FOREIGN KEY (`laboratorio_id`) REFERENCES `laboratorio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solservicio_laboratorio_solservicio1` FOREIGN KEY (`solservicio_id`) REFERENCES `solservicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `solservicio_laboratorio_ibfk_1` FOREIGN KEY (`centro_salud_id`) REFERENCES `centro_salud` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=504887 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `solservicio_rayosx`
--

DROP TABLE IF EXISTS `solservicio_rayosx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solservicio_rayosx` (
  `id` int(11) NOT NULL auto_increment,
  `solservicio_id` int(11) NOT NULL,
  `rayosx_id` int(3) NOT NULL,
  `realizado` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `fk_solservicio_rayosx_rayosx1_idx` (`rayosx_id`),
  KEY `fk_solservicio_rayosx_solservicio1_idx` (`solservicio_id`),
  CONSTRAINT `fk_solservicio_rayosx_rayosx1` FOREIGN KEY (`rayosx_id`) REFERENCES `rayosx` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solservicio_rayosx_solservicio1` FOREIGN KEY (`solservicio_id`) REFERENCES `solservicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37472 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `solvacuna`
--

DROP TABLE IF EXISTS `solvacuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solvacuna` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `vacunas_id` int(11) NOT NULL,
  `dosis_id` int(2) NOT NULL,
  `medico_id` smallint(4) unsigned NOT NULL,
  `estado` bigint(20) NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_solVacuna_dosis2_idx` (`dosis_id`),
  KEY `fk_solVacuna_vacunas2_idx` (`vacunas_id`),
  KEY `fk_solVacuna_afiliado2_idx` (`afiliado_id`),
  KEY `fk_solVacuna_medico2_idx` (`medico_id`),
  CONSTRAINT `fk_solVacuna_afiliado2` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solVacuna_dosis2` FOREIGN KEY (`dosis_id`) REFERENCES `dosis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solVacuna_medico2` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solVacuna_vacunas2` FOREIGN KEY (`vacunas_id`) REFERENCES `vacunas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=936 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoanalisis`
--

DROP TABLE IF EXISTS `tipoanalisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoanalisis` (
  `id` smallint(2) unsigned NOT NULL auto_increment,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoanteojos`
--

DROP TABLE IF EXISTS `tipoanteojos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoanteojos` (
  `id` int(11) NOT NULL auto_increment,
  `tipo` varchar(45) NOT NULL,
  `descripcion` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipodato`
--

DROP TABLE IF EXISTS `tipodato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodato` (
  `id` smallint(2) unsigned NOT NULL auto_increment,
  `tipo` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoexamenoftalmologico`
--

DROP TABLE IF EXISTS `tipoexamenoftalmologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoexamenoftalmologico` (
  `id` int(11) NOT NULL auto_increment,
  `nombreExamen` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipopaciente`
--

DROP TABLE IF EXISTS `tipopaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopaciente` (
  `id` smallint(6) NOT NULL,
  `descripcion` varchar(45) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipotemperatura`
--

DROP TABLE IF EXISTS `tipotemperatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotemperatura` (
  `id` smallint(2) NOT NULL auto_increment,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipotratamientodental`
--

DROP TABLE IF EXISTS `tipotratamientodental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotratamientodental` (
  `id` int(11) NOT NULL auto_increment,
  `grupotratamientodental_id` int(11) NOT NULL,
  `descripcion` varchar(100) collate utf8_unicode_ci NOT NULL,
  `activo` tinyint(4) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `grupotratamientodental_id` (`grupotratamientodental_id`),
  CONSTRAINT `tipotratamientodental_ibfk_1` FOREIGN KEY (`grupotratamientodental_id`) REFERENCES `grupotratamientodental` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `traspaso_medicamentos`
--

DROP TABLE IF EXISTS `traspaso_medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traspaso_medicamentos` (
  `id` int(11) NOT NULL auto_increment,
  `e_despachante` smallint(2) NOT NULL,
  `f_despachante` smallint(2) NOT NULL,
  `f_receptora` smallint(2) NOT NULL,
  `fecha` date NOT NULL,
  `numero` varchar(45) NOT NULL,
  `autorizacion` int(1) NOT NULL default '0',
  `autorizado` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `traspaso_medicamentos_FI_1` (`e_despachante`),
  KEY `traspaso_medicamentos_FI_3` (`f_despachante`),
  KEY `traspaso_medicamentos_FI_4` (`f_receptora`),
  CONSTRAINT `traspaso_medicamentos_FI_1` FOREIGN KEY (`e_despachante`) REFERENCES `empleado` (`id`),
  CONSTRAINT `traspaso_medicamentos_FI_3` FOREIGN KEY (`f_despachante`) REFERENCES `farmacia` (`id`),
  CONSTRAINT `traspaso_medicamentos_FI_4` FOREIGN KEY (`f_receptora`) REFERENCES `farmacia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5831 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `traspaso_medicamentos_has_medicamento`
--

DROP TABLE IF EXISTS `traspaso_medicamentos_has_medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traspaso_medicamentos_has_medicamento` (
  `id` int(11) NOT NULL auto_increment,
  `traspaso_medicamentos_id` int(11) NOT NULL,
  `medicamento_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `enviado` int(1) NOT NULL default '0',
  `recepcionado` int(1) NOT NULL default '0',
  `ppp` float(11,5) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `traspaso_medicamentos_has_medicamento_FI_med` (`medicamento_id`),
  KEY `traspaso_medicamentos_has_medicamento_FI_1` (`traspaso_medicamentos_id`),
  CONSTRAINT `traspaso_medicamentos_has_medicamento_FI_1` FOREIGN KEY (`traspaso_medicamentos_id`) REFERENCES `traspaso_medicamentos` (`id`),
  CONSTRAINT `traspaso_medicamentos_has_medicamento_FI_med` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21307 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tratamiento`
--

DROP TABLE IF EXISTS `tratamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tratamiento` (
  `id` int(11) NOT NULL auto_increment,
  `descripcion` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tratamientoaiepi`
--

DROP TABLE IF EXISTS `tratamientoaiepi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tratamientoaiepi` (
  `id` int(11) NOT NULL auto_increment,
  `aiepi_id` smallint(5) unsigned NOT NULL,
  `tratamiento_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_tratamientoAiepi_aiepi1_idx` (`aiepi_id`),
  KEY `fk_tratamientoAiepi_tratamiento1_idx` (`tratamiento_id`),
  CONSTRAINT `fk_tratamientoAiepi_aiepi1` FOREIGN KEY (`aiepi_id`) REFERENCES `aiepi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tratamientoAiepi_tratamiento1` FOREIGN KEY (`tratamiento_id`) REFERENCES `tratamiento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tratamientodental`
--

DROP TABLE IF EXISTS `tratamientodental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tratamientodental` (
  `id` int(11) NOT NULL auto_increment,
  `consultaodontologica_id` int(11) NOT NULL,
  `diente_id` int(11) NOT NULL,
  `tipotratamientodental_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `consultaodontologica_id` (`consultaodontologica_id`,`diente_id`,`tipotratamientodental_id`),
  KEY `diente_id` (`diente_id`),
  KEY `tipotratamientodental_id` (`tipotratamientodental_id`),
  CONSTRAINT `tratamientodental_ibfk_2` FOREIGN KEY (`diente_id`) REFERENCES `diente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tratamientodental_ibfk_3` FOREIGN KEY (`tipotratamientodental_id`) REFERENCES `tipotratamientodental` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tratamientodental_ibfk_4` FOREIGN KEY (`consultaodontologica_id`) REFERENCES `consultaodontologica` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ufvs`
--

DROP TABLE IF EXISTS `ufvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ufvs` (
  `id` int(7) unsigned NOT NULL auto_increment,
  `fecha` date NOT NULL,
  `valor` float NOT NULL,
  `actualizado` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2285 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unicofisicovalorado`
--

DROP TABLE IF EXISTS `unicofisicovalorado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unicofisicovalorado` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `fecha` date NOT NULL,
  `fechahora` datetime NOT NULL,
  `farmacia_id` smallint(2) NOT NULL,
  `medicamento_id` int(5) NOT NULL,
  `tipo` int(1) NOT NULL,
  `detalletipo` varchar(255) collate utf8_unicode_ci NOT NULL,
  `cantidad` int(10) NOT NULL,
  `salanterior` int(10) NOT NULL,
  `salactual` int(10) NOT NULL,
  `pppalmomento` float(15,5) NOT NULL,
  `preciounitario` float(15,5) default NULL,
  `auxce` int(11) default NULL,
  `auxuh` int(11) default NULL,
  `auxtrahasmed` int(11) default NULL,
  `auxmedcomp` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fecha` (`fecha`),
  KEY `farmacia_id` (`farmacia_id`),
  KEY `medicamento_id` (`medicamento_id`),
  KEY `tipo` (`tipo`),
  KEY `detalletipo` (`detalletipo`),
  CONSTRAINT `unicofisicovalorado_ibfk_3` FOREIGN KEY (`farmacia_id`) REFERENCES `farmacia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `unicofisicovalorado_ibfk_4` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=783743 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usocepillodental`
--

DROP TABLE IF EXISTS `usocepillodental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usocepillodental` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `cuantasVecesDia` int(11) default NULL,
  `uso` varchar(25) default NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_at` datetime default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_usoCepilloDental_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_usoCepilloDental_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14471 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vacunaafiliado`
--

DROP TABLE IF EXISTS `vacunaafiliado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacunaafiliado` (
  `id` int(11) NOT NULL auto_increment,
  `afiliado_id` int(11) unsigned NOT NULL,
  `vacunas_id` int(11) NOT NULL,
  `dosis_id` int(2) NOT NULL,
  `fecha` date NOT NULL,
  `created_at` datetime default NULL,
  `created_by` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_vacunaAfiliado_dosis1_idx` (`dosis_id`),
  KEY `fk_vacunaAfiliado_vacunas1_idx` (`vacunas_id`),
  KEY `fk_vacunaAfiliado_afiliado1_idx` (`afiliado_id`),
  CONSTRAINT `fk_vacunaAfiliado_afiliado1` FOREIGN KEY (`afiliado_id`) REFERENCES `afiliado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vacunaAfiliado_dosis1` FOREIGN KEY (`dosis_id`) REFERENCES `dosis` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vacunaAfiliado_vacunas1` FOREIGN KEY (`vacunas_id`) REFERENCES `vacunas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vacunas`
--

DROP TABLE IF EXISTS `vacunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacunas` (
  `id` int(11) NOT NULL auto_increment,
  `descripcion` varchar(45) collate utf8_unicode_ci default NULL,
  `orden` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vivienda`
--

DROP TABLE IF EXISTS `vivienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vivienda` (
  `id` int(11) NOT NULL auto_increment,
  `agua` varchar(30) collate utf8_unicode_ci default NULL,
  `excretas` varchar(30) collate utf8_unicode_ci default NULL,
  `luz` varchar(30) collate utf8_unicode_ci default NULL,
  `comparteCama` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by` int(11) default NULL,
  `updated_by` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11  9:18:15
