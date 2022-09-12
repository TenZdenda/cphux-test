-- -------------------------------------------------------------
-- TablePlus 4.8.6(446)
--
-- https://tableplus.com/
--
-- Database: cphux
-- Generation Time: 2022-09-12 13:46:14.1790
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `employment_commitments`;
CREATE TABLE `employment_commitments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `employment_types`;
CREATE TABLE `employment_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE `salaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint unsigned NOT NULL,
  `employment_type_id` bigint unsigned NOT NULL,
  `employment_commitment_id` bigint unsigned NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_salary` int DEFAULT NULL,
  `years_of_experience` int NOT NULL,
  `education_institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `employment_commitments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Full-time (37 hours or more per week)', '2022-09-09 10:00:00', '2022-09-09 10:00:00'),
(2, 'Part time (Less than 37 hours a week)', '2022-09-09 10:00:00', '2022-09-09 10:00:00'),
(3, 'Volunteer', '2022-09-09 10:00:00', '2022-09-09 10:00:00'),
(4, 'Freelance/consultant', '2022-09-09 10:00:00', '2022-09-09 10:00:00'),
(5, 'Independent - business owner', '2022-09-09 10:00:00', '2022-09-09 10:00:00'),
(6, 'Internship - unpaid', '2022-09-09 10:00:00', '2022-09-09 10:00:00');

INSERT INTO `employment_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Corporate', '2022-09-09 10:00:00', '2022-09-09 10:00:00'),
(2, 'Agency/consultancy', '2022-09-09 10:00:00', '2022-09-09 10:00:00'),
(3, 'Scale-up', NULL, NULL),
(4, 'Startup', NULL, NULL),
(5, 'Government', NULL, NULL),
(6, 'Innovation unit', NULL, NULL),
(7, 'Own company', NULL, NULL),
(8, 'Variations of the above', NULL, NULL),
(9, 'University', NULL, NULL);

INSERT INTO `jobs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'UX Researcher', NULL, NULL),
(2, 'Service Designer', NULL, NULL),
(3, 'UX Designer', NULL, NULL),
(4, 'Product Designer', NULL, NULL),
(5, 'Manager', NULL, NULL),
(6, 'UX/UI Designer', NULL, NULL),
(7, 'Digital Designer', NULL, NULL),
(8, 'UI Designer', NULL, NULL),
(9, 'Visual Designer', NULL, NULL),
(10, 'Strategist', NULL, NULL),
(11, 'Educator', NULL, NULL);

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_09_073735_create_salaries_table', 1),
(6, '2022_09_09_073905_create_jobs_table', 1),
(7, '2022_09_09_074023_create_employment_types_table', 1),
(8, '2022_09_09_080601_create_employment_commitments_table', 1);

