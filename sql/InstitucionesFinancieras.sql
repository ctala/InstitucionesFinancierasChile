-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 15, 2016 at 11:19 AM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `InstitucionesFinancieras`
--

-- --------------------------------------------------------

--
-- Table structure for table `instituciones`
--

CREATE TABLE IF NOT EXISTS `instituciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` enum('Bancos','Cooperativas de Ahorro y Crédito','Operadores de Tarjetas de Débito','Asesorías Financieras','Sociedades de Apoyo al Giro Bancarias','Sociedades de Apoyo al Giro de Cooperativas','Sociedad de Leasing Inmobiliario','Sociedades de Cobranza','Sociedades de Factoring','Emisores y Operadores de Tarjetas de Crédito','Operadores de Tarjetas de Pago con Provisión de Fondos','Sociedades Evaluadoras','Sociedades de Garantía Recíproca y Fogape','Firmas Evaluadoras de Instituciones de Garantía Recíproca','Auditores Externos','Almacenes Generales de Depósito registrados en SBIF','Firmas Evaluadoras de Almacenes Generales de Depósito') NOT NULL DEFAULT 'Bancos',
  `codigoSBIF` varchar(5) DEFAULT NULL,
  `codigoRegistro` varchar(5) DEFAULT NULL,
  `nombre` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigoRegistro` (`codigoRegistro`),
  UNIQUE KEY `codigoSBIF` (`codigoSBIF`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `instituciones`
--

INSERT INTO `instituciones` (`id`, `tipo`, `codigoSBIF`, `codigoRegistro`, `nombre`) VALUES
(1, 'Bancos', '001', NULL, 'BANCO DE CHILE'),
(2, 'Bancos', '009', NULL, 'BANCO INTERNACIONAL'),
(3, 'Bancos', '014', NULL, 'SCOTIABANK CHILE'),
(4, 'Bancos', '016', NULL, 'BANCO DE CREDITO E INVERSIONES'),
(5, 'Bancos', '027', NULL, 'CORPBANCA'),
(6, 'Bancos', '028', NULL, 'BANCO BICE'),
(7, 'Bancos', '031', NULL, 'HSBC BANK (CHILE)'),
(8, 'Bancos', '037', NULL, 'BANCO SANTANDER-CHILE'),
(9, 'Bancos', '039', NULL, 'BANCO ITAÚ CHILE'),
(10, 'Bancos', '049', NULL, 'BANCO SECURITY'),
(11, 'Bancos', '051', NULL, 'BANCO FALABELLA'),
(12, 'Bancos', '052', NULL, 'DEUTSCHE BANK (CHILE)'),
(13, 'Bancos', '053', NULL, 'BANCO RIPLEY'),
(14, 'Bancos', '054', NULL, 'RABOBANK CHILE (ex HNS BANCO)'),
(15, 'Bancos', '055', NULL, 'BANCO CONSORCIO (ex BANCO MONEX)'),
(16, 'Bancos', '056', NULL, 'BANCO PENTA'),
(17, 'Bancos', '057', NULL, 'BANCO PARIS'),
(18, 'Bancos', '504', NULL, 'BANCO BILBAO VIZCAYA ARGENTARIA, CHILE (BBVA)'),
(19, 'Bancos', '059', NULL, 'BANCO BTG PACTUAL CHILE'),
(20, 'Bancos', '017', NULL, 'BANCO DO BRASIL S.A.'),
(21, 'Bancos', '041', NULL, 'JP MORGAN CHASE BANK, N. A.'),
(22, 'Bancos', '043', NULL, 'BANCO DE LA NACION ARGENTINA'),
(23, 'Bancos', '045', NULL, 'THE BANK OF TOKYO-MITSUBISHI UFJ, LTD'),
(24, 'Bancos', '930', NULL, 'BCI - SUCURSAL MIAMI'),
(25, 'Bancos', '931', NULL, 'BANCO DEL ESTADO DE CHILE - SUCURSAL NUEVA YORK'),
(26, 'Bancos', '932', NULL, 'CORPBANCA - SUCURSAL NUEVA YORK'),
(27, 'Bancos', '012', NULL, 'BANCO DEL ESTADO DE CHILE'),
(28, 'Cooperativas de Ahorro y Crédito', '671', NULL, 'COOCRETAL'),
(29, 'Cooperativas de Ahorro y Crédito', '672', NULL, 'COOPEUCH'),
(30, 'Cooperativas de Ahorro y Crédito', '673', NULL, 'ORIENCOOP'),
(31, 'Cooperativas de Ahorro y Crédito', '674', NULL, 'CAPUAL'),
(32, 'Cooperativas de Ahorro y Crédito', '675', NULL, 'DETACOOP'),
(33, 'Cooperativas de Ahorro y Crédito', '676', NULL, 'AHORROCOOP'),
(34, 'Cooperativas de Ahorro y Crédito', '677', NULL, 'LAUTARO ROSAS'),
(35, 'Operadores de Tarjetas de Débito', '800', NULL, 'Sociedad Operadora de Tarjetas S.A.'),
(36, 'Asesorías Financieras', '231', NULL, 'BANCHILE ASESORIA FINANCIERA S.A. '),
(37, 'Asesorías Financieras', '235', NULL, 'SCOTIA SUD AMERICANO ASESORIAS FINANCIERAS LTDA.'),
(38, 'Asesorías Financieras', '236', NULL, 'BCI S.A. ASESORIA FINANCIERA'),
(39, 'Asesorías Financieras', '237', NULL, 'CORPBANCA ASESORIAS FINANCIERAS S.A.'),
(40, 'Asesorías Financieras', '241', NULL, 'BBVA ASESORIAS FINANCIERAS S.A.'),
(41, 'Asesorías Financieras', '245', NULL, 'BANCOESTADO MICROEMPRESAS S.A.'),
(42, 'Asesorías Financieras', '248', NULL, 'BANRIPLEY ASESORÍA FINANCIERA LTDA.'),
(43, 'Sociedades de Apoyo al Giro Bancarias', '261', NULL, 'REDBANC S.A.'),
(44, 'Sociedades de Apoyo al Giro Bancarias', '263', NULL, 'SOCIEDAD DE RECAUDACION Y PAGOS DE SERVICIOS LTDA. - Servipag'),
(45, 'Sociedades de Apoyo al Giro Bancarias', '265', NULL, 'SOCIEDAD INTERBANCARIA DE DEPOSITOS DE VALORES S.A.'),
(46, 'Sociedades de Apoyo al Giro Bancarias', '267', NULL, 'TRANSBANK S.A. Transbank S.A.'),
(47, 'Sociedades de Apoyo al Giro Bancarias', '268', NULL, 'NEXUS S.A.'),
(48, 'Sociedades de Apoyo al Giro Bancarias', '269', NULL, 'ANALISIS Y SERVICIOS S.A. - BCI NEGOCIOS'),
(49, 'Sociedades de Apoyo al Giro Bancarias', '270', NULL, 'CENTRO DE COMPENSACION AUTOMATIZADO S.A.'),
(50, 'Sociedades de Apoyo al Giro Bancarias', '273', NULL, 'ARTIKOS CHILE S.A.'),
(51, 'Sociedades de Apoyo al Giro Bancarias', '274', NULL, 'BANCOESTADO CONTACTO 24 HORAS S.A.'),
(52, 'Sociedades de Apoyo al Giro Bancarias', '275', NULL, 'PROMARKET S.A.'),
(53, 'Sociedades de Apoyo al Giro Bancarias', '278', NULL, 'BANCHILE TRADE SERVICE'),
(54, 'Sociedades de Apoyo al Giro Bancarias', '277', NULL, 'BANCOESTADO CENTRO DE SERVICIOS S.A.'),
(55, 'Sociedades de Apoyo al Giro Bancarias', '276', NULL, 'SOCIEDAD OPERADORA DE LA CÁMARA DE COMPENSACIÓN DE PAGOS DE ALTO VALOR S.A. - COMBANC S.A.'),
(56, 'Sociedades de Apoyo al Giro Bancarias', '281', NULL, 'SOCIEDAD DE SERVICIOS TRANSACCIONALES CAJAVECINA S.A.'),
(57, 'Sociedades de Apoyo al Giro Bancarias', '279', NULL, 'ADMINISTRADOR FINANCIERO TRANSANTIAGO S.A. - AFT'),
(58, 'Sociedades de Apoyo al Giro Bancarias', '284', NULL, 'CORPLEGAL S.A.'),
(59, 'Sociedades de Apoyo al Giro Bancarias', '287', NULL, 'SOCIEDAD DE PROMOCION DE PRODUCTOS BANCARIOS S.A. - PROBANC S.A.'),
(60, 'Sociedades de Apoyo al Giro Bancarias', '288', NULL, 'SMU CORP S.A.'),
(61, 'Sociedades de Apoyo al Giro Bancarias', '289', NULL, 'CONSORCIO TARJETAS DE CRÉDITO S.A.'),
(62, 'Sociedades de Apoyo al Giro Bancarias', '291', NULL, 'SERVICIOS DE INFRAESTRUCTURA DE MERCADO OTC S.A.'),
(63, 'Sociedades de Apoyo al Giro Bancarias', '292', NULL, 'CAR S.A. - TARJETA RIPLEY'),
(64, 'Sociedades de Apoyo al Giro Bancarias', '294', NULL, 'CAT ADMINISTRADORA DE TARJETAS S.A.'),
(65, 'Sociedades de Apoyo al Giro de Cooperativas', '286', NULL, 'GESTION DE RECAUDACION Y COBRANZA S.A. - GRC S.A.'),
(66, 'Sociedades de Apoyo al Giro de Cooperativas', '285', NULL, 'INVERSIONES E INMOBILIARIA INVERMAS S.A. - INVERMAS S.A.'),
(67, 'Sociedad de Leasing Inmobiliario', '330', NULL, 'BBVA SOC. DE LEASING INMOBILIARIO S.A.'),
(68, 'Sociedad de Leasing Inmobiliario', '331', NULL, 'BANDESARROLLO SOC. DE LEASING INMOBILIARIO S.A'),
(69, 'Sociedades de Cobranza', '754', NULL, 'SERVICIO DE NORMALIZACION Y COBRANZA NORMALIZA S.A.'),
(70, 'Sociedades de Cobranza', '755', NULL, 'CENTRO DE RECUPERACION Y COBRANZA LTDA.'),
(71, 'Sociedades de Cobranza', '752', NULL, 'BANCOESTADO SERVICIOS DE COBRANZA S.A.'),
(72, 'Sociedades de Cobranza', '753', NULL, 'SOCOFIN S.A.'),
(73, 'Sociedades de Cobranza', '756', NULL, 'RECAUDACIONES Y COBRANZAS S.A.'),
(74, 'Sociedades de Factoring', '363', NULL, 'BCI FACTORING S.A.'),
(75, 'Sociedades de Factoring', '366', NULL, 'BBVA FACTORING LTDA.'),
(76, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'ADMINISTRADORA PLAZA S.A.'),
(77, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'CRÉDITOS ORGANIZACIÓN Y FINANZAS S.A. - Cofisa S.A.'),
(78, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'FISO S.A.'),
(79, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'INVERSIONES Y TARJETAS S.A.'),
(80, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'INVERSIONES LP S.A.'),
(81, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'ISWITCH S.A.'),
(82, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'NEXUS S.A.'),
(83, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'OPERADORA DE TARJETAS LÍDER SERVICIOS FINANCIEROS S.A.'),
(84, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'PROMOTORA CMR FALABELLA S.A.'),
(85, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'SERVICIOS Y ADMINISTRACIÓN DE CRÉDITOS COMERCIALES LÍDER S.A.'),
(86, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'SOCIEDAD DE CRÉDITOS COMERCIALES S.A .'),
(87, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'SOCIEDAD EMISORA DE TARJETAS C Y D S.A.'),
(88, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'SOLVENTA TARJETAS S.A.'),
(89, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'TECNOCOM PROCESADORA DE CHILE S.A'),
(90, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'TRANSBANK S.A.'),
(91, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'TRICARD S.A.'),
(92, 'Emisores y Operadores de Tarjetas de Crédito', NULL, NULL, 'OPERADORA DE PROCESOS S.A.'),
(93, 'Operadores de Tarjetas de Pago con Provisión de Fondos', NULL, NULL, 'TECNOCOM PROCESADORA DE CHILE S.A'),
(94, 'Operadores de Tarjetas de Pago con Provisión de Fondos', NULL, NULL, 'NEXUS S.A.'),
(95, 'Sociedades Evaluadoras', NULL, NULL, 'CLASIFICADORA DE RIESGO HUMPHREYS LTDA.'),
(96, 'Sociedades Evaluadoras', NULL, NULL, 'FELLER-RATE, CLASIFICADORA DE RIESGO LTDA.'),
(97, 'Sociedades Evaluadoras', NULL, NULL, 'FITCH CHILE CLASIFICADORA DE RIESGO LTDA.'),
(98, 'Sociedades Evaluadoras', NULL, NULL, 'INTERNATIONAL CREDIT RATING COMPAÑIA CLASIFICADORA DE RIESGO LTDA.'),
(99, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'SOCIEDAD DE GARANTÍA RECÍPROCA AVAL CHILE S.A.G.R'),
(100, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'SOCIEDAD DE GARANTÍA RECÍPROCA PROAVAL CHILE SOCIEDAD ANÓNIMA DE GARANTÍA RECÍPROCA'),
(101, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'SOCIEDAD DE GARANTÍA RECÍPROCA CONFIANZA S.A.G.R'),
(102, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'COOPERATIVA DE GARANTÍA RECÍPROCA  CONGARANTÍA CGR'),
(103, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'SOCIEDAD DE GARANTÍA RECÍPROCA MASAVAL S.A.G.R'),
(104, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'SOCIEDAD DE GARANTÍA RECÍPROCA FIRST AVAL S.A.G.R.'),
(105, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'FIANZAS INSUR  SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(106, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'SUAVAL SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(107, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'AGROAVAL SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(108, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'AVAL PYME SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(109, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'PYMER SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(110, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'CONTÉMPORA SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(111, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'MULTIAVAL SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(112, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'SOUTH CONE SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(113, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'AVALES Y GARANTÍAS PYMES SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(114, 'Sociedades de Garantía Recíproca y Fogape', NULL, NULL, 'SOLUCIÓN AVAL SOCIEDAD ANONIMA DE GARANTÍA RECÍPROCA'),
(115, 'Firmas Evaluadoras de Instituciones de Garantía Recíproca', NULL, '01', 'CLASIFICADORA DE RIESGO HUMPHREYS LTDA. '),
(116, 'Firmas Evaluadoras de Instituciones de Garantía Recíproca', NULL, '03', 'ICR COMPAÑÍA CLASIFICADORA DE RIESGO LTDA.'),
(117, 'Firmas Evaluadoras de Instituciones de Garantía Recíproca', NULL, '04', 'FELLER-RATE COMPAÑÍA CLASIFICADORA DE RIESGO LIMITADA'),
(118, 'Auditores Externos', NULL, '001', 'PRICEWATERHOUSECOOPERS CONSULTORES, AUDITORES Y COMPAÑIA LTDA.'),
(119, 'Auditores Externos', NULL, '002', 'KPMG AUDITORES CONSULTORES LTDA.'),
(120, 'Auditores Externos', NULL, '003', 'ERNST &YOUNG SERVICIOS PROFESIONALES DE AUDITORIA Y ASESORIAS LTDA.'),
(121, 'Auditores Externos', NULL, '004', 'BDO AUDITORES & CONSULTORES LIMITADA'),
(122, 'Auditores Externos', NULL, '005', 'DELOITTE AUDITORES Y CONSULTORES LTDA.'),
(123, 'Auditores Externos', NULL, '006', 'SURLATINA AUDITORES LTDA.'),
(124, 'Auditores Externos', NULL, '007', 'VALENZUELA Y ASOCIADOS LIMITADA'),
(125, 'Auditores Externos', NULL, '009', 'PKF CHILE AUDITORES CONSULTORES LTDA.'),
(126, 'Auditores Externos', NULL, '010', 'HORWATH HB AUDITORES CONSULTORES LIMITADA'),
(127, 'Auditores Externos', NULL, '011', 'CONSAUDIT INTERNATIONAL AUDITORÍA & CONTROL LTDA.'),
(128, 'Almacenes Generales de Depósito registrados en SBIF', NULL, NULL, 'ALMACENES DE DEPÓSITOS NACIONALES S.A. "ALMADENA"'),
(129, 'Almacenes Generales de Depósito registrados en SBIF', NULL, NULL, 'ALMACENES GENERALES DE DEPÓSITO STORAGE S.A.'),
(130, 'Almacenes Generales de Depósito registrados en SBIF', NULL, NULL, 'ALMACENES GENERALES DE DEPÓSITO TRANSWARRANTS S.A.'),
(131, 'Firmas Evaluadoras de Almacenes Generales de Depósito', NULL, NULL, 'PRICEWATERHOUSECOOPERS, CONSULTORES, AUDITORES Y CÍA. LTDA.'),
(132, 'Firmas Evaluadoras de Almacenes Generales de Depósito', NULL, NULL, 'SOCIEDAD DE SERVICIOS GENERALES LTDA. "SEGRAL"');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
