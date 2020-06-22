-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2020 a las 18:20:11
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `utponien_db_constancias`
--
DROP DATABASE IF EXISTS `utponien_db_constancias`;
CREATE DATABASE IF NOT EXISTS `utponien_db_constancias` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `utponien_db_constancias`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades_trabajo`
--

CREATE TABLE `actividades_trabajo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividades_trabajo`
--

INSERT INTO `actividades_trabajo` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'AMA/O DE CASA', NULL, '2020-03-03 00:04:24', '2020-03-03 00:04:24'),
(2, 'ARTESANO (PRODUCTOS DE MADERA, BARRO, CUERO, YESO, ...etc.)', NULL, '2020-03-03 00:04:24', '2020-03-03 00:04:24'),
(3, 'COMERCIANTE (PROPIETARIO DE ESTABLECIMIENTO COMERCIAL)', NULL, '2020-03-03 00:04:24', '2020-03-03 00:04:24'),
(4, 'DESEMPLEADO', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(5, 'DIRECTIVO DE EMPRESA (SUBGERENTE, GERENTE, DIRECTOR, ETC.)', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(6, 'EMPRESARIO, ACCIONISTA DE EMPRESAS', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(7, 'EMPLEADO DE LA INDUSTRIA O DE LA BANCA', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(8, 'EMPLEADO GOB. MUNICIPAL, ESTATAL O FEDERAL (INCLUYE MILITAR)', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(9, 'EMPLEADO DE LA INDUSTRIA O DE LA BANCA', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(10, 'EMPLEADO DE INST. GUBERNAMENT. DESCENTR. (IMSS, ISSSTE, ETC)', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(11, 'FUNCIONARIO (MEDIO ALTO) DE INST. GUBERN. MUNICP. EST. O FED', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(12, 'GANADERO Y/O PRODUCTOR AGRÍCOLA (PROPIETARIO O COPROPIET.)', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(13, 'JUBILADO O PENSIONADO', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(14, 'MAESTRO DE PREESCOLAR, PRIMARIA O SECUNDARIA', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(15, 'EMPLEADO DE ESTABLECIMIENTOS COMERCIALES O DE SERVICIOS', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(16, 'OBRERO DE LA INDUSTRIA O MAQUILADORA', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(17, 'OPERADOR DE TRANSPORTE (CHOFER, TAXISTA, FLETERO)', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(18, 'PEQUEÑO COMERCIANTE (INSTALADO O AMBULANTE)', NULL, '2020-03-03 00:04:25', '2020-03-03 00:04:25'),
(19, 'PRESTADOR DE SERVICIOS PERSONALES (JARDINERO, PLOMERO, ETC)', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(20, 'PROFESIONISTA QUE TRABAJA POR SU CUENTA (MÉDICOING. ETC)', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(21, 'PROFESOR DE BACHILLER O UNIVERSIDAD (INCLUYE FUNCIONARIOS)', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(22, 'PROPIETARIO DE CASAS EN RENTA', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(23, 'PROFESIONISTA QUE TRABAJA POR SU CUENTA (MÉDICO, ING. ETC.)', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(24, 'POLÍTICO (PUESTO DE ELECCIÓN POPULAR)', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(25, 'NINGUNA DE LAS ANTERIOIRES', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(26, 'SIN DATO', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tel_oficina` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergencia_persona` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergencia_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trabajo_anterior` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo_anterior` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creado_por` bigint(20) UNSIGNED NOT NULL,
  `editado_por` bigint(20) UNSIGNED NOT NULL,
  `empleado_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativos`
--