INSERT INTO `salaries` (`id`, `job_id`, `employment_type_id`, `employment_commitment_id`, `job_title`, `monthly_salary`, `years_of_experience`, `education_institution`, `education`, `postal_code`, `gender`, `permission`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '', 41500, 1, 'Medialogy at AAU and UX course from talent garden', 'Bachelor, Master, UX Course', '4', 'Female', 1, '2022-04-13 08:56:56', NULL),
(81, 1, 1, 1, '', 41500, 1, 'Medialogy at AAU and UX course from talent garden', 'Bachelor, Master, UX Course', '4', 'Female', 1, '2022-04-13 08:56:56', NULL),
(82, 2, 2, 1, '', 32000, 1, 'Service Systems design', 'Master', '1264', 'Male', 1, '2022-04-13 10:57:01', NULL),
(83, 2, 2, 1, '', 28000, 2, 'Aalborg University (Copenhagen Campus)', 'Master', '2400', 'Female', 1, '2022-04-13 11:08:33', NULL),
(84, 3, 3, 1, '', 54000, 9, 'ITU', 'Master', '2450', 'Female', 1, '2022-04-13 12:31:47', NULL),
(85, 2, 1, 1, '', 43500, 8, 'KEA, AAU CPH', 'Bachelor, Master', '2450', 'Female', 1, '2022-04-14 16:51:23', NULL),
(86, 3, 1, 2, '', 40600, 4, 'Aarhus University', 'Self-taught, Bachelor, Master', '8200', 'Male', 1, '2022-04-15 19:36:42', NULL),
(87, 2, 2, 1, '', 40000, 1, 'IY`TU', 'Bachelor, Master', '2000', 'Female', 1, '2022-04-19 12:25:15', NULL),
(88, 3, 3, 1, '', 41200, 6, 'IT University of Copenhagen', 'Master', '2200', 'Male', 1, '2022-04-19 12:56:11', NULL),
(89, 3, 2, 1, '', 37000, 3, 'KEA', 'Academy Profession (AP) Degree, UX Course', '1256', 'Female', 1, '2022-04-20 15:39:05', NULL),
(90, 4, 3, 1, '', 42000, 4, '-', 'Self-taught', '1614', 'Female', 1, '2022-04-20 18:36:37', NULL),
(91, 3, 2, 1, '', 35000, 2, 'Aarhus University', 'Master', '8000', 'Female', 1, '2022-04-20 22:01:26', NULL),
(92, 2, 1, 1, '', 41600, 3, 'Kolding designschool and the royal academy', 'Master', 'Copenhagen', 'Male', 1, '2022-04-21 22:06:03', NULL),
(93, 5, 1, 1, '', 39500, 3, 'DTU', 'Bachelor, Master, UX Course', '2750', 'Male', 1, '2022-04-21 22:42:33', NULL),
(94, 6, 3, 1, '', 43000, 2, 'DTU', 'Master', '2450', 'Female', 1, '2022-04-25 09:51:59', NULL),
(95, 5, 1, 1, '', 75000, 10, 'ITU', 'Master', '2100', 'Male', 1, '2022-05-03 15:02:35', NULL),
(96, 5, 1, 1, '', 55000, 8, 'ITU', 'Master', '2800', 'Female', 1, '2022-05-03 19:19:25', NULL),
(97, 6, 2, 1, 'Senior CX Designer', 49000, 12, 'KEA', 'Datamatiker and self tought through work', '1607', 'Male', 1, '2022-05-04 11:23:52', NULL),
(98, 4, 2, 1, 'design lead', 65000, 10, 'ITU', 'Self-taught, Bachelor', '1577', 'Male', 1, '2022-05-04 12:37:17', NULL),
(99, 7, 2, 1, 'Digital designer', 28000, 4, 'EAAA', 'Bachelor', '8000', 'Female', 1, '2022-05-05 07:10:51', NULL),
(100, 7, 4, 1, 'None', 66000, 14, 'DMJX: interactive design', 'Self-taught, Bachelor', 'Copenhagen', 'Male', 1, '2022-05-05 07:51:57', NULL),
(101, 5, 5, 1, 'UX team lead', 46300, 15, 'DRB (Reklame) skolen', 'Self-taught', '2100', 'Male', 1, '2022-05-06 11:19:41', NULL),
(102, 3, 1, 1, 'UX Designer', 30000, 2, 'Aalborg University', 'Master', '9000', 'Male', 1, '2022-05-06 11:45:57', NULL),
(103, 5, 3, 1, 'Head of', 55000, 8, 'ITU', 'Master, Advanced Design Sprint Facilitation', '1434', 'Female', 1, '2022-05-06 12:53:39', NULL),
(104, 1, 1, 1, 'Ux researcher', 41500, 2, 'AAU and Kea (talent garden innovation school)', 'Bachelor, UX Course', '2450', 'Female', 1, '2022-05-06 16:29:13', NULL),
(105, 3, 2, 1, 'UX Designer', 39000, 3, 'AAU', 'Bachelor, Master', '8000', 'Female', 1, '2022-05-06 18:43:45', NULL),
(106, 8, 3, 1, 'Senior UI Designer', 53000, 5, 'ITU', 'Master', '2300', 'Male', 1, '2022-05-08 18:58:10', NULL),
(107, 4, 3, 1, 'Product designer', 39000, 2, '-', 'Self-taught, Bachelor', '2300', 'Female', 1, '2022-05-08 20:22:51', NULL),
(108, 9, 1, 1, 'Visual Designer', 49000, 6, 'DMJX', 'Self-taught, UX Course, BA in Graphic Design', '1263', 'Female', 1, '2022-05-09 19:26:22', NULL),
(109, 3, 1, 1, 'UX + Digital design lead', 45100, 8, 'Bachelor: Aarhus University, MASTER: IT-University + 6 months at Berkeley University', 'Master', '2800', 'Female', 1, '2022-05-09 21:01:16', NULL),
(110, 10, 3, 1, 'Snr. UX Strategist', 50000, 7, 'KEA and ITU', 'Master', '2300', 'Female', 1, '2022-05-10 14:27:14', NULL),
(111, 6, 1, 1, 'UX Researcher and Designer', 47520, 1, 'ITU', 'Master', '2450', 'Female', 1, '2022-05-10 19:54:24', NULL),
(112, 1, 3, 1, 'Product Data Analyst', 44000, 3, 'Product School', 'Self-taught, Academy Profession (AP) Degree', '2100', 'Female', 1, '2022-05-11 22:03:38', NULL),
(113, 5, 2, 1, 'Design Manager', 40000, 3, 'ITU', 'UX Course', '2200', 'Female', 1, '2022-05-12 10:54:22', NULL),
(114, 10, 2, 1, 'Senior Product Designer', 54000, 4, 'DTU', 'Master', '1300', 'Male', 1, '2022-05-19 10:26:07', NULL),
(115, 4, 4, 1, 'Product Designer', 44000, 8, 'UX Design Institute, LMS London School of Design and Marketing (MA) in progress', 'Academy Profession (AP) Degree, Master, UX Course', '1434', 'Female', 1, '2022-05-19 11:25:23', NULL),
(116, 3, 1, 1, 'Senior UX Designer', 44688, 12, 'Danish school of media and journalism - Copenhagen', 'Bachelor', '2100', 'Female', 1, '2022-05-19 22:22:17', NULL),
(117, 3, 2, 1, 'Junior ux designer', 36000, 1, 'AAU', 'Master', '2400', 'Female', 1, '2022-05-21 13:08:39', NULL),
(118, 3, 3, 1, 'UX Architect', 42800, 4, 'AAU', 'Master', '2450', 'Male', 1, '2022-05-21 20:53:49', NULL),
(119, 3, 2, 1, 'Senior UX Consultant', 51000, 6, 'AAU and UXQB', 'Master, UX Course', '8000', 'Female', 1, '2022-05-22 09:31:45', NULL),
(120, 6, 3, 1, 'UI Designer', 45000, 3, 'Politecnico di Milano', 'Bachelor, Master', '1300', 'Male', 1, '2022-05-22 20:32:34', NULL),
(121, 3, 3, 1, 'Senior UX Designer', 47000, 3, 'ITU', 'Master', '1100', 'Female', 1, '2022-05-23 17:38:17', NULL),
(122, 6, 1, 1, 'Senior UX designer', 52000, 8, 'ITU', 'Bachelor, Master', '2200', 'Female', 1, '2022-05-23 19:42:47', NULL),
(123, 6, 3, 1, 'Junior ux designer', 33000, 0, 'Careerfoundry', 'UX Course', '2200', 'Female', 1, '2022-05-24 20:03:58', NULL),
(124, 6, 1, 1, 'Senior digital designer', 38000, 14, 'ITU', 'Self-taught, Academy Profession (AP) Degree, Bachelor', '1135', 'Female', 1, '2022-05-24 20:05:21', NULL),
(125, 7, 3, 1, 'Design Engineer', 48000, 2, 'IT University of Copenhagen', 'Master', '1661', 'Male', 1, '2022-05-25 13:13:42', NULL),
(126, 4, 3, 1, 'UX Designer', 38000, 3, 'ITU & DTU', 'Master', '2300', 'Male', 1, '2022-05-25 13:54:32', NULL),
(127, 3, 2, 1, 'Sr User Researcher', 47500, 4, 'KEA, Hyper Island', 'Master', '2300', 'Female', 1, '2022-05-26 21:06:12', NULL),
(128, 3, 1, 1, 'UX designer', 38000, 3, 'Erhvervsakademiet', 'Bachelor', '8800', 'Female', 1, '2022-05-27 09:01:27', NULL),
(129, 4, 1, 1, 'Product designer', 70000, 12, 'Information science and digital design', 'Master', '8000', 'Male', 1, '2022-05-27 10:10:05', NULL),
(130, 10, 1, 1, 'Design Strategist', 40750, 3, 'No UX. CBS innovation management', 'Self-taught, CBS Management of innovation and business development ', '2820', 'Male', 1, '2022-05-27 18:27:28', NULL),
(131, 5, 1, 1, 'UX Team Lead', 53700, 10, 'ITU', 'Bachelor, Master, Several bachelors', '2100', 'Female', 1, '2022-05-28 10:17:25', NULL),
(132, 4, 1, 1, 'Product designer (individual contributor, p3)', 48000, 7, 'KEA (multimedia design), DMJX (Interactive design)', 'Self-taught, Academy Profession (AP) Degree, Bachelor, Youtube', '1459', 'Male', 1, '2022-05-31 09:58:56', NULL),
(133, 3, 2, 1, 'Consultant in UX, Design Thinking and Innovation', 41500, 2, 'KEA and ITU in copenhagen', 'Master', '2100', 'Female', 1, '2022-06-01 12:53:56', NULL),
(134, 4, 4, 1, 'Product designer', 46000, 4, 'UX Design Institute (UXDI), Interaction Design Foundation courses, Digital Skills Academy course Dublin in Digital technologies and design', 'Bachelor, UX Course', '2300', 'Female', 1, '2022-06-01 21:16:18', NULL),
(135, 6, 1, 1, 'Product Designer', 45000, 5, 'ITU', 'Bachelor, Master', '2100', 'Female', 1, '2022-06-01 22:34:44', NULL),
(136, 2, 2, 1, 'Service Designer/ User Researcher', 35000, 1, 'AAU', 'Master', '1711', 'Female', 1, '2022-06-02 09:35:28', NULL),
(137, 1, 3, 1, 'UX Research', 30000, 1, 'SDU', 'Self-taught, Bachelor, Master, UX Course', '6000', 'Male', 1, '2022-06-02 11:12:48', NULL),
(138, 3, 2, 1, 'Service Designer', 32000, 3, 'AAU CPH', 'Master', '1403', 'Male', 1, '2022-06-02 17:57:19', NULL),
(139, 2, 1, 1, 'Senior Service Designer', 65000, 10, 'KEA & ITU', 'Master', '2300', 'Female', 1, '2022-06-03 06:41:36', NULL),
(140, 3, 1, 3, 'Senior UX Designer', 60000, 15, 'Aalborg University', 'PhD', '2800', 'Male', 1, '2022-06-03 06:57:39', NULL),
(141, 3, 3, 1, 'UX Designer', 29000, 1, 'DTU', 'Master', '2300', 'Male', 1, '2022-06-03 09:10:25', NULL),
(142, 1, 3, 1, 'User Requirements Analyst', 38500, 3, 'PhD in Cultural Anthropology, UFRJ, Brazil', 'PhD', '5000', 'Female', 1, '2022-06-03 09:50:14', NULL),
(143, 3, 2, 1, 'Junior user experience designer', 37000, 1, 'Aarhus university', 'Master', '8000', 'Male', 1, '2022-06-03 14:13:02', NULL),
(144, 3, 2, 1, 'CX Architect', 41000, 3, 'Aarhus University', 'Master', '2100', 'Male', 1, '2022-06-05 19:11:52', NULL),
(145, 6, 3, 1, 'UX Designer', 38100, 2, 'Aalborg University', 'Master', '2300', 'Female', 1, '2022-06-06 09:51:02', NULL),
(146, 1, 1, 1, 'Principal UX Researcher', 62000, 15, 'Outside of Denmark', 'Bachelor, Master, UX Course', '3400', 'Male', 1, '2022-06-06 19:03:27', NULL),
(147, 4, 3, 1, 'Product Designer', 52000, 4, 'KEA - eConcept Development, Hyper Island - Behavioral Design online course, Aalborg University - Master in Techno-Anthropology', 'A bit of mix of everything', '1403', 'Female', 1, '2022-06-07 18:27:25', NULL),
(148, 4, 3, 1, 'Product Designer', 39000, 3, 'SDU', 'Academy Profession (AP) Degree, Bachelor, Master', '1161', 'Female', 1, '2022-06-08 11:45:45', NULL),
(149, 1, 2, 1, 'UX Researcher & Project Manager', 34000, 3, 'Anthropology (KU)', 'Master, UX Course', '1900', 'Female', 1, '2022-06-09 16:18:30', NULL),
(150, 1, 1, 4, 'User insights specialist', NULL, 2, 'UserTribe / Sonar', 'Self-taught, UX Course, Job with relation to UX introduced me to the field ', '2400', 'Female', 1, '2022-06-10 17:17:24', NULL),
(151, 6, 1, 1, 'Digital designer', 40425, 2, 'ITU', 'Master', '2450', 'Male', 1, '2022-06-13 10:19:59', NULL),
(152, 10, 2, 1, 'Experience Designer', 38000, 4, 'University of Copenhagen', 'Master', '1304', 'Female', 1, '2022-06-14 07:48:36', NULL),
(153, 3, 1, 1, 'UX Designer', 50000, 4, 'Digital Design, AU', 'Master', '8000', 'Male', 1, '2022-06-14 11:24:49', NULL),
(154, 3, 1, 1, 'User Experience Consultant', 38000, 4, 'BAA, Nielsen Norman Group', 'Self-taught, Bachelor, UX Course', '8000', 'Female', 1, '2022-06-14 12:42:13', NULL),
(155, 2, 2, 1, 'User experience designer', 38500, 3, 'ITU and Royal College of Art in London', 'Bachelor, Master', '2100', 'Female', 1, '2022-06-14 23:32:22', NULL),
(156, 5, 1, 1, 'Experience Lead', 57000, 20, 'Via university, ITU', 'Master', '2750', 'Female', 1, '2022-06-15 10:18:25', NULL),
(157, 3, 2, 1, 'Senior user experience consultant', 39500, 6, 'Digital design, AU', 'Master', '8000', 'Female', 1, '2022-06-15 11:17:45', NULL),
(158, 4, 3, 1, 'Senior Product Designer', 53000, 10, 'DTU', 'Master', '2300', 'Male', 1, '2022-06-15 11:18:03', NULL),
(159, 3, 1, 1, 'Lead Experience Designer', 56000, 5, 'None they apply here', 'Self-taught, UX Course', '2700', 'Male', 1, '2022-06-15 11:41:21', NULL),
(160, 3, 1, 1, 'UX Designer', 30000, 2, 'Aalborg University - Interactive Digital Media', 'Master', '9000', 'Male', 1, '2022-06-15 12:16:17', NULL),
(161, 3, 1, 1, 'UX Designer', 53000, 10, 'Cand.Mag. Mediascience', 'Academy Profession (AP) Degree', '1112', 'Male', 1, '2022-06-15 12:21:52', NULL),
(162, 5, 1, 1, 'Head of Digital Sales and UX', 56000, 7, 'KEA', 'Self-taught, Academy Profession (AP) Degree', '2605', 'Male', 1, '2022-06-15 12:22:55', NULL),
(163, 2, 1, 1, 'Service Designer', 43000, 4, 'University of Aarhus', 'Master', '1780', 'Female', 1, '2022-06-15 12:38:02', NULL),
(164, 6, 4, 1, 'UX/UI designer', 34000, 3, 'ITU', 'Master', '2800', 'Female', 1, '2022-06-15 12:42:35', NULL),
(165, 4, 2, 1, 'Senior Product Designer (UI)', 43000, 7, 'BA Visuel Communication', 'Bachelor', '2400', 'Female', 1, '2022-06-15 12:51:42', NULL),
(166, 5, 1, 1, 'Lead UX Designer', 68000, 18, 'AAU', 'PhD', '9220', 'Female', 1, '2022-06-15 12:55:19', NULL),
(167, 3, 2, 1, 'Professional User Experience Consultant', 35000, 2, 'Information Studies, Aarhus University (Cand.IT)', 'Master', '8200', 'Female', 1, '2022-06-15 12:59:51', NULL),
(168, 4, 1, 1, 'digital product designer', 40000, 2, 'EAAA', 'Bachelor', '8000', 'Female', 1, '2022-06-15 13:54:05', NULL),
(169, 3, 2, 1, 'Senior ux designer', 45000, 5, 'DTU', 'Bachelor, Master', '2100', 'Male', 1, '2022-06-15 13:58:09', NULL),
(170, 3, 1, 1, 'UX Designer', 44000, 4, 'IT University of Copenhagen', 'Master', '10920', 'Female', 1, '2022-06-15 14:51:35', NULL),
(171, 5, 1, 1, 'UX Chapter Lead', 53500, 5, 'Kea and ITU', 'Master', '2650', 'Female', 1, '2022-06-15 15:00:03', NULL),
(172, 3, 1, 2, 'Senior UX Designer', 44200, 4, 'AU', 'Master', '8200', 'Male', 1, '2022-06-15 15:32:17', NULL),
(173, 4, 3, 1, 'Senior UX/UI Designer', 70000, 20, 'KEA, Aalborg University, ITU', 'Academy Profession (AP) Degree, Bachelor, Master', '1253', 'Male', 1, '2022-06-15 17:42:39', NULL),
(174, 6, 1, 1, 'Ux designer', 36000, 3, 'AAU and ITU', 'Bachelor, Master, UX Course', '9000', 'Female', 1, '2022-06-15 19:38:11', NULL),
(175, 3, 1, 1, 'Business Analyst - Experience Designer', 44000, 4, 'Aalborg University', 'Master', '2300', 'Genderqueer', 1, '2022-06-15 19:54:34', NULL),
(176, 3, 1, 1, 'Ux & design thinking lead', 61500, 10, 'DTU, AAU', 'PhD', '2300', 'Female', 1, '2022-06-15 21:02:12', NULL),
(177, 4, 3, 1, 'n', NULL, 4, 'DTU', 'Master, PhD', '2300', 'Male', 1, '2022-06-15 21:28:26', NULL),
(178, 3, 2, 1, 'Product designer', 40000, 3, 'Aalborg University', 'Master', '9000', 'Female', 1, '2022-06-15 22:03:45', NULL),
(179, 7, 1, 2, 'Design Lead', 60000, 15, 'KEA + Online courses + Design School abroad', 'Self-taught, Academy Profession (AP) Degree', '2900', 'Male', 1, '2022-06-15 22:20:02', NULL),
(180, 3, 1, 1, 'Sr. UX Designer', 72000, 11, 'KADK\n', 'Master', '2750', 'Female', 1, '2022-06-16 00:16:25', NULL),
(181, 3, 1, 1, 'Lead Experience Designer', 56000, 5, 'None they apply here', 'Self-taught, UX Course', '2700', 'Male', 1, '2022-06-16 13:28:19', NULL),
(182, 10, 6, 1, 'Innovation Lead', 51500, 5, 'ITU', 'Master', '2300', 'Male', 1, '2022-06-16 15:14:26', NULL),
(183, 11, 5, 1, 'Teacher', 39000, 7, 'ITU', 'Master, UX Course', '2800', 'Male', 1, '2022-06-20 11:11:58', NULL),
(184, 7, 3, 2, 'Communication', 24000, 3, 'KEA', 'Academy Profession (AP) Degree, Bachelor', '2200', 'Female', 1, '2022-06-20 15:09:11', NULL),
(185, 4, 1, 1, 'Digital Product Designer', 40000, 3, 'Kea, IDF', 'Bachelor, UX Course', '7190', 'Female', 1, '2022-06-20 20:52:37', NULL),
(186, 3, 1, 1, 'UX Designer', 43000, 0, 'DTU', 'Master', '1059', 'Female', 1, '2022-06-21 14:29:29', NULL),
(187, 4, 4, 1, 'UI/UX Designer', 37000, 2, 'DTU', 'Master', '2500', 'Female', 1, '2022-06-21 15:36:09', NULL),
(188, 5, 1, 1, 'Senior Design Manager', 66800, 24, 'None', 'Self-taught', '1100', 'Male', 1, '2022-06-21 22:07:28', NULL),
(189, 3, 2, 1, 'Customer Experience Architect', 43000, 4, 'Københavns Universitet (BA) and IT-Universitetet i København (Master)', 'Master', '1613', 'Female', 1, '2022-06-22 10:13:48', NULL),
(190, 3, 2, 1, 'CX Director', 58500, 10, 'ITU', 'Master', '1605', 'Female', 1, '2022-06-22 10:53:47', NULL),
(191, 3, 2, 1, 'UX Consultant', 43500, 9, 'The Danish school of media and journalisme', 'Self-taught, Bachelor', '2300', 'Female', 1, '2022-06-22 11:12:13', NULL),
(192, 10, 1, 1, 'Senior Experience designer', 61000, 18, 'None', 'Self-taught', '2860', 'Male', 1, '2022-06-22 12:33:31', NULL),
(193, 3, 2, 1, 'Senior User Experience Designer', 49000, 6, 'It university copenhagen', 'Bachelor, Master', '1411', 'Female', 1, '2022-06-22 13:31:22', NULL),
(194, 1, 1, 6, 'UX design & strategy', 32000, 1, 'Ucl', 'Bachelor', '5250', 'Female', 1, '2022-06-22 14:41:42', NULL),
(195, 6, 1, 1, 'Product designer', 40000, 5, 'IT-university of Copenhagen', 'Master', '2100', 'Female', 1, '2022-06-25 09:15:32', NULL),
(196, 2, 5, 1, 'Process consultant', 32000, 0, 'AAU', 'Master', '2400', 'Female', 1, '2022-06-25 22:07:13', NULL),
(197, 6, 1, 1, 'ux specialist', 45000, 10, 'RUC kommunikation', 'Bachelor, UX Course', '1213', 'Male', 1, '2022-06-26 23:08:55', NULL),
(198, 3, 1, 4, 'UX designer & researcher', NULL, 15, 'It universitetet', 'Master', '1000', 'Female', 1, '2022-06-27 13:36:27', NULL),
(199, 10, 1, 4, 'Senior UX designer', NULL, 19, 'Designskolen Kolding', 'Master', '2750', 'Female', 1, '2022-06-27 16:39:09', NULL),
(200, 3, 1, 4, 'Data Analyst', NULL, 12, 'AAU Aalborg', 'Bachelor, Master', '2200', 'Male', 1, '2022-06-27 17:41:19', NULL),
(201, 1, 1, 5, 'Strategic UX designer', NULL, 8, 'Itu', 'Master', '2300', 'Female', 1, '2022-06-27 18:43:46', NULL),
(202, 3, 1, 1, 'Digital user Experience Specialist', 35000, 1, 'Dtu', 'Master', '2750', 'Female', 1, '2022-06-27 18:50:02', NULL),
(203, 3, 2, 1, 'UX Designer', 24000, 12, 'KEA', 'Academy Profession (AP) Degree', '1000', 'Prefer not to say', 1, '2022-06-28 06:25:08', NULL),
(204, 8, 7, 4, 'Freelance Product/UI Designer', 105000, 17, 'Hyper Island', 'Self-taught, Academy Profession (AP) Degree', '2920', 'Male', 1, '2022-06-28 14:25:44', NULL),
(205, 3, 1, 1, 'Senior UX Designer', 64000, 11, 'ITU', 'Master, UX Course', '2300', 'Male', 1, '2022-06-28 15:26:42', NULL),
(206, 4, 1, 4, 'UX Design consultant', NULL, 12, 'ITU', 'Master', '1371', 'Male', 1, '2022-06-29 09:44:49', NULL),
(207, 3, 8, 4, 'UX designer and researcher', 100000, 15, 'KADK, ITU', 'Master', '2000', 'Female', 1, '2022-06-29 10:09:19', NULL),
(208, 3, 1, 4, 'Senior UX designer', NULL, 14, 'Aalborg Universitet', 'Self-taught, Bachelor', '2500', 'Male', 1, '2022-06-29 10:29:44', NULL),
(209, 6, 2, 1, 'Experience Design Director', 65000, 14, 'None', 'Self-taught', '1613', 'Male', 1, '2022-07-05 08:41:28', NULL),
(210, 3, 2, 1, 'Experience designer', 42000, 4, 'AAU', 'Bachelor, Master', '1500', 'Female', 1, '2022-07-07 19:57:53', NULL),
(211, 4, 3, 1, 'Product Design Lead', 53000, 6, 'Aalborg Universitet', 'Master', '1434', 'Male', 1, '2022-07-07 20:03:28', NULL),
(212, 3, 2, 1, 'UX designer', 36500, 1, 'ITU', 'Master', '2100', 'Female', 1, '2022-07-13 09:57:47', NULL),
(213, 4, 3, 1, 'Product Designer', 42000, 3, 'KEA', 'Academy Profession (AP) Degree', '1717', 'Female', 1, '2022-08-01 14:57:45', NULL),
(214, 10, 1, 1, 'Accessibility Lead', 51000, 9, 'Medievidenskab KUA', 'Self-taught, Master, UX Course', '1799', 'Female', 1, '2022-08-01 19:26:37', NULL),
(215, 3, 1, 1, 'Senior user experience specialist', 60000, 6, 'KEA', 'Bachelor', '2100', 'Female', 1, '2022-08-01 20:45:08', NULL),
(216, 3, 1, 1, 'Senior UX designer', 47000, 5, 'AAU, Information Science', 'Master', '2100', 'Female', 1, '2022-08-01 23:13:16', NULL),
(217, 9, 2, 1, 'Graphic Visualizer', 75000, 1, 'Design Boat school', 'Self-taught, Bachelor, UX Course', '700004', 'Prefer not to say', 1, '2022-08-03 08:27:10', NULL),
(218, 7, 3, 1, 'Product Design Lead', 68500, 12, 'Copenhagen Technical Academy', 'Self-taught, Bachelor', '2500', 'Male', 1, '2022-08-03 08:54:53', NULL),
(219, 2, 1, 1, 'Design Lead', 70000, 10, 'ITU', 'Master', '1253', 'Male', 1, '2022-08-07 08:53:18', NULL),
(220, 1, 1, 1, 'Senior User Researcher', 62500, 3, 'None', 'Master, PhD', '1100', 'Female', 1, '2022-08-09 09:29:34', NULL),
(221, 4, 2, 1, 'Lead Designer', 54000, 8, 'Prefer not to answer to keep things anonymous', 'Master', '2200', 'Female', 1, '2022-08-09 16:19:06', NULL),
(222, 4, 3, 1, 'Design Lead', 53000, 6, 'Aalborg University', 'Master', '1434', 'Male', 1, '2022-08-15 12:10:57', NULL),
(223, 2, 4, 1, 'Konsulent', 32000, 2, 'Masters of science in service system design at AAU and Bachelor in industrial design at Designskolen Kolding', 'Master', '2400', 'Female', 1, '2022-08-15 22:20:30', NULL),
(224, 1, 9, 1, 'Research Assistant', 30500, 1, 'AAU, Medialogy', 'Master', '9000', 'Male', 1, '2022-08-19 00:57:42', NULL),
(225, 5, 1, 1, 'CX Manager', 58000, 8, 'AAU', 'Master', '2000', 'Female', 1, '2022-08-19 23:10:36', NULL),
(226, 1, 4, 1, 'Junior UX researcher', 30000, 2, 'AAU, Experience Design ', 'Master', '2300', 'Female', 1, '2022-08-23 13:45:10', NULL),
(227, 3, 1, 1, 'UX Designer', 64000, 11, 'None', 'Master', '1561', 'Female', 1, '2022-08-29 18:32:12', NULL),
(228, 6, 2, 1, 'UX & Visual Designer', 28000, 4, 'Design School Kolding', 'Master', '2500', 'Female', 1, '2022-08-29 22:04:42', NULL),
(229, 4, 4, 1, 'Design Lead & Product Specialist', 30000, 5, 'UCN, Interaction Design Foundation', 'Academy Profession (AP) Degree, UX Course', '8900', 'Female', 1, '2022-08-30 17:30:30', NULL);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;