INSERT INTO `administrativos` (`id`, `tel_oficina`, `emergencia_persona`, `emergencia_tel`, `trabajo_anterior`, `cargo_anterior`, `creado_por`, `editado_por`, `empleado_id`, `created_at`, `updated_at`) VALUES
(1, '9971248560', 'Candelaria del Rosario', '99712586450', 'Profesor tiempo completo', 'Profesor', 1, 1, 1, '2020-03-20 18:29:29', '2020-03-20 18:29:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnocxc`
--

CREATE TABLE `alumnocxc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagado` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciclo_id` bigint(20) UNSIGNED NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `cantidadProgramada` double(8,2) NOT NULL,
  `cantidadPagada` double(8,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnocxc`
--

INSERT INTO `alumnocxc` (`id`, `pagado`, `ciclo_id`, `alumno_id`, `cantidadProgramada`, `cantidadPagada`, `cantidad`, `created_at`, `updated_at`) VALUES
(1, 'S', 1, 14, 348.00, 348.00, 1, '2020-05-08 01:51:32', '2020-05-08 01:51:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnopagosdet`
--

CREATE TABLE `alumnopagosdet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alumnocxc_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `fechaPago` date NOT NULL,
  `caja_id` bigint(20) UNSIGNED NOT NULL,
  `reciboCaja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anio` year(4) NOT NULL,
  `mes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recibidoPor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnopagosdet`
--

INSERT INTO `alumnopagosdet` (`id`, `alumnocxc_id`, `producto_id`, `fechaPago`, `caja_id`, `reciboCaja`, `anio`, `mes`, `recibidoPor`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2020-05-07', 1, '1000', 2020, '05', 'Gaspar', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `folio_alumno_reg_id` bigint(20) UNSIGNED DEFAULT NULL,
  `matricula` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paterno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `materno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curp` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fotografia` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_civil` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nac` date DEFAULT NULL,
  `estado_nac_id` bigint(20) UNSIGNED NOT NULL,
  `ciudad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio_nac` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domicilio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promedio_admision` decimal(2,1) DEFAULT NULL,
  `escuela_procedencia` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_bachillerato` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sistema_bachillerato` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inicio_bachillerato` date DEFAULT NULL,
  `fin_bachillerato` date DEFAULT NULL,
  `promedio_bachillerato` decimal(2,1) DEFAULT NULL,
  `municipio_bachillerato` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_contacto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentesco_contacto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persona_autorizada` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentesco_autorizada` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_autorizada` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misma_autorizada` tinyint(1) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_egreso` date DEFAULT NULL,
  `egreso_inicial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `egreso_final` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solicita_beca_utp` tinyint(1) DEFAULT NULL,
  `autoriza_beca_utp` tinyint(1) DEFAULT NULL,
  `tipo_beca_utp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuvo_beca_bachillerato` tinyint(1) DEFAULT NULL,
  `tipo_beca_bachillerato` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folio_subes` int(11) DEFAULT NULL,
  `folio_ceneval` int(11) DEFAULT NULL,
  `origen_indigena` tinyint(1) DEFAULT NULL,
  `lengua_indigena` tinyint(1) DEFAULT NULL,
  `lengua_indigena_hablante` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discapacidad` tinyint(1) DEFAULT NULL,
  `tipo_discapacidad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enfermedad` tinyint(1) DEFAULT NULL,
  `alergias` tinyint(1) DEFAULT NULL,
  `tipo_alergia` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `talla` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_enfermedad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_padre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_madre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `automovil_familiar` tinyint(1) DEFAULT NULL,
  `computadora` tinyint(1) DEFAULT NULL,
  `tipo_seg_medico` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_imss` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_imss_verificador` int(11) DEFAULT NULL,
  `tamano_casa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingreso_familiar` double(8,2) DEFAULT NULL,
  `viven_en_casa` int(11) DEFAULT NULL,
  `personas_dependen_ingreso` int(11) DEFAULT NULL,
  `ingreso_percapita` decimal(10,2) DEFAULT NULL,
  `tiene_hermanos` tinyint(1) DEFAULT NULL,
  `num_hermanos` int(11) DEFAULT NULL,
  `num_hermanos_estudian` int(11) DEFAULT NULL,
  `trabajas` tinyint(1) DEFAULT NULL,
  `horario_trabajo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_trabajo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_conyuge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hijos` tinyint(1) DEFAULT NULL,
  `0_5` int(11) DEFAULT NULL,
  `6_12` int(11) DEFAULT NULL,
  `13_18` int(11) DEFAULT NULL,
  `mayor_18` int(11) DEFAULT NULL,
  `alumno_altainicial` int(11) DEFAULT NULL,
  `alumno_altaperiodo` int(11) DEFAULT NULL,
  `nacionalidad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `motivo_baja` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alumno_altafinal` int(11) DEFAULT NULL,
  `email_alterno` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio_egreso` int(11) DEFAULT NULL,
  `egreso_periodo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acepto_terminos_documentos` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creado_por_id` bigint(20) UNSIGNED DEFAULT NULL,
  `actualizado_por_id` bigint(20) UNSIGNED DEFAULT NULL,
  `actividad_trabajo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `escolaridad_conyuge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `actividad_conyuge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `escolaridad_padre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `escolaridad_madre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `actividad_padre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `actividad_madre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cfgstatus_id` bigint(20) UNSIGNED NOT NULL,
  `estado_bachillerato_id` bigint(20) UNSIGNED NOT NULL,
  `estado_id` bigint(20) UNSIGNED NOT NULL,
  `notas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_token_registro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `folio_alumno_reg_id`, `matricula`, `paterno`, `materno`, `nombres`, `genero`, `edad`, `telefono`, `celular`, `email`, `curp`, `fotografia`, `estado_civil`, `fecha_nac`, `estado_nac_id`, `ciudad`, `municipio_nac`, `domicilio`, `promedio_admision`, `escuela_procedencia`, `tipo_bachillerato`, `sistema_bachillerato`, `inicio_bachillerato`, `fin_bachillerato`, `promedio_bachillerato`, `municipio_bachillerato`, `municipio`, `cp`, `contacto`, `tel_contacto`, `parentesco_contacto`, `persona_autorizada`, `parentesco_autorizada`, `telefono_autorizada`, `misma_autorizada`, `fecha_registro`, `fecha_ingreso`, `fecha_egreso`, `egreso_inicial`, `egreso_final`, `solicita_beca_utp`, `autoriza_beca_utp`, `tipo_beca_utp`, `tuvo_beca_bachillerato`, `tipo_beca_bachillerato`, `folio_subes`, `folio_ceneval`, `origen_indigena`, `lengua_indigena`, `lengua_indigena_hablante`, `discapacidad`, `tipo_discapacidad`, `enfermedad`, `alergias`, `tipo_alergia`, `peso`, `talla`, `nombre_enfermedad`, `nombre_padre`, `nombre_madre`, `automovil_familiar`, `computadora`, `tipo_seg_medico`, `numero_imss`, `num_imss_verificador`, `tamano_casa`, `ingreso_familiar`, `viven_en_casa`, `personas_dependen_ingreso`, `ingreso_percapita`, `tiene_hermanos`, `num_hermanos`, `num_hermanos_estudian`, `trabajas`, `horario_trabajo`, `telefono_trabajo`, `nombre_conyuge`, `hijos`, `0_5`, `6_12`, `13_18`, `mayor_18`, `alumno_altainicial`, `alumno_altaperiodo`, `nacionalidad`, `fecha_baja`, `motivo_baja`, `alumno_altafinal`, `email_alterno`, `anio_egreso`, `egreso_periodo`, `acepto_terminos_documentos`, `creado_por_id`, `actualizado_por_id`, `actividad_trabajo_id`, `escolaridad_conyuge_id`, `actividad_conyuge_id`, `escolaridad_padre_id`, `escolaridad_madre_id`, `actividad_padre_id`, `actividad_madre_id`, `cfgstatus_id`, `estado_bachillerato_id`, `estado_id`, `notas`, `_token_registro`, `created_at`, `updated_at`) VALUES
(13, 40, NULL, 'KU', 'MOO', 'LUIS FERNANDO', 'M', 21, NULL, '9994753663', 'luiskumoo978@gmail.com', 'KUML980627HYNXXS05', NULL, 'S', '1998-09-27', 31, 'Maxcanú', NULL, 'Calle 30 No 104 x 19 y 21', NULL, 'COLEGIO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS DEL ESTADO DE YUCATAN', NULL, NULL, NULL, NULL, '9.0', 'Maxcanú', 'Maxcanú', '97800', 'BUENAVENTURA MOO CANUL', '9971245863', 'M', NULL, NULL, NULL, NULL, '2020-04-05 00:02:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-05 00:02:17', '2020-04-05 00:02:17'),
(14, 43, NULL, 'CASTILLO', 'OCAMPO', 'GASPAR VICENTE', 'M', 45, NULL, '9991627045', 'castillo.ocampo.gv@gmail.com', 'CAOG740914HDFSCS02', 'IMG_alum_200003.jpg', 'S', '1974-09-14', 31, 'Maxcanú', NULL, 'Calle 29 Sin número Colonia Tres Cruces', NULL, 'COLEGIO SAN AGUSTÍN', 'A', 'BACHILLERATO ABIERTO', NULL, NULL, '9.5', 'Mérida', 'Mérida', '97210', 'MARÍA DEL CARMEN CASTILLO OCAMPO', '9991792391', 'H', 'MARÍA DEL CARMEN CASTILLO OCAMPO', 'H', '9991792391', 1, '2020-05-21 23:11:23', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 'MAYA', 0, 'V', 0, 0, NULL, NULL, 'XS', NULL, 'GASPAR CASTILLO ALVARADO', 'MACRINA OCAMPO GÁMEZ', 0, 0, 'IMMS', NULL, NULL, 'C', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 31, 31, NULL, NULL, '2020-04-05 01:34:55', '2020-05-21 23:11:23'),
(15, 44, NULL, 'UCÁN', 'KANTÚN', 'CARLOS', 'M', 29, '9991212121', '9991212121', 'gaspar.castillo.ocampo@hotmail.com', 'CABC001214HYNNSRA4', 'IMG_alum_200004.jpg', 'S', '1990-09-18', 31, 'Maxcanú', 'Maxcanú', 'Calle 29 Sin número Colonia Tres Cruces, TRES CRUCES', NULL, 'COLEGIO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS DEL ESTADO DE YUCATÁN, PLANTEL MAXCANÚ 03', 'T', 'CECYT (TECNOLÓGICO)', NULL, NULL, '9.0', 'Maxcanú', 'Maxcanú', '97800', 'GASPAR CASTILLO', '9991792400', 'Am', 'GASPAR CASTILLO', 'Am', '9991792400', 1, '2020-04-22 03:01:51', '2020-09-01', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 'MAYA', 0, 'V', 0, 0, NULL, 80, 'G', NULL, 'CARLOS UCÁN', 'MARÍA CECILIA XOOL CALÁN', 0, 0, 'IMMS', NULL, NULL, 'M', 9000.00, NULL, 5, '1800.00', 0, NULL, NULL, 1, '08:00 AM - 04:00 PM', '9999999999', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 8, 1, 8, 5, 2, 1, 1, 31, 31, NULL, NULL, '2020-04-05 02:40:11', '2020-04-05 02:54:34'),
(16, 45, NULL, 'MAY', 'UC', 'EDUIN AMILCAR', 'M', 24, NULL, '9994757770', 'edmay417@gmail.com', 'MAUE951017HYNYCD01', 'IMG_alum_200005.jpeg', 'S', '1995-10-17', 31, 'Maxcanú', NULL, 'Calle 19 #118 x 24 y 26 guadalupe', NULL, 'CBT #13', NULL, NULL, NULL, NULL, '7.8', 'Maxcanú', 'Maxcanú', '97800', 'CARLOS ERNESTO MAY CAUICH', '9995169016', 'P', NULL, NULL, NULL, NULL, '2020-04-06 15:59:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-06 15:59:24', '2020-04-06 15:59:24'),
(17, 46, NULL, 'COCOM', 'XOOL', 'JOSÉ EMILIANO', 'M', 20, NULL, '9995330418', 'joseemilianococom@gmail.com', 'COXE990706HYNCLM02', 'IMG_alum_200006.jpg', 'S', '1999-07-06', 31, 'SAN FERNANDO', NULL, 'C SAN FERNANDO S/N', NULL, 'COLEGIO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS DEL ESTADO DE YUCATÁN   PLANTEL 03 MAXCANÚ', NULL, NULL, NULL, NULL, '9.0', 'Maxcanú', 'Maxcanú', '97804', 'MARÍA CESILIA XOOL CALAN', '9971559295', 'M', NULL, NULL, NULL, NULL, '2020-04-06 16:03:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-06 16:03:02', '2020-04-06 16:03:02'),
(18, 47, NULL, 'CENTURIÓN', 'CAAMAL', 'JOSÉ SANTOS', 'M', 26, NULL, '9996363148', 'barcelonaerestusanto@gmail.com', 'CECS930920HYNNMN04', NULL, 'S', '1993-09-20', 31, 'Mérida', NULL, '167 por 86  y 84', NULL, 'UNIVERSIDAD TECNOLOGICA DEL PONIENTE', NULL, NULL, NULL, NULL, '8.8', 'Maxcanú', 'Mérida', '97297', 'JOSÉ  FABIÁN CENTURIÓN', '9991000564', 'P', NULL, NULL, NULL, NULL, '2020-04-07 02:32:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-07 02:32:40', '2020-04-07 02:32:40'),
(19, 48, NULL, 'BRICEÑO', 'TEC', 'DANIELA JAQUELINE', 'F', 39, NULL, '9999999999', 'contacto@utponiente.edu.mx', 'BITD991120MYNRCN09', 'IMG_alum_200008.jpg', 'S', '1980-12-19', 31, 'MÉRIDA', NULL, 'CALLE 22 No. 374 X 39 Y 41 COL. PEDREGALES DE TANLUM', NULL, 'COLEGIO SAN AGUSTÍN', NULL, NULL, NULL, NULL, '9.0', 'Mama', 'Mérida', '97213', 'GASPAR CASTILLO OCAMPO', '9999999999', 'C', NULL, NULL, NULL, NULL, '2020-04-08 03:02:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-07 03:07:00', '2020-04-07 08:01:43'),
(20, 49, NULL, 'TUZ', 'KUMUL', 'ALEXIS DE JESUS', 'M', 24, NULL, '9993828941', '821.alexis.13@gmail.com', 'TUKA951218HYNZML06', 'IMG_alum_200009.jpg', 'S', '1995-12-18', 31, 'Maxcanu santo domingo', NULL, 'C 5x6y 8', NULL, 'CECYTEY', NULL, NULL, NULL, NULL, '7.4', 'Maxcanú', 'Maxcanú', '97804', 'SANTIAGO', '9971012128', 'P', NULL, NULL, NULL, NULL, '2020-04-07 04:51:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-07 04:51:04', '2020-04-07 04:51:04'),
(24, 53, NULL, 'CAMIL', 'CORTÉZ', 'CENICIENTA', 'F', 39, NULL, '999999999', '1@gmail.com', 'CACC801219MYNRSN01', 'IMG_alum_200010.jpg', 'S', '1980-12-19', 31, 'Mérida', NULL, 'DADA', NULL, 'CBTI´S 95', NULL, NULL, NULL, NULL, '8.9', 'Mérida', 'Mérida', '97203', 'JOSEFINA VAZQUEZ MOTA', '9999999999', 'Pa', NULL, NULL, NULL, NULL, '2020-04-08 03:12:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-08 03:12:22', '2020-04-08 03:12:22'),
(28, 57, NULL, 'HERNÁNDEZ', 'KU', 'MARIO', 'M', 19, NULL, '9999999999', 'gapocastillo@gmail.com', 'HECE000909HQRRTLA8', NULL, 'S', '2000-09-09', 23, 'MAXCANÚ', NULL, 'Calle 29 Sin número Colonia Tres Cruces', NULL, 'COLEGIO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS DEL ESTADO DE YUCATÁN, PLANTEL MAXCANÚ 03', NULL, NULL, NULL, NULL, '9.0', 'Maxcanú', 'Maxcanú', '97800', 'GASPAR CASTILLO OCAMPO', '9998888888', 'Am', NULL, NULL, NULL, NULL, '2020-04-08 07:38:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-08 07:31:41', '2020-04-08 07:38:28'),
(29, 58, NULL, 'MEDINA', 'MIJANGOS', 'MANUEL', 'M', 19, NULL, '9999999999', 'bichocastillo@yahoo.com', 'MEMJ990819HYNXLS07', NULL, 'S', '2000-09-09', 31, 'BACA', NULL, 'Calle 29 Sin número Colonia Tres Cruces', NULL, 'CECYTE MAXCANÚ PLANTEL 03', NULL, NULL, NULL, NULL, '9.0', 'Maxcanú', 'Baca', '97000', 'GASPAR CASTILLO OCAMPO', '9998888888', 'Am', NULL, NULL, NULL, NULL, '2020-04-22 03:06:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-08 08:26:41', '2020-04-08 08:27:37'),
(30, 59, NULL, 'PECH', 'CANUl', 'CARLOS ALEJANDRO', 'M', 19, NULL, '9999999999', 'castillo.ocampo@gmail.com', 'PEGY010421MYNCNRA2', 'IMG_alum_200013.jpg', 'S', '2001-04-21', 31, 'MAXCANÙ', NULL, 'Calle 29 Sin número Colonia Tres Cruces', NULL, 'COLEGIO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS DEL ESTADO DE YUCATÁN, PLANTEL MAXCANÚ 03', NULL, NULL, NULL, NULL, '9.0', 'Maxcanú', 'Maxcanú', '97800', 'GASPAR CASTILLO OCAMPO', '9999999999', 'Am', NULL, NULL, NULL, NULL, '2020-04-22 03:15:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-22 03:11:04', '2020-04-22 03:11:04'),
(31, 60, NULL, 'CAUICH', 'HU', 'RAMIRO', 'M', 18, NULL, '9999999999', 'gv.castillo.ocampo@gmail.com', 'CAHR011001HYNMSCA7', 'IMG_alum_200039.jpg', 'S', '2001-10-01', 31, 'Maxcanú', NULL, 'Calle 29 Sin número Colonia Tres Cruces', NULL, 'COLEGIO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS DEL ESTADO DE YUCATÁN, PLANTEL MAXCANÚ 03', NULL, NULL, NULL, NULL, '8.9', 'Maxcanú', 'Maxcanú', '97800', 'GASPAR CASTILLO OCAMPO', '9999999999', 'Am', NULL, NULL, NULL, NULL, '2020-04-22 03:18:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-22 03:18:08', '2020-04-22 03:18:08'),
(32, 61, NULL, 'NAAL', 'POOL', 'LUCIA ALESANDRA', 'F', 17, NULL, '9971392760', 'lucianaal2017@outlook.com', 'NAPL020611MYNLLCA0', NULL, 'S', '2002-06-11', 31, 'Cuch-Holoch', NULL, 'C20X11S/N cerca del poste 53', NULL, 'COBAY', NULL, NULL, NULL, NULL, '8.3', 'Halachó', 'Halachó', '97830', 'WILBERTH ISRAEL POOL MAY', '9996380360', 'O', NULL, NULL, NULL, NULL, '2020-04-24 18:35:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-24 18:33:50', '2020-04-24 18:35:42'),
(33, 62, NULL, 'TZUC', 'KEB', 'ABEL CRISANTO', 'M', 18, NULL, '9971417621', 'crisantotzuc@gmail.com', 'TUKA011017HYNZBBA9', NULL, 'S', '2001-10-17', 31, 'Chunchucmil', NULL, 'C 7 por 4 y 6 SN', NULL, 'TELEBACHILLERATO COMUNITARIO DE CHUNCHUCMIL', NULL, NULL, NULL, NULL, '7.5', 'Maxcanú', 'Maxcanú', '97805', 'GRETY ELIDE TZUC KEB', '9991778581', 'H', NULL, NULL, NULL, NULL, '2020-05-19 00:02:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-25 20:55:49', '2020-04-25 20:55:49'),
(34, 64, NULL, 'CANCHE', 'VENTURA', 'GILMER DE JESUS', 'M', 18, NULL, '9999949846', 'venturagilmer1001@gmail.com', 'CAVG011010HYNNNLA8', 'IMG_alum_200042.jpg', 'S', '2001-10-10', 31, 'Kinchil', NULL, 'CALLE 24 Nº 126 ENTRE 31 Y 33', NULL, 'COLEGIO DE ESTUDIOS CIENTIFICOS Y TECNOLOGICOS DEL ESTADO DE YUCATAN', 'P', 'CECYT (TECNOLÓGICO)', NULL, NULL, '8.4', 'Hunucmá', NULL, '97360', 'NATALIA DE JESUS CANCHE VENTURA', '99949846', 'H', 'NATALIA DE JESUS CANCHE VENTURA', 'H', '99949846', 1, '2020-04-28 05:00:00', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 'MAYA', 0, 'V', 0, 0, NULL, NULL, 'XS', NULL, 'X', 'X', 0, 0, 'IMMS', NULL, NULL, 'C', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 31, 31, NULL, NULL, '2020-04-28 21:14:50', '2020-04-29 09:27:18'),
(35, 65, NULL, 'GARMA', 'CHACON', 'MARTINA SOFIA', 'F', 19, NULL, '9991840709', 'martina.garma.tini@gmail.com', 'GACM010323MYNRHRA6', 'IMG_alum_200043.png', 'S', '2001-03-23', 31, 'Celestun', NULL, 'Calle 10 x 21 y 23', NULL, 'CENTRO EMSAD CELESTUN', NULL, NULL, NULL, NULL, '8.4', 'Celestún', 'Celestún', '97367', 'MARTINA DEL CARMEN CHACON AVILA', '9992475749', 'M', NULL, NULL, NULL, NULL, '2020-05-19 19:52:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-29 22:35:34', '2020-05-19 19:52:51'),
(36, 66, NULL, 'CANCINO', 'NEGRON', 'YAMILY BEATRIZ', 'F', 28, NULL, '9971083135', 'cancinoyamily@gmail.com', 'CANY920118MYNNGM02', 'IMG_alum_200044.jpg', 'S', '1992-01-18', 31, 'Muna', NULL, 'Calle 24 x 31 y 33 sn', NULL, 'PREPARATORIO MUNA', NULL, NULL, NULL, NULL, '8.0', 'Muna', 'Muna', '97840', 'ALEJANDRO JACOBO RAMÍREZ', '9992701787', 'Pa', NULL, NULL, NULL, NULL, '2020-04-30 01:30:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-30 01:30:32', '2020-04-30 01:30:32'),
(37, 67, NULL, 'CAAMAL', 'MIS', 'KAROL DAYANIRA', 'F', 18, NULL, '9995426311', 'karolcaamalmis@gmail.com', 'CAMK020331MYNMSRA5', 'IMG_alum_200045.jpg', 'S', '2002-03-31', 31, 'CHUNCHUCMIL', NULL, 'CALLE 5 POR 2 Y 4 S/N CHUNCHUCMIL', NULL, 'CECYTEY 03 MAXCANÚ,, COLEGIO DE ESTUDIOS CIENTÍFICOS Y TECNOLÓGICOS DEL ESTADO DE YUCATÁN', NULL, NULL, NULL, NULL, '8.3', 'Maxcanú', 'Maxcanú', '97805', 'MARIA AURI MIS GONZALEZ', '9991974582', 'M', NULL, NULL, NULL, NULL, '2020-04-30 22:22:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-04-30 22:06:53', '2020-04-30 22:22:24'),
(38, 68, NULL, 'HOYOS', 'CHI', 'DIEGO AUGUSTO', 'M', 17, NULL, '9971151266', 'diego21ahc@gmail.com', 'HOCD020918HYNYHGA5', 'IMG_alum_200046.jpeg', 'S', '2002-09-18', 31, 'Halacho', NULL, 'CALLE 19 A ENTRE 10 Y 12 COL. SAN FRANCISCO', NULL, 'COBAY HALACHO', NULL, NULL, NULL, NULL, '8.0', 'Halachó', 'Halachó', '97830', 'ROSA ELENA CHI CHAN', '9971028456', 'M', NULL, NULL, NULL, NULL, '2020-05-04 17:48:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-04 17:44:42', '2020-05-04 17:48:06'),
(39, 69, NULL, 'LOPEZ', 'KOH', 'LUIS EDUARDO', 'M', 18, NULL, '9971413739', 'eduardokoh88@gmail.com', 'LOKL010815HYNPHSA2', 'IMG_alum_200047.jpg', 'S', '2001-08-15', 31, 'San Bernardo', NULL, 'C 19 por 14 y 16 SN', NULL, 'CECITEY', NULL, NULL, NULL, NULL, '8.1', 'Maxcanú', 'Kopomá', '97818', 'MARIA HORTENSIA KOH CAAMAL', '9971387848', 'M', NULL, NULL, NULL, NULL, '2020-05-08 18:36:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-08 17:59:18', '2020-05-08 18:36:55'),
(40, 70, NULL, 'DZUL', 'LOPEZ', 'EDGAR FABIÁN', 'M', 20, NULL, '9821240300', 'fabiandzullopez10@gmail.com', 'DULE000129HCCZPDA6', 'IMG_alum_200048.pdf', 'S', '2000-01-29', 4, 'San Bernardo', NULL, 'C 20 por 15 SN', NULL, 'CECYTE', NULL, NULL, NULL, NULL, '7.9', 'Maxcanú', 'Kopomá', '97818', 'EMA CAROLINA', '9971386401', 'Pa', NULL, NULL, NULL, NULL, '2020-05-10 22:03:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-10 22:01:20', '2020-05-10 22:03:11'),
(41, 71, NULL, 'MAY', 'CHAY', 'SAASBAL IZAMAL', 'F', 17, NULL, '9992981859', 'maysaasbal@gmail.com', 'MACS021102MYNYHSA1', 'IMG_alum_200049.jpg', 'S', '2002-11-02', 31, 'San antonio siho', NULL, 'Calle 23 entre 22 y 24', NULL, 'TELEBACHILLERATO COMUNITARIO', NULL, NULL, NULL, NULL, '8.5', 'Halachó', 'Halachó', '97835', 'ANDY GUADALKPE MAY CITUK', '9971200769', 'P', NULL, NULL, NULL, NULL, '2020-05-12 00:22:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-12 00:22:05', '2020-05-12 00:22:05'),
(42, 72, NULL, 'KU', 'YAN', 'KEVIN ALBERTO', 'M', 18, NULL, '9961090055', 'yankevin184@gmail.com', 'KUYK010830HCCXNVA2', 'IMG_alum_200050.jpeg', 'S', '2001-08-30', 4, 'Pomuch', NULL, 'Calle 12 S/N', NULL, 'CECYTE', NULL, NULL, NULL, NULL, '7.0', 'Hecelchakán', 'Hecelchakán', '24810', 'MARIA ISAURA YAN TUN', '9961081558', 'M', NULL, NULL, NULL, NULL, '2020-05-23 17:16:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 4, NULL, NULL, '2020-05-15 16:54:32', '2020-05-23 17:16:56'),
(43, 73, NULL, 'BRITO', 'FLORES', 'MARIA GUADALUPE', 'F', 18, NULL, '9171004542', 'britolupis48@gmail.com', 'BIFG021122MTCRLDA8', NULL, 'S', '2001-11-22', 27, 'Ejido huapacal 2da sección Huimanguillo Tabasco', NULL, 'Carretera principal S/N', NULL, 'EMSAD 06', NULL, NULL, NULL, NULL, '8.5', 'Huimanguillo', 'Huimanguillo', '86400', 'GENER ORLANDO BRITO TZEC', '9371393559', 'P', NULL, NULL, NULL, NULL, '2020-05-24 19:50:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, 27, NULL, NULL, '2020-05-24 19:50:15', '2020-05-24 19:50:15'),
(44, 74, NULL, 'CAHUN', 'CANUL', 'JORGE LISANDRO', 'M', 20, NULL, '9984422203', 'george33.lisa23@gmail.com', 'CACJ000131HCCHNRA4', NULL, 'S', '2000-01-31', 4, 'Tepakan', NULL, 'Calle 6 S/N', NULL, 'COLEGIO DE BACHILLERES DEL ESTADO DE CAMPECHE', NULL, NULL, NULL, NULL, '7.4', 'Calkiní', 'Calkiní', '24905', 'GENNY MARLENE CANUL MENDOZA', '9961041139', 'M', NULL, NULL, NULL, NULL, '2020-05-24 23:38:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 4, NULL, NULL, '2020-05-24 23:23:58', '2020-05-24 23:38:24'),
(45, 75, NULL, 'CHANCHAN', 'CHAN', 'ANDREA NALLELY GUADALUPE', 'F', 17, NULL, '9971109972', 'chan80138@gmail.com', 'CXCA021110MYNHHNA4', 'IMG_alum_200053.JPG', 'S', '2002-11-10', 31, 'MERIDA', NULL, 'CALLE 27 NO.109 ENTRE 22 Y 24 COL.TRES CRUCES', NULL, 'CECYTE 03 MAXCANU', NULL, NULL, NULL, NULL, '8.8', 'Maxcanú', 'Maxcanú', '97800', 'ADRIANA MARIA CHAN CATZIM', '9971024752', 'M', NULL, NULL, NULL, NULL, '2020-05-26 04:30:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-26 04:30:57', '2020-05-26 04:30:57'),
(46, 76, NULL, 'CHALÉ', 'HERNÁNDEZ', 'YENIFER ABIGAIL', 'F', 18, NULL, '9971282486', 'chalejeny18@gmail.com', 'CAHY010730MYNHRNA2', 'IMG_alum_200054.jpg', 'S', '2001-07-30', 31, 'Localidad', NULL, 'Calle 15 x 16 sin numero', NULL, 'COBA UMÁN', NULL, NULL, NULL, NULL, '9.0', 'Abalá', 'Kopomá', '97818', 'OLIVIA  MARICEL HERNANDEZ CHAN', '9971282486', 'M', NULL, NULL, NULL, NULL, '2020-05-26 18:13:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-26 18:13:43', '2020-05-26 18:13:43'),
(47, 77, NULL, 'KU', 'CHUC', 'JOSE LUIS', 'M', 18, NULL, '9961020412', 'kuchucjoseluis@gmail.com', 'KUCL020310HCCXHSA0', 'IMG_alum_200055.jpg', 'S', '2002-03-10', 4, 'DZITBALCHE', NULL, 'CALLE 25 S/N ENTRE 26 Y 25 COLONIA SAN FELICIANO', NULL, 'PLANTEL CONALEP 272', NULL, NULL, NULL, NULL, '8.5', 'Calkiní', 'Calkiní', '24920', 'MARICELA DZUL CHUC', '9961009972', 'H', NULL, NULL, NULL, NULL, '2020-05-27 20:37:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 4, NULL, NULL, '2020-05-27 19:42:40', '2020-05-27 20:37:34'),
(48, 78, NULL, 'YAH', 'CHI', 'HAGARENI ISUI', 'F', -1, NULL, '9971386297', 'hagareniyah@gmail.com', 'YACH010618MYNHHGA2', NULL, 'S', '2020-06-18', 31, 'Halachó', NULL, 'Calle 21 x10 calle a becal', NULL, 'COBAY', NULL, NULL, NULL, NULL, '8.0', 'Halachó', 'Halachó', '97830', 'HAGARI CARINA CHI POOL', '9971058781', 'M', NULL, NULL, NULL, NULL, '2020-05-29 20:16:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-29 20:16:59', '2020-05-29 20:16:59'),
(49, 79, NULL, 'KEB', 'GONZALEZ', 'ANGEL SANTIAGO', 'M', 21, NULL, '9971331996', 'angelkeb77@gmail.com', 'KEGA981118HYNBNN06', NULL, 'S', '1998-11-18', 31, 'Halacho', NULL, 'Calle 16 No. 95 entre 17 y 19 col. centro', NULL, 'COLEGIO DE BACHILLERES DEL ESTADO DE YUCATAN', NULL, NULL, NULL, NULL, '7.6', 'Halachó', 'Halachó', '97830', 'ROSENDO FEDERICO KEB PECH', '9971080350', 'P', NULL, NULL, NULL, NULL, '2020-05-29 20:27:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-29 20:27:56', '2020-05-29 20:27:56'),
(50, 80, NULL, 'UICAB', 'YAH', 'LISA ANDREA', 'F', 17, NULL, '9971133298', 'deitauicab23@gmail.com', 'UIYL020923MYNCHSA5', 'IMG_alum_200058.jpg', 'S', '2002-09-23', 31, 'Cuch-Holoch', NULL, 'CALLE 20 X 13 Y 15 52', NULL, 'COBAY', NULL, NULL, NULL, NULL, '8.5', 'Halachó', 'Halachó', '97835', 'INGRID ELIZANDREA UICAB YAH', '9971322195', 'H', NULL, NULL, NULL, NULL, '2020-05-31 18:20:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-05-31 18:05:36', '2020-05-31 18:20:07'),
(51, 81, NULL, 'CABALLERO', 'REJON', 'ALONDRA GUADALUPE', 'F', 20, NULL, '9871372995', 'acaballerorejon@gmail.com', 'CARA990720MQRBJL09', NULL, 'S', '1999-07-20', 23, 'San Miguel de Cozumel', NULL, 'Calle 6 Nte 50', NULL, 'CONALEP COZUMEL', NULL, NULL, NULL, NULL, '8.9', 'Cozumel', 'Cozumel', '77600', 'ROSA MARIA REJON TZUC', '9871005365', 'M', NULL, NULL, NULL, NULL, '2020-06-01 19:16:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 23, 23, NULL, NULL, '2020-06-01 19:16:21', '2020-06-01 19:16:21'),
(52, 82, NULL, 'CANUL', 'CENTENO', 'ABNER JESUS', 'M', 17, NULL, '9971158343', 'abnercenteno1000@gmail.com', 'CXCA020829HYNNNBA0', 'IMG_alum_200060.jpg', 'S', '2002-08-29', 31, 'Santa María Acú', NULL, 'Calle 17 X 18', NULL, 'COLEGIO DE BACHILLERES DEL ESTADO DE YUCATÁN', NULL, NULL, NULL, NULL, '8.9', 'Halachó', 'Halachó', '97837', 'MARÍA VERÓNICA CENTENO MORALES', '9993239562', 'M', NULL, NULL, NULL, NULL, '2020-06-02 07:25:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-02 07:20:21', '2020-06-02 07:25:34'),
(53, 83, NULL, 'COLLI', 'YAH', 'DAVID MOISES', 'M', 0, NULL, '9991721143', 'collid764@gmail.com', 'COYD000419HYNLHVA1', 'IMG_alum_200061.jpg', 'S', '2020-04-19', 31, 'San Antonio Sihó', NULL, 'Calle 14 x 23 y 25 S/N', NULL, 'TELEBACHILLERATO COMUNITARIO MODULO SIHO', NULL, NULL, NULL, NULL, '8.1', 'Halachó', 'Halachó', '97830', 'LIBIA MARCELA YAH COLLI', '5521840031', 'M', NULL, NULL, NULL, NULL, '2020-06-03 19:55:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-03 19:55:49', '2020-06-03 19:55:49'),
(54, 84, NULL, 'CAN', 'NARVAEZ', 'OSWALDO MANUEL', 'M', 18, NULL, '9991160436', 'oswaldocan3002@gmail.com', 'CANO020130HYNNRSA1', 'IMG_alum_200062.jpeg', 'S', '2002-01-30', 31, 'SANTA MARIA ACU', NULL, 'CALLE 21 X 16 # 7', NULL, 'COLEGIO DE BACHILLERES', NULL, NULL, NULL, NULL, '8.0', 'Halachó', 'Halachó', '97837', 'MARTHA DELFINA NARVAEZ SONDA', '9991160436', 'M', NULL, NULL, NULL, NULL, '2020-06-05 23:31:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-05 23:20:52', '2020-06-05 23:31:55'),
(55, 85, NULL, 'TRUEBA', 'BERZUNZA', 'BÁRBARA', 'F', 20, NULL, '9995145946', 'ba_erzunza@hotmail.com', 'TUBB000512MYNRRRA4', NULL, 'S', '2000-05-12', 31, 'Calkiní', NULL, 'Calle #9 entre 22 y 22B', NULL, 'COLEGIO DE BACHILLES DE CAMPECHE PLANTEL 13', NULL, NULL, NULL, NULL, '7.3', 'Calkiní', 'Calkiní', '24900', 'MARIA DE LA LUZ BERZUNZA AGUILAR', '9995145946', 'M', NULL, NULL, NULL, NULL, '2020-06-06 03:21:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 4, NULL, NULL, '2020-06-06 03:21:14', '2020-06-06 03:21:14'),
(56, 86, NULL, 'MAY', 'UCAN', 'SAMUEL ISAI', 'M', 17, NULL, '9961025538', 'sami13panchos@gmail.com', 'MAUS021130HYNYCMA6', NULL, 'S', '2002-11-30', 31, 'san antonio siho yucatan', NULL, '14 x 23 y 25', NULL, 'TELEBACHILLERATO COMUNITARIO SIHO TBCEY', NULL, NULL, NULL, NULL, '8.5', 'Halachó', 'Halachó', '97835', 'SAMUEL ISAI MAY UCAN', '9961025538', 'P', NULL, NULL, NULL, NULL, '2020-06-06 22:26:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-06 22:01:36', '2020-06-06 22:26:18'),
(57, 87, NULL, 'SANCHEZ', 'COLLÍ', 'NESTOR', 'M', 22, NULL, '9981557447', 'nestorcolli317@gmail.com', 'SACN980116HQRNLS07', NULL, 'S', '1998-01-16', 23, 'san antonio siho yucatan', NULL, '21 x 12 3ra casa entrada del poblado', NULL, 'TELEBACHILLERATO COMUNITARIO SIHÓ TBCEY', NULL, NULL, NULL, NULL, '8.9', 'Halachó', 'Halachó', '97835', 'NESTOR SANCHEZ COLLÍ', '9981557447', 'P', NULL, NULL, NULL, NULL, '2020-06-06 22:41:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-06 22:41:51', '2020-06-06 22:41:51'),
(58, 88, NULL, 'PECH', 'AGUILAR', 'CARLOS ISMAEL', 'M', 18, NULL, '9996014409', 'pechaguilarcarlos@gmail.com', 'PEAC010825HYNCGRA1', 'IMG_alum_200066.jpeg', 'S', '2001-08-25', 31, 'Hunucma', NULL, 'Calle 42 s/n x 37 y 39 col Fatima', NULL, 'COBAY', NULL, NULL, NULL, NULL, '8.7', 'Hunucmá', 'Hunucmá', '97350', 'CARLOS', '9994265808', 'P', NULL, NULL, NULL, NULL, '2020-06-08 22:02:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-08 21:52:05', '2020-06-08 22:02:24'),
(59, 92, NULL, 'VALLE', 'MAY', 'DIANA IVEETH', 'F', 19, NULL, '9995069206', 'dianaiverthvallemay@gmail.com', 'VAMD000918MYNLYNA3', 'IMG_alum_200070.jpg', 'S', '2000-09-18', 31, 'uman', NULL, 'calle 7 # 105 x 20 y 22', NULL, 'CBTA 13', NULL, NULL, NULL, NULL, '7.0', 'Umán', 'Umán', '97390', 'MARIA OLGALIBIA MAY QUINTAL', '9994585683', 'M', NULL, NULL, NULL, NULL, '2020-06-09 03:01:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-09 03:01:36', '2020-06-09 03:01:36'),
(60, 93, NULL, 'VARGAS', 'CHABLE', 'YEMI GABRIELA', 'F', 18, NULL, '9969632856', 'yemigabriela19@gmail.com', 'VACY011119MCCRHMA4', 'IMG_alum_200071.jpeg', 'S', '2001-11-19', 4, 'Becal', NULL, 'Calle 29 NO. 238 entre 38 y 40 Col. Fatima', NULL, 'COBACAM PLANTEL 11, BECAL', NULL, NULL, NULL, NULL, '7.8', 'Calkiní', 'Calkiní', '24930', 'JOSE IDELFONSO VARGAS UC', '9967309390', 'P', NULL, NULL, NULL, NULL, '2020-06-09 17:15:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 4, NULL, NULL, '2020-06-09 16:59:34', '2020-06-09 17:15:43'),
(61, 94, NULL, 'HERRERA', 'TUCUCH', 'GUSTAVO ENRIQUE', 'M', 20, NULL, '9971395491', 'gh0903477@gmail.com', 'HETG000331HYNRCSA0', NULL, 'S', '2000-03-31', 31, 'san antonio siho yucatan', NULL, 'C12 X 24 S/N', NULL, 'TELEBACHILLERATO COMUNITARIO SIHO TBCEY', NULL, NULL, NULL, NULL, '8.3', 'Halachó', 'Halachó', '97835', 'SILVIA HERERA TUCUCH', '9971395491', 'H', NULL, NULL, NULL, NULL, '2020-06-09 19:51:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-09 19:43:25', '2020-06-09 19:51:21'),
(62, 95, NULL, 'KU', 'UC', 'MOISÉS ISAÍAS', 'M', 18, NULL, '9961002969', 'mrpenkyx@gmail.com', 'KUUM020502HCCXCSA1', 'IMG_alum_200073.jpg', 'S', '2002-05-02', 4, 'Bécal', NULL, 'Calle 24 No. 210 A entre 33 y 35 Col. Centro', NULL, 'COBACAM PLANTEL 11, BÉCAL', NULL, NULL, NULL, NULL, '8.2', 'Calkiní', 'Calkiní', '24930', 'JOSÉ ISAÍAS KU UC', '9961084431', 'P', NULL, NULL, NULL, NULL, '2020-06-13 19:01:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, 4, NULL, NULL, '2020-06-09 23:19:45', '2020-06-09 23:20:38'),
(63, 96, NULL, 'NOH', 'POOL', 'ANA PAOLA', 'F', 17, NULL, '9999085482', 'paolanohpool@gmail.com', 'NOPA021028MYNHLNA8', NULL, 'S', '2002-10-28', 31, 'Kochol', NULL, '7 x 12 y 14 ATRAS CLINICA SN', NULL, 'TELEBACHILLERATO COMUNITARIO DE KOCHOL', NULL, NULL, NULL, NULL, '8.9', 'Maxcanú', 'Maxcanú', '97804', 'JOSE ALBERTO NOH NOH', '9994164791', 'P', NULL, NULL, NULL, NULL, '2020-06-11 01:01:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-10 17:50:59', '2020-06-10 17:50:59'),
(64, 118, NULL, 'PECH', 'TUCUCH', 'CITLALI YAMILE', 'F', 17, NULL, '9971143655', 'citlaliyamilepechtucuch@gmail.com', 'PETC021111MYNCCTA9', 'IMG_alum_200096.pdf', 'S', '2002-11-11', 31, 'SAN ANTONIO SIHO', NULL, 'C 12X21 Y 23 46', NULL, 'TELEBACHILLERATO COMUNITARIO MÓDULO SIHÓ', NULL, NULL, NULL, NULL, '8.0', 'Halachó', 'Halachó', '-97830', 'PECH UCAN PEDRO JAVIER', '9979794787', 'P', NULL, NULL, NULL, NULL, '2020-06-12 05:49:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-12 05:41:41', '2020-06-12 05:49:37'),
(65, 119, NULL, 'CANUL', 'CHIN', 'DIEGO CANUL', 'M', 20, NULL, '9999957397', 'diegoomar215@gmail.com', 'CACD991113HYNNHG04', 'IMG_alum_200097.jpg', 'S', '1999-11-13', 31, 'Kopomá', NULL, 'Calle 18 entre 17 y 15', NULL, 'TELEBACHILLERATO COMUNITARIO DE KOPÓMA', NULL, NULL, NULL, NULL, '8.6', 'Kopomá', 'Kopomá', '97818', 'LUIS FELIPE CANUL YAH', '9992981845', 'P', NULL, NULL, NULL, NULL, '2020-06-12 16:47:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 31, 31, NULL, NULL, '2020-06-12 16:47:08', '2020-06-12 16:47:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos_villas`
--

CREATE TABLE `alumnos_villas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciclo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `alumno_grupo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `costo_viaje` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiempo_viaje` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observaciones_villa` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_empresa`
--

CREATE TABLE `alumno_empresa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `modalidad_id` bigint(20) UNSIGNED NOT NULL,
  `asesor` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_incio` date DEFAULT NULL,
  `fecha_conclusion` date DEFAULT NULL,
  `tipo_supervisor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_supervisor` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_reconocimiento` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_grupos`
--

CREATE TABLE `alumno_grupos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `grupo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno_grupos`
--

INSERT INTO `alumno_grupos` (`id`, `alumno_id`, `grupo_id`, `created_at`, `updated_at`) VALUES
(12, 13, 3, '2020-04-05 00:02:17', '2020-04-05 00:02:17'),
(13, 14, 5, '2020-04-05 01:34:55', '2020-04-05 01:34:55'),
(14, 15, 2, '2020-04-05 02:40:11', '2020-04-05 02:40:11'),
(15, 16, 5, '2020-04-06 15:59:24', '2020-04-06 15:59:24'),
(16, 17, 5, '2020-04-06 16:03:02', '2020-04-06 16:03:02'),
(17, 18, 5, '2020-04-07 02:32:40', '2020-04-07 02:32:40'),
(18, 19, 3, '2020-04-07 03:07:00', '2020-04-07 03:07:00'),
(19, 20, 5, '2020-04-07 04:51:04', '2020-04-07 04:51:04'),
(23, 24, 6, '2020-04-08 03:12:22', '2020-04-08 03:12:22'),
(27, 28, 5, '2020-04-08 07:31:41', '2020-04-08 07:31:41'),
(28, 29, 2, '2020-04-08 08:26:41', '2020-04-08 08:26:41'),
(29, 30, 2, '2020-04-22 03:11:04', '2020-04-22 03:11:04'),
(30, 31, 2, '2020-04-22 03:18:08', '2020-04-22 03:18:08'),
(31, 32, 2, '2020-04-24 18:33:50', '2020-04-24 18:33:50'),
(32, 33, 4, '2020-04-25 20:55:49', '2020-04-25 20:55:49'),
(33, 34, 3, '2020-04-28 21:14:50', '2020-04-28 21:14:50'),
(34, 35, 6, '2020-04-29 22:35:34', '2020-04-29 22:35:34'),
(35, 36, 2, '2020-04-30 01:30:32', '2020-04-30 01:30:32'),
(36, 37, 2, '2020-04-30 22:06:53', '2020-04-30 22:06:53'),
(37, 38, 3, '2020-05-04 17:44:42', '2020-05-04 17:44:42'),
(38, 39, 5, '2020-05-08 17:59:18', '2020-05-08 17:59:18'),
(39, 40, 5, '2020-05-10 22:01:20', '2020-05-10 22:01:20'),
(40, 41, 4, '2020-05-12 00:22:05', '2020-05-12 00:22:05'),
(41, 42, 3, '2020-05-15 16:54:32', '2020-05-15 16:54:32'),
(42, 43, 3, '2020-05-24 19:50:15', '2020-05-24 19:50:15'),
(43, 44, 3, '2020-05-24 23:23:58', '2020-05-24 23:23:58'),
(44, 45, 2, '2020-05-26 04:30:57', '2020-05-26 04:30:57'),
(45, 46, 2, '2020-05-26 18:13:43', '2020-05-26 18:13:43'),
(46, 47, 3, '2020-05-27 19:42:40', '2020-05-27 19:42:40'),
(47, 48, 2, '2020-05-29 20:16:59', '2020-05-29 20:16:59'),
(48, 49, 2, '2020-05-29 20:27:56', '2020-05-29 20:27:56'),
(49, 50, 6, '2020-05-31 18:05:36', '2020-05-31 18:05:36'),
(50, 51, 5, '2020-06-01 19:16:21', '2020-06-01 19:16:21'),
(51, 52, 2, '2020-06-02 07:20:21', '2020-06-02 07:20:21'),
(52, 53, 4, '2020-06-03 19:55:49', '2020-06-03 19:55:49'),
(53, 54, 3, '2020-06-05 23:20:52', '2020-06-05 23:20:52'),
(54, 55, 3, '2020-06-06 03:21:14', '2020-06-06 03:21:14'),
(55, 56, 5, '2020-06-06 22:01:36', '2020-06-06 22:01:36'),
(56, 57, 4, '2020-06-06 22:41:51', '2020-06-06 22:41:51'),
(57, 58, 4, '2020-06-08 21:52:05', '2020-06-08 21:52:05'),
(58, 59, 5, '2020-06-09 03:01:36', '2020-06-09 03:01:36'),
(59, 60, 3, '2020-06-09 16:59:34', '2020-06-09 16:59:34'),
(60, 61, 4, '2020-06-09 19:43:25', '2020-06-09 19:43:25'),
(61, 62, 2, '2020-06-09 23:19:45', '2020-06-09 23:19:45'),
(62, 63, 2, '2020-06-10 17:50:59', '2020-06-10 17:50:59'),
(63, 64, 4, '2020-06-12 05:41:41', '2020-06-12 05:41:41'),
(64, 65, 5, '2020-06-12 16:47:08', '2020-06-12 16:47:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno_kardex`
--

CREATE TABLE `alumno_kardex` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciclo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nivel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `alumno_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_grupo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `momento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `criterio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asighorasprofesor`
--

CREATE TABLE `asighorasprofesor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ciclo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tipo_profesor` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_investigacion` int(11) DEFAULT NULL,
  `h_admin` int(11) DEFAULT NULL,
  `h_docencia` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `planestudio_id` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_corto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuatrimestre` int(11) DEFAULT NULL,
  `horas_teoricas` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horas_practicas` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_conocimiento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo_asignatura` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contar_promedio` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consecutivo` int(11) NOT NULL,
  `empleado_id` bigint(20) UNSIGNED NOT NULL,
  `cuenta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `descripcion`, `status`, `consecutivo`, `empleado_id`, `cuenta_id`, `created_at`, `updated_at`) VALUES
(1, 'Caja para cobros de colegiatura', '1', 1000, 6, 2, '2020-03-25 20:23:53', '2020-03-25 20:23:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identificador_carrera` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `nivel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `acuerdo_creacion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `identificador_carrera`, `descripcion`, `status`, `nivel_id`, `acuerdo_creacion`, `fecha`, `fecha_inicio`, `fecha_fin`, `created_at`, `updated_at`) VALUES
(1, 'TSUADF', 'Administración Área Formulación y Evaluación de Proyectos', 1, 1, 'CGUTyP', '2017-09-01', '2017-09-01', NULL, '2020-03-25 00:53:41', '2020-03-25 00:53:41'),
(2, 'TSUGAS', 'Gastronomía', 1, 1, 'CGUTyP', '2018-09-01', '2018-09-01', NULL, '2020-03-25 00:54:22', '2020-03-25 00:54:22'),
(3, 'TSUPAL', 'Procesos Alimentarios', 1, 1, 'CGUTyP', '2018-09-01', '2018-09-01', NULL, '2020-03-25 00:54:55', '2020-03-25 00:54:55'),
(4, 'TSUTI', 'Tecnologías de la Información Área Desarrollo de Software Multiplataforma', 1, 1, 'CGUTyP', '2018-09-01', '2018-09-01', NULL, '2020-03-25 00:55:40', '2020-03-25 00:55:40'),
(5, 'TSUTUR', 'Turismo Área Desarrollo de Productos Alternativos', 1, 1, 'CGUTyP', '2017-09-01', '2017-09-01', NULL, '2020-03-25 00:57:20', '2020-03-25 00:57:20'),
(6, 'LGNP', 'Gestión de Negocios y Proyectos', 1, 3, 'CGUTyP', '2019-09-01', '2020-01-06', NULL, '2020-03-25 00:59:30', '2020-03-25 00:59:30'),
(7, 'IPB', 'Procesos Bioalimentarios', 1, 3, 'CGUTyP', '2017-09-01', '2020-01-06', NULL, '2020-03-25 01:00:44', '2020-03-25 01:00:44'),
(8, 'ITI', 'Tecnologías de la Información', 1, 3, 'CGUTyP', '2011-09-01', '2020-01-06', NULL, '2020-03-25 01:01:17', '2020-03-25 01:01:17'),
(9, 'LGDT', 'Gestión y Desarrollo Turístico', 1, 2, 'CGUTyP', '2019-09-01', '2020-01-06', NULL, '2020-03-25 01:02:16', '2020-03-25 01:02:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfgstatus`
--

CREATE TABLE `cfgstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cfgstatus`
--

INSERT INTO `cfgstatus` (`id`, `status`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aspirante\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE `ciclos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inicia` year(4) NOT NULL,
  `finaliza` year(4) NOT NULL,
  `periodo` int(11) NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_corto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciclos`
--

INSERT INTO `ciclos` (`id`, `inicia`, `finaliza`, `periodo`, `descripcion`, `codigo_corto`, `fecha_inicial`, `fecha_fin`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2020, 2020, 0, 'Aspirantes 2020-2021', 'ASP_2020-2021', '2020-02-17', '2020-05-30', NULL, '2020-03-25 00:52:05', '2020-03-25 00:52:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptopagos`
--

CREATE TABLE `conceptopagos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cuenta_id` bigint(20) UNSIGNED NOT NULL,
  `impuesto` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `conceptopagos`
--

INSERT INTO `conceptopagos` (`id`, `cuenta_id`, `impuesto`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 2, 0.00, NULL, '2020-04-05 02:44:55', '2020-04-05 02:44:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterios`
--

CREATE TABLE `criterios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criterio` varchar(140) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acumulativa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `codigo`, `descripcion`, `nivel`, `acumulativa`, `created_at`, `updated_at`) VALUES
(2, '4120-300-11', 'EXÁMENES DE DIAGNÓSTICO', '1', 'S', '2020-03-23 02:37:42', '2020-03-23 02:37:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recibido` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT 'S',
  `copia` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_recepcion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fecha_prestamo` date DEFAULT NULL,
  `devolucion` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `observaciones` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alumno_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`id`, `nombre`, `descripcion`, `recibido`, `copia`, `validado`, `fecha_recepcion`, `fecha_prestamo`, `devolucion`, `fecha_devolucion`, `observaciones`, `archivo`, `alumno_id`, `created_at`, `updated_at`) VALUES
(1, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-04 07:17:13', NULL, NULL, NULL, NULL, 'AN_alum_20090001.pdf', 1, '2020-04-04 07:17:13', '2020-04-04 07:17:13'),
(2, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-04 07:17:32', NULL, NULL, NULL, NULL, 'CURP_alum_20090001.pdf', 1, '2020-04-04 07:17:32', '2020-04-04 07:17:32'),
(3, 'CERTIFICADO DE BACHILLERATO', 'CERTIFICADO DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-04 07:17:59', NULL, NULL, NULL, NULL, 'CERT_B_alum_20090001.pdf', 1, '2020-04-04 07:17:59', '2020-04-04 07:17:59'),
(4, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-04 07:19:15', NULL, NULL, NULL, NULL, 'REG_alum_20090001.pdf', 1, '2020-04-04 07:19:15', '2020-04-04 07:19:15'),
(5, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-04 23:13:37', NULL, NULL, NULL, NULL, 'AN_alum_200007.pdf', 7, '2020-04-04 23:13:37', '2020-04-04 23:13:37'),
(6, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-04 23:13:37', NULL, NULL, NULL, NULL, 'CURP_alum_200007.pdf', 7, '2020-04-04 23:13:37', '2020-04-04 23:13:37'),
(7, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-04 23:13:37', NULL, NULL, NULL, NULL, 'CERT_B_alum_200007.pdf', 7, '2020-04-04 23:13:37', '2020-04-04 23:13:37'),
(8, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-05 01:36:30', NULL, NULL, NULL, NULL, 'AN_alum_200003.pdf', 14, '2020-04-05 01:36:30', '2020-04-05 01:36:30'),
(9, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-05 01:36:30', NULL, NULL, NULL, NULL, 'CURP_alum_200003.pdf', 14, '2020-04-05 01:36:30', '2020-04-05 01:36:30'),
(10, 'CERTIFICADO DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-05-08 02:44:10', NULL, NULL, NULL, NULL, 'CERT_B_alum_200003.pdf', 14, '2020-04-05 01:36:30', '2020-05-08 02:44:10'),
(11, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-05 01:45:24', NULL, NULL, NULL, NULL, 'REG_alum_200003.pdf', 14, '2020-04-05 01:45:24', '2020-04-05 01:45:24'),
(12, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-06 16:30:52', NULL, NULL, NULL, NULL, 'CURP_alum_200006.pdf', 17, '2020-04-06 16:30:52', '2020-04-06 16:30:52'),
(13, 'CERTIFICADO DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-06 16:33:40', NULL, NULL, NULL, NULL, 'CERT_B_alum_200006.pdf', 17, '2020-04-06 16:31:53', '2020-04-06 16:33:40'),
(14, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-06 16:32:11', NULL, NULL, NULL, NULL, 'AN_alum_200006.pdf', 17, '2020-04-06 16:32:11', '2020-04-06 16:32:11'),
(15, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-06 16:32:44', NULL, NULL, NULL, NULL, 'REG_alum_200006.pdf', 17, '2020-04-06 16:32:44', '2020-04-06 16:32:44'),
(16, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:38:28', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:38:28', '2020-04-08 07:38:28'),
(17, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:38:28', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:38:28', '2020-04-08 07:38:28'),
(18, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:38:28', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:38:28', '2020-04-08 07:38:28'),
(19, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:42:01', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:42:01', '2020-04-08 07:42:01'),
(20, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:42:01', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:42:01', '2020-04-08 07:42:01'),
(21, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:42:01', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:42:01', '2020-04-08 07:42:01'),
(22, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:44:26', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:44:26', '2020-04-08 07:44:26'),
(23, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:44:26', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:44:26', '2020-04-08 07:44:26'),
(24, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:44:26', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:44:26', '2020-04-08 07:44:26'),
(25, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:45:08', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:45:08', '2020-04-08 07:45:08'),
(26, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:45:08', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:45:08', '2020-04-08 07:45:08'),
(27, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:45:08', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:45:08', '2020-04-08 07:45:08'),
(28, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:46:02', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:46:02', '2020-04-08 07:46:02'),
(29, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:46:02', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:46:02', '2020-04-08 07:46:02'),
(30, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:46:02', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:46:02', '2020-04-08 07:46:02'),
(31, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:49:41', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:49:41', '2020-04-08 07:49:41'),
(32, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:49:41', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:49:41', '2020-04-08 07:49:41'),
(33, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:49:41', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:49:41', '2020-04-08 07:49:41'),
(34, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:50:46', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:50:46', '2020-04-08 07:50:46'),
(35, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:50:46', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:50:46', '2020-04-08 07:50:46'),
(36, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:50:46', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:50:46', '2020-04-08 07:50:46'),
(37, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:51:57', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:51:57', '2020-04-08 07:51:57'),
(38, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:51:57', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:51:57', '2020-04-08 07:51:57'),
(39, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:51:57', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:51:57', '2020-04-08 07:51:57'),
(40, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:58:00', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:58:00', '2020-04-08 07:58:00'),
(41, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:58:00', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:58:00', '2020-04-08 07:58:00'),
(42, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:58:00', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:58:00', '2020-04-08 07:58:00'),
(43, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:59:33', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 07:59:33', '2020-04-08 07:59:33'),
(44, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:59:33', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 07:59:33', '2020-04-08 07:59:33'),
(45, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 07:59:33', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 07:59:33', '2020-04-08 07:59:33'),
(46, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:04:05', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 08:04:05', '2020-04-08 08:04:05'),
(47, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:04:05', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 08:04:05', '2020-04-08 08:04:05'),
(48, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:04:05', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 08:04:05', '2020-04-08 08:04:05'),
(49, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:04:57', NULL, NULL, NULL, NULL, 'AN_alum_200011.pdf', 28, '2020-04-08 08:04:57', '2020-04-08 08:04:57'),
(50, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:04:57', NULL, NULL, NULL, NULL, 'CURP_alum_200011.pdf', 28, '2020-04-08 08:04:57', '2020-04-08 08:04:57'),
(51, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:04:57', NULL, NULL, NULL, NULL, 'CERT_B_alum_200011.pdf', 28, '2020-04-08 08:04:57', '2020-04-08 08:04:57'),
(52, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:27:37', NULL, NULL, NULL, NULL, 'AN_alum_200012.pdf', 29, '2020-04-08 08:27:37', '2020-04-08 08:27:37'),
(53, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:27:37', NULL, NULL, NULL, NULL, 'CURP_alum_200012.pdf', 29, '2020-04-08 08:27:37', '2020-04-08 08:27:37'),
(54, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-08 08:27:37', NULL, NULL, NULL, NULL, 'C_B_alum_200012.pdf', 29, '2020-04-08 08:27:37', '2020-04-08 08:27:37'),
(55, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-04-08 08:35:25', NULL, NULL, NULL, NULL, 'REG_alum_200012.pdf', 29, '2020-04-08 08:35:25', '2020-04-08 08:35:25'),
(56, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-24 18:35:42', NULL, NULL, NULL, NULL, 'AN_alum_200039.pdf', 32, '2020-04-24 18:35:42', '2020-04-24 18:35:42'),
(57, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-24 18:35:42', NULL, NULL, NULL, NULL, 'CURP_alum_200039.pdf', 32, '2020-04-24 18:35:42', '2020-04-24 18:35:42'),
(58, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-24 18:35:42', NULL, NULL, NULL, NULL, 'C_B_alum_200039.pdf', 32, '2020-04-24 18:35:42', '2020-04-24 18:35:42'),
(59, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-28 21:22:40', NULL, NULL, NULL, NULL, 'AN_alum_200042.pdf', 34, '2020-04-28 21:22:40', '2020-04-28 21:22:40'),
(60, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-28 21:22:40', NULL, NULL, NULL, NULL, 'CURP_alum_200042.pdf', 34, '2020-04-28 21:22:40', '2020-04-28 21:22:40'),
(61, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-28 21:22:40', NULL, NULL, NULL, NULL, 'C_B_alum_200042.pdf', 34, '2020-04-28 21:22:40', '2020-04-28 21:22:40'),
(62, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-04-30 22:22:24', NULL, NULL, NULL, NULL, 'AN_alum_200045.pdf', 37, '2020-04-30 22:22:24', '2020-04-30 22:22:24'),
(63, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-04-30 22:22:24', NULL, NULL, NULL, NULL, 'CURP_alum_200045.pdf', 37, '2020-04-30 22:22:24', '2020-04-30 22:22:24'),
(64, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-04-30 22:22:24', NULL, NULL, NULL, NULL, 'C_B_alum_200045.pdf', 37, '2020-04-30 22:22:24', '2020-04-30 22:22:24'),
(65, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-05-04 17:48:06', NULL, NULL, NULL, NULL, 'AN_alum_200046.pdf', 38, '2020-05-04 17:48:06', '2020-05-04 17:48:06'),
(66, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-05-04 17:48:06', NULL, NULL, NULL, NULL, 'CURP_alum_200046.pdf', 38, '2020-05-04 17:48:06', '2020-05-04 17:48:06'),
(67, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-05-04 17:48:06', NULL, NULL, NULL, NULL, 'C_B_alum_200046.pdf', 38, '2020-05-04 17:48:06', '2020-05-04 17:48:06'),
(68, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-08 18:33:47', NULL, NULL, NULL, NULL, 'AN_alum_200047.pdf', 39, '2020-05-08 18:33:47', '2020-05-08 18:33:47'),
(69, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-08 18:34:20', NULL, NULL, NULL, NULL, 'CURP_alum_200047.pdf', 39, '2020-05-08 18:34:20', '2020-05-08 18:34:20'),
(70, 'CERTIFICADO DE BACHILLERATO', 'CERTIFICADO DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-08 18:35:14', NULL, NULL, NULL, NULL, 'CERT_B_alum_200047.pdf', 39, '2020-05-08 18:35:14', '2020-05-08 18:35:14'),
(71, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-09 16:34:11', NULL, NULL, NULL, NULL, 'REG_alum_200044.pdf', 36, '2020-05-09 16:34:11', '2020-05-09 16:34:11'),
(72, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-05-10 22:03:11', NULL, NULL, NULL, NULL, 'AN_alum_200048.pdf', 40, '2020-05-10 22:03:11', '2020-05-10 22:03:11'),
(73, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-05-10 22:03:11', NULL, NULL, NULL, NULL, 'CURP_alum_200048.pdf', 40, '2020-05-10 22:03:11', '2020-05-10 22:03:11'),
(74, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-05-10 22:03:11', NULL, NULL, NULL, NULL, 'CERT_B_alum_200048.pdf', 40, '2020-05-10 22:03:11', '2020-05-10 22:03:11'),
(75, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:08', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:08', '2020-05-12 02:22:08'),
(76, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:14', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:14', '2020-05-12 02:22:14'),
(77, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:16', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:16', '2020-05-12 02:22:16'),
(78, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:16', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:16', '2020-05-12 02:22:16'),
(79, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:36', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:36', '2020-05-12 02:22:36'),
(80, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:40', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:40', '2020-05-12 02:22:40'),
(81, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:42', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:42', '2020-05-12 02:22:42'),
(82, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:42', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:42', '2020-05-12 02:22:42'),
(83, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:43', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:43', '2020-05-12 02:22:43'),
(84, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:43', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:43', '2020-05-12 02:22:43'),
(85, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:43', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:43', '2020-05-12 02:22:43'),
(86, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:43', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:43', '2020-05-12 02:22:43'),
(87, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:44', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:44', '2020-05-12 02:22:44'),
(88, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:45', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:45', '2020-05-12 02:22:45'),
(89, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:22:45', NULL, NULL, NULL, NULL, 'C_B_alum_200049.pdf', 41, '2020-05-12 02:22:45', '2020-05-12 02:22:45'),
(90, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:27:06', NULL, NULL, NULL, NULL, 'AN_alum_200049.pdf', 41, '2020-05-12 02:27:06', '2020-05-12 02:27:06'),
(91, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:27:11', NULL, NULL, NULL, NULL, 'AN_alum_200049.pdf', 41, '2020-05-12 02:27:11', '2020-05-12 02:27:11'),
(92, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:27:30', NULL, NULL, NULL, NULL, 'AN_alum_200049.pdf', 41, '2020-05-12 02:27:30', '2020-05-12 02:27:30'),
(93, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:32:41', NULL, NULL, NULL, NULL, 'CURP_alum_200049.pdf', 41, '2020-05-12 02:32:41', '2020-05-12 02:32:41'),
(94, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-12 02:32:46', NULL, NULL, NULL, NULL, 'CURP_alum_200049.pdf', 41, '2020-05-12 02:32:46', '2020-05-12 02:32:46'),
(95, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-16 15:43:51', NULL, NULL, NULL, NULL, 'REG_alum_200046.pdf', 38, '2020-05-16 15:43:51', '2020-05-16 15:43:51'),
(96, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-17 01:12:49', NULL, NULL, NULL, NULL, 'CURP_alum_200043.pdf', 35, '2020-05-17 01:12:49', '2020-05-17 01:12:49'),
(97, 'CERTIFICADO DE BACHILLERATO', 'CERTIFICADO DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-17 01:13:30', NULL, NULL, NULL, NULL, 'CERT_B_alum_200043.pdf', 35, '2020-05-17 01:13:30', '2020-05-17 01:13:30'),
(98, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-19 14:46:40', NULL, NULL, NULL, NULL, 'AN_alum_200044.pdf', 36, '2020-05-19 14:46:40', '2020-05-19 14:46:40'),
(99, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-19 14:47:16', NULL, NULL, NULL, NULL, 'CURP_alum_200044.pdf', 36, '2020-05-19 14:47:16', '2020-05-19 14:47:16'),
(100, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-23 17:14:46', NULL, NULL, NULL, NULL, 'AN_alum_200050.pdf', 42, '2020-05-23 17:14:46', '2020-05-23 17:14:46'),
(101, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-23 17:15:27', NULL, NULL, NULL, NULL, 'C_B_alum_200050.pdf', 42, '2020-05-23 17:15:27', '2020-05-23 17:15:27'),
(102, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-23 17:16:06', NULL, NULL, NULL, NULL, 'CURP_alum_200050.pdf', 42, '2020-05-23 17:16:06', '2020-05-23 17:16:06'),
(103, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-05-24 23:38:24', NULL, NULL, NULL, NULL, 'AN_alum_200052.pdf', 44, '2020-05-24 23:38:24', '2020-05-24 23:38:24'),
(104, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-05-24 23:38:24', NULL, NULL, NULL, NULL, 'CURP_alum_200052.pdf', 44, '2020-05-24 23:38:24', '2020-05-24 23:38:24'),
(105, 'CERTIFICADO DE BACHILLERATO', 'Certificado de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-05-24 23:38:24', NULL, NULL, NULL, NULL, 'CERT_B_alum_200052.pdf', 44, '2020-05-24 23:38:24', '2020-05-24 23:38:24'),
(106, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-26 00:06:14', NULL, NULL, NULL, NULL, 'AN_alum_200051.pdf', 43, '2020-05-26 00:06:14', '2020-05-26 00:06:14'),
(107, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-26 02:43:24', NULL, NULL, NULL, NULL, 'CURP_alum_200051.pdf', 43, '2020-05-26 02:43:24', '2020-05-26 02:43:24'),
(108, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-27 19:54:32', NULL, NULL, NULL, NULL, 'C_B_alum_200051.pdf', 43, '2020-05-27 19:54:32', '2020-05-27 19:54:32'),
(109, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-05-27 20:37:34', NULL, NULL, NULL, NULL, 'AN_alum_200055.pdf', 47, '2020-05-27 20:37:34', '2020-05-27 20:37:34'),
(110, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-05-27 20:37:34', NULL, NULL, NULL, NULL, 'CURP_alum_200055.pdf', 47, '2020-05-27 20:37:34', '2020-05-27 20:37:34'),
(111, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-05-27 20:37:34', NULL, NULL, NULL, NULL, 'C_B_alum_200055.pdf', 47, '2020-05-27 20:37:34', '2020-05-27 20:37:34'),
(112, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-29 23:36:11', NULL, NULL, NULL, NULL, 'CURP_alum_200057.pdf', 49, '2020-05-29 23:36:11', '2020-05-29 23:36:11'),
(113, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-29 23:37:03', NULL, NULL, NULL, NULL, 'AN_alum_200057.pdf', 49, '2020-05-29 23:37:03', '2020-05-29 23:37:03'),
(114, 'CERTIFICADO DE BACHILLERATO', 'CERTIFICADO DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-05-30 00:16:07', NULL, NULL, NULL, NULL, 'CERT_B_alum_200057.pdf', 49, '2020-05-30 00:16:07', '2020-05-30 00:16:07'),
(115, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-05-31 18:20:07', NULL, NULL, NULL, NULL, 'AN_alum_200058.pdf', 50, '2020-05-31 18:20:07', '2020-05-31 18:20:07'),
(116, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-05-31 18:20:07', NULL, NULL, NULL, NULL, 'CURP_alum_200058.pdf', 50, '2020-05-31 18:20:07', '2020-05-31 18:20:07'),
(117, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-05-31 18:20:07', NULL, NULL, NULL, NULL, 'C_B_alum_200058.pdf', 50, '2020-05-31 18:20:07', '2020-05-31 18:20:07'),
(118, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-02 07:25:34', NULL, NULL, NULL, NULL, 'AN_alum_200060.pdf', 52, '2020-06-02 07:25:34', '2020-06-02 07:25:34'),
(119, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-02 07:25:34', NULL, NULL, NULL, NULL, 'CURP_alum_200060.pdf', 52, '2020-06-02 07:25:34', '2020-06-02 07:25:34'),
(120, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-02 07:25:34', NULL, NULL, NULL, NULL, 'C_B_alum_200060.pdf', 52, '2020-06-02 07:25:34', '2020-06-02 07:25:34'),
(121, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-06-03 20:53:21', NULL, NULL, NULL, NULL, 'AN_alum_200061.pdf', 53, '2020-06-03 20:53:21', '2020-06-03 20:53:21'),
(122, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-06-03 20:53:37', NULL, NULL, NULL, NULL, 'AN_alum_200061.pdf', 53, '2020-06-03 20:53:37', '2020-06-03 20:53:37'),
(123, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-05 23:31:55', NULL, NULL, NULL, NULL, 'AN_alum_200062.pdf', 54, '2020-06-05 23:31:55', '2020-06-05 23:31:55'),
(124, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-05 23:31:55', NULL, NULL, NULL, NULL, 'CURP_alum_200062.pdf', 54, '2020-06-05 23:31:55', '2020-06-05 23:31:55'),
(125, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-05 23:31:55', NULL, NULL, NULL, NULL, 'C_B_alum_200062.pdf', 54, '2020-06-05 23:31:55', '2020-06-05 23:31:55'),
(126, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-06 22:26:18', NULL, NULL, NULL, NULL, 'AN_alum_200064.pdf', 56, '2020-06-06 22:26:18', '2020-06-06 22:26:18'),
(127, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-06 22:26:18', NULL, NULL, NULL, NULL, 'CURP_alum_200064.pdf', 56, '2020-06-06 22:26:18', '2020-06-06 22:26:18'),
(128, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-06 22:26:18', NULL, NULL, NULL, NULL, 'C_B_alum_200064.pdf', 56, '2020-06-06 22:26:18', '2020-06-06 22:26:18'),
(129, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-08 22:02:24', NULL, NULL, NULL, NULL, 'AN_alum_200066.pdf', 58, '2020-06-08 22:02:24', '2020-06-08 22:02:24'),
(130, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-08 22:02:24', NULL, NULL, NULL, NULL, 'CURP_alum_200066.pdf', 58, '2020-06-08 22:02:24', '2020-06-08 22:02:24'),
(131, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-08 22:02:24', NULL, NULL, NULL, NULL, 'C_B_alum_200066.pdf', 58, '2020-06-08 22:02:24', '2020-06-08 22:02:24'),
(132, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-09 17:15:43', NULL, NULL, NULL, NULL, 'AN_alum_200071.pdf', 60, '2020-06-09 17:15:43', '2020-06-09 17:15:43'),
(133, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-09 17:15:43', NULL, NULL, NULL, NULL, 'CURP_alum_200071.pdf', 60, '2020-06-09 17:15:43', '2020-06-09 17:15:43'),
(134, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-09 17:15:43', NULL, NULL, NULL, NULL, 'C_B_alum_200071.pdf', 60, '2020-06-09 17:15:43', '2020-06-09 17:15:43'),
(135, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-09 17:40:48', NULL, NULL, NULL, NULL, 'AN_alum_200071.pdf', 60, '2020-06-09 17:40:48', '2020-06-09 17:40:48'),
(136, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-09 17:40:48', NULL, NULL, NULL, NULL, 'CURP_alum_200071.pdf', 60, '2020-06-09 17:40:48', '2020-06-09 17:40:48'),
(137, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-09 17:40:48', NULL, NULL, NULL, NULL, 'C_B_alum_200071.pdf', 60, '2020-06-09 17:40:48', '2020-06-09 17:40:48'),
(138, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-09 19:51:21', NULL, NULL, NULL, NULL, 'AN_alum_200072.pdf', 61, '2020-06-09 19:51:21', '2020-06-09 19:51:21'),
(139, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-09 19:51:21', NULL, NULL, NULL, NULL, 'CURP_alum_200072.pdf', 61, '2020-06-09 19:51:21', '2020-06-09 19:51:21'),
(140, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-09 19:51:21', NULL, NULL, NULL, NULL, 'C_B_alum_200072.pdf', 61, '2020-06-09 19:51:21', '2020-06-09 19:51:21'),
(141, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-09 23:20:38', NULL, NULL, NULL, NULL, 'AN_alum_200073.pdf', 62, '2020-06-09 23:20:38', '2020-06-09 23:20:38'),
(142, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-09 23:20:38', NULL, NULL, NULL, NULL, 'CURP_alum_200073.pdf', 62, '2020-06-09 23:20:38', '2020-06-09 23:20:38'),
(143, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-09 23:20:38', NULL, NULL, NULL, NULL, 'C_B_alum_200073.pdf', 62, '2020-06-09 23:20:38', '2020-06-09 23:20:38'),
(144, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-06-10 16:21:41', NULL, NULL, NULL, NULL, 'REG_alum_200057.pdf', 49, '2020-06-10 16:21:41', '2020-06-10 16:21:41'),
(145, 'CONSTANCIA DE BACHILLERATO', 'CONSTANCIA DE BACHILLERATO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-06-11 18:41:23', NULL, NULL, NULL, NULL, 'C_B_alum_200074.pdf', 63, '2020-06-11 18:41:23', '2020-06-11 18:41:23'),
(146, 'ACTA DE NACIMIENTO', 'ACTA DE NACIMIENTO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-06-11 18:49:38', NULL, NULL, NULL, NULL, 'AN_alum_200074.pdf', 63, '2020-06-11 18:49:38', '2020-06-11 18:49:38'),
(147, 'CURP', 'CURP SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-06-11 19:06:28', NULL, NULL, NULL, NULL, 'CURP_alum_200074.pdf', 63, '2020-06-11 19:06:28', '2020-06-11 19:06:28'),
(148, 'ACTA DE NACIMIENTO', 'Acta de nacimiento - Ficha Registro', 'S', NULL, NULL, '2020-06-12 05:49:37', NULL, NULL, NULL, NULL, 'AN_alum_200096.pdf', 64, '2020-06-12 05:49:37', '2020-06-12 05:49:37'),
(149, 'CURP', 'CURP - Ficha Registro', 'S', NULL, NULL, '2020-06-12 05:49:37', NULL, NULL, NULL, NULL, 'CURP_alum_200096.pdf', 64, '2020-06-12 05:49:37', '2020-06-12 05:49:37'),
(150, 'CONSTANCIA DE BACHILLERATO', 'Constancia de bachiller - Ficha Registro', 'S', NULL, NULL, '2020-06-12 05:49:37', NULL, NULL, NULL, NULL, 'C_B_alum_200096.pdf', 64, '2020-06-12 05:49:37', '2020-06-12 05:49:37'),
(151, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-06-12 21:25:23', NULL, NULL, NULL, NULL, 'REG_alum_200045.pdf', 37, '2020-06-12 21:25:23', '2020-06-12 21:25:23'),
(152, 'FICHA PAGO DE REGISTRO', 'FICHA PAGO DE REGISTRO SUBIDO EN EL PROCESO DE REGISTRO ', 'S', NULL, NULL, '2020-06-13 01:25:00', NULL, NULL, NULL, NULL, 'REG_alum_200074.pdf', 63, '2020-06-13 01:25:00', '2020-06-13 01:25:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombres` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_empleado` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `domicilio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_civil` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nss` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cedula_fiscal` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clave_ciudadana` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `departamento` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(54) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contrato` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sueldo` double(8,2) DEFAULT NULL,
  `nivel_estudios` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especialidad` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulado` tinyint(1) DEFAULT NULL,
  `institucion_estudios` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cedula_profecional` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docto_cedula_profecional` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notas_descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `status_actual` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `depto_anterior` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo_anterior` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa_anterior` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maestria` tinyint(1) DEFAULT NULL,
  `nombre_maestria` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion_maestria` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docto_titul_maestria` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docto_cedula_maestria` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctorado` tinyint(1) DEFAULT NULL,
  `nombre_doctorado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion_doctorado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docto_titul_doctorado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docto_cedula_doctorado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_doctorado` tinyint(1) DEFAULT NULL,
  `nombre_post_doctorado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion_post_doctorado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docto_titul_post_doctorado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docto_cedula_post_doctorado` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio_nacimiento` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio_actual` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad_actual` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_nacimiento_id` bigint(20) UNSIGNED NOT NULL,
  `estado_id_actual` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombres`, `paterno`, `materno`, `num_empleado`, `foto`, `genero`, `fecha_nacimiento`, `domicilio`, `estado_civil`, `nss`, `cedula_fiscal`, `clave_ciudadana`, `telefono`, `celular`, `email`, `fecha_ingreso`, `fecha_baja`, `departamento`, `cargo`, `contrato`, `sueldo`, `nivel_estudios`, `especialidad`, `titulado`, `institucion_estudios`, `cedula_profecional`, `docto_cedula_profecional`, `notas_descripcion`, `tipo`, `status_actual`, `depto_anterior`, `cargo_anterior`, `empresa_anterior`, `maestria`, `nombre_maestria`, `institucion_maestria`, `docto_titul_maestria`, `docto_cedula_maestria`, `doctorado`, `nombre_doctorado`, `institucion_doctorado`, `docto_titul_doctorado`, `docto_cedula_doctorado`, `post_doctorado`, `nombre_post_doctorado`, `institucion_post_doctorado`, `docto_titul_post_doctorado`, `docto_cedula_post_doctorado`, `municipio_nacimiento`, `municipio_actual`, `ciudad_actual`, `estado_nacimiento_id`, `estado_id_actual`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Gaspar', 'Castillo', 'Ocampo', '20150101', 'IMG_emple_1584745372.jpg', 'M', '1998-06-27', 'Calle 30', 'S', 'S/N', 'S/N', 'S/N', NULL, NULL, 'registro.utponiente@gmail.com', '2020-01-04', NULL, 'DEPARTAMENTO DE CONTROL ESCOLAR', 'JEFE DE DEPARTAMENTO', 'B', NULL, 'Licenciatura', NULL, 1, 'Universidad Autónoma de Yucatán', NULL, NULL, NULL, 2, 'A', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'Maxcanu', 'Maxcanu', 'Maxcanu', 31, 31, 1, '2020-03-20 18:29:29', '2020-05-08 01:44:41'),
(5, 'ENRIQUE DE JESÚS', 'PEREZ', 'CONDE', NULL, 'IMG_emple_1585166868.png', 'M', '1956-04-27', 'Calle 15-A xNo.115 x 24 Fracc. Villas Palma Real, Chuburná', 'S', NULL, NULL, 'PECE560427HDFRNN09', NULL, NULL, 'e.perezconde@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Álvaro Obregón', 'Mérida', NULL, 9, 31, NULL, '2020-03-25 20:07:48', '2020-03-25 20:07:48'),
(6, 'GASPAR VICENTE', 'CASTILLO', 'OCAMPO', NULL, 'IMG_emple_1585166972.jpg', 'M', '1974-09-14', 'CALLE 22 No.374 X 39 Y 41 COL. PEDREGALES DE TANLUM', 'S', NULL, NULL, 'CAOG740914HDFSCS02', '9991627044', '9991627044', 'gaspar.castillo.ocampo@gmail.com', NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Iztacalco', 'Mérida', NULL, 9, 31, 4, '2020-03-25 20:09:32', '2020-05-27 17:30:07'),
(7, 'RICARDO', 'URIBIA', 'YAM', '20150101', 'IMG_emple_1588901966.png', 'M', '1999-07-01', 'Calle 29 Sin número Colonia Tres Cruces', 'S', NULL, NULL, 'CAOG740914HDFSCS02', '9971123679', '9994876545', 'ricardomanueluribia@gmail.com', '2020-02-12', NULL, 'Dirección de Carrera', 'PROFESOR DE TIEMPO COMPLETO', 'A', 7500.00, 'LICENCIATURA', 'Inglès', 1, 'UNIVERSIDAD AUTÓNOMA DE YUCATÁN', '4341234132', NULL, NULL, 2, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tlalnepantla de Baz', 'Maxcanú', NULL, 15, 31, 3, '2020-05-08 01:39:26', '2020-05-19 23:32:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `servicio_social` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion_educa` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proveedor` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bolsa_trabajo` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rfc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_id` bigint(20) UNSIGNED NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_convenio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_enlace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enlace_coordinador` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enlace_coordinador_puesto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_convenio` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escolaridades`
--

CREATE TABLE `escolaridades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `escolaridades`
--

INSERT INTO `escolaridades` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'BACHILLERATO COMPLETO / EDUC. SUPERIOR INCOMPLETA', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(2, 'EDUC. TÉCNICA COMPLETA O NORMAL BÁSICA', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(3, 'EDUC. SUPERIOR O NORMAL SUP. COMP./ POSTGRADO INC', NULL, '2020-03-03 00:04:26', '2020-03-03 00:04:26'),
(4, 'ESTUDIOS DE POSTGRADO (MAESTRÍA O DOCTORADO) COMP.', NULL, '2020-03-03 00:04:27', '2020-03-03 00:04:27'),
(5, 'PRIMARIA TERMINADA / SECUNDARIA INCOMPLETA', NULL, '2020-03-03 00:04:27', '2020-03-03 00:04:27'),
(6, 'SIN DATO', NULL, '2020-03-03 00:04:27', '2020-03-03 00:04:27'),
(7, 'SIN ESCOLARIDAD / ALGUNOS AÑOS DE PRIMARIA', NULL, '2020-03-03 00:04:27', '2020-03-03 00:04:27'),
(8, 'SECUNDARIA O COMERCIAL TERMINADA / BACH. INCOMPLETO', NULL, '2020-03-03 00:04:27', '2020-03-03 00:04:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_ent` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cve_ent` int(11) NOT NULL,
  `nom_abr` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cve_curp` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `nom_ent`, `cve_ent`, `nom_abr`, `cve_curp`, `created_at`, `updated_at`) VALUES
(1, 'Aguascalientes', 1, 'Ags.', '1', NULL, NULL),
(2, 'Baja California', 2, 'BC', '1', NULL, NULL),
(3, 'Baja California Sur', 3, 'BCS', '1', NULL, NULL),
(4, 'Campeche', 4, 'Camp.', '1', NULL, NULL),
(5, 'Coahuila', 5, 'Coah.', '1', NULL, NULL),
(6, 'Colima', 6, 'Col.', '1', NULL, NULL),
(7, 'Chiapas', 7, 'Chis.', '1', NULL, NULL),
(8, 'Chihuahua', 8, 'Chih.', '1', NULL, NULL),
(9, 'Distrito Federal', 9, 'DF', '1', NULL, NULL),
(10, 'Durango', 10, 'Dgo.', '1', NULL, NULL),
(11, 'Guanajuato', 11, 'Gto.', '1', NULL, NULL),
(12, 'Guerrero', 12, 'Gro.', '1', NULL, NULL),
(13, 'Hidalgo', 13, 'Hidal.', '1', NULL, NULL),
(14, 'Jalisco', 14, 'Jal.', '1', NULL, NULL),
(15, 'México', 15, 'Mex.', '1', NULL, NULL),
(16, 'Michoacán', 16, 'Mich.', '1', NULL, NULL),
(17, 'Morelos', 17, 'Mor.', '1', NULL, NULL),
(18, 'Nayarit', 18, 'Nay.', '1', NULL, NULL),
(19, 'Nuevo León', 19, 'NL', '1', NULL, NULL),
(20, 'Oaxaca', 20, 'Oax.', '1', NULL, NULL),
(21, 'Puebla', 21, 'Pue.', '1', NULL, NULL),
(22, 'Querétaro', 22, 'Qro.', '1', NULL, NULL),
(23, 'Quintana Roo', 23, 'Q. Roo', '1', NULL, NULL),
(24, 'San Luis Potosí', 24, 'SLP', '1', NULL, NULL),
(25, 'Sinaloa', 25, 'Sin.', '1', NULL, NULL),
(26, 'Sonora', 26, 'Son.', '1', NULL, NULL),
(27, 'Tabasco', 27, 'Tab.', '1', NULL, NULL),
(28, 'Tamaulipas', 28, 'Tamps.', '1', NULL, NULL),
(29, 'Tlaxcala', 29, 'Tlax.', '1', NULL, NULL),
(30, 'Veracruz', 30, 'Ver.', '1', NULL, NULL),
(31, 'Yucatán', 31, 'Yuc.', '1', NULL, NULL),
(32, 'Zacatecas', 32, 'Zac.', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciclo_id` bigint(20) UNSIGNED NOT NULL,
  `tipoevento_id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categoria` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `hora_inicio` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hora_termino` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cupo_minimo` decimal(10,0) DEFAULT NULL,
  `cupo_maximo` decimal(10,0) DEFAULT NULL,
  `sede` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titular` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extracurriculares`
--

CREATE TABLE `extracurriculares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciclo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `evento_id` bigint(20) UNSIGNED NOT NULL,
  `alumno_grupo` bigint(20) UNSIGNED DEFAULT NULL,
  `descripcion` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e_docente_alumno`
--

CREATE TABLE `e_docente_alumno` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciclo_id` bigint(20) UNSIGNED NOT NULL,
  `e_pregunta_id` bigint(20) UNSIGNED NOT NULL,
  `e_respuesta_id` bigint(20) UNSIGNED NOT NULL,
  `e_plan_id` bigint(20) UNSIGNED NOT NULL,
  `profesor_grupo_id` bigint(20) UNSIGNED NOT NULL,
  `gruposalumno_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `resultado` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e_planes`
--

CREATE TABLE `e_planes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e_preguntas`
--

CREATE TABLE `e_preguntas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_planed_id` bigint(20) UNSIGNED NOT NULL,
  `e_rubros_id` bigint(20) UNSIGNED NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pregunta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e_respuestas`
--

CREATE TABLE `e_respuestas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `respuesta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `e_rubros`
--

CREATE TABLE `e_rubros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folios_alumno`
--

CREATE TABLE `folios_alumno` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `folios_alumno`
--

INSERT INTO `folios_alumno` (`id`, `numero`, `folio`, `created_at`, `updated_at`) VALUES
(40, '0001', '200001', '2020-04-05 00:02:17', '2020-04-05 00:02:17'),
(42, '0002', '200002', '2020-04-05 01:32:35', '2020-04-05 01:32:35'),
(43, '0003', '200003', '2020-04-05 01:34:54', '2020-04-05 01:34:54'),
(44, '0004', '200004', '2020-04-05 02:40:11', '2020-04-05 02:40:11'),
(45, '0005', '200005', '2020-04-06 15:59:24', '2020-04-06 15:59:24'),
(46, '0006', '200006', '2020-04-06 16:03:02', '2020-04-06 16:03:02'),
(47, '0007', '200007', '2020-04-07 02:32:40', '2020-04-07 02:32:40'),
(48, '0008', '200008', '2020-04-07 03:07:00', '2020-04-07 03:07:00'),
(49, '0009', '200020', '2020-04-07 04:51:04', '2020-04-07 04:51:04'),
(53, '0010', '200010', '2020-04-08 03:12:22', '2020-04-08 03:12:22'),
(57, '0011', '200011', '2020-04-08 07:31:41', '2020-04-08 07:31:41'),
(58, '0012', '200012', '2020-04-08 08:26:41', '2020-04-08 08:26:41'),
(59, '0013', '200013', '2020-04-22 03:11:04', '2020-04-22 03:11:04'),
(60, '0038', '200038', '2020-04-22 03:18:08', '2020-04-22 03:18:08'),
(61, '0039', '200039', '2020-04-24 18:33:50', '2020-04-24 18:33:50'),
(62, '0040', '200040', '2020-04-25 20:55:49', '2020-04-25 20:55:49'),
(63, '0041', '200041', '2020-04-28 21:10:31', '2020-04-28 21:10:31'),
(64, '0042', '200042', '2020-04-28 21:14:50', '2020-04-28 21:14:50'),
(65, '0043', '200043', '2020-04-29 22:35:34', '2020-04-29 22:35:34'),
(66, '0044', '200044', '2020-04-30 01:30:32', '2020-04-30 01:30:32'),
(67, '0045', '200045', '2020-04-30 22:06:53', '2020-04-30 22:06:53'),
(68, '0046', '200046', '2020-05-04 17:44:42', '2020-05-04 17:44:42'),
(69, '0047', '200047', '2020-05-08 17:59:18', '2020-05-08 17:59:18'),
(70, '0048', '200048', '2020-05-10 22:01:20', '2020-05-10 22:01:20'),
(71, '0049', '200049', '2020-05-12 00:22:04', '2020-05-12 00:22:04'),
(72, '0050', '200050', '2020-05-15 16:54:32', '2020-05-15 16:54:32'),
(73, '0051', '200051', '2020-05-24 19:50:15', '2020-05-24 19:50:15'),
(74, '0052', '200052', '2020-05-24 23:23:58', '2020-05-24 23:23:58'),
(75, '0053', '200053', '2020-05-26 04:30:57', '2020-05-26 04:30:57'),
(76, '0054', '200054', '2020-05-26 18:13:43', '2020-05-26 18:13:43'),
(77, '0055', '200055', '2020-05-27 19:42:40', '2020-05-27 19:42:40'),
(78, '0056', '200056', '2020-05-29 20:16:59', '2020-05-29 20:16:59'),
(79, '0057', '200057', '2020-05-29 20:27:56', '2020-05-29 20:27:56'),
(80, '0058', '200058', '2020-05-31 18:05:36', '2020-05-31 18:05:36'),
(81, '0059', '200059', '2020-06-01 19:16:21', '2020-06-01 19:16:21'),
(82, '0060', '200060', '2020-06-02 07:20:21', '2020-06-02 07:20:21'),
(83, '0061', '200061', '2020-06-03 19:55:49', '2020-06-03 19:55:49'),
(84, '0062', '200062', '2020-06-05 23:20:52', '2020-06-05 23:20:52'),
(85, '0063', '200063', '2020-06-06 03:21:14', '2020-06-06 03:21:14'),
(86, '0064', '200064', '2020-06-06 22:01:36', '2020-06-06 22:01:36'),
(87, '0065', '200065', '2020-06-06 22:41:51', '2020-06-06 22:41:51'),
(88, '0066', '200066', '2020-06-08 21:52:05', '2020-06-08 21:52:05'),
(89, '0067', '200067', '2020-06-09 02:45:51', '2020-06-09 02:45:51'),
(90, '0068', '200068', '2020-06-09 02:49:39', '2020-06-09 02:49:39'),
(91, '0069', '200069', '2020-06-09 02:55:33', '2020-06-09 02:55:33'),
(92, '0070', '200070', '2020-06-09 03:01:36', '2020-06-09 03:01:36'),
(93, '0071', '200071', '2020-06-09 16:59:33', '2020-06-09 16:59:33'),
(94, '0072', '200072', '2020-06-09 19:43:25', '2020-06-09 19:43:25'),
(95, '0073', '200073', '2020-06-09 23:19:45', '2020-06-09 23:19:45'),
(96, '0074', '200074', '2020-06-10 17:50:59', '2020-06-10 17:50:59'),
(97, '0075', '200075', '2020-06-12 01:06:33', '2020-06-12 01:06:33'),
(98, '0076', '200076', '2020-06-12 01:06:33', '2020-06-12 01:06:33'),
(99, '0077', '200077', '2020-06-12 01:06:33', '2020-06-12 01:06:33'),
(100, '0078', '200078', '2020-06-12 01:06:34', '2020-06-12 01:06:34'),
(101, '0079', '200079', '2020-06-12 01:07:48', '2020-06-12 01:07:48'),
(102, '0080', '200080', '2020-06-12 01:08:31', '2020-06-12 01:08:31'),
(103, '0081', '200081', '2020-06-12 01:10:58', '2020-06-12 01:10:58'),
(104, '0082', '200082', '2020-06-12 01:11:32', '2020-06-12 01:11:32'),
(105, '0083', '200083', '2020-06-12 01:21:12', '2020-06-12 01:21:12'),
(106, '0084', '200084', '2020-06-12 01:21:40', '2020-06-12 01:21:40'),
(107, '0085', '200085', '2020-06-12 01:50:54', '2020-06-12 01:50:54'),
(108, '0086', '200086', '2020-06-12 01:57:58', '2020-06-12 01:57:58'),
(109, '0087', '200087', '2020-06-12 02:04:44', '2020-06-12 02:04:44'),
(110, '0088', '200088', '2020-06-12 02:05:39', '2020-06-12 02:05:39'),
(111, '0089', '200089', '2020-06-12 02:06:24', '2020-06-12 02:06:24'),
(112, '0090', '200090', '2020-06-12 02:06:37', '2020-06-12 02:06:37'),
(113, '0091', '200091', '2020-06-12 02:12:36', '2020-06-12 02:12:36'),
(114, '0092', '200092', '2020-06-12 02:12:53', '2020-06-12 02:12:53'),
(115, '0093', '200093', '2020-06-12 02:13:11', '2020-06-12 02:13:11'),
(116, '0094', '200094', '2020-06-12 02:24:15', '2020-06-12 02:24:15'),
(117, '0095', '200095', '2020-06-12 02:25:07', '2020-06-12 02:25:07'),
(118, '0096', '200096', '2020-06-12 05:41:41', '2020-06-12 05:41:41'),
(119, '0097', '200097', '2020-06-12 16:47:08', '2020-06-12 16:47:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cupo_maximo` int(11) DEFAULT NULL,
  `turno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ciclo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cuatrimestre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diferenciador` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `codigo`, `tipo`, `cupo_maximo`, `turno`, `carrera_id`, `ciclo_id`, `cuatrimestre`, `diferenciador`, `profesor_id`, `created_at`, `updated_at`) VALUES
(2, 'MAYO_ADM', 'TR', 60, 'M', 1, 1, '0', 'MAYO', 3, '2020-03-25 20:11:05', '2020-03-25 20:11:05'),
(3, 'MAYO_GAS', 'TR', 60, 'M', 2, 1, '0', 'MAYO', 3, '2020-03-25 20:12:29', '2020-03-25 20:12:29'),
(4, 'MAYO_PAL', 'TR', 40, 'M', 3, 1, '0', 'MAYO', 3, '2020-03-25 20:23:01', '2020-03-25 20:23:01'),
(5, 'MAYO_TI', 'TR', 40, 'M', 4, 1, '0', 'MAYO', 3, '2020-03-25 20:23:29', '2020-03-25 20:23:29'),
(6, 'MAYO_TUR', 'TR', 40, 'M', 5, 1, '0', 'MAYO', 3, '2020-03-25 20:24:00', '2020-03-25 20:24:00'),
(7, 'EGRE_TI 2020', 'TR', 40, 'M', 4, 1, '00', '2020', 5, '2020-05-21 23:34:35', '2020-05-21 23:34:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_01_08_133858_folio_alumnos', 1),
(4, '2020_01_09_162700_estado', 1),
(5, '2020_01_09_172056_empleados', 1),
(6, '2020_01_09_190850_profesores', 1),
(7, '2020_01_09_191751_administrativos', 1),
(8, '2020_01_09_192239_empresas', 1),
(9, '2020_01_09_194024_cfgstatus', 1),
(10, '2020_01_09_200032_cat_actividades', 1),
(11, '2020_01_09_200033_cat_escolaridad', 1),
(12, '2020_01_09_200034_ciclo', 1),
(13, '2020_01_09_200035_niveles', 1),
(14, '2020_01_09_200036_carreras', 1),
(15, '2020_01_09_200037_alumnos', 1),
(16, '2020_01_09_204758_planestudio', 1),
(17, '2020_01_09_204759_asignatura', 1),
(18, '2020_01_10_153304_grupo', 1),
(19, '2020_01_10_163024_cuentas', 1),
(20, '2020_01_10_163151_caja', 1),
(21, '2020_01_10_171353_momento', 1),
(22, '2020_01_10_171411_criterio', 1),
(23, '2020_01_10_172433_profesor_grupo', 1),
(24, '2020_01_10_173053_conceptopago', 1),
(25, '2020_01_10_173510_planespago', 1),
(26, '2020_01_10_175457_tipoevento', 1),
(27, '2020_01_10_175542_evento', 1),
(28, '2020_01_10_180033_alumnocxc', 1),
(29, '2020_01_10_181703_gruposalumno', 1),
(30, '2020_01_10_194536_extracurriculares', 2),
(31, '2020_01_10_195014_documentos', 2),
(33, '2020_01_10_200953_momento_criterio', 2),
(34, '2020_01_12_031636_alumnos_villas', 3),
(35, '2020_01_12_163650_modalidades', 3),
(36, '2020_01_13_110732_producto', 3),
(37, '2020_01_14_154449_alumnos_empresa', 3),
(38, '2020_01_14_155613_alumnospagosdet', 3),
(39, '2020_01_14_160815_asighorasprofesor', 3),
(40, '2020_01_14_162858_alumno_kardex', 3),
(41, '2020_01_14_181114_e_rubros', 3),
(42, '2020_01_14_181215_e_planes', 3),
(43, '2020_01_14_181229_e_preguntas', 3),
(44, '2020_01_14_183152_e_respuestas', 3),
(45, '2020_01_10_195438_villas', 4),
(46, '2020_01_14_183751_e_docente_alumno', 5),
(47, '2020_02_04_095720__token_fichas', 5),
(48, '2019_08_19_000000_create_failed_jobs_table', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidades`
--

CREATE TABLE `modalidades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_docto_recept` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveles_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `momentos`
--

CREATE TABLE `momentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `momento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `momento_criterio`
--

CREATE TABLE `momento_criterio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `momento_id` bigint(20) UNSIGNED NOT NULL,
  `criterio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveles`
--

CREATE TABLE `niveles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identificador` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nivel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abr_nivel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `niveles`
--

INSERT INTO `niveles` (`id`, `identificador`, `nivel`, `abr_nivel`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TSU', 'Técnico Superior Universitario', 'TSU', NULL, '2020-03-25 00:52:47', '2020-03-25 00:52:47'),
(2, 'LIC', 'Licenciatura', 'Lic.', NULL, '2020-03-25 00:57:42', '2020-03-25 00:57:42'),
(3, 'ING', 'Ingeniería', 'Ing.', NULL, '2020-03-25 00:58:12', '2020-03-25 00:58:12'),
(4, 'IT', 'Ingeniería Técnica', 'IT', NULL, '2020-03-25 00:58:45', '2020-03-25 00:58:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('controlescolar.utponiente@gmail.com', '$2y$10$GPZlNRlOnz9M1EF6WhbgO.BHQ7d1eqPvtfj8qfD9iWhI2Ro8momvy', '2020-05-19 23:27:53'),
('ricardomanueluribia@gmail.com', '$2y$10$Qk7rjdJOk03DE5v19xPrp.LQ0LtqJP.lN6KRELtPAGH91f75EIY6S', '2020-05-27 15:17:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planespago`
--

CREATE TABLE `planespago` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aniocorrespondiente` year(4) DEFAULT NULL,
  `ciclo_id` bigint(20) UNSIGNED NOT NULL,
  `conceptopago_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mes` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `planespago`
--

INSERT INTO `planespago` (`id`, `aniocorrespondiente`, `ciclo_id`, `conceptopago_id`, `mes`, `fechaInicio`, `fechaFin`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 2020, 1, 3, '06', '2020-02-17', '2020-06-16', NULL, '2020-04-05 02:43:40', '2020-04-05 02:46:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planestudio`
--

CREATE TABLE `planestudio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nivel_id` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oficio_auto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calif_min` int(11) DEFAULT NULL,
  `calif_max` int(11) DEFAULT NULL,
  `min_aprobatoria` int(11) DEFAULT NULL,
  `calc_promedio` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `precio` double(8,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `codigo`, `descripcion`, `tipo`, `tipo_id`, `precio`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'PRE_EXA', 'PRE REGISTRO EXANI II', 'CN', 3, 300.00, NULL, '2020-04-05 02:43:40', '2020-05-08 01:50:02'),
(4, 'PRE_EXA', 'PRE REGISTRO EXANI II', 'CN', 3, 300.00, NULL, '2020-04-05 02:44:55', '2020-04-05 02:46:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clave` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empleado_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `clave`, `empleado_id`, `created_at`, `updated_at`) VALUES
(3, 'P0100', 6, '2020-03-25 20:10:17', '2020-03-25 20:10:17'),
(4, 'P0109', 7, '2020-05-08 01:43:09', '2020-05-08 01:43:09'),
(5, 'P0109', 7, '2020-05-08 01:43:41', '2020-05-08 01:43:41'),
(6, 'P0109', 7, '2020-05-08 01:44:05', '2020-05-08 01:44:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_grupo`
--

CREATE TABLE `profesor_grupo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciclo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grupo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asignatura_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `p1` int(11) DEFAULT NULL,
  `p2` int(11) DEFAULT NULL,
  `p3` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoevento`
--

CREATE TABLE `tipoevento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gaspar', 'adm.utponiente@gmail.com', NULL, '$2y$10$wRsymCnorsw1Ox3s0Km50uKoYqwJwWaDYMawWBEEXcRxFsx1PP/Ti', 1, NULL, '2020-03-20 18:27:32', '2020-03-20 18:27:32'),
(3, '  ', 'ricardomanueluribia@gmail.com', NULL, 'utponiente', 1, NULL, '2020-05-19 23:32:57', '2020-05-19 23:32:57'),
(4, '  ', 'gaspar.castillo.ocampo@gmail.com', NULL, '$2y$10$d3an9xOzT0EYLSHmtL8/Zeoyl9oQ2yt3Ndaz7ofOHHBydrDv21D/O', 2, NULL, '2020-05-27 17:30:07', '2020-05-27 17:30:07'),
(5, 'José Emiliano Cocom Xool', 'joseemilianococom@gmail.com', NULL, '$2y$10$1Ura6T.RQDZqD.5Xstr4vekN4E2fxqiCgB6.wqHWicIqZuIQ1QhqS', NULL, NULL, '2020-06-15 22:57:17', '2020-06-15 22:57:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `villas`
--

CREATE TABLE `villas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ciclo_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cupo_maximo` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsable_villa` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_token_fichas`
--

CREATE TABLE `_token_fichas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `curp_alumno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_expira` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `_token_fichas`
--

INSERT INTO `_token_fichas` (`id`, `curp_alumno`, `_token`, `fecha_expira`, `created_at`, `updated_at`) VALUES
(1, 'CAOG740914HDFSCS02', '$2y$10$sZRgcTsGrgzQmgTcfDgEJO3Febp3Fxy3fS2VQV1zBz6AbNKBMzehe', '2020-06-15', '2020-04-04 07:10:54', '2020-06-13 20:23:15'),
(2, 'KUML980627HYNSXX05', '$2y$10$NVwAALEXs0j6qTFOAvOnbu5KoJKYlHDeNPcn05TcxngJUASuUa82K', '2020-04-06', '2020-04-04 23:14:29', '2020-04-04 23:14:29'),
(3, 'MAUE951017HYNYCD01', '$2y$10$Qx4YQWMSiWGByQl.1L5bTe7l7Mjualn77ydKx1xowVR9O9b774UJG', '2020-04-08', '2020-04-06 16:10:21', '2020-04-06 16:31:01'),
(4, 'COXE990706HYNCLM02', '$2y$10$Ce3YfIUKLXNCWI6l1f9ekF7iMVE7RHM4oev9sWDtNAqRo.tyHS', '2020-04-08', '2020-04-06 16:25:00', '2020-04-06 16:25:00'),
(5, 'BITD991120MYNRCN09', '$2y$10$NLnpvWKRk2Orpb5QFaxyTu6uRWsWxaCAxZlUWSoRLxC..w7th1yvu', '2020-04-09', '2020-04-07 07:44:48', '2020-04-07 07:44:48'),
(6, 'CAKL010405MYNNXSA0', '$2y$10$DDJjUlZtBX2v6LTtHwHVe.t3OfJ1kBsv9pEt1MZokBZfmLkq', '2020-04-10', '2020-04-08 06:21:01', '2020-04-08 06:23:43'),
(7, 'MEMJ990819HYNXLS07', '$2y$10$QpXec8KP77NDKebXLOw9.elHEVoVwsjnTbmYHzps3UgjG8n1Bo41q', '2020-04-10', '2020-04-08 08:28:23', '2020-04-08 08:34:34'),
(8, 'CAHR011001HYNMSCA7', '$2y$10$45IGiGphkU6bAUqi.l2VuTGLMiY7wdmCJZZEfZKcYlhs7Yw7W1a', '2020-04-23', '2020-04-22 03:28:20', '2020-04-22 03:28:20'),
(9, 'TUKA011017HYNZBBA9', '$2y$10$xSOZpw38OyDkJApwql0kY.DgjHMai4v3fDGUqYkyYJ0YBxUSkjNp6', '2020-05-20', '2020-04-25 21:25:31', '2020-05-19 00:35:01'),
(10, 'GACM010323MYNRHRA6', '$2y$10$P8DzqLXgC.iANbthN6NDp.PMtf1vSBqMCaKVXi7kGqVZWiHhZVdRq', '2020-05-21', '2020-04-29 22:48:47', '2020-05-19 19:12:27'),
(11, 'CAMK020331MYNMSRA5', '$2y$10$7CriDkMRyMmL4OBbSiIu0eZMA.CYvdbm.XQcPvMVoi2hitMmPNh.', '2020-06-14', '2020-04-30 22:55:16', '2020-06-12 21:07:51'),
(12, 'CANY920118MYNNGM02', '$2y$10$.e.Ayb3ic8ZfZc5pLspyW.xnDGGWS7vHx5NWig.nruyFVh8mUU5na', '2020-06-03', '2020-05-02 17:27:01', '2020-06-01 18:19:09'),
(13, 'CAVG011010HYNNNLA8', '$2y$10$xLF1j6Cgp4VI7bfxioF2OR2ACRKBtSjq6HS64S7WcLfHae9qLEHy', '2020-05-05', '2020-05-03 16:00:34', '2020-05-03 16:00:34'),
(14, 'LOKL010815HYNPHSA2', '$2y$10$5mGJoV3BcmMfFWoU70aWFOIr5EC8QezarMGSvt82jwytXPbQ7yiu.', '2020-05-21', '2020-05-08 18:31:49', '2020-05-19 05:45:03'),
(15, 'MACS021102MYNYHSA1', '$2y$10$2hrLM4ILl9h4eaGtYTKpTe.2xJ6.Z8evIy3.Vg20M5Ob7D80I5l2u', '2020-05-13', '2020-05-12 01:55:35', '2020-05-12 01:59:05'),
(16, 'HOCD020918HYNYHGA5', '$2y$10$ipvMpZ6HGdRISesVJiCGwudLRbGcdN4XdSTTV3.zkzZxGuhfF3eHi', '2020-05-18', '2020-05-16 15:16:18', '2020-05-16 15:29:47'),
(17, 'KUYK010830HCCXNVA2', '$2y$10$VxEw22ftlv3tJbIjPCAtUeXN.yhqT55qFfLLcK1XXgBiq.0PeK39u', '2020-05-25', '2020-05-23 17:05:34', '2020-05-23 17:05:34'),
(18, 'BIFG021122MTCRLDA8', '$2y$10$VPkjeMQHbh3LfLZfpheIJeOHkmPmUvhWrTSc4nKdP3IMJ.BDXGNdG', '2020-05-29', '2020-05-24 20:20:20', '2020-05-27 19:52:58'),
(19, 'CXCA021110MYNHHNA4', '$2y$10$DzZ0C1aON4Bu64G4Yj0lhekGPAIkILE8xzymWOKmeLFdJlI5uRa3W', '2020-05-27', '2020-05-26 04:32:02', '2020-05-26 04:38:17'),
(20, 'CAHY010730MYNHRNA2', '$2y$10$AvlcmWVrnYbsFFdP54dquGnbS2QzFGAZ8qwQ9K0YX6iUo67a5vym', '2020-05-28', '2020-05-26 18:38:47', '2020-05-26 18:38:47'),
(21, 'YACH010618MYNHHGA2', '$2y$10$JZAgfg1jazaP5fa89Ici3uAbVp4pyqXxJrcHhVc32LSyNgq.33s5K', '2020-06-13', '2020-05-29 23:01:36', '2020-06-12 02:30:08'),
(22, 'KEGA981118HYNBNN06', '$2y$10$PeHkWygRSB6.VFBD7xPtEengg0BLMyIUrGFuXZehCYCyygdITlty', '2020-06-12', '2020-05-29 23:19:03', '2020-06-10 16:18:53'),
(23, 'COYD000419HYNLHVA1', '$2y$10$JKoHlZxD6et60.Eyqnx5PeG3OSP9xjctZxCyKQ9rlecqsA6j9Kp7G', '2020-06-13', '2020-06-03 20:13:37', '2020-06-11 06:10:07'),
(24, 'SACN980116HQRNLS07', '$2y$10$1e7HhezZ2HgnwTKdYsjiCekwqJCH2zxkIAxSg9zS8v9WaFIbiYW2K', '2020-06-08', '2020-06-06 22:57:43', '2020-06-06 22:57:43'),
(25, 'UIYL020923MYNCHSA5', '$2y$10$sBaIl4qm0nfc1XbqptgEv.kC4hnjTteLylpELS1L84d8rQtkfyYi', '2020-06-14', '2020-06-07 21:18:15', '2020-06-13 04:27:00'),
(26, 'MAUS021130HYNYCMA6', '$2y$10$0v5AM.00A0jhJylIdHT2W.wn8dgjSuyfAL8zQtNvNfdPesxZARor2', '2020-06-10', '2020-06-08 22:59:14', '2020-06-08 23:11:51'),
(27, 'VAMD000918MYNLYNA3', '$2y$10$GOPxb9M6ziuEvn34Oer.ROKVOGuDxu3h7Hzr76uElQ4Q7AAI4HuOy', '2020-06-10', '2020-06-09 03:26:06', '2020-06-09 03:42:00'),
(28, 'NOPA021028MYNHLNA8', '$2y$10$ar82Xspz9mKYCPxEgSDYuS.2Bopf48fVeoA.eHdDO6cWEJ0rm4ba', '2020-06-13', '2020-06-11 02:10:51', '2020-06-11 18:10:38'),
(29, 'CACD991113HYNNHG04', '$2y$10$oxIztmerGFCIXw1RvPO4AOAM70eNHwFq5IqzcftU7LfZJgO5UQW6', '2020-06-14', '2020-06-12 19:02:06', '2020-06-12 19:09:30'),
(30, 'CXCA020829HYNNNBA0', '$2y$10$x36H2YpGxMnJXThcxi06d.ommncwP1u89VF57qjNXMFDIbNnvCsGS', '2020-06-14', '2020-06-13 02:10:38', '2020-06-13 02:10:38'),
(31, 'KUUM020502HCCXCSA1', '$2y$10$ZyTl8V25niBQpMvBlPHLguGghGOARigE8ssoxK01AE8CHcPlN1wu', '2020-06-15', '2020-06-13 19:04:44', '2020-06-13 19:44:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades_trabajo`
--
ALTER TABLE `actividades_trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administrativos_creado_por_foreign` (`creado_por`),
  ADD KEY `administrativos_editado_por_foreign` (`editado_por`),
  ADD KEY `administrativos_empleado_id_foreign` (`empleado_id`);

--
-- Indices de la tabla `alumnocxc`
--
ALTER TABLE `alumnocxc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumnocxc_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `alumnocxc_alumno_id_foreign` (`alumno_id`);

--
-- Indices de la tabla `alumnopagosdet`
--
ALTER TABLE `alumnopagosdet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumnopagosdet_alumnocxc_id_foreign` (`alumnocxc_id`),
  ADD KEY `alumnopagosdet_producto_id_foreign` (`producto_id`),
  ADD KEY `alumnopagosdet_caja_id_foreign` (`caja_id`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alumnos_folio_alumno_reg_id_unique` (`folio_alumno_reg_id`),
  ADD UNIQUE KEY `alumnos_matricula_unique` (`matricula`),
  ADD UNIQUE KEY `alumnos_email_unique` (`email`),
  ADD UNIQUE KEY `alumnos_curp_unique` (`curp`),
  ADD UNIQUE KEY `alumnos_numero_imss_unique` (`numero_imss`),
  ADD UNIQUE KEY `alumnos__token_registro_unique` (`_token_registro`),
  ADD KEY `alumnos_estado_nac_id_foreign` (`estado_nac_id`),
  ADD KEY `alumnos_cfgstatus_id_foreign` (`cfgstatus_id`),
  ADD KEY `alumnos_estado_id_foreign` (`estado_id`),
  ADD KEY `alumnos_estado_bachillerato_id_foreign` (`estado_bachillerato_id`),
  ADD KEY `alumnos_escolaridad_padre_id_foreign` (`escolaridad_padre_id`),
  ADD KEY `alumnos_escolaridad_madre_id_foreign` (`escolaridad_madre_id`),
  ADD KEY `alumnos_actividad_padre_id_foreign` (`actividad_padre_id`),
  ADD KEY `alumnos_actividad_madre_id_foreign` (`actividad_madre_id`),
  ADD KEY `alumnos_actividad_trabajo_id_foreign` (`actividad_trabajo_id`),
  ADD KEY `alumnos_escolaridad_conyuge_id_foreign` (`escolaridad_conyuge_id`),
  ADD KEY `alumnos_actividad_conyuge_id_foreign` (`actividad_conyuge_id`),
  ADD KEY `alumnos_creado_por_id_foreign` (`creado_por_id`),
  ADD KEY `alumnos_actualizado_por_id_foreign` (`actualizado_por_id`);

--
-- Indices de la tabla `alumnos_villas`
--
ALTER TABLE `alumnos_villas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumnos_villas_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `alumnos_villas_alumno_grupo_id_foreign` (`alumno_grupo_id`);

--
-- Indices de la tabla `alumno_empresa`
--
ALTER TABLE `alumno_empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_empresa_alumno_id_foreign` (`alumno_id`),
  ADD KEY `alumno_empresa_empresa_id_foreign` (`empresa_id`),
  ADD KEY `alumno_empresa_modalidad_id_foreign` (`modalidad_id`);

--
-- Indices de la tabla `alumno_grupos`
--
ALTER TABLE `alumno_grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_grupos_alumno_id_foreign` (`alumno_id`),
  ADD KEY `alumno_grupos_grupo_id_foreign` (`grupo_id`);

--
-- Indices de la tabla `alumno_kardex`
--
ALTER TABLE `alumno_kardex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_kardex_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `alumno_kardex_nivel_id_foreign` (`nivel_id`),
  ADD KEY `alumno_kardex_alumno_id_foreign` (`alumno_id`),
  ADD KEY `alumno_kardex_profesor_grupo_id_foreign` (`profesor_grupo_id`),
  ADD KEY `alumno_kardex_momento_id_foreign` (`momento_id`),
  ADD KEY `alumno_kardex_criterio_id_foreign` (`criterio_id`);

--
-- Indices de la tabla `asighorasprofesor`
--
ALTER TABLE `asighorasprofesor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asighorasprofesor_profesor_id_foreign` (`profesor_id`),
  ADD KEY `asighorasprofesor_ciclo_id_foreign` (`ciclo_id`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asignaturas_planestudio_id_foreign` (`planestudio_id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cajas_empleado_id_foreign` (`empleado_id`),
  ADD KEY `cajas_cuenta_id_foreign` (`cuenta_id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carreras_nivel_id_foreign` (`nivel_id`);

--
-- Indices de la tabla `cfgstatus`
--
ALTER TABLE `cfgstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conceptopagos`
--
ALTER TABLE `conceptopagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conceptopagos_cuenta_id_foreign` (`cuenta_id`);

--
-- Indices de la tabla `criterios`
--
ALTER TABLE `criterios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentos_alumno_id_foreign` (`alumno_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleados_estado_nacimiento_id_foreign` (`estado_nacimiento_id`),
  ADD KEY `empleados_estado_id_actual_foreign` (`estado_id_actual`),
  ADD KEY `empleados_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresas_estado_id_foreign` (`estado_id`);

--
-- Indices de la tabla `escolaridades`
--
ALTER TABLE `escolaridades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evento_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `evento_tipoevento_id_foreign` (`tipoevento_id`);

--
-- Indices de la tabla `extracurriculares`
--
ALTER TABLE `extracurriculares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extracurriculares_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `extracurriculares_evento_id_foreign` (`evento_id`),
  ADD KEY `extracurriculares_alumno_grupo_foreign` (`alumno_grupo`);

--
-- Indices de la tabla `e_docente_alumno`
--
ALTER TABLE `e_docente_alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_docente_alumno_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `e_docente_alumno_e_pregunta_id_foreign` (`e_pregunta_id`),
  ADD KEY `e_docente_alumno_e_respuesta_id_foreign` (`e_respuesta_id`),
  ADD KEY `e_docente_alumno_e_plan_id_foreign` (`e_plan_id`),
  ADD KEY `e_docente_alumno_profesor_grupo_id_foreign` (`profesor_grupo_id`),
  ADD KEY `e_docente_alumno_gruposalumno_id_foreign` (`gruposalumno_id`);

--
-- Indices de la tabla `e_planes`
--
ALTER TABLE `e_planes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `e_preguntas`
--
ALTER TABLE `e_preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_preguntas_e_planed_id_foreign` (`e_planed_id`),
  ADD KEY `e_preguntas_e_rubros_id_foreign` (`e_rubros_id`);

--
-- Indices de la tabla `e_respuestas`
--
ALTER TABLE `e_respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `e_rubros`
--
ALTER TABLE `e_rubros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `folios_alumno`
--
ALTER TABLE `folios_alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupos_carrera_id_foreign` (`carrera_id`),
  ADD KEY `grupos_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `grupos_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modalidades`
--
ALTER TABLE `modalidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modalidades_niveles_id_foreign` (`niveles_id`);

--
-- Indices de la tabla `momentos`
--
ALTER TABLE `momentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `momento_criterio`
--
ALTER TABLE `momento_criterio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `momento_criterio_momento_id_foreign` (`momento_id`),
  ADD KEY `momento_criterio_criterio_id_foreign` (`criterio_id`);

--
-- Indices de la tabla `niveles`
--
ALTER TABLE `niveles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `planespago`
--
ALTER TABLE `planespago`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planespago_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `planespago_conceptopago_id_foreign` (`conceptopago_id`);

--
-- Indices de la tabla `planestudio`
--
ALTER TABLE `planestudio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planestudio_nivel_id_foreign` (`nivel_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesores_empleado_id_foreign` (`empleado_id`);

--
-- Indices de la tabla `profesor_grupo`
--
ALTER TABLE `profesor_grupo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor_grupo_ciclo_id_foreign` (`ciclo_id`),
  ADD KEY `profesor_grupo_grupo_id_foreign` (`grupo_id`),
  ADD KEY `profesor_grupo_plan_id_foreign` (`plan_id`),
  ADD KEY `profesor_grupo_asignatura_id_foreign` (`asignatura_id`),
  ADD KEY `profesor_grupo_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `tipoevento`
--
ALTER TABLE `tipoevento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `villas`
--
ALTER TABLE `villas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villas_ciclo_id_foreign` (`ciclo_id`);

--
-- Indices de la tabla `_token_fichas`
--
ALTER TABLE `_token_fichas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `_token_fichas_curp_alumno_unique` (`curp_alumno`),
  ADD UNIQUE KEY `_token_fichas__token_unique` (`_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades_trabajo`
--
ALTER TABLE `actividades_trabajo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `alumnocxc`
--
ALTER TABLE `alumnocxc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `alumnopagosdet`
--
ALTER TABLE `alumnopagosdet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `alumnos_villas`
--
ALTER TABLE `alumnos_villas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumno_empresa`
--
ALTER TABLE `alumno_empresa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumno_grupos`
--
ALTER TABLE `alumno_grupos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `alumno_kardex`
--
ALTER TABLE `alumno_kardex`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asighorasprofesor`
--
ALTER TABLE `asighorasprofesor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cfgstatus`
--
ALTER TABLE `cfgstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `conceptopagos`
--
ALTER TABLE `conceptopagos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `criterios`
--
ALTER TABLE `criterios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `escolaridades`
--
ALTER TABLE `escolaridades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `extracurriculares`
--
ALTER TABLE `extracurriculares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `e_docente_alumno`
--
ALTER TABLE `e_docente_alumno`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `e_planes`
--
ALTER TABLE `e_planes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `e_preguntas`
--
ALTER TABLE `e_preguntas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `e_respuestas`
--
ALTER TABLE `e_respuestas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `e_rubros`
--
ALTER TABLE `e_rubros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `folios_alumno`
--
ALTER TABLE `folios_alumno`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `modalidades`
--
ALTER TABLE `modalidades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `momentos`
--
ALTER TABLE `momentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `momento_criterio`
--
ALTER TABLE `momento_criterio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `niveles`
--
ALTER TABLE `niveles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `planespago`
--
ALTER TABLE `planespago`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `planestudio`
--
ALTER TABLE `planestudio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `profesor_grupo`
--
ALTER TABLE `profesor_grupo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoevento`
--
ALTER TABLE `tipoevento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `villas`
--
ALTER TABLE `villas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `_token_fichas`
--
ALTER TABLE `_token_fichas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD CONSTRAINT `administrativos_creado_por_foreign` FOREIGN KEY (`creado_por`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `administrativos_editado_por_foreign` FOREIGN KEY (`editado_por`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `administrativos_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`);

--
-- Filtros para la tabla `alumnocxc`
--
ALTER TABLE `alumnocxc`
  ADD CONSTRAINT `alumnocxc_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `alumnocxc_ciclo_id_foreign` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`);

--
-- Filtros para la tabla `alumnopagosdet`
--
ALTER TABLE `alumnopagosdet`
  ADD CONSTRAINT `alumnopagosdet_alumnocxc_id_foreign` FOREIGN KEY (`alumnocxc_id`) REFERENCES `alumnocxc` (`id`),
  ADD CONSTRAINT `alumnopagosdet_caja_id_foreign` FOREIGN KEY (`caja_id`) REFERENCES `cajas` (`id`),
  ADD CONSTRAINT `alumnopagosdet_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_actividad_conyuge_id_foreign` FOREIGN KEY (`actividad_conyuge_id`) REFERENCES `actividades_trabajo` (`id`),
  ADD CONSTRAINT `alumnos_actividad_madre_id_foreign` FOREIGN KEY (`actividad_madre_id`) REFERENCES `actividades_trabajo` (`id`),
  ADD CONSTRAINT `alumnos_actividad_padre_id_foreign` FOREIGN KEY (`actividad_padre_id`) REFERENCES `actividades_trabajo` (`id`),
  ADD CONSTRAINT `alumnos_actividad_trabajo_id_foreign` FOREIGN KEY (`actividad_trabajo_id`) REFERENCES `actividades_trabajo` (`id`),
  ADD CONSTRAINT `alumnos_actualizado_por_id_foreign` FOREIGN KEY (`actualizado_por_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `alumnos_cfgstatus_id_foreign` FOREIGN KEY (`cfgstatus_id`) REFERENCES `cfgstatus` (`id`),
  ADD CONSTRAINT `alumnos_creado_por_id_foreign` FOREIGN KEY (`creado_por_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `alumnos_escolaridad_conyuge_id_foreign` FOREIGN KEY (`escolaridad_conyuge_id`) REFERENCES `escolaridades` (`id`),
  ADD CONSTRAINT `alumnos_escolaridad_madre_id_foreign` FOREIGN KEY (`escolaridad_madre_id`) REFERENCES `escolaridades` (`id`),
  ADD CONSTRAINT `alumnos_escolaridad_padre_id_foreign` FOREIGN KEY (`escolaridad_padre_id`) REFERENCES `escolaridades` (`id`),
  ADD CONSTRAINT `alumnos_estado_bachillerato_id_foreign` FOREIGN KEY (`estado_bachillerato_id`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `alumnos_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `alumnos_estado_nac_id_foreign` FOREIGN KEY (`estado_nac_id`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `alumnos_folio_alumno_reg_id_foreign` FOREIGN KEY (`folio_alumno_reg_id`) REFERENCES `folios_alumno` (`id`);

--
-- Filtros para la tabla `alumnos_villas`
--
ALTER TABLE `alumnos_villas`
  ADD CONSTRAINT `alumnos_villas_alumno_grupo_id_foreign` FOREIGN KEY (`alumno_grupo_id`) REFERENCES `alumno_grupos` (`id`),
  ADD CONSTRAINT `alumnos_villas_ciclo_id_foreign` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`);

--
-- Filtros para la tabla `alumno_empresa`
--
ALTER TABLE `alumno_empresa`
  ADD CONSTRAINT `alumno_empresa_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `alumno_empresa_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `alumno_empresa_modalidad_id_foreign` FOREIGN KEY (`modalidad_id`) REFERENCES `modalidades` (`id`);

--
-- Filtros para la tabla `alumno_grupos`
--
ALTER TABLE `alumno_grupos`
  ADD CONSTRAINT `alumno_grupos_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `alumno_grupos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`);

--
-- Filtros para la tabla `alumno_kardex`
--
ALTER TABLE `alumno_kardex`
  ADD CONSTRAINT `alumno_kardex_alumno_id_foreign` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `alumno_kardex_ciclo_id_foreign` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `alumno_kardex_criterio_id_foreign` FOREIGN KEY (`criterio_id`) REFERENCES `criterios` (`id`),
  ADD CONSTRAINT `alumno_kardex_momento_id_foreign` FOREIGN KEY (`momento_id`) REFERENCES `momentos` (`id`),
  ADD CONSTRAINT `alumno_kardex_nivel_id_foreign` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id`),
  ADD CONSTRAINT `alumno_kardex_profesor_grupo_id_foreign` FOREIGN KEY (`profesor_grupo_id`) REFERENCES `profesor_grupo` (`id`);

--
-- Filtros para la tabla `asighorasprofesor`
--
ALTER TABLE `asighorasprofesor`
  ADD CONSTRAINT `asighorasprofesor_ciclo_id_foreign` FOREIGN KEY (`ciclo_id`) REFERENCES `ciclos` (`id`),
  ADD CONSTRAINT `asighorasprofesor_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesores` (`id`);

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `asignaturas_planestudio_id_foreign` FOREIGN KEY (`planestudio_id`) REFERENCES `planestudio` (`id`);

--
-- Filtros para la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD CONSTRAINT `cajas_cuenta_id_foreign` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`id`),
  ADD CONSTRAINT `cajas_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_nivel_id_foreign` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id`);

--
-- Filtros para la tabla `conceptopagos`
--
ALTER TABLE `conceptopagos`
  ADD CONSTRAINT `conceptopagos_cuenta_id_foreign` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
