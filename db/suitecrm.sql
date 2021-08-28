-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 02:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suitecrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--
DROP TABLE IF EXISTS accounts;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('6b39bb5b-9345-b8f7-d5f6-60ace1f223ba', 'Khách hàng', '2021-05-25 11:35:49', '2021-05-25 11:35:49', '1', '1', '', 0, 'b07810a6-fbf0-40fe-f328-6076712f35e3', NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL),
('8b6c4dd6-d43e-0c33-fc74-6079927b26e1', 'Vũ Thanh Hải', '2021-04-16 13:36:42', '2021-04-16 13:36:42', '1', '1', 'cung cấp thổ cẩm', 0, '1', '', '', '', '', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', NULL, '+84933780327', NULL, 'http://themay.vn', NULL, '', NULL, '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--
DROP TABLE IF EXISTS accounts_audit;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--
DROP TABLE IF EXISTS accounts_bugs;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--
DROP TABLE IF EXISTS accounts_cases;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--
DROP TABLE IF EXISTS accounts_contacts;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_contacts`
--

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES
('a52cf884-d90a-714e-4722-60ace1dac03d', '683f95be-6a15-ceb2-9213-60ace1f12fd4', '6b39bb5b-9345-b8f7-d5f6-60ace1f223ba', '2021-05-25 11:36:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--
DROP TABLE IF EXISTS accounts_cstm;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('6b39bb5b-9345-b8f7-d5f6-60ace1f223ba', 0.00000000, 0.00000000, NULL, NULL),
('8b6c4dd6-d43e-0c33-fc74-6079927b26e1', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--
DROP TABLE IF EXISTS accounts_opportunities;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--
DROP TABLE IF EXISTS acl_actions;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('1144d9cb-717e-cbd6-7907-60766f41f0cf', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('11b3de8e-433f-0e25-a9d1-60766f558104', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('11f92396-872b-cfa8-497d-60766f5fbc93', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('11ff8d57-3e04-b96a-8640-60766fb9ad8f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Notes', 'module', 90, 0),
('12db1547-4caf-31c4-254c-60766fe33a4b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('13ae1094-a383-70f4-a244-60766f29e82b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Notes', 'module', 90, 0),
('13f674b4-0abb-2b5d-16ce-60766f957287', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('144a9661-aa55-fc38-c17f-60766fcc9025', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('14a3c2ab-a617-0b3c-fbf6-60766f066214', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('14ed3a61-46e9-f14f-0974-60766f38d53c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('15696ee3-4456-9c44-3c56-60766fa977dd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Notes', 'module', 90, 0),
('15f56fea-3e2a-9f57-f927-60766f571959', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('164f22f9-bb37-186b-419f-60766fd4c408', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('17251c9f-314d-2d55-9514-60766fd16e2d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Notes', 'module', 90, 0),
('1828b18f-0a46-cf50-af01-60766f830ceb', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('1848b42e-9266-886b-1b18-60766f6f9d4f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('18cf0b0f-6af7-64b7-a083-60766ff8152f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('191a5b8a-eca1-0bb3-a432-60766f37bfb9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Notes', 'module', 90, 0),
('19d0df74-3164-f338-b8cc-60766f2f2038', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('1a241dcf-7a9f-e929-cecd-60766f8a506d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1af13b20-6c57-303d-8604-60766fe35af1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Notes', 'module', 90, 0),
('1c2a21cb-a0b9-8147-19a8-60766fdb581b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1c383fbb-4889-9674-0de6-60766fb02b57', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('1d2f26f6-9a22-6d4a-5d73-60766f5fb0ca', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('1d43a389-d012-0fc1-0ac2-60766fbe382f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('1e0740e9-b83c-54df-144d-60766f04d82d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1f64573a-25ac-2a5c-6fd2-60766f28d54e', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('1f7a1119-32ef-f321-e67d-60766fdb5c2d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('1fc4e7e7-e896-8177-431b-60766f952e05', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('2039d929-5b79-44e9-36b7-60766f48dcd3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2178a389-15f0-5c0e-3c91-60766f50984d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('21982b8e-dbd7-ef40-2375-60766fa136ce', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('21c26d0d-9cc8-dd25-2fd1-60766ff630c3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('21cf2be3-968e-89c5-55de-60766fe982b2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('21fb8c0a-655d-105a-9b24-60766f103f19', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('236a103d-1f64-b7a2-6af9-60766f96b5e0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('23aba946-e85c-34d4-2608-60766feadc61', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('23e871ab-92a4-96c1-c135-60766fd08541', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('23f15b58-8305-f7d9-a9ec-60766ffe47a2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('24434f4b-a12d-c244-802a-60766f34eb0e', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('25804cf7-641c-3702-4c6f-60766fd08103', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('25d61e0c-4561-0861-04bd-60766fae931c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('25f7b948-a1f7-eac7-b622-60766f536d19', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('26410599-6bb8-8b1f-5674-60766f0338bb', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('278d0e0b-bac9-293f-f72b-60766f22fc69', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('27da8b24-543e-49bb-adbb-60766f9ec900', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('2888006e-1eb5-e988-fab2-60766f493522', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('2996cdf1-2c7f-38ec-5c6a-60766f73c561', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('29c12339-8418-3c4a-079e-60766fd51ca6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('2a6d967c-05dc-a395-e8a3-60766f193a4a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('2b8f9b91-00bf-7551-1712-60766fe87a1f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('2be3365b-7301-0df6-a955-60766ffb27e1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('2cd860e4-16d3-0c8d-869e-60766ff59350', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('2cfe0ea9-5dc3-3a00-a0cc-60766fbe5846', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Cases', 'module', 90, 0),
('2dbb58be-7773-053b-9eea-60766f72b12b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('2e541192-71d3-a9a6-3001-60766fd097ee', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Contacts', 'module', 89, 0),
('2f324a70-0516-7717-8de2-60766fbf1248', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('2f9e11b2-3f0c-ed88-b5e0-60766f72a647', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('31d98396-a5b3-008e-23a5-60766f881ccc', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('3536214e-8442-231c-08ea-60766f169d80', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Contacts', 'module', 90, 0),
('36edd46b-7664-cd60-819b-60766f105d4f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('3721e981-1904-ce05-e200-60766fce0b20', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Contacts', 'module', 90, 0),
('39415033-4ce6-f91c-900e-60766fe099d3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('39415d3d-5ac0-8e24-693b-60766fbf05d7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('3b321ae5-9515-d812-bd17-60766fbf7be3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('3b5a2ea8-8b90-200f-06f6-60766fb78844', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('3c8dcf5c-711e-e292-3c21-60766faa7743', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Bugs', 'module', 89, 0),
('3d3afb03-551c-2376-9b1e-60766fb16993', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('3d66515f-3a0c-900a-1d30-60766f6c883a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Contacts', 'module', 90, 0),
('3ddf41c9-625d-20f9-eddb-60766fe035f1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('3e967e22-b544-0014-fee3-60766f98011c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Bugs', 'module', 90, 0),
('3f0db774-3e71-f769-13ba-60766fc3eb57', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('3f35acaf-b4ed-a87b-cac4-60766f4af6d6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Contacts', 'module', 90, 0),
('3ff85ebe-412c-ac5a-0eaa-60766ff6129b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('403d713e-737d-a6d1-3dfe-60766fef2510', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Bugs', 'module', 90, 0),
('408f71df-4d0c-9a79-723d-60766fdac596', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'FP_events', 'module', 89, 0),
('4109215a-286b-7858-47a4-60766fd09097', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('413a413a-f522-823c-4a98-60766f8cd805', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('4220504b-2c90-106a-c35f-60766f8153b2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('42770319-fa26-ce09-0444-60766fc7e070', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('42b6a860-7458-25a0-16ab-60766f649d6f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'FP_events', 'module', 90, 0),
('432aade3-9917-b3a5-3a53-60766fac3109', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('44257f61-6cf2-e7c3-650d-60766f6c3633', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('4446087b-95a8-00cd-432b-60766f84087f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('44cf0a72-5b9c-44f4-28c9-60766f35497d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('4509ad77-8453-211a-edf9-60766fe9e723', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'FP_events', 'module', 90, 0),
('4599e07b-cadc-7d74-4d0c-60766f7f831f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('45f68f12-52ef-e3eb-e99c-60766f540ae0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Bugs', 'module', 90, 0),
('469ca52b-db35-c7cc-75e4-60766f7739b0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('46dd47cb-0e8f-62a0-6e37-60766f9c20c0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('47057f12-7c9e-f060-fd14-60766fd7ba1a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('47a6de7e-9b50-6877-1082-60766f8569f1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Bugs', 'module', 90, 0),
('4904bd1c-1470-205d-2c59-60766fdc6a38', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('490cdeed-eb5e-8291-a6ac-60766fb504de', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('49333d63-87ca-5a6c-21bb-60766f648b50', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('49a623c0-8649-cdc1-69b9-60766f8c4ff3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('49b5eb61-aed7-4e15-dacc-60766f75eb7c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('4b0f7c03-5330-6466-df67-60766f138183', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('4b1100c8-9def-7a62-5f5a-60766f031637', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'FP_events', 'module', 90, 0),
('4b70680c-4a70-b9ec-bbc0-60766f5eba5d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('4be61ea1-6cc0-4965-4907-60766fb56126', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('4d424c21-48f5-c8e5-b8bc-60766fe58179', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'FP_events', 'module', 90, 0),
('4d69ed70-2ead-b1a9-4698-60766f3da033', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('4dfb2e38-763d-9ada-cdd0-60766f64797a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('4e10dcc6-bac0-005e-9d8d-60766fee1c67', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('4e8c0051-d25d-6f4a-59b3-60766f3d2b80', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('4ecf0f25-5853-b8cc-ffa5-60766fd6ce38', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Cases', 'module', 90, 0),
('4f5ad3a0-26ef-5437-1229-60766f2113b8', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('4fda0273-74de-3b94-496f-60766fc35307', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('4ff32a0d-5318-c9d7-c86b-60766f2df336', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('50efad72-b25d-99a5-1f40-60766f5ef416', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('5214257a-38bf-972a-4bdc-60766fcf16ef', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Calls', 'module', 89, 0),
('5219bf75-157e-ed59-5ae1-60766f49d957', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('52af89bc-4c60-4663-821e-60766fda2ea8', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('53162345-e5d5-adc3-6c23-60766f0f3a6c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('54016483-49da-da4a-392e-60766f5a7d79', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('54af4308-cc18-604f-76ff-60766f534f5d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Calls', 'module', 90, 0),
('5512b021-e457-0157-60df-60766fd40659', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('56285e7d-9276-e72b-1d98-60766fb7e49a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('562df440-042f-00d9-ece8-60766f91ecc6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('56ebe42c-cbab-1e88-0f47-60766fd64734', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Calls', 'module', 90, 0),
('572f6ecb-2c79-2ce2-bb37-60766f0e34ee', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('580560f2-b395-d974-af07-60766fbaf0b9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('58cc630b-1def-d6ce-7530-60766fede025', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Calls', 'module', 90, 0),
('59e7d884-5be6-24ef-b5f5-60766fd54b84', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('59ef4a88-e71d-e617-a4c4-60766fd121ad', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Spots', 'module', 89, 0),
('5ab26912-725d-6510-675b-60766fd707d3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Calls', 'module', 90, 0),
('5bd0f902-496f-149b-fc49-60766f7dc1da', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('5c5e4032-61e5-e967-95e1-60766f3bfd89', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Spots', 'module', 90, 0),
('5ca8e709-4bba-4a58-f880-60766ff7127a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Calls', 'module', 90, 0),
('5e1cfb15-d088-ea5b-933e-60766f0611fd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('5ea67378-7a31-207a-d384-60766f2367cb', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Calls', 'module', 90, 0),
('5edc7853-a0e6-29fb-51fa-60766fc90b04', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Spots', 'module', 90, 0),
('5ff7c0d9-ea89-71e1-e5f7-60766f034d1c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('60671ad0-5eca-dec4-c6f3-60766f262fc6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('606df653-2348-784d-ce94-60766f4cc8ee', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('60fda282-ede3-510f-93f8-60766fcdb0b4', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Spots', 'module', 90, 0),
('61ecf019-2e4d-73ff-2d51-60766f8c7c50', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('625ea8c0-ea77-af1e-7b78-60766fd3f56b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('62c133ea-e5d7-5809-b8cb-60766f475d58', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('6323fe0f-bb74-3356-5c18-60766f3195e7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Spots', 'module', 90, 0),
('651b8159-39e5-5243-c015-60766f833984', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Spots', 'module', 90, 0),
('65db9bc6-eba3-60fd-4276-60766f5e7afc', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('66be0a79-7f86-fa13-a158-60766f514089', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('670aeab3-0d2b-9a89-744f-60766f78106c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Spots', 'module', 90, 0),
('6852c6ca-0514-f9dd-5944-60766fc16f9b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('69739d2c-5325-8294-fa12-60766fc541dc', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('6a02da98-e857-580a-f101-60766f1975da', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('6ae49031-a159-51d2-9cf9-60766ff72d5c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('6b9a50e6-54b2-77f7-afae-60766f3d0175', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Alerts', 'module', 89, 0),
('6bf5dedb-dd1b-790d-6618-60766f6c6fdc', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('6d05f5eb-77a8-27cb-aebd-60766ff96a84', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('6e40f489-8730-81c7-4853-60766fb98302', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('6e4da615-fd3e-1dee-63b1-60766f374f76', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Alerts', 'module', 90, 0),
('6f2134f1-015d-e6f2-dbfe-60766f168cfd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Users', 'module', 89, 0),
('6fb18087-6514-1109-5ca5-60766ff8859a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('70325ed9-9494-f9d7-71a5-60766fcaec0b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('707e4038-4b03-e407-c299-60766f234d9b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Alerts', 'module', 90, 0),
('72457be1-fc28-205d-ba51-60766fc6deba', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('725927f2-6499-f348-35d8-60766f3f89ed', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Users', 'module', 90, 0),
('72a9262d-97a1-3e7f-187e-608808251521', '2021-04-27 12:50:52', '2021-04-27 12:50:52', '1', '1', 'access', 'idKyG_HangKyGui', 'module', 89, 0),
('730db370-0efd-b9bb-8584-60766f9a1324', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('744ae130-c53f-aec3-9b5b-60766f2c97a2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Users', 'module', 90, 0),
('744ece31-f0a6-1c21-eab3-60766f478290', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('75165385-814d-836b-5857-60766f88bcf6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('751c7145-be59-f4a1-eead-60766fcb5d29', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Prospects', 'module', 89, 0),
('75fe313d-00d9-39eb-8696-60766f06eccd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Accounts', 'module', 89, 0),
('765f53bb-ce16-bb71-6189-60766f7781ae', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('767dd663-5bc7-60c1-db4b-60766faa048f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Users', 'module', 90, 0),
('772f4207-1245-2d8f-95cc-60766f5b4f00', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Prospects', 'module', 90, 0),
('77324fb4-7756-3f4a-654e-60766f0a56b0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Alerts', 'module', 90, 0),
('77f6bfc2-4ef1-b10c-2cb9-60766f91451b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Accounts', 'module', 90, 0),
('78339cc3-24e1-9e86-2cd1-60766f4a046c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Users', 'module', 90, 0),
('78df6bf1-f42b-a785-8215-60766f704965', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Prospects', 'module', 90, 0),
('7919f9b1-22db-25f0-3681-60766fa2fbc9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('79356e15-6c05-583a-d161-60766fd7bb60', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Alerts', 'module', 90, 0),
('79977af6-70c9-c7e0-cf28-60766f482862', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('79e24142-aa20-b5d4-e1a8-60766f3e7ea1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Accounts', 'module', 90, 0),
('79f5700f-4234-b9d5-471f-60766f439d43', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Users', 'module', 90, 0),
('7af7c7fe-26e1-7ac7-4de5-60766f070d67', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('7b69ff96-ca07-d7ad-a584-60766fb86b3a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('7b6cdc53-1d1c-85c5-ccea-60766f3c32d6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('7b94acf6-b72a-0666-d02b-60766fd63ac3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Users', 'module', 90, 0),
('7bdf9025-c6a1-c696-a5df-60766fc80558', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('7c70c57b-c9cc-ea41-38d3-60766f961b3c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('7cb77d88-5728-38d1-6e7f-60766f418ba5', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('7d34b6e0-9311-95fd-c530-60766f9cdc85', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('7d558bde-e716-6daa-2454-60766f7f8703', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('7dd84745-ab02-3d8e-8fde-60766f715e28', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('7ee46ff7-ade5-79b7-0aee-60766f1ecb89', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Prospects', 'module', 90, 0),
('7f0ed62d-dcc2-688c-2bd0-60766fb4ee33', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('7f2b11ca-01a4-2d70-d9b4-60766f911cae', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('804a18c5-1daa-0fd0-adb3-60766f65726a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Accounts', 'module', 90, 0),
('80859d55-b67e-a8d8-db36-60880829c283', '2021-04-27 12:50:52', '2021-04-27 12:50:52', '1', '1', 'view', 'idKyG_HangKyGui', 'module', 90, 0),
('80ad24d4-9e42-857b-80ee-60766f39dafd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Prospects', 'module', 90, 0),
('80c834a1-7095-5201-58d0-60766fe476c3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('8173018f-6ef1-cbdf-636d-60766f42dbdc', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Emails', 'module', 89, 0),
('81a65a86-da75-4141-928f-60766f90091c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('824a7f93-31fc-bbc6-62a4-60766fb3b30f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Accounts', 'module', 90, 0),
('82abb6d0-e156-786a-ccb6-60766fbf681e', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('82e79ea8-bd29-38b5-c6c5-60766f4869a2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('82f58553-f788-a4cf-d6fe-608808edca91', '2021-04-27 12:50:52', '2021-04-27 12:50:52', '1', '1', 'list', 'idKyG_HangKyGui', 'module', 90, 0),
('83b7018b-300d-2ff5-c0bb-60766fb71da3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Cases', 'module', 90, 0),
('83d46fdc-d50f-6755-c475-60766f18f52f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Emails', 'module', 90, 0),
('83ff8932-52bc-913d-ffbc-60766fe5419b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('845c2341-ec3a-ff88-385a-60766fb03b57', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('85196522-dfb2-3615-1680-60766f200bd7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('854a26b6-23d5-aaa7-068e-608808718af9', '2021-04-27 12:50:52', '2021-04-27 12:50:52', '1', '1', 'edit', 'idKyG_HangKyGui', 'module', 90, 0),
('85fc9567-ff16-b2f6-f833-60766f985e79', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Emails', 'module', 90, 0),
('868345a1-d470-ae22-530c-60766fd3dc45', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('86ec7850-dbd8-1eec-4f64-60766f412751', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('8783a90c-6b9b-ca3a-75b7-60880894c51d', '2021-04-27 12:50:52', '2021-04-27 12:50:52', '1', '1', 'delete', 'idKyG_HangKyGui', 'module', 90, 0),
('87f1f18a-248b-6e9b-90e1-60766f45f858', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Emails', 'module', 90, 0),
('8896246e-5df9-fef0-11f3-60766f67d9a4', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('88e0cb12-e711-72f6-5d42-60766f7e5394', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('89377fcc-21df-83a4-03a9-60766fca501d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('89e72f6a-db40-94d1-90b3-608808f2d5d3', '2021-04-27 12:50:52', '2021-04-27 12:50:52', '1', '1', 'import', 'idKyG_HangKyGui', 'module', 90, 0),
('8a1f08f4-a83d-4a46-b08e-60766f892bdc', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('8a631a6d-02fa-a291-3c6f-60766fd4cfb1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Emails', 'module', 90, 0),
('8b3e58cd-9be4-c32d-2962-60766f78faa0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('8b463627-33b9-b4ec-bbab-60766fd65772', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('8b532691-d5cc-3da8-e9db-60766fe596e8', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('8c00f928-bd40-1fe2-1679-60766fffa756', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Leads', 'module', 89, 0),
('8c401af0-53c9-afc5-e9b3-60766f64e631', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Emails', 'module', 90, 0),
('8c45a811-92bd-f229-84f9-608808bdfc99', '2021-04-27 12:50:52', '2021-04-27 12:50:52', '1', '1', 'export', 'idKyG_HangKyGui', 'module', 90, 0),
('8cff5f75-f148-2887-8229-60766fadb20c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('8dccbda2-2c73-39e2-179f-60766fd70dd2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('8e539f74-551d-858a-22bd-608808090f60', '2021-04-27 12:50:52', '2021-04-27 12:50:52', '1', '1', 'massupdate', 'idKyG_HangKyGui', 'module', 90, 0),
('8e54db13-8c5c-cb39-0553-60766fae54ac', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Emails', 'module', 90, 0),
('8f465e1c-87bd-075c-f730-60766f1c7301', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('90282958-a2bf-2e57-0e2a-60766f4ebf88', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('902a4081-0595-af55-b69b-60766f4e5c43', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('911baed7-012b-a875-c03d-60766f8db7d4', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('92a4009b-c6c8-ecfe-210d-60766f3c6a3b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('93256693-7d7a-6a09-216e-60766f9ff12a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('94abb681-e072-ee5a-f146-60766f7a8850', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('94de8377-f8a5-2ad2-f220-60766f956e77', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('96d06fa1-738b-4498-28fc-60766f4c8a9f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('97af643e-8ccc-f215-0e2a-60766f144431', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('98816fc6-4029-a307-e906-60766fa96ccc', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('98b61287-efdc-cfe0-69aa-60766f6d31f9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('99a321c4-999b-e106-ed45-60766f7a28e7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('9afc4076-60ab-f916-7888-60766f43ff84', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('9b0be9b4-6317-fcf9-40f0-60766f024d8a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('9b8c5265-bb73-1b4e-2bb6-60766fbf4e42', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('9d64dc7c-1d11-9ab0-5d2b-60766f106d87', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('9d7187e2-9e62-bc36-a58a-60766f19efb7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('9f3208d8-84d8-7cd4-c150-60766fb9d58b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Cases', 'module', 90, 0),
('9f6f5e7a-5ae2-0289-3dca-60766f9295da', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('9fc54899-33af-e129-b9bb-60766f9e1baf', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('a0d00f52-6b1d-dfcc-3b17-60766f20f163', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('a16e1797-92fd-856f-cfb1-60766fec1dcd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('a178b4c6-986e-33f1-79e6-60766fa52ef9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('a22836cf-40fc-7899-cc59-60766f299502', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('a3c4c94d-b5c7-18fc-61ab-60766f71dd32', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('a3f27aac-f051-419e-3e85-60766fabf407', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('a4d9a32f-f590-d5af-6918-60766feb1030', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('a5ea93f8-2c40-b42e-c59a-60766ff10622', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('a5f0471c-7911-60e9-d6fb-60766ffe289d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('a68b0f39-b76b-8e9a-9fd2-60766f172ad9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('a7164485-a65e-0690-db1a-60766f346e92', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('a82e9038-c4af-9560-f3b8-60766f7a9f54', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('a90bf945-f020-3338-ad55-60766fbeb291', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('a9eb8047-5dea-6390-ae40-60766ff33d0d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Documents', 'module', 89, 0),
('a9fad187-13bb-36f7-4be8-60766f465f52', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('aa123138-ff60-6049-8715-60766ffbcfd8', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Project', 'module', 89, 0),
('aa24fea1-cdeb-217d-1234-60766f1d0198', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('ab134ffe-2a9a-1f80-17e5-60766f1d56f9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('ac555cb3-86bc-c0d2-0a53-60766fc5e1c2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('ac646558-0104-017f-1a25-60766fe88d71', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Project', 'module', 90, 0),
('ac72e101-e61c-0af1-91cd-60766fb02075', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('ac745697-e0ac-1ce1-1995-60766f5c4aec', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('ac8adcc5-61b3-b32a-6097-60766f108cd7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Documents', 'module', 90, 0),
('ae10278d-a949-005a-6f19-60766ffc4e21', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('ae575077-f906-d7e3-4177-60766fd07fcd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Project', 'module', 90, 0),
('aeac9922-480c-b265-e3d0-60766f365e88', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('aedd3801-452e-8fb4-fe0c-60766ffce623', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('af3ec37f-951d-bf00-aea2-60766f016566', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('af40e1e4-5f30-35d5-ee49-60766fd339d0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Documents', 'module', 90, 0),
('afcb57c3-5dfd-0e80-4fbb-60766fa5d416', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Meetings', 'module', 89, 0),
('b0081294-37ec-0055-36fe-60766fc68f2c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('b04c746b-0872-0d15-c92b-60766f9b2388', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Project', 'module', 90, 0),
('b092fcfe-8865-27e6-1877-60766fa47932', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('b0c2f350-89b1-aa9b-ccf8-60766facc20e', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('b1349d9f-d174-0c7d-a2d5-60766f42c00a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('b16c5b74-12bc-9bc5-5037-60766f5fded5', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Documents', 'module', 90, 0),
('b1a342ef-bc17-fed7-d71d-60766fb5a666', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Meetings', 'module', 90, 0),
('b1f9b17e-7c7c-05f0-76a6-60766fc6a235', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Project', 'module', 90, 0),
('b24f9f03-fa12-88fc-4fd1-60766f08bd47', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('b2d2854e-95c8-f7d9-befc-60766fa39de3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('b323ba96-b1bb-fe63-334c-60766f1d9aaf', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('b381a362-af97-678c-490d-60766f22a781', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Meetings', 'module', 90, 0),
('b39cf157-4242-3ce1-ce9c-60766f22e017', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('b3f10ad9-6cd6-3920-02c6-60766f500eee', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Documents', 'module', 90, 0),
('b40b087e-e20d-8a6d-faad-60766f4a8582', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Project', 'module', 90, 0),
('b470f2ce-f834-02cb-cf1d-60766fa32531', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('b4bcafb5-c61d-aa8f-1c5a-60766f636822', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('b4d1dfd7-5b14-d28a-74b0-60766f54b5f2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('b53b28f0-92bf-2107-b779-60766f5bad56', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('b5bccb85-22a3-3b82-efa9-60766f6acb6c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Project', 'module', 90, 0),
('b5f0a611-a92b-5d44-a27b-60766ff9997c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('b65596aa-cf39-87d3-5389-60766fccb1da', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Documents', 'module', 90, 0),
('b68e04c0-d509-5317-b25b-60766fe1e945', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('b6c83813-e66e-3410-8ef9-60766f0f8aa6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('b6fb7ebe-68ff-b074-beb3-60766f6dffd2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('b7678653-88ef-aa0e-89de-60766f84f821', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('b7749046-6926-fc01-56fb-60766f72cd96', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('b82a3c3d-e4cf-73ba-42a8-60766f258f83', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('b85e1a53-97ab-4748-95fa-60766f513440', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('b8b0671f-a333-e13c-e136-60766f20c007', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('b8b778be-4cd5-beae-bad0-60766f5c239c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Leads', 'module', 90, 0),
('b941bbc2-ce10-f9d9-1e92-60766f120087', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Meetings', 'module', 90, 0),
('b9593e98-61a0-878f-4222-60766f2bfd7b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('b98892f5-3b57-40de-9002-60766f85a178', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Documents', 'module', 90, 0),
('ba0c022f-40f8-c342-1568-60766f166584', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Cases', 'module', 90, 0),
('ba238bf3-0606-c090-4111-60766f896155', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('ba6cd4a4-f92c-3af4-1d52-60766fd62eb3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('baa18c4f-3446-dc38-21df-60766f3be44c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('bb45754c-b8e1-5a05-6c3e-60766f901dfd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Meetings', 'module', 90, 0),
('bb5bccfb-4296-9ca0-9a6f-60766f8928ee', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Leads', 'module', 90, 0),
('bb853c4c-637a-66ae-7fb1-60766fc2fd2f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('bc0137e9-f75a-7d0f-0a18-60766fa2368b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('bc29d991-c906-8d97-f88a-60766fcdf961', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('bc3b0146-94d6-813c-97ef-60766f307bc7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'EAPM', 'module', 89, 0),
('bcddf733-2a6e-d37c-a7b1-60766f8240c1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('bd317600-6baf-4fd2-2d45-60766f1b99b0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Leads', 'module', 90, 0),
('bd8f6307-c52c-7d46-fd1b-60766f68d81b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('be3b0bbc-8e54-67ff-2ca9-60766f894e95', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('beecb85e-d09c-a4d0-04c8-60766f5c3a22', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'EAPM', 'module', 90, 0),
('bf181753-1222-b9cd-db83-60766ffcb92f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('bf20644a-157c-5b4f-5ba1-60766fba060a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Leads', 'module', 90, 0),
('c04e045f-dac3-cbe4-5325-60766f3b8a82', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('c0d6bd08-eb87-2146-6083-60766f34d22c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Leads', 'module', 90, 0),
('c112e1fd-45b2-1020-af53-60766ffbb643', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'EAPM', 'module', 90, 0),
('c207552b-6876-0933-722e-60766f9d2c63', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('c28ac6d7-ba7e-8b10-582c-60766f4d04f3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Leads', 'module', 90, 0),
('c28eb955-edf2-115b-4615-60766f9771e2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('c344d1d9-32b6-aad3-cbc1-60766fec9fcf', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('c44374e2-ed92-1ffa-0a1d-60766fdccfc0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('c499f632-928c-fc8f-0798-60766f00f77c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('c55675a3-1e46-7166-0071-60766f69f26b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('c6a41e1c-6fd0-dcb1-6335-60766f5710ff', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('c7bd3827-2653-e07d-d79c-60766fa14971', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'EAPM', 'module', 90, 0),
('c8f1668c-2d54-34e4-92ef-60766ffdd119', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('c96a0260-9da7-aa54-26b1-60766fefe939', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('c99c306b-015d-4b1e-0218-60766ff24226', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('c9cd3f40-5a32-9814-4071-60766fd28a90', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'EAPM', 'module', 90, 0),
('cb24c10b-9b8e-ba15-9ed8-60766fa3a160', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('cc34a3f8-db6c-3687-4ba7-60766fcec977', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('cc3b949b-9a39-96e3-bdff-60766f59c362', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('ce24e5a0-81b2-d145-2965-60766fb6738e', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('d116ef24-6642-d973-ae70-60766fc4f9cd', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('d265bc2a-a1e5-96e8-925d-60766f7311c5', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('d32231f1-d544-2d3e-dfbe-60766f8d7957', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('d3405dc8-de45-449a-0ac6-60766fd7c8b0', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('d4a95b1e-52a2-b370-a7cd-60766fa6b9f5', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('d53ca9f2-d99d-ac01-cb18-60766facd72a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('d5562beb-442a-1dde-58f6-60766fde72a7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('d69eb2e9-1eb9-85bd-e021-60766fca0217', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('d6fb5745-84e6-c14f-f6d1-60766f2589d6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('d7d41139-05b1-64b8-dd47-60766fb30376', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('d8cf0afc-d056-c310-013d-60766f0a676c', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('d904b8ac-b563-fb49-5f29-60766f16afb2', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('d938f56b-b83f-c4f2-2fb7-60766fcba638', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Tasks', 'module', 89, 0),
('d99ac677-c46d-950a-9f81-60766f62782a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('dadc80d2-5209-1c11-e9f5-60766f1b11df', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('dafeccc7-ee1e-1e4d-c72d-60766fa23afa', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('db1d4e06-c2b0-fcb1-e69a-60766f25a9fa', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'Tasks', 'module', 90, 0),
('db406420-46d3-b2ba-f83e-60766f26ea7e', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('db81057a-91eb-0c22-b95f-60766fdb7ecc', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Cases', 'module', 90, 0),
('dbbcf49f-3d58-d199-dd9c-60766f41d2f3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('dcf380a4-2a17-aaa3-303f-60766fde033d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('dd33e1b5-86b0-02b3-bb81-60766facd16b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'Tasks', 'module', 90, 0),
('dd5ca402-2f44-c882-accf-60766f997dd3', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('dd9ed934-2c2f-8cb0-ae08-60766f834f13', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('dda01918-3f30-45bc-ad9d-60766fc92771', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('decf980b-b297-03e8-0072-60766f39e64f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('df0ffcec-0695-8300-50e4-60766fa93342', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('df7de646-3350-abbd-3ea5-60766fa95f61', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('df952f96-ade8-5fb7-5849-60766f039ff4', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('dfab926d-2547-ca95-439e-60766f73a8b8', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('e0baf2ac-ab1b-dbd3-31a9-60766f770818', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('e0f697f8-d582-a9fe-22de-60766f388435', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('e14017fe-c997-6c82-be48-60766fe01982', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('e16edc1e-2128-a188-c029-60766fe81804', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('e1a24abe-23d1-84af-48d7-60766f4dd023', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('e29cad3d-b9cd-aaec-fdfa-60766f267e8f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'Tasks', 'module', 90, 0),
('e309b9bc-30c0-ff54-b366-60766f0297ba', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('e3276249-d4b1-c4cf-f3c4-60766fa80687', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('e4ae5d61-5556-8d37-e688-60766fbaf776', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'Tasks', 'module', 90, 0),
('e516fdbb-e714-e6d9-11ab-60766f77b929', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('e527a44a-fb48-9842-2b93-60766f7aeac1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('e5855f52-015b-52af-bc64-60766f6d720d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('e59e1fdc-abc5-6237-0b58-60766f9b56a4', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('e664c7e2-ceac-c73d-069f-60766ff7e032', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('e6ce4bc7-e897-a2c0-d226-60766fa5a6c4', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('e730358d-8ab5-719e-e5a7-60766f1700c1', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('e830b4ed-0da6-be33-95c8-60766fa67078', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('e84ca130-2aba-b2a8-06f8-60766f0bb115', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('e8cd4988-7ae3-62b2-b0de-60766f590f1d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('e95de937-4dc9-6228-f783-60766f9cd699', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('ea0f7f64-0700-b978-0388-60766fcbf1a7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('ea6fec78-b9e9-5324-ddd1-60766fa981f6', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('ec188c97-3749-57be-1c0d-60766f4f93a5', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('ec5a13be-d568-6b8b-a943-60766fabad00', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('ed040a58-3c21-4a21-fb51-60766f5c38f7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('ee43b738-fbaa-bedb-275f-60766fd123b7', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('ee9f126a-fb1e-69e4-2baf-60766f2ef824', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('f0d166a2-96b7-843d-6442-60766f441b04', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('f0f8ab98-0548-3884-bd97-60766f85515d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('f2cb23dc-c720-7fb0-01c1-60766f5d354b', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('f2f640cd-a130-7a2d-17a7-60766f07d2cf', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('f52e03d3-0855-2789-e469-60766f9d65b8', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('f64c064e-32c6-29ab-ccc0-60766f27d465', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('ff560872-014a-97ad-a16f-60766f74871f', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Notes', 'module', 89, 0),
('ff70072a-0b85-d374-4e3a-60766f2a92c8', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '', 'access', 'Cases', 'module', 89, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--
DROP TABLE IF EXISTS acl_roles;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--
DROP TABLE IF EXISTS acl_roles_actions;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--
DROP TABLE IF EXISTS acl_roles_users;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--
DROP TABLE IF EXISTS address_book;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--
DROP TABLE IF EXISTS alerts;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--
DROP TABLE IF EXISTS am_projecttemplates;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--
DROP TABLE IF EXISTS am_projecttemplates_audit;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--
DROP TABLE IF EXISTS am_projecttemplates_contacts_1_c;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--
DROP TABLE IF EXISTS am_projecttemplates_project_1_c;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_users_1_c`
--
DROP TABLE IF EXISTS am_projecttemplates_users_1_c;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--
DROP TABLE IF EXISTS am_tasktemplates;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT 0,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT 0,
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--
DROP TABLE IF EXISTS am_tasktemplates_am_projecttemplates_c;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--
DROP TABLE IF EXISTS am_tasktemplates_audit;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aobh_businesshours`
--
DROP TABLE IF EXISTS aobh_businesshours;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--
DROP TABLE IF EXISTS aod_index;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2021-04-14 04:28:16', '2021-04-14 04:28:16', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--
DROP TABLE IF EXISTS aod_indexevent;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('10f3532c-ec99-4283-1e18-6079a1e0de4c', 'earings', '2021-04-16 14:39:41', '2021-04-16 14:39:41', '1', '1', NULL, 0, NULL, NULL, 1, 'e21892dc-f879-0a4f-16ab-6079a19ae686', 'AOS_Product_Categories'),
('18c63115-8832-1ff1-d39a-609501d8aa56', 'Vũ Hải', '2021-05-07 09:01:02', '2021-05-07 11:37:56', '1', '1', NULL, 0, '', NULL, 1, '9b037089-d9f8-0741-8168-609501263610', 'idKyG_HangKyGui'),
('2242cff7-9a7a-e985-232d-608eb93f3006', 'tenCH', '2021-05-02 14:39:51', '2021-05-07 11:41:10', '1', '1', NULL, 0, '', NULL, 1, 'a265b5c3-22c9-c085-ff5f-608eb9a9acf0', 'idKyG_HangKyGui'),
('3a4f15ab-9dbe-4085-1c02-60acddeee126', 'Hai', '2021-05-25 11:21:37', '2021-05-25 11:24:25', '1', '1', NULL, 0, '', NULL, 1, '13fca11e-b6cc-d491-7a95-60acdd32b4e1', 'idKyG_HangKyGui'),
('4c4a36d5-5baf-b447-70f1-60767237325c', 'Bana', '2021-04-14 04:41:22', '2021-04-27 14:13:40', '1', '1', NULL, 0, '', NULL, 1, 'a0e40a7d-41b0-6b00-cb18-6076723a660d', 'AOS_Product_Categories'),
('5224d4b9-5369-0d1d-a829-6076f155fd05', 'Mr. Hai Vu', '2021-04-14 13:42:41', '2021-04-14 13:42:41', '1', '1', NULL, 0, NULL, NULL, 1, '1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', 'Contacts'),
('5ed62404-6034-6e80-b19e-6088001c950c', 'Mr. Vũ Hải', '2021-04-27 12:14:54', '2021-04-27 12:14:54', '1', '1', NULL, 0, NULL, NULL, 1, 'e37682ed-2e32-c2e7-f9cf-6088005c02a7', 'Contacts'),
('65a489f9-630d-12ec-68be-609611399c5d', 'Monthly newsletter', '2021-05-08 04:19:58', '2021-05-08 04:19:58', '1', '1', NULL, 0, NULL, NULL, 1, '44e7b68d-0452-f21e-8be3-609611bc239d', 'ProspectLists'),
('6a85faf3-8b17-6ff6-f8bc-6087fd2925b7', 'Mr. Trấn Hải Chiêm', '2021-04-27 12:04:14', '2021-04-27 12:12:44', '1', '1', NULL, 0, '', NULL, 1, 'ac080d64-f23e-2b64-68c1-6087fdc8db63', 'Contacts'),
('6ca37b94-5511-32e7-e42a-60882bc94737', 'Vũ Hải', '2021-04-27 15:17:49', '2021-04-27 15:17:49', '1', '1', NULL, 0, NULL, NULL, 1, '32cf7e21-70c6-6209-1c8a-60882bac6874', 'Leads'),
('90c707f0-8952-4a9a-d145-60961034afe9', 'test CPG', '2021-05-08 04:15:04', '2021-05-08 04:15:04', '1', '1', NULL, 0, NULL, NULL, 1, '744ab1bc-83b6-5306-6d7b-609610ce848a', 'ProspectLists'),
('99f4f3ba-74d8-428e-58d4-607672199851', 'Bag', '2021-04-14 04:41:54', '2021-04-14 13:31:51', '1', '1', NULL, 0, '', NULL, 1, '82984a00-ae27-5f5c-3198-6076722e6556', 'AOS_Product_Categories'),
('a5754b36-e2ea-d283-3c9c-60ace1ef6dc5', 'Khách hàng', '2021-05-25 11:35:49', '2021-05-25 11:35:49', '1', '1', NULL, 0, NULL, NULL, 1, '6b39bb5b-9345-b8f7-d5f6-60ace1f223ba', 'Accounts'),
('aa5073fd-c093-f5c0-9274-60770e3fb226', 'Chăm', '2021-04-14 15:45:54', '2021-04-14 15:45:54', '1', '1', NULL, 0, NULL, NULL, 1, '9100087e-7e4f-7e6e-f589-60770e4f3982', 'AOS_Product_Categories'),
('b1358141-85ec-8293-0476-60881f9952d2', 'Mr. Phương Gia Châu', '2021-04-27 14:29:31', '2021-04-27 14:29:31', '1', '1', NULL, 0, NULL, NULL, 1, 'efe6fe3b-57b6-55fd-0449-60881fd245ce', 'Contacts'),
('c1ca0c40-831f-0cfb-1fce-6076721c71d4', 'Bracelet', '2021-04-14 04:42:20', '2021-04-14 04:42:20', '1', '1', NULL, 0, NULL, NULL, 1, 'eb4e24e4-5d2d-9c00-fa3e-607672777673', 'AOS_Product_Categories'),
('c1dfabd9-3283-cab6-8860-60881b484d51', 'test tran hai', '2021-04-27 14:13:14', '2021-04-27 14:13:14', '1', '1', NULL, 0, NULL, NULL, 1, 'a0c29ff2-9969-3b4f-6229-60881bbe720a', 'AOS_Product_Categories'),
('c6459016-ee4b-aa5f-5da6-609646a81a7c', 'Phương Gia Châu', '2021-05-08 08:05:26', '2021-05-08 08:05:59', '1', '1', NULL, 0, '', NULL, 1, '5d98056d-34fa-9510-6543-6096469d5e43', 'idKyG_HangKyGui'),
('c8ffdefe-430f-5924-a67e-60acdf88c0a5', 'Coffe', '2021-05-25 11:30:14', '2021-05-25 11:45:10', '1', '1', NULL, 0, '', NULL, 1, '9e69d7d3-43e3-b618-fd09-60acdfc197bd', 'idKyG_HangKyGui'),
('e49982cb-6d4c-c168-5ec7-607992d66e52', 'Vũ Thanh Hải', '2021-04-16 13:36:42', '2021-04-16 13:36:42', '1', '1', NULL, 0, NULL, NULL, 1, '8b6c4dd6-d43e-0c33-fc74-6079927b26e1', 'Accounts'),
('e68a8400-c134-88e1-4329-60ace1ae8bd2', 'Mr. Vũ Hải', '2021-05-25 11:36:35', '2021-05-25 11:36:35', '1', '1', NULL, 0, NULL, NULL, 1, '683f95be-6a15-ceb2-9213-60ace1f12fd4', 'Contacts');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--
DROP TABLE IF EXISTS aod_indexevent_audit;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--
DROP TABLE IF EXISTS aod_index_audit;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--
DROP TABLE IF EXISTS aok_knowledgebase;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--
DROP TABLE IF EXISTS aok_knowledgebase_audit;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--
DROP TABLE IF EXISTS aok_knowledgebase_categories;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--
DROP TABLE IF EXISTS aok_knowledge_base_categories;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--
DROP TABLE IF EXISTS aok_knowledge_base_categories_audit;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--
DROP TABLE IF EXISTS aop_case_events;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--
DROP TABLE IF EXISTS aop_case_events_audit;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--
DROP TABLE IF EXISTS aop_case_updates;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--
DROP TABLE IF EXISTS aop_case_updates_audit;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--
DROP TABLE IF EXISTS aor_charts;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--
DROP TABLE IF EXISTS aor_conditions;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--
DROP TABLE IF EXISTS aor_fields;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--
DROP TABLE IF EXISTS aor_reports;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--
DROP TABLE IF EXISTS aor_reports_audit;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--
DROP TABLE IF EXISTS aor_scheduled_reports;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext DEFAULT NULL,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--
DROP TABLE IF EXISTS aos_contracts;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--
DROP TABLE IF EXISTS aos_contracts_audit;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--
DROP TABLE IF EXISTS aos_contracts_documents;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--
DROP TABLE IF EXISTS aos_invoices;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE aos_invoices ADD order_id BIGINT;
--
-- Dumping data for table `aos_invoices`
--

INSERT INTO `aos_invoices` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `number`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`, `currency_id`, `quote_number`, `quote_date`, `invoice_date`, `due_date`, `status`, `template_ddown_c`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`) VALUES
('17a6ee50-ddf5-b74d-3326-608820eeb3fe', '', '2021-04-27 14:34:06', '2021-05-07 09:01:49', '1', '1', NULL, 0, 'b07810a6-fbf0-40fe-f328-6076712f35e3', '', 'efe6fe3b-57b6-55fd-0449-60881fd245ce', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', 5, '500021.000000', '0.000000', '500020.790000', '0.000000', '-0.210000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '500020.790000', '0.000000', '-99', NULL, '2021-04-27', '2021-04-27', NULL, 'Paid', NULL, NULL, '0.000000'),
('1e4a971e-9a4d-e7b9-1cbd-60799e5f04d6', 'test', '2021-04-16 14:26:07', '2021-04-27 14:43:27', '1', '1', NULL, 0, '1', '', '1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', NULL, NULL, NULL, NULL, NULL, 3, '72500315.000000', '0.000000', '72500315.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '72500315.000000', '0.000000', '-99', 0, '2021-04-16', '2021-04-16', NULL, 'Unpaid', NULL, NULL, '0.000000'),
('29cbbc94-6f3c-6618-e08a-6076f37741c6', 'MR', '2021-04-14 13:50:56', '2021-04-14 13:50:56', '1', '1', '', 0, '1', '', '1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', 1, '25525.000000', '0.000000', '5225.000000', '0.000000', '5252.000000', '0.000000', '0.000000', '0.000000', '52525.000000', '0.000000', '0.0', '0.000000', '0.000000', '52525.000000', '0.000000', '-99', 0, '2021-04-14', '2021-04-14', NULL, 'Paid', NULL, NULL, '0.000000'),
('31229e3e-4246-6ea6-b4d4-6088227b02ba', '', '2021-04-27 14:39:28', '2021-05-07 09:01:28', '1', '1', NULL, 0, '1', '', '', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', 6, '500021.000000', '0.000000', '500010.500000', '0.000000', '-10.500000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '500010.500000', '0.000000', '-99', NULL, '2021-04-27', '2021-04-27', NULL, 'Paid', NULL, NULL, '0.000000'),
('55b10424-9c5d-f727-b41e-60ace222b78d', '', '2021-05-25 11:43:31', '2021-05-25 11:43:31', '1', '1', '', 0, '1', '6b39bb5b-9345-b8f7-d5f6-60ace1f223ba', '683f95be-6a15-ceb2-9213-60ace1f12fd4', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', 11, '21.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '21.000000', '0.000000', '-99', NULL, '2021-05-25', '2021-05-25', NULL, 'Paid', NULL, NULL, '0.000000'),
('8903ed81-524e-c70b-4934-609640e17e66', '', '2021-05-08 07:39:18', '2021-05-08 07:39:18', '1', '1', '', 0, '1', '8b6c4dd6-d43e-0c33-fc74-6079927b26e1', '', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', 10, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '0.000000', '0.000000', '-99', NULL, '2021-05-08', '2021-05-08', NULL, 'Paid', NULL, NULL, '0.000000'),
('8c549e54-6a94-164f-db0d-609527dfed74', '', '2021-05-07 11:40:56', '2021-05-07 11:40:56', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 9, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '0.000000', '0.000000', '-99', NULL, '2021-05-07', '2021-05-07', NULL, 'Paid', NULL, NULL, '0.000000'),
('935a31a0-da78-453f-aafd-6095016d6862', '', '2021-05-07 08:59:50', '2021-05-25 11:42:37', '1', '1', NULL, 0, '1', '8b6c4dd6-d43e-0c33-fc74-6079927b26e1', '', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', NULL, NULL, NULL, NULL, NULL, 7, '21.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '21.000000', '0.000000', '-99', NULL, '2021-05-07', '2021-05-07', NULL, 'Paid', NULL, NULL, '0.000000'),
('99100845-584a-3556-5cbe-607835087e8c', 'test', '2021-04-15 12:44:49', '2021-04-15 12:44:49', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 2, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '0.000000', '0.000000', '-99', 0, '2021-04-15', '2021-04-15', NULL, 'Paid', NULL, NULL, '0.000000'),
('ade2326d-7048-6326-1d64-60952703717c', '', '2021-05-07 11:40:51', '2021-05-07 11:40:51', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', '', '', '', 8, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, NULL, '0.000000', '0.000000', '0.000000', '-99', NULL, '2021-05-07', '2021-05-07', NULL, 'Paid', NULL, NULL, '0.000000'),
('e53774d0-b96f-1d20-7ef4-608801956dca', '', '2021-04-27 12:21:27', '2021-04-27 12:21:27', '1', '1', '', 0, '1', '', 'e37682ed-2e32-c2e7-f9cf-6088005c02a7', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', 4, '1000000.000000', '0.000000', '750000.000000', '0.000000', '-250000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '750000.000000', '0.000000', '-99', NULL, '2021-04-27', '2021-04-27', NULL, 'Paid', NULL, NULL, '0.000000');

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--
DROP TABLE IF EXISTS aos_invoices_audit;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_cstm`
--
DROP TABLE IF EXISTS aos_invoices_cstm;
CREATE TABLE `aos_invoices_cstm` (
  `id_c` char(36) NOT NULL,
  `invoicetype_c` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_invoices_cstm`
--

INSERT INTO `aos_invoices_cstm` (`id_c`, `invoicetype_c`) VALUES
('17a6ee50-ddf5-b74d-3326-608820eeb3fe', '^inStore^'),
('31229e3e-4246-6ea6-b4d4-6088227b02ba', '^Online^'),
('55b10424-9c5d-f727-b41e-60ace222b78d', '^kyGui^'),
('8903ed81-524e-c70b-4934-609640e17e66', '^inStore^'),
('8c549e54-6a94-164f-db0d-609527dfed74', ''),
('935a31a0-da78-453f-aafd-6095016d6862', '^kyGui^'),
('ade2326d-7048-6326-1d64-60952703717c', '');

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--
DROP TABLE IF EXISTS aos_line_item_groups;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_line_item_groups`
--

INSERT INTO `aos_line_item_groups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `total_amt`, `total_amt_usdollar`, `discount_amount`, `discount_amount_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`, `total_amount`, `total_amount_usdollar`, `parent_type`, `parent_id`, `number`, `currency_id`) VALUES
('1be35ecb-6188-b54d-ed54-60ace2236edb', 'Hóa đơn anh Hải ngày 15/4/2020', '2021-05-25 11:43:31', '2021-05-25 11:43:31', '1', '1', NULL, 0, '1', '21.000000', '0.000000', '0.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '21.000000', '0.000000', 'AOS_Invoices', '55b10424-9c5d-f727-b41e-60ace222b78d', 1, '-99'),
('1e2f043a-1622-279a-f772-60880156cc53', 'Hóa đơn anh Hải ngày 15/4/2020', '2021-04-27 12:21:27', '2021-04-27 12:21:27', '1', '1', NULL, 0, '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'AOS_Invoices', 'e53774d0-b96f-1d20-7ef4-608801956dca', 1, '-99'),
('242c2941-fda7-75f6-5eb6-6078350a6ae3', 'Hóa đơn anh Hải ngày 15/4/2020', '2021-04-15 12:44:49', '2021-04-15 12:44:49', '1', '1', NULL, 0, '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'AOS_Invoices', '99100845-584a-3556-5cbe-607835087e8c', 1, '-99'),
('2f2635a1-ddfb-921f-a765-60799e6bb9e1', NULL, '2021-04-16 14:26:07', '2021-04-27 14:43:27', '1', '1', NULL, 0, '1', '72500315.000000', '0.000000', '0.000000', '0.000000', '72500315.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '72500315.000000', '0.000000', 'AOS_Invoices', '1e4a971e-9a4d-e7b9-1cbd-60799e5f04d6', 1, '-99'),
('2f311646-f668-9f22-7e49-609640553a20', 'Hóa đơn anh Hải ngày 15/4/2020', '2021-05-08 07:39:18', '2021-05-08 07:39:18', '1', '1', NULL, 0, '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'AOS_Invoices', '8903ed81-524e-c70b-4934-609640e17e66', 1, '-99'),
('30849a78-b0ac-549b-ea38-608820ff4969', NULL, '2021-04-27 14:34:06', '2021-05-07 09:01:49', '1', '1', NULL, 0, 'b07810a6-fbf0-40fe-f328-6076712f35e3', '500021.000000', '0.000000', '-0.210000', '0.000000', '500020.790000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '500020.790000', '0.000000', 'AOS_Invoices', '17a6ee50-ddf5-b74d-3326-608820eeb3fe', 1, '-99'),
('4ba48f24-aa5a-29bd-41eb-60882214f0f1', 'group1 ', '2021-04-27 14:39:28', '2021-05-07 09:01:28', '1', '1', NULL, 0, '1', '500021.000000', '0.000000', '-10.500000', '0.000000', '500010.500000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '500010.500000', '0.000000', 'AOS_Invoices', '31229e3e-4246-6ea6-b4d4-6088227b02ba', 1, '-99'),
('58b78b03-3484-375a-db34-60882264ba34', '', '2021-04-27 14:39:28', '2021-04-27 14:39:28', '1', '1', NULL, 0, '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'AOS_Invoices', '31229e3e-4246-6ea6-b4d4-6088227b02ba', 2, '-99'),
('5adb1994-ace8-f3e7-49f9-608822687f84', '', '2021-04-27 14:39:28', '2021-04-27 14:39:28', '1', '1', NULL, 0, '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'AOS_Invoices', '31229e3e-4246-6ea6-b4d4-6088227b02ba', 3, '-99'),
('5da011d8-c607-2135-2437-60882242e49c', '', '2021-04-27 14:39:28', '2021-04-27 14:39:28', '1', '1', NULL, 0, '1', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '0.000000', '0.000000', 'AOS_Invoices', '31229e3e-4246-6ea6-b4d4-6088227b02ba', 4, '-99'),
('91f70e54-cc99-3945-95ac-608801d9268e', 'Hóa đơn anh Hải ngày 15/4/2020', '2021-04-27 12:21:27', '2021-04-27 12:21:27', '1', '1', NULL, 0, '1', '1000000.000000', '0.000000', '-250000.000000', '0.000000', '750000.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '750000.000000', '0.000000', 'AOS_Invoices', 'e53774d0-b96f-1d20-7ef4-608801956dca', 2, '-99'),
('a6d3580a-49b1-158d-5810-609501ad6947', 'Hóa đơn anh Hải ngày 15/4/2020', '2021-05-07 08:59:50', '2021-05-25 11:42:37', '1', '1', NULL, 0, '1', '21.000000', '0.000000', '0.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '21.000000', '0.000000', 'AOS_Invoices', '935a31a0-da78-453f-aafd-6095016d6862', 1, '-99');

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--
DROP TABLE IF EXISTS aos_line_item_groups_audit;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--
DROP TABLE IF EXISTS aos_pdf_templates;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text DEFAULT NULL,
  `pdffooter` text DEFAULT NULL,
  `margin_left` int(255) DEFAULT 15,
  `margin_right` int(255) DEFAULT 15,
  `margin_top` int(255) DEFAULT 16,
  `margin_bottom` int(255) DEFAULT 16,
  `margin_header` int(255) DEFAULT 9,
  `margin_footer` int(255) DEFAULT 9,
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--
DROP TABLE IF EXISTS aos_pdf_templates_audit;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--
DROP TABLE IF EXISTS aos_products;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products`
--

INSERT INTO `aos_products` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `maincode`, `part_number`, `category`, `type`, `cost`, `cost_usdollar`, `currency_id`, `price`, `price_usdollar`, `url`, `contact_id`, `product_image`, `aos_product_category_id`) VALUES
('6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', 'Bão', '2021-04-14 04:43:45', '2021-04-14 04:43:45', '1', '1', 'vòng tay bão', 0, NULL, 'XXXX', '', NULL, 'Good', '2.000000', '0.000000', '-99', '21.000000', '0.000000', '', '', NULL, 'eb4e24e4-5d2d-9c00-fa3e-607672777673'),
('bf852904-0205-570e-6d43-6076705efaae', 'test', '2021-04-14 04:32:13', '2021-04-14 04:32:13', '1', '1', 'ádasdasd', 0, NULL, 'XXXX', 'ádasd', NULL, 'Good', '0.000000', '0.000000', '-99', '500000.000000', '0.000000', '', '', NULL, ''),
('db17476b-33fd-cbd9-e1f9-60770da2b5b4', 'test 2', '2021-04-14 15:44:53', '2021-04-14 16:14:50', '1', '1', 'product bão', 0, '', 'XXXX', NULL, NULL, 'Good', '45000.000000', '0.000000', '-99', '500000.000000', '0.000000', 'https://themay.vn/product/bao/', '', NULL, 'a0e40a7d-41b0-6b00-cb18-6076723a660d');

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_aos_invoices_1_c`
--
DROP TABLE IF EXISTS aos_products_aos_invoices_1_c;
CREATE TABLE `aos_products_aos_invoices_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_products_aos_invoices_1aos_products_ida` varchar(36) DEFAULT NULL,
  `aos_products_aos_invoices_1aos_invoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--
DROP TABLE IF EXISTS aos_products_audit;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_cstm`
--
DROP TABLE IF EXISTS aos_products_cstm;
CREATE TABLE `aos_products_cstm` (
  `id_c` char(36) NOT NULL,
  `soluong_c` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_cstm`
--

INSERT INTO `aos_products_cstm` (`id_c`, `soluong_c`) VALUES
('db17476b-33fd-cbd9-e1f9-60770da2b5b4', 50);

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--
DROP TABLE IF EXISTS aos_products_quotes;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_quotes`
--

INSERT INTO `aos_products_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `currency_id`, `part_number`, `item_description`, `number`, `product_qty`, `product_cost_price`, `product_cost_price_usdollar`, `product_list_price`, `product_list_price_usdollar`, `product_discount`, `product_discount_usdollar`, `product_discount_amount`, `product_discount_amount_usdollar`, `discount`, `product_unit_price`, `product_unit_price_usdollar`, `vat_amt`, `vat_amt_usdollar`, `product_total_price`, `product_total_price_usdollar`, `vat`, `parent_type`, `parent_id`, `product_id`, `group_id`) VALUES
('1743a557-a154-0f14-42c7-6088014b5a5b', 'test', '2021-04-27 12:21:27', '2021-04-27 12:21:27', '1', '1', '', 0, '1', '-99', 'ádasd', 'ádasdasd', 2, '1.0000', '0.000000', '0.000000', '500000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '500000.000000', '0.000000', '0.000000', '0.000000', '500000.000000', '0.000000', '0.0', 'AOS_Invoices', 'e53774d0-b96f-1d20-7ef4-608801956dca', 'bf852904-0205-570e-6d43-6076705efaae', '91f70e54-cc99-3945-95ac-608801d9268e'),
('21c6a68b-2c3b-639c-223e-60ace228440e', 'Bão', '2021-05-25 11:43:31', '2021-05-25 11:43:31', '1', '1', '', 0, '1', '-99', '', 'vòng tay bão', 1, '1.0000', '2.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '21.000000', '0.000000', '0.000000', '0.000000', '21.000000', '0.000000', '0.0', 'AOS_Invoices', '55b10424-9c5d-f727-b41e-60ace222b78d', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', '1be35ecb-6188-b54d-ed54-60ace2236edb'),
('3504bbf2-6cbc-c0a2-d7b4-608820138ad2', 'test', '2021-04-27 14:34:06', '2021-05-07 09:01:49', '1', '1', NULL, 0, 'b07810a6-fbf0-40fe-f328-6076712f35e3', '-99', 'ádasd', 'ádasdasd', 1, '1.0000', '0.000000', '0.000000', '500000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '500000.000000', '0.000000', '0.000000', '0.000000', '500000.000000', '0.000000', '0.0', 'AOS_Invoices', '17a6ee50-ddf5-b74d-3326-608820eeb3fe', 'bf852904-0205-570e-6d43-6076705efaae', '30849a78-b0ac-549b-ea38-608820ff4969'),
('36749769-9e30-4ae6-50c2-60799e7af2bf', 'Bão', '2021-04-16 14:26:07', '2021-04-27 14:43:27', '1', '1', NULL, 0, '1', '-99', NULL, 'vòng tay bão', 1, '15.0000', '2.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '21.000000', '0.000000', '0.000000', '0.000000', '315.000000', '0.000000', '0.0', 'AOS_Invoices', '1e4a971e-9a4d-e7b9-1cbd-60799e5f04d6', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', '2f2635a1-ddfb-921f-a765-60799e6bb9e1'),
('3a30f0c3-3294-550c-8f17-60799ecf109f', 'test 2', '2021-04-16 14:26:07', '2021-04-27 14:43:27', '1', '1', NULL, 0, '1', '-99', NULL, 'product bão', 2, '145.0000', '45000.000000', '0.000000', '500000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '500000.000000', '0.000000', '0.000000', '0.000000', '72500000.000000', '0.000000', '0.0', 'AOS_Invoices', '1e4a971e-9a4d-e7b9-1cbd-60799e5f04d6', 'db17476b-33fd-cbd9-e1f9-60770da2b5b4', '2f2635a1-ddfb-921f-a765-60799e6bb9e1'),
('3a90db53-77cf-e38c-9a40-6088208f8fb6', 'Bão', '2021-04-27 14:34:06', '2021-05-07 09:01:49', '1', '1', NULL, 0, 'b07810a6-fbf0-40fe-f328-6076712f35e3', '-99', NULL, 'vòng tay bão', 2, '1.0000', '2.000000', '0.000000', '21.000000', '0.000000', '1.000000', '0.000000', '-0.210000', '0.000000', 'Percentage', '20.790000', '0.000000', '0.000000', '0.000000', '20.790000', '0.000000', '0.0', 'AOS_Invoices', '17a6ee50-ddf5-b74d-3326-608820eeb3fe', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', '30849a78-b0ac-549b-ea38-608820ff4969'),
('504cccea-7fce-6cde-cccd-609640e46cc4', 'Bão', '2021-05-08 07:39:18', '2021-05-08 07:39:18', '1', '1', '', 0, '1', '-99', '', 'vòng tay bão', 1, '0.0000', '2.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', 'AOS_Invoices', '8903ed81-524e-c70b-4934-609640e17e66', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', '2f311646-f668-9f22-7e49-609640553a20'),
('64c6a1c7-f53e-dd02-480f-608822b1a851', 'Bão', '2021-04-27 14:39:28', '2021-05-07 09:01:28', '1', '1', NULL, 0, '1', '-99', NULL, 'vòng tay bão', 1, '1.0000', '2.000000', '0.000000', '21.000000', '0.000000', '50.000000', '0.000000', '-10.500000', '0.000000', 'Percentage', '10.500000', '0.000000', '0.000000', '0.000000', '10.500000', '0.000000', '0.0', 'AOS_Invoices', '31229e3e-4246-6ea6-b4d4-6088227b02ba', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', '4ba48f24-aa5a-29bd-41eb-60882214f0f1'),
('77d2b8c0-925b-79b8-65a1-6088221ee299', 'test', '2021-04-27 14:39:28', '2021-05-07 09:01:28', '1', '1', NULL, 0, '1', '-99', 'ádasd', 'ádasdasd', 2, '1.0000', '0.000000', '0.000000', '500000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '500000.000000', '0.000000', '0.000000', '0.000000', '500000.000000', '0.000000', '0.0', 'AOS_Invoices', '31229e3e-4246-6ea6-b4d4-6088227b02ba', 'bf852904-0205-570e-6d43-6076705efaae', '4ba48f24-aa5a-29bd-41eb-60882214f0f1'),
('7b5721f0-6930-3ce0-4e47-60783500cf08', 'test', '2021-04-15 12:44:49', '2021-04-15 12:44:49', '1', '1', '', 0, '1', '-99', 'ádasd', 'ádasdasd', 1, '0.0000', '0.000000', '0.000000', '500000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '500000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', 'AOS_Invoices', '99100845-584a-3556-5cbe-607835087e8c', 'bf852904-0205-570e-6d43-6076705efaae', '242c2941-fda7-75f6-5eb6-6078350a6ae3'),
('7fc1257d-41f8-302a-d20b-607835770c75', 'Bão', '2021-04-15 12:44:49', '2021-04-15 12:44:49', '1', '1', '', 0, '1', '-99', '', 'vòng tay bão', 2, '0.0000', '2.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', 'AOS_Invoices', '99100845-584a-3556-5cbe-607835087e8c', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', '242c2941-fda7-75f6-5eb6-6078350a6ae3'),
('acb33ece-d927-2acb-8a3d-6095014b6448', 'Bão', '2021-05-07 08:59:50', '2021-05-25 11:42:37', '1', '1', NULL, 0, '1', '-99', NULL, 'vòng tay bão', 1, '1.0000', '2.000000', '0.000000', '21.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '21.000000', '0.000000', '0.000000', '0.000000', '21.000000', '0.000000', '0.0', 'AOS_Invoices', '935a31a0-da78-453f-aafd-6095016d6862', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', 'a6d3580a-49b1-158d-5810-609501ad6947'),
('dac20588-1e6e-2d42-f3eb-608801ed5509', 'test 2', '2021-04-27 12:21:27', '2021-04-27 12:21:27', '1', '1', '', 0, '1', '-99', '', 'product bão', 1, '1.0000', '45000.000000', '0.000000', '500000.000000', '0.000000', '50.000000', '0.000000', '-250000.000000', '0.000000', 'Percentage', '250000.000000', '0.000000', '0.000000', '0.000000', '250000.000000', '0.000000', '0.0', 'AOS_Invoices', 'e53774d0-b96f-1d20-7ef4-608801956dca', 'db17476b-33fd-cbd9-e1f9-60770da2b5b4', '91f70e54-cc99-3945-95ac-608801d9268e');

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--
DROP TABLE IF EXISTS aos_products_quotes_audit;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--
DROP TABLE IF EXISTS aos_product_categories;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_product_categories`
--

INSERT INTO `aos_product_categories` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `is_parent`, `parent_category_id`) VALUES
('82984a00-ae27-5f5c-3198-6076722e6556', 'Bag', '2021-04-14 04:41:54', '2021-04-14 13:31:51', '1', '1', 'Túi xách', 0, '1', 0, 'a0e40a7d-41b0-6b00-cb18-6076723a660d'),
('9100087e-7e4f-7e6e-f589-60770e4f3982', 'Chăm', '2021-04-14 15:45:54', '2021-04-14 15:45:54', '1', '1', 'Bst Chăm', 0, '1', 0, ''),
('a0c29ff2-9969-3b4f-6229-60881bbe720a', 'test tran hai', '2021-04-27 14:13:14', '2021-04-27 14:13:14', '1', '1', '', 0, '1', 0, 'e21892dc-f879-0a4f-16ab-6079a19ae686'),
('a0e40a7d-41b0-6b00-cb18-6076723a660d', 'Bana', '2021-04-14 04:41:21', '2021-04-27 14:13:40', '1', '1', 'thuộc dân tộc bana', 0, '1', 1, ''),
('e21892dc-f879-0a4f-16ab-6079a19ae686', 'earings', '2021-04-16 14:39:40', '2021-04-16 14:39:40', '1', '1', '', 0, '1', 0, 'a0e40a7d-41b0-6b00-cb18-6076723a660d'),
('eb4e24e4-5d2d-9c00-fa3e-607672777673', 'Bracelet', '2021-04-14 04:42:19', '2021-04-14 04:42:19', '1', '1', 'Vòng tay', 0, '1', 0, 'a0e40a7d-41b0-6b00-cb18-6076723a660d');

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--
DROP TABLE IF EXISTS aos_product_categories_audit;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--
DROP TABLE IF EXISTS aos_quotes;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--
DROP TABLE IF EXISTS aos_quotes_aos_invoices_c;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--
DROP TABLE IF EXISTS aos_quotes_audit;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--
DROP TABLE IF EXISTS aos_quotes_os_contracts_c;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--
DROP TABLE IF EXISTS aos_quotes_project_c;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--
DROP TABLE IF EXISTS aow_actions;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--
DROP TABLE IF EXISTS aow_conditions;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--
DROP TABLE IF EXISTS aow_processed;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--
DROP TABLE IF EXISTS aow_processed_aow_actions;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--
DROP TABLE IF EXISTS aow_workflow;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--
DROP TABLE IF EXISTS aow_workflow_audit;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--
DROP TABLE IF EXISTS bugs;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--
DROP TABLE IF EXISTS bugs_audit;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--
DROP TABLE IF EXISTS calls;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--
DROP TABLE IF EXISTS calls_contacts;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--
DROP TABLE IF EXISTS calls_leads;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--
DROP TABLE IF EXISTS calls_reschedule;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--
DROP TABLE IF EXISTS calls_reschedule_audit;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--
DROP TABLE IF EXISTS calls_users;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--
DROP TABLE IF EXISTS campaigns;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT 0,
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT 0,
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--
DROP TABLE IF EXISTS campaigns_audit;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--
DROP TABLE IF EXISTS campaign_log;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--
DROP TABLE IF EXISTS campaign_trkrs;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--
DROP TABLE IF EXISTS cases;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--
DROP TABLE IF EXISTS cases_audit;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--
DROP TABLE IF EXISTS cases_bugs;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--
DROP TABLE IF EXISTS cases_cstm;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--
DROP TABLE IF EXISTS config;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.24'),
('MySettings', 'tab', 'YToxOTp7aTowO3M6MTI6IkFPV19Xb3JrRmxvdyI7aToxO3M6NDoiSG9tZSI7aToyO3M6ODoiQWNjb3VudHMiO2k6MztzOjg6IkNvbnRhY3RzIjtpOjQ7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo1O3M6NToiTGVhZHMiO2k6NjtzOjEwOiJBT1NfUXVvdGVzIjtpOjc7czo4OiJDYWxlbmRhciI7aTo4O3M6NjoiRW1haWxzIjtpOjk7czo1OiJOb3RlcyI7aToxMDtzOjEyOiJBT1NfSW52b2ljZXMiO2k6MTE7czo1OiJDYXNlcyI7aToxMjtzOjk6IkNhbXBhaWducyI7aToxMztzOjk6IlByb3NwZWN0cyI7aToxNDtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjE1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToxNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjE3O3M6MTE6IkFPUl9SZXBvcnRzIjtpOjE4O3M6MTU6ImlkS3lHX0hhbmdLeUd1aSI7fQ=='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'TheMay CRM'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('MySettings', 'disable_useredit', 'no'),
('MySettings', 'hide_subpanels', 'YTowOnt9'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--
DROP TABLE IF EXISTS contacts;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE contacts ADD customer_id BIGINT;
--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`) VALUES
('1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', '2021-04-14 13:42:41', '2021-04-14 13:42:41', '1', '1', '', 0, '1', 'Mr.', 'Hai', 'Vu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '1999-02-23', '', NULL, NULL, 'Single'),
('683f95be-6a15-ceb2-9213-60ace1f12fd4', '2021-05-25 11:36:35', '2021-05-25 11:36:35', '1', '1', NULL, 0, NULL, 'Mr.', 'Vũ', 'Hải', NULL, NULL, NULL, 0, NULL, '+84933780327', NULL, NULL, NULL, '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Single'),
('ac080d64-f23e-2b64-68c1-6087fdc8db63', '2021-04-27 12:04:13', '2021-04-27 12:12:44', '1', '1', NULL, 0, '1', 'Mr.', 'Trấn Hải', 'Chiêm', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '42 Đặng Dung,', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '1999-02-10', '', NULL, 0, 'Single'),
('e37682ed-2e32-c2e7-f9cf-6088005c02a7', '2021-04-27 12:14:54', '2021-04-27 12:14:54', '1', '1', NULL, 0, '1', 'Mr.', 'Vũ', 'Hải', NULL, NULL, NULL, 0, NULL, '+84933780327', NULL, NULL, NULL, '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-03', NULL, NULL, NULL, 'Single'),
('efe6fe3b-57b6-55fd-0449-60881fd245ce', '2021-04-27 14:29:31', '2021-04-27 14:29:31', '1', '1', NULL, 0, 'b07810a6-fbf0-40fe-f328-6076712f35e3', 'Mr.', 'Phương Gia', 'Châu', NULL, NULL, NULL, 0, NULL, '0963062321', NULL, NULL, NULL, '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', NULL, '7000', 'Vietnam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1999-04-07', NULL, NULL, NULL, 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--
DROP TABLE IF EXISTS contacts_audit;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--
DROP TABLE IF EXISTS contacts_bugs;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--
DROP TABLE IF EXISTS contacts_cases;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--
DROP TABLE IF EXISTS contacts_cstm;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `dobkhachhang_c` datetime DEFAULT NULL,
  `social_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`, `dobkhachhang_c`, `social_c`) VALUES
('1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', 0.00000000, 0.00000000, NULL, NULL, NULL, 'ppppantone'),
('683f95be-6a15-ceb2-9213-60ace1f12fd4', 0.00000000, 0.00000000, '', '', NULL, ''),
('ac080d64-f23e-2b64-68c1-6087fdc8db63', 0.00000000, 0.00000000, '', '', NULL, 'ppppantone'),
('e37682ed-2e32-c2e7-f9cf-6088005c02a7', 0.00000000, 0.00000000, '', '', NULL, ''),
('efe6fe3b-57b6-55fd-0449-60881fd245ce', 0.00000000, 0.00000000, '', '', NULL, 'ppppantone');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--
DROP TABLE IF EXISTS contacts_users;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--
DROP TABLE IF EXISTS cron_remove_documents;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--
DROP TABLE IF EXISTS currencies;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--
DROP TABLE IF EXISTS custom_fields;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT 0,
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--
DROP TABLE IF EXISTS documents;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--
DROP TABLE IF EXISTS documents_accounts;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--
DROP TABLE IF EXISTS documents_bugs;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--
DROP TABLE IF EXISTS documents_cases;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--
DROP TABLE IF EXISTS documents_contacts;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--
DROP TABLE IF EXISTS documents_opportunities;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--
DROP TABLE IF EXISTS document_revisions;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--
DROP TABLE IF EXISTS eapm;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text DEFAULT NULL,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--
DROP TABLE IF EXISTS emailman;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT 0,
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--
DROP TABLE IF EXISTS emails;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--
DROP TABLE IF EXISTS emails_beans;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--
DROP TABLE IF EXISTS emails_email_addr_rel;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--
DROP TABLE IF EXISTS emails_text;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--
DROP TABLE IF EXISTS email_addresses;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT 0,
  `opt_out` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('620ae2f4-af09-2398-d9b8-6078362e312d', 'redgatetest03@gmail.com', 'REDGATETEST03@GMAIL.COM', 0, 0, '2021-04-15 12:51:57', '2021-04-15 12:51:57', 0),
('b5714a87-77fb-3fba-7b62-60881f70ff16', '1712412@student.hcmus.edu.vn', '1712412@STUDENT.HCMUS.EDU.VN', 0, 0, '2021-04-27 14:29:31', '2021-04-27 14:29:31', 0),
('c4f7bf36-6443-7dd5-e293-60767141315f', 'vuthanhhai2302@gmail.com', 'VUTHANHHAI2302@GMAIL.COM', 0, 0, '2021-04-14 04:38:52', '2021-04-14 04:38:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--
DROP TABLE IF EXISTS email_addr_bean_rel;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT 0,
  `reply_to_address` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('54a5f42f-945e-fb76-8cae-6076f116a53a', 'c4f7bf36-6443-7dd5-e293-60767141315f', '1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', 'Contacts', 1, 0, '2021-04-14 13:42:41', '2021-04-14 13:42:41', 0),
('614a32f2-76df-51db-9da6-608800e85897', 'c4f7bf36-6443-7dd5-e293-60767141315f', 'e37682ed-2e32-c2e7-f9cf-6088005c02a7', 'Contacts', 1, 0, '2021-04-27 12:14:54', '2021-04-27 12:14:54', 0),
('61d40ebf-bc5b-3966-827c-6078362c6f82', '620ae2f4-af09-2398-d9b8-6078362e312d', '1', 'Users', 1, 0, '2021-04-15 12:51:57', '2021-04-15 12:51:57', 0),
('6d8c739f-e7f3-1855-8c6a-6087fd394025', 'c4f7bf36-6443-7dd5-e293-60767141315f', 'ac080d64-f23e-2b64-68c1-6087fdc8db63', 'Contacts', 1, 0, '2021-04-27 12:04:13', '2021-04-27 12:04:13', 0),
('b4ed7c26-dd58-8a7b-e3bc-60881f7d1722', 'c4f7bf36-6443-7dd5-e293-60767141315f', 'efe6fe3b-57b6-55fd-0449-60881fd245ce', 'Contacts', 1, 0, '2021-04-27 14:29:31', '2021-04-27 14:29:31', 0),
('b54e8787-ff14-3d06-97c8-60881fbd35cf', 'b5714a87-77fb-3fba-7b62-60881f70ff16', 'efe6fe3b-57b6-55fd-0449-60881fd245ce', 'Contacts', 0, 0, '2021-04-27 14:29:31', '2021-04-27 14:29:31', 0),
('c4c1705b-6a36-b86d-b2d8-607671377b3e', 'c4f7bf36-6443-7dd5-e293-60767141315f', 'b07810a6-fbf0-40fe-f328-6076712f35e3', 'Users', 1, 0, '2021-04-14 04:38:52', '2021-04-14 04:38:52', 0),
('e858ce76-636b-5d08-a0a2-60ace1441513', 'b5714a87-77fb-3fba-7b62-60881f70ff16', '683f95be-6a15-ceb2-9213-60ace1f12fd4', 'Contacts', 1, 0, '2021-05-25 11:36:35', '2021-05-25 11:36:35', 0),
('e9c11909-17f1-f194-4d34-607992495350', 'c4f7bf36-6443-7dd5-e293-60767141315f', '8b6c4dd6-d43e-0c33-fc74-6079927b26e1', 'Accounts', 1, 0, '2021-04-16 13:36:42', '2021-04-16 13:36:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--
DROP TABLE IF EXISTS email_cache;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--
DROP TABLE IF EXISTS email_marketing;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--
DROP TABLE IF EXISTS email_marketing_prospect_lists;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--
DROP TABLE IF EXISTS email_templates;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `body_html` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('13051e49-c86c-1ce0-e287-60766f61c2f9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, NULL),
('16ea4aee-5d35-91be-32de-60766f3087d9', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p>&nbsp;Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case&nbsp;$acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Description</td><td>$acase_description</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, NULL),
('1b030235-6357-79f1-9997-60766fc5af3d', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>&nbsp;</p>\r\n					    <p>You\'ve had an update to your case&nbsp;$acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, NULL),
('20ef13f1-8ba6-6297-3338-60766f9afade', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					   <p>&nbsp;</p>\r\n					   <p>You\'ve had an update to your case&nbsp;$acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\r\n					   ', 0, NULL, NULL, NULL),
('6770504e-13c9-2c4d-5578-60766f1677e7', '2013-05-24 14:31:45', '2021-04-14 04:26:36', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p>&nbsp;$fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'email'),
('91097c75-b198-12e9-7d27-60766f1a8b10', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, NULL),
('952ca764-c6ae-3f9a-9ed8-60766ff0cb7a', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, NULL),
('e3d30628-0263-eb2b-382f-60766fb8db25', '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p>&nbsp;Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case&nbsp;$acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--
DROP TABLE IF EXISTS favorites;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `parent_id`, `parent_type`) VALUES
('7fdeddd6-5cab-7af9-306a-6076f10d8501', 'Contacts 1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0 1', '2021-04-14 13:43:02', '2021-04-14 13:43:03', '1', '1', NULL, 1, '1', '1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', 'Contacts'),
('c046d1b1-0e04-950f-6264-6078350569c3', 'AOS_Invoices 99100845-584a-3556-5cbe-607835087e8c 1', '2021-04-15 12:45:42', '2021-04-15 12:45:42', '1', '1', NULL, 0, '1', '99100845-584a-3556-5cbe-607835087e8c', 'AOS_Invoices'),
('c972effe-4398-847e-9d8f-6079a8a3a76a', 'Accounts 8b6c4dd6-d43e-0c33-fc74-6079927b26e1 1', '2021-04-16 15:07:50', '2021-04-16 15:07:50', '1', '1', NULL, 0, '1', '8b6c4dd6-d43e-0c33-fc74-6079927b26e1', 'Accounts');

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--
DROP TABLE IF EXISTS fields_meta_data;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `audited` tinyint(1) DEFAULT 0,
  `massupdate` tinyint(1) DEFAULT 0,
  `duplicate_merge` smallint(6) DEFAULT 0,
  `reportable` tinyint(1) DEFAULT 1,
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('AOS_Invoicesinvoicetype_c', 'invoicetype_c', 'LBL_INVOICETYPE', '', '', 'AOS_Invoices', 'multienum', 100, 0, NULL, '2021-05-07 08:55:52', 0, 0, 0, 0, 1, 'true', 'account_type_dom', '', '', ''),
('AOS_Productssoluong_c', 'soluong_c', 'LBL_SOLUONG', NULL, NULL, 'AOS_Products', 'int', 255, 0, NULL, '2021-04-14 16:05:35', 0, 0, 0, 0, 1, 'true', '0', NULL, NULL, NULL),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsdobkhachhang_c', 'dobkhachhang_c', 'LBL_DOBKHACHHANG', '', '', 'Contacts', 'datetimecombo', NULL, 1, '', '2021-04-14 13:35:43', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactssocial_c', 'social_c', 'LBL_SOCIAL', '', '', 'Contacts', 'varchar', 255, 0, '', '2021-04-14 13:39:38', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('idKyG_HangKyGuingayguihang_c', 'ngayguihang_c', 'LBL_NGAYGUIHANG', '', '', 'idKyG_HangKyGui', 'datetimecombo', NULL, 0, '', '2021-05-07 08:45:22', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('idKyG_HangKyGuingayhethan_c', 'ngayhethan_c', 'LBL_NGAYHETHAN', '', '', 'idKyG_HangKyGui', 'datetimecombo', NULL, 0, '', '2021-05-07 08:45:58', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2021-04-14 04:26:36', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--
DROP TABLE IF EXISTS folders;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT 0,
  `is_group` tinyint(1) DEFAULT 0,
  `is_dynamic` tinyint(1) DEFAULT 0,
  `dynamic_query` text DEFAULT NULL,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--
DROP TABLE IF EXISTS folders_rel;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--
DROP TABLE IF EXISTS folders_subscriptions;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--
DROP TABLE IF EXISTS fp_events;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--
DROP TABLE IF EXISTS fp_events_audit;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--
DROP TABLE IF EXISTS fp_events_contacts_c;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--
DROP TABLE IF EXISTS fp_events_fp_event_delegates_1_c;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--
DROP TABLE IF EXISTS fp_events_fp_event_locations_1_c;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--
DROP TABLE IF EXISTS fp_events_leads_1_c;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--
DROP TABLE IF EXISTS fp_events_prospects_1_c;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--
DROP TABLE IF EXISTS fp_event_locations;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--
DROP TABLE IF EXISTS fp_event_locations_audit;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--
DROP TABLE IF EXISTS fp_event_locations_fp_events_1_c;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `idkyg_hangkygui`
--
DROP TABLE IF EXISTS idkyg_hangkygui;
CREATE TABLE `idkyg_hangkygui` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `idkyg_hangkygui`
--

INSERT INTO `idkyg_hangkygui` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('13fca11e-b6cc-d491-7a95-60acdd32b4e1', 'Hai', '2021-05-25 11:21:36', '2021-05-25 11:24:25', '1', '1', NULL, 0, '1'),
('5d98056d-34fa-9510-6543-6096469d5e43', 'Phương Gia Châu', '2021-05-08 08:05:25', '2021-05-25 11:21:24', '1', '1', NULL, 1, '1'),
('9b037089-d9f8-0741-8168-609501263610', 'Vũ Hải', '2021-05-07 09:01:02', '2021-05-25 11:21:24', '1', '1', NULL, 1, '1'),
('9e69d7d3-43e3-b618-fd09-60acdfc197bd', 'Coffe', '2021-05-25 11:30:14', '2021-05-25 11:45:10', '1', '1', NULL, 0, '1'),
('a265b5c3-22c9-c085-ff5f-608eb9a9acf0', 'tenCH', '2021-05-02 14:39:51', '2021-05-25 11:21:24', '1', '1', 'Tên Cửa Hàng Ký Gửi', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `idkyg_hangkygui_aos_invoices_1_c`
--
DROP TABLE IF EXISTS idkyg_hangkygui_aos_invoices_1_c;
CREATE TABLE `idkyg_hangkygui_aos_invoices_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `idkyg_hangkygui_aos_invoices_1idkyg_hangkygui_ida` varchar(36) DEFAULT NULL,
  `idkyg_hangkygui_aos_invoices_1aos_invoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `idkyg_hangkygui_aos_invoices_1_c`
--

INSERT INTO `idkyg_hangkygui_aos_invoices_1_c` (`id`, `date_modified`, `deleted`, `idkyg_hangkygui_aos_invoices_1idkyg_hangkygui_ida`, `idkyg_hangkygui_aos_invoices_1aos_invoices_idb`) VALUES
('38e504bd-2e72-18c2-5ca7-60ace2bc1978', '2021-05-25 11:42:37', 0, '13fca11e-b6cc-d491-7a95-60acdd32b4e1', '935a31a0-da78-453f-aafd-6095016d6862'),
('4ed5ffdf-bac7-fdd9-5dbc-60ace2784c14', '2021-05-25 11:42:37', 1, '9e69d7d3-43e3-b618-fd09-60acdfc197bd', '935a31a0-da78-453f-aafd-6095016d6862'),
('72f7028e-3b99-7cfc-1309-60ace2c2a9c8', '2021-05-25 11:43:31', 0, '9e69d7d3-43e3-b618-fd09-60acdfc197bd', '55b10424-9c5d-f727-b41e-60ace222b78d');

-- --------------------------------------------------------

--
-- Table structure for table `idkyg_hangkygui_aos_products_c`
--
DROP TABLE IF EXISTS idkyg_hangkygui_aos_products_c;
CREATE TABLE `idkyg_hangkygui_aos_products_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `idkyg_hangkygui_aos_productsidkyg_hangkygui_ida` varchar(36) DEFAULT NULL,
  `idkyg_hangkygui_aos_productsaos_products_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `idkyg_hangkygui_aos_products_c`
--

INSERT INTO `idkyg_hangkygui_aos_products_c` (`id`, `date_modified`, `deleted`, `idkyg_hangkygui_aos_productsidkyg_hangkygui_ida`, `idkyg_hangkygui_aos_productsaos_products_idb`) VALUES
('1f9c5e4e-e272-177c-4bb0-60acde1dedf0', '2021-05-25 11:24:49', 1, '13fca11e-b6cc-d491-7a95-60acdd32b4e1', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2'),
('616f9c4f-0ff8-e405-546c-6095260581a9', '2021-05-25 11:21:24', 1, 'a265b5c3-22c9-c085-ff5f-608eb9a9acf0', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2');

-- --------------------------------------------------------

--
-- Table structure for table `idkyg_hangkygui_audit`
--
DROP TABLE IF EXISTS idkyg_hangkygui_audit;
CREATE TABLE `idkyg_hangkygui_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `idkyg_hangkygui_cstm`
--
DROP TABLE IF EXISTS idkyg_hangkygui_cstm;
CREATE TABLE `idkyg_hangkygui_cstm` (
  `id_c` char(36) NOT NULL,
  `ngayguihang_c` datetime DEFAULT NULL,
  `ngayhethan_c` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `idkyg_hangkygui_cstm`
--

INSERT INTO `idkyg_hangkygui_cstm` (`id_c`, `ngayguihang_c`, `ngayhethan_c`) VALUES
('13fca11e-b6cc-d491-7a95-60acdd32b4e1', NULL, NULL),
('5d98056d-34fa-9510-6543-6096469d5e43', '2021-05-11 04:00:00', '2021-06-08 04:00:00'),
('9b037089-d9f8-0741-8168-609501263610', '2021-05-12 04:00:00', '2021-05-18 04:00:00'),
('9e69d7d3-43e3-b618-fd09-60acdfc197bd', '2021-05-19 04:00:00', '2021-05-20 04:00:00'),
('a265b5c3-22c9-c085-ff5f-608eb9a9acf0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--
DROP TABLE IF EXISTS import_maps;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `has_header` tinyint(1) DEFAULT 1,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--
DROP TABLE IF EXISTS inbound_email;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--
DROP TABLE IF EXISTS inbound_email_autoreply;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--
DROP TABLE IF EXISTS inbound_email_cache_ts;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--
DROP TABLE IF EXISTS jjwg_address_cache;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--
DROP TABLE IF EXISTS jjwg_address_cache_audit;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--
DROP TABLE IF EXISTS jjwg_areas;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--
DROP TABLE IF EXISTS jjwg_areas_audit;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--
DROP TABLE IF EXISTS jjwg_maps;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--
DROP TABLE IF EXISTS jjwg_maps_audit;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--
DROP TABLE IF EXISTS jjwg_maps_jjwg_areas_c;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--
DROP TABLE IF EXISTS jjwg_maps_jjwg_markers_c;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--
DROP TABLE IF EXISTS jjwg_markers;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_lng` float(11,8) DEFAULT 0.00000000,
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--
DROP TABLE IF EXISTS jjwg_markers_audit;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--
DROP TABLE IF EXISTS job_queue;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requeue` tinyint(1) DEFAULT 0,
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--
DROP TABLE IF EXISTS leads;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`) VALUES
('32cf7e21-70c6-6209-1c8a-60882bac6874', '2021-04-27 15:17:49', '2021-04-27 15:17:49', '1', '1', '', 0, '1', '', 'Vũ', 'Hải', '', NULL, '', 0, NULL, '', '+84933780327', NULL, '', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', 'Quận Thủ Đức', '', '7000', 'Vietnam', '', '', '', '', '', NULL, NULL, 0, '', '', '', 'New', '', NULL, '', NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 'http://');

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--
DROP TABLE IF EXISTS leads_audit;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--
DROP TABLE IF EXISTS leads_cstm;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads_cstm`
--

INSERT INTO `leads_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('32cf7e21-70c6-6209-1c8a-60882bac6874', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--
DROP TABLE IF EXISTS linked_documents;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--
DROP TABLE IF EXISTS meetings;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT 0,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--
DROP TABLE IF EXISTS meetings_contacts;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--
DROP TABLE IF EXISTS meetings_cstm;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--
DROP TABLE IF EXISTS meetings_leads;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--
DROP TABLE IF EXISTS meetings_users;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--
DROP TABLE IF EXISTS notes;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--
DROP TABLE IF EXISTS oauth_consumer;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--
DROP TABLE IF EXISTS oauth_nonce;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--
DROP TABLE IF EXISTS oauth_tokens;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--
DROP TABLE IF EXISTS opportunities;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--
DROP TABLE IF EXISTS opportunities_audit;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--
DROP TABLE IF EXISTS opportunities_contacts;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--
DROP TABLE IF EXISTS opportunities_cstm;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--
DROP TABLE IF EXISTS outbound_email;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT 0,
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('c71bcc32-3729-abcd-f8ec-60766f189cd0', 'system', 'system', '1', 'SMTP', 'other', '', 25, '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email_audit`
--
DROP TABLE IF EXISTS outbound_email_audit;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--
DROP TABLE IF EXISTS project;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--
DROP TABLE IF EXISTS projects_accounts;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--
DROP TABLE IF EXISTS projects_bugs;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--
DROP TABLE IF EXISTS projects_cases;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--
DROP TABLE IF EXISTS projects_contacts;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--
DROP TABLE IF EXISTS projects_opportunities;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--
DROP TABLE IF EXISTS projects_products;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--
DROP TABLE IF EXISTS project_contacts_1_c;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--
DROP TABLE IF EXISTS project_cstm;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--
DROP TABLE IF EXISTS project_task;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `predecessors` text DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT 1,
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `utilization` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--
DROP TABLE IF EXISTS project_task_audit;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--
DROP TABLE IF EXISTS project_users_1_c;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--
DROP TABLE IF EXISTS prospects;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--
DROP TABLE IF EXISTS prospects_cstm;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--
DROP TABLE IF EXISTS prospect_lists;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prospect_lists`
--

INSERT INTO `prospect_lists` (`assigned_user_id`, `id`, `name`, `list_type`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `description`, `domain_name`) VALUES
('1', '44e7b68d-0452-f21e-8be3-609611bc239d', 'Monthly newsletter', 'default', '2021-05-08 04:19:58', '2021-05-08 04:19:58', '1', '1', 0, '', ''),
('1', '744ab1bc-83b6-5306-6d7b-609610ce848a', 'test CPG', 'test', '2021-05-08 04:15:04', '2021-05-08 04:15:04', '1', '1', 0, 'Gửi mail cho Châu Phương Gia', '');

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--
DROP TABLE IF EXISTS prospect_lists_prospects;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--
DROP TABLE IF EXISTS prospect_list_campaigns;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--
DROP TABLE IF EXISTS relationships;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('1006b915-1a21-a84a-ed97-60ace29ce635', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('10527c0a-c6ca-4219-3764-60ace28d2937', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('10a24ca5-18bc-2aff-d51b-60ace209b050', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('1124fa1d-6999-32eb-d520-60ace2bbd5fa', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12eb023c-99e7-8ec7-734d-60ace232f3ec', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15830da3-96e0-933e-7e49-60ace24b0709', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15fc72cc-1cad-cfdc-88ee-60ace1d1dadc', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('160e76ad-8501-b343-16c2-60ace23a516a', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('166ae781-3e93-d3bc-bfaa-60ace204c252', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('169d9257-7f5b-616b-e29b-60ace15166fc', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16cb6c72-ffd9-e68a-5f00-60ace2639388', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16fac0d0-d845-c67f-63c7-60ace11c82ec', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('172eb5b3-b246-00d8-d3da-60ace219ae02', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('175adcdf-ad9a-4433-8bc6-60ace11c5e5b', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('17d05e2f-64ce-1c0f-bcad-60ace179fbbf', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('183552e1-de8e-906c-5309-60ace10fe16b', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('188b61f0-b425-f665-b25a-60ace1fea8af', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18a37233-ba24-43be-cea3-60ace2c530d3', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18e7a644-db64-a263-b866-60ace17e7e8f', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('194101fa-59a8-beaf-ef8e-60ace197c2f3', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('19672ab9-ed40-2e8b-0367-60ace2365b70', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('19923da1-013d-e204-cf4a-60ace1ca6392', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('19ad029e-7ef6-7d7d-5b80-60ace25e6177', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19dd4fb0-4e7e-c90c-2497-60ace1a19c6b', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('1a247d90-ec49-eca7-bd5d-60ace143cb72', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('1a738e56-2f47-15c1-5512-60ace1fb7b8f', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('21e7caeb-074b-3bba-e0d2-60ace2279c7b', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('220d64fc-e00c-9f0c-b51a-60ace2132e98', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('224aa383-df41-1b35-e828-60ace2da0983', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2261c27a-7c8d-c65a-6aaf-60ace2a7a83a', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('229c1e1a-de75-921d-e92f-60ace28791dd', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22d6fe7c-3b86-b7f5-e486-60ace25b3339', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22f4ba3c-13ba-4d91-6b2e-60ace2274a01', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('235ebf0a-3c75-5342-2e37-60ace2761955', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23e22bd9-a8d8-658a-c129-60ace2fdf6f1', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2456e79e-fa0f-9ad0-fa19-60ace2c30e27', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24bb7f3a-e323-1a29-c8e1-60ace1fa6479', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('251bfc54-9bfc-4426-6cae-60ace1e50c9d', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2562fc62-acaf-5922-e33f-60ace218c20a', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25726db3-a81b-5674-2679-60ace1bdcf51', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25b9dfe0-18ac-9d83-60b0-60ace255c95b', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25cbaec9-d4b6-442a-a21c-60ace1baf83a', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('25f6a486-0ca0-d29b-798a-60ace2e299fd', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('263b6794-2364-fccb-d3ee-60ace1e5a446', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('26989b36-1e59-ac06-398f-60ace12bf084', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('26df685d-399f-6e02-257d-60ace10970c4', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('2729e9bd-adbd-69b9-e29a-60ace188d7cf', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('277353f6-7f5d-bd70-d597-60ace1c67c3e', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('27d4f6d9-15cc-3530-967d-60ace1a69c7f', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2af09d05-f8e4-bc01-4eab-60ace274e898', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b8961a3-ba71-fb74-7807-60ace27aa9ef', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c05f3fd-0c47-37f3-3eb2-60ace2f914f8', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d3c213d-31ac-a6a9-727e-60ace27e78b7', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d9df496-77c5-c4a2-c69c-60ace2d74515', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31bde1e8-78bd-be9c-7b30-60ace13ffaa6', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32125167-311c-edf6-6ffd-60ace11d895b', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32631ca2-0d1c-02ff-bdd3-60ace16b63f4', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32b186e0-3b3b-ed7f-35f5-60ace1fcf7ce', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('32f66e0f-8f18-01eb-1aca-60ace1890fef', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('3346b4a2-bdf7-924c-0894-60ace1a8a1cb', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('3396e61d-0cd3-8ae0-cd39-60ace191ea90', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('33ebf401-2e04-c34f-998a-60ace1eedcb1', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('343f5ad7-5e27-5144-a532-60ace27d945c', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3451d029-5871-8f09-ec85-60ace12d13ed', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('34ac03da-7733-f21f-4d1e-60ace2ac9421', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34ac6211-afdf-3668-efc6-60ace1dcb43c', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34ba12e6-7cde-0a04-5d7e-60ace23c8223', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('350d72a9-ac13-de15-0aaf-60ace2c69c67', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('350e13a7-3c71-a9f1-8e15-60ace23464f0', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35442d0f-2040-5ee2-86e8-60ace1f9f6b3', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('356c5648-15d4-220e-ad6e-60ace2d5c896', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('35b994e7-e040-a3be-c4b1-60ace21c4050', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35c26d48-3139-43af-a6c5-60ace2e22f53', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('361ca04a-428c-3086-e2f5-60ace119cf1e', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('365027d2-6816-d463-23bb-60ace2d7ca38', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3679eab7-68ed-28ba-a125-60ace11177b7', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('36ba8709-5dc0-04f5-9c2a-60ace2a66716', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36c12231-df24-745a-27fd-60ace1d293f4', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('36fe753b-b947-45b2-f3f0-60ace236ba94', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('378936ce-14b5-8f1a-af24-60ace22a74cb', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3adb4574-2a65-c5e9-f6c9-60ace220c187', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b062280-76fc-bc22-ec25-60ace1b94b45', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b5a3653-40db-70a7-e427-60ace2667943', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b611d5c-ef9f-24bd-21b4-60ace1c85c87', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ba7226b-c56a-d965-73a5-60ace2ca42dc', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3bad35af-7a33-96f8-01b5-60ace1e9e803', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c02885d-f70a-a5a4-80bf-60ace10cdfb1', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c6c6f3d-99e3-6eb6-fd3f-60ace1c0a849', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3eee09fb-2243-9968-9dd1-60ace2997794', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('406353b3-d044-cbbf-f641-60ace2846946', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41117240-1ab4-f438-16ad-60ace2dc5089', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4132d606-7dcd-f606-beb5-60ace241da02', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41d5b7e5-ae26-9d5a-9c33-60ace2529f5d', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45af0f64-fdd8-b3fb-2b74-60ace1db7fe9', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('45f71bef-b6de-b8db-190c-60ace246216f', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('46070f6b-7859-6cde-21b4-60ace2b6586f', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4629606a-0575-e3b0-8949-60ace1df44cf', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('464bbd24-9c80-00a9-a0dd-60ace2bdc700', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('4661c425-b37b-1750-86a0-60ace230beec', 'idkyg_hangkygui_modified_user', 'Users', 'users', 'id', 'idKyG_HangKyGui', 'idkyg_hangkygui', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('467415db-5273-765a-ca8c-60ace1a9e5ea', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('46a512b6-6195-184a-ebfa-60ace2fc06ec', 'idkyg_hangkygui_created_by', 'Users', 'users', 'id', 'idKyG_HangKyGui', 'idkyg_hangkygui', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46c8c167-3e00-a2cb-c656-60ace1a1bcd7', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('46df567c-784a-6b1b-73f4-60ace232fa37', 'idkyg_hangkygui_assigned_user', 'Users', 'users', 'id', 'idKyG_HangKyGui', 'idkyg_hangkygui', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47137018-54ac-f8d7-6412-60ace1257d5b', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('47368435-8768-2fe8-702a-60ace26c3e09', 'securitygroups_idkyg_hangkygui', 'SecurityGroups', 'securitygroups', 'id', 'idKyG_HangKyGui', 'idkyg_hangkygui', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'idKyG_HangKyGui', 0, 0),
('475ca362-a2e0-9be9-9623-60ace1d72fd3', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('47a50423-9cc5-aec4-d5c0-60ace17a0e87', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47f63dc6-e0ee-8e76-2b85-60ace1c7f602', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48616bc5-6030-d834-42dc-60ace16016c9', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48c8978c-b52e-04f7-b5bd-60ace1e2634b', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4acadd0d-da79-2b5a-3d51-60ace29eb924', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b18b9a4-9c6e-e4f6-aae7-60ace2e68729', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ba71fd1-d596-0576-4bd9-60ace27799d3', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c4807f9-a479-5eaa-903e-60ace23d019e', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('513c7416-cca4-02c5-919e-60ace1b88eae', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('51ab00c6-bae2-64b4-4eab-60ace113b21c', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('51c002d8-e479-6bef-88d6-60ace27a089a', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('5202a9c9-2e56-60fa-ab45-60ace1252b5f', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('5253a564-1a58-ca1d-a486-60ace1fe9801', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('52a1719f-13ae-1cc9-4c88-60ace1dbac6f', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('52e9b488-77cd-f37b-dfe7-60ace1b44add', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('5331a586-1486-4d74-6af5-60ace1745a2c', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5376a6af-fe02-724f-64a6-60ace110005e', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53bc9c4a-e417-4e5b-5455-60ace1962759', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('598d61b8-ea36-a5a5-7609-60ace25d86e1', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59cf01e3-c54f-0151-37d0-60ace20072ef', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('5a04c426-2b81-bdce-ed33-60ace2772d60', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a33a7d7-cc20-cec6-2cfb-60ace163a4a4', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a5e3017-e48e-b36c-3556-60ace2744f90', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a8d1f6c-10ca-a693-68f8-60ace106a4c7', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a9da66a-9736-2a20-8b88-60ace25d80c7', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('5aa4f35e-0a3d-34e9-3c2d-60ace2f2e5e1', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('5aa9c1cf-27b6-0d1b-5926-60ace282b332', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5afd5a84-1d0e-4c07-8b2e-60ace1e36d5b', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5afe976e-2151-472f-5f0a-60ace29fe478', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('5b03d409-7a90-a42b-2a14-60ace2703491', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b3e4f2a-c328-c9e7-8547-60ace2d377be', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('5b4b318d-d48b-cce1-5808-60ace134fda4', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('5b60fa0f-0cef-66c6-54d3-60ace279389e', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b7f5b11-3ace-82ec-dc31-60ace2771c26', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('5b936210-62d8-fc5e-4336-60ace10e1ec5', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5bab1a48-8ba4-6998-2987-60ace2f960a0', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('5bbfb31d-cd6c-7f32-ba23-60ace2951a9b', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('5bd7ee30-2565-59f8-dc05-60ace1abb584', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5bf06fcf-2005-319d-2d2b-60ace22a96e3', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5bfb6023-bb87-3778-f258-60ace2b9aac1', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('5c1ca798-00fe-782c-d3b6-60ace12fb397', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c379624-8eb8-f058-b34a-60ace2aceb5a', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5c623e0a-d9e2-00bf-6745-60ace1c2eec2', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c6c5b2b-a1e3-2965-ad3e-60ace25afdbd', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('5c943b00-dbca-6aca-c250-60ace24ada81', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5cd35792-aeb9-942a-539f-60ace16c2bc2', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5cdb0ef3-1b1c-5b3b-c5d4-60ace2bfad6e', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('5d294bb7-49e7-33d4-f81d-60ace284ea49', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('5d2b7ab1-cae4-e5cf-01bb-60ace22843fd', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('5d336222-71db-64d1-3bff-60ace114efda', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d7b9e6a-2bb1-da1d-bbce-60ace291caab', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('5d809c57-26ad-6151-2aaa-60ace1c94abd', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5dba8763-6bc4-939a-7bbb-60ace26a3921', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5dd1e2e3-a0fb-a2c6-8e81-60ace17afcd2', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e0bb4ef-a12c-ce2d-7997-60ace2100922', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('5e28e9cc-9fcf-dad8-45d4-60ace2cc51cb', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e2bab2b-b269-9567-0679-60ace152b6d3', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e66782f-87e5-7375-f1ac-60ace24d9766', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('5e846f1d-fb45-772c-0f26-60ace1f629bc', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ecf8274-63b7-2365-f6e5-60ace2d3b00f', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('5f166050-be40-136a-c86c-60ace29ebe61', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('5f59686e-cb02-8ea2-683a-60ace2ee0075', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('5f680117-a890-f060-f667-60ace27b017a', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5fa241a5-bdf6-c6c5-bcf0-60ace2f23d7b', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('5fe5fdc4-d90a-5d57-4124-60ace2755ca3', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('602f0e24-8f19-70ff-d0ee-60ace28e0b83', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('60810516-cd18-d8cc-bff3-60ace222dde5', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('60fe03db-44e5-dc74-11db-60ace2ff0967', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('61788c9f-f4db-fffa-eb71-60ace212a045', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('61e05ba9-625a-0328-4191-60ace26c5cbe', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('624d9cc0-6e38-d98a-7b04-60ace2905306', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('6289467e-5e38-3045-5b64-60ace269c1a3', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62d73967-eb57-c41e-750d-60ace2581f40', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62d777d2-9c1b-cb7d-4e03-60ace207ff95', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('633255bb-7572-981e-876f-60ace2d63881', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('63dd6753-075e-7677-05c5-60ace23c58d5', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('644e4190-8068-63e6-4db6-60ace1a21d7b', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64910036-3e5a-83e6-5d07-60ace230c044', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('64f514d7-6492-4b4b-0faf-60ace184d429', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('6533b728-9311-7e07-79c1-60ace23dbc25', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('658b1cb5-649a-9b59-bad3-60ace2914d85', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65a29249-0a90-77f6-edd2-60ace2e1ae41', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('6630e069-3c8a-1ff4-3dd6-60ace2e61f46', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('66a02328-8ee9-a5ac-3ff6-60ace2a98c5d', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66c820a2-95e7-413c-f6cc-60ace2ecf5ff', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('6733fc9b-69b1-6575-b9fd-60ace21721f4', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('677c6ed8-844a-9ced-c9a4-60ace2248ff2', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('67ac9d78-d5c9-58b3-ce25-60ace2cdb22c', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('67d78023-0de2-e353-01bd-60ace22394b1', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('682f100e-cb5c-03eb-7064-60ace2ae0fcd', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('68352634-97f8-0f0e-77a3-60ace2fb1647', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68a896e8-e1b3-f04f-7576-60ace29ff3e1', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68e81223-2efe-3e66-17ac-60ace2d96b08', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('695d38c1-1659-dc99-5b44-60ace28feeaf', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('69ccdd63-706c-4403-ff9d-60ace2883fc5', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('6a318b37-bdd9-51a3-9cc7-60ace2a387c9', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('6a8fd7ee-593c-6f70-013b-60ace2e7319b', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('6ae83643-6fe7-4417-1dae-60ace25c670f', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('6b02ded3-5ac6-457d-0274-60ace25f6cbe', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b2ffdb5-9aa7-fea0-8386-60ace28181b3', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('6b50fe1c-1ba1-8e70-40e6-60ace2677b7d', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b8f9dd7-a63c-e1c4-e469-60ace2b5857c', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b937016-bc3f-e8c1-0187-60ace26819e2', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('6bd4c43d-95af-bfd5-b398-60ace28355ac', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('6c174f4d-3cdc-f727-6b2b-60ace22a7446', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('6c5b79d9-5eff-85d6-afeb-60ace2b90402', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('6cbe76aa-18d2-013b-5bfe-60ace2422273', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('6d2b2a8c-03e5-801f-f6ef-60ace2e0bb56', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('6d70df1b-c2c6-bbc7-bb4c-60ace245525f', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('6db650e6-dbf2-343e-b6d4-60ace227eee9', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('6e17dd95-8e42-dc4e-b3d3-60ace2787e86', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('6e71cbc1-710d-9e47-df72-60ace2f4bcdf', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('6eb92806-a214-3c81-fe33-60ace2c311dc', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('6f32c323-8460-fde1-7458-60ace27933eb', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('6f730499-c6ac-925e-a4c8-60ace2ca165c', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('6fa787df-d550-aee5-74b8-60ace11e4da2', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fb3be80-e140-52c4-c265-60ace2d772e3', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('6ff63317-4e40-7bda-51cf-60ace127d235', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ffb970c-6392-32d6-840f-60ace2c5d23e', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('703e7844-1098-e693-566b-60ace259065d', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('7042ecf0-18dc-ea56-dc89-60ace1493d22', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7080992a-2df4-d875-d68d-60ace2abb13e', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('708b59a5-ef6f-c7ff-2440-60ace1ddb881', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('70d909b5-203b-a288-fc79-60ace2f2730c', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('70ec5f00-99b0-cbc4-3a2c-60ace10321bf', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('7130a7ad-c730-e948-7d62-60ace21af3d4', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('71508475-dccc-c7f6-dd47-60ace1138dda', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('718ec6b1-8f02-3949-b68e-60ace29d0b0c', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('71b7876e-7155-d316-8954-60ace1ece3e8', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('71fa4cbf-89be-de3a-7b3d-60ace236940c', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('7219b4c8-9ada-3327-4416-60ace1be9861', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('725ffa44-8424-d1db-29db-60ace29e4d7e', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('7285e89a-598c-4c6a-e843-60ace1118160', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('72e1835c-70d7-11fd-22eb-60ace16f9451', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('732953d7-9a90-1333-d966-60ace175fee4', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('735d45b4-2133-7cc6-164f-60ace272e2a5', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('736e926f-4421-ba18-38e1-60ace1b4f880', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('73a940c2-eef4-afba-23b5-60ace2d9c6d8', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('73b09095-7ada-eb28-2997-60ace2949182', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74107645-3cfb-bc66-3643-60ace2958ba4', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('74132c0d-3097-d7d9-0b1a-60ace20c042a', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7461a980-f662-5fc0-5c99-60ace2c3f2c6', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7462c86a-cfa8-6910-034f-60ace21cdcd5', 'aos_products_aos_invoices_1', 'AOS_Products', 'aos_products', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_products_aos_invoices_1_c', 'aos_products_aos_invoices_1aos_products_ida', 'aos_products_aos_invoices_1aos_invoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('74bb3482-7659-b569-d2ff-60ace28a1cca', 'idkyg_hangkygui_aos_invoices_1', 'idKyG_HangKyGui', 'idkyg_hangkygui', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'idkyg_hangkygui_aos_invoices_1_c', 'idkyg_hangkygui_aos_invoices_1idkyg_hangkygui_ida', 'idkyg_hangkygui_aos_invoices_1aos_invoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('74ddd173-6012-9ef1-299d-60ace2c0829f', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('754c3893-e7d5-7f4e-1f25-60ace2e47678', 'idkyg_hangkygui_aos_products', 'idKyG_HangKyGui', 'idkyg_hangkygui', 'id', 'AOS_Products', 'aos_products', 'id', 'idkyg_hangkygui_aos_products_c', 'idkyg_hangkygui_aos_productsidkyg_hangkygui_ida', 'idkyg_hangkygui_aos_productsaos_products_idb', 'many-to-many', NULL, NULL, 0, 0),
('77d0e607-bbc5-a20f-0a55-60ace10e20b6', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('785fc573-283a-c214-557f-60ace23df247', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78ad421f-ba16-ceb4-1db0-60ace24aa901', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7908f7b9-505e-1e5f-931a-60ace2850a44', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c425fdd-f947-9c93-9c1c-60ace1bad92d', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f7412ee-27c6-d8ec-77ad-60ace23a8869', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fd8b75e-20e1-7173-bc01-60ace234cd79', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8029357f-5b6a-756f-bfb3-60ace24faea4', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8096331a-5253-d053-78bb-60ace2d9aea4', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('8111287d-277c-7863-8afb-60ace275b388', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81e516ed-b7d5-dab0-82bd-60ace2229966', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('823324b4-a706-bab8-9a04-60ace2ff3c8a', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('827cb569-e30e-5e60-9743-60ace2af7037', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86d3a1a1-df1b-29e1-03e0-60ace20df2cc', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('875939ab-0f9f-1640-ea8b-60ace2977509', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b848476-5482-36d7-39d4-60ace235381c', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bd9e0c6-e357-99df-f458-60ace2e209b5', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c14f2ef-cb25-fa27-8fcc-60ace25ec880', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c7e0ecc-bb4a-f84e-212b-60ace29eb18b', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('8cb56e94-6a16-667e-249b-60ace2520006', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90a0d83b-d4fb-ba31-3190-60ace2825112', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90e4b93d-91a5-2120-86c6-60ace25cede6', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('911f2a5c-e631-02c1-2e06-60ace280f8fe', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91e4b96f-afb3-a69a-09b3-60ace12ac87c', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('925a3c32-0ba1-2bc9-450b-60ace1dfc69a', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92c016f4-871c-95ce-0934-60ace1c46d24', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93000142-5642-1bde-a8f3-60ace24cccb2', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('938587c2-43f5-66ea-640d-60ace1ba8649', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('964db775-9063-aec8-31a3-60ace2e9e8f8', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96d257ca-b5f6-41ff-bf70-60ace2545edf', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97221a87-1ec4-0c07-5112-60ace2218ff9', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97755ab2-6846-4aec-52ce-60ace2a177c5', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99b771bd-4aa0-f064-b4cd-60ace27ce708', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a422acc-4f89-77a0-d973-60ace2d5d88b', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a8a45c2-a076-a7a4-31dd-60ace23846de', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e8a4184-ed07-9566-a17f-60ace2323f83', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ee40cea-a8c8-d623-698c-60ace2243793', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f3bbb38-0877-7a65-fd79-60ace2f5264f', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fb1319c-ad49-03d4-d653-60ace17bad78', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0151de8-e739-90ed-1e14-60ace171dbb0', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a062e9ab-68d8-bfe6-ac73-60ace2932511', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0649159-5f25-bee1-4471-60ace1961eeb', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0bcbd37-de4d-fc0e-9dd1-60ace1005e92', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('a0c70cd2-5d65-0d41-10f3-60ace2f13e9d', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a107dc0e-1ae8-a26b-57ac-60ace26a358b', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1097738-469c-7521-b13a-60ace1188be8', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('a141248a-1359-367d-6a66-60ace2f4eee3', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a144d2dc-a0a5-7780-8570-60ace1c78a00', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a18c4b14-ff04-26e4-ac59-60ace122be41', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a205923c-0f87-2d72-05ea-60ace1ba14d6', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a26ade37-b6f0-134c-ea8b-60ace1658fea', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2c2a465-649c-9ecb-dc73-60ace10711a1', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a31b9586-ee8b-d051-dbc4-60ace1b0a461', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('a38094f6-d2f3-cbba-9f33-60ace1bd34dd', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('a3d4386f-0d20-bc53-782c-60ace13e7109', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('a41e1152-e4da-03d9-42c8-60ace1c3d1c2', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4684348-b1d0-b2c4-f10c-60ace19d976f', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4a6bd32-4519-3ee7-3380-60ace12956b2', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4efc83c-38af-c700-5e06-60ace12341ac', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7237124-2f2f-efb1-2b73-60ace27e282b', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a797bd72-4019-a8e8-8ec5-60ace2c89f38', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7df0017-ab29-bbdc-ab4c-60ace2f0bf4d', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa3c0a09-5d1e-bc7f-ad0b-60ace2012e8d', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aaccc854-a7ac-8c13-4180-60ace12ed4d4', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab1aa03c-4349-615b-7835-60ace132a7ca', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab7df798-80a7-dafd-2c5c-60ace1423d76', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('abc8e0b7-eae4-af2a-7d25-60ace1d8a747', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('abd25e4a-6f1a-85ac-eb3c-60ace2c1c455', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac17e2a3-a42a-3e9d-6f21-60ace1ac117b', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('ac597737-b0bc-af4b-48d4-60ace17693a5', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('ac943d35-6607-3c26-b453-60ace19027e5', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('acbfceb6-6398-c0b7-a965-60ace224751b', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('acd12da9-44a4-7651-018a-60ace15d6c68', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad0a465e-830f-3526-c97d-60ace16416c9', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ad2503cd-fb57-1e03-6e7e-60ace2655fea', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad46894c-9244-72b8-81b7-60ace11a7309', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ad64d144-b882-1368-209b-60ace2729425', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('ad8138aa-b48f-051a-a5ce-60ace1809104', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ada0c93a-8198-c354-08b2-60ace29f6605', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('adc6247b-ee01-4ce1-ad87-60ace1c01a93', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('adfd49ee-df6e-3396-6485-60ace20d59ae', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae4080f0-d848-51ad-fd64-60ace1e973dd', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('aec3ce78-7f76-834c-69a0-60ace145ae86', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af0b3a3b-ac82-c322-8a3c-60ace16a969a', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('af4f5bf7-615a-e9df-7ea4-60ace11e5457', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('afa309ea-fac8-96a9-f0a4-60ace15cac37', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aff6a21b-07c0-fdeb-6adf-60ace16048f9', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0cff735-5c8e-9624-5615-60ace2653a10', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1188796-4e15-0c1e-876b-60ace2582ca4', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1543150-6234-3ec0-3148-60ace27433cf', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b190bbf8-799c-6739-bbab-60ace207149d', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('b45d0e43-b21f-9137-a2c3-60ace26fa082', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b63e2f71-7a49-dc8a-7653-60ace27045e4', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b69888f7-1f79-9697-217a-60ace2d2c01e', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b98bae1c-39bd-23db-802a-60ace2202a7e', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9d7ccd8-a3f0-e085-277d-60ace273bb5e', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba19d97e-3559-e527-c78e-60ace2ad2079', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba6e28e1-4f18-1001-6acc-60ace152980c', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bad3c279-eea5-b2a4-8fcd-60ace1f7837a', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb1af007-35e8-0233-e209-60ace1f7c4c4', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb6753d7-1c15-de79-f5e5-60ace1bde719', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('bbb72374-41f8-ffdb-830e-60ace1a22323', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bc004e4d-0978-0d8b-7244-60ace1aa9157', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bc3fd30d-b40b-38f5-6b1c-60ace196e59a', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bc86e4d9-4e30-8d37-2d9a-60ace15b19a6', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bcd2a6be-e839-ce38-1f10-60ace1ccfd51', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bd14514d-f3eb-ddba-a2e2-60ace1ac9f6d', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd51a84e-69bf-c5a9-0f3b-60ace1edc2c4', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd8c00dd-9fea-758f-07ce-60ace10087a1', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bdcd7f47-5080-1dca-bf1f-60ace16f9069', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be09bfd6-06e2-cc87-866f-60ace1e08874', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bfd1ab9f-5421-61c8-bd67-60ace2f230d3', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c034ee12-49f0-bb92-6f99-60ace2002b90', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c0749929-c87b-c9ba-0a7a-60ace242ac0d', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1d90399-cece-eea4-59e0-60ace20476eb', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3558fce-94a5-c165-c882-60ace2f235cb', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c3cff7b0-fc63-4a57-75d8-60ace205f761', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c4583d00-0a0c-7869-fecb-60ace22acd63', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c50e087e-c5d5-d283-0ad6-60ace24af3fe', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('c5678f9a-0e1f-61ea-06f5-60ace2c62019', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5b2c903-edc4-73b4-8c1a-60ace2fca14c', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5f490b0-6865-dd71-e319-60ace209dd03', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c71e8f7e-3e63-45f6-7ca4-60ace1f5805c', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('c7703dc6-87a9-f016-ec95-60ace1514ac7', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c97afcec-06cb-73eb-a607-60ace2d4684d', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9c1af15-8556-8737-a78e-60ace220a4d7', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9ff5e69-d9ea-e5ea-5e33-60ace2aa8cbc', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca6a302b-fbfd-4bdb-407a-60ace2a49328', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('cc3a0be3-5e77-05b0-4bc6-60ace26a3044', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ceddad23-0d05-331d-cbd5-60ace24ff628', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf2a9e15-6e0b-938a-6b48-60ace284e2aa', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d0dc4128-c463-065f-7259-60ace11884b7', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d3c8016f-cfa6-b664-3ae4-60ace2ab4ac1', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d42d032c-39ae-e445-e514-60ace2894109', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d49da016-3b2f-fe7d-bbfc-60ace2b464b8', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4edef51-56f4-62f6-f41e-60ace2c98c45', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('d53b9ccd-715d-8a63-aec7-60ace218b3ad', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('d589c1a3-0444-9966-d2ce-60ace2064070', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('d5b5adca-2d4e-0d52-3de0-60ace1a8423a', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('d606e90e-8362-13ac-a261-60ace1dc0d94', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d657fd3a-426f-8448-8b07-60ace1f0be91', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7226d38-3e5c-64d0-42be-60ace2fb101e', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7796157-ee09-fc0a-8fcf-60ace2adfe86', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0cff2f8-9c68-9e80-1034-60ace237db53', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0e25985-ca4e-2772-01ff-60ace13f5448', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1400852-5085-194d-451c-60ace1a16f9e', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e15afd93-a8a3-18fd-5b7f-60ace2605d54', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e191dd0b-7afe-35f7-24e7-60ace1792d3e', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1c35cf2-425d-a785-e520-60ace28b5ff6', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1ea54fd-fe71-fc18-d7e8-60ace1ee1887', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('e2364af3-d11a-dd79-1ac0-60ace122e4c9', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('e260bbd1-d14a-54b0-b6d4-60ace25ac4c5', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e28012ce-148b-c7c9-5ce2-60ace159081b', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2c2af3a-d67d-d964-ab81-60ace2844fa1', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e32f613f-5aa7-61b5-6596-60ace2b3f527', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3894540-ae1e-7fe5-a73d-60ace23b14c1', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('e3d972f3-4809-8f35-feb7-60ace2d7b748', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e4394c84-673f-df79-d2b3-60ace2e9d3ac', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('e48c3692-7d23-4923-b7b4-60ace2e11f8b', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('e4d747c1-686f-359a-c349-60ace2f085e8', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('e51ed83d-be98-42a8-8f97-60ace255aa95', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('e569f97a-56e4-fc39-2c18-60ace2f22173', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('e5b78899-178a-7ea1-7e4c-60ace289e397', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('e603f1f0-e122-69df-44d7-60ace25e451a', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e896a499-c144-1ecc-2bb0-60ace1871254', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9091dbe-acdf-430c-4193-60ace1d81768', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e975c1ec-42c8-bfb1-e6d1-60ace1d4eb17', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9efd5f0-6755-b0cd-ec09-60ace18241b8', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('ea9b12a3-43cb-ff91-2bd7-60ace13a8f99', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb59eb1a-1a66-36a5-72e6-60ace176fb90', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('ebd8e7aa-871b-4da9-3599-60ace114a14c', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('ec751afc-3a4f-2769-b250-60ace1149b63', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('ecf030b9-1373-2592-236c-60ace121c18f', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('ed6d3ab0-fb02-1f38-f28c-60ace19bfd11', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eedc96c3-129b-172f-9c70-60ace2e4051a', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef7e2248-7dcc-3013-04de-60ace2753341', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('efda7a24-21ab-7e6e-f7a2-60ace23dcbd4', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f03d5adf-1705-77f1-dcf9-60ace22f726a', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('fa580a24-55c6-a9b4-9dc5-60ace2424418', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('faee0d26-ee23-d626-d200-60ace2581555', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--
DROP TABLE IF EXISTS releases;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--
DROP TABLE IF EXISTS reminders;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--
DROP TABLE IF EXISTS reminders_invitees;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--
DROP TABLE IF EXISTS roles;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--
DROP TABLE IF EXISTS roles_modules;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--
DROP TABLE IF EXISTS roles_users;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--
DROP TABLE IF EXISTS saved_search;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--
DROP TABLE IF EXISTS schedulers;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('45d8020c-5371-420f-0d4b-60766f3dd66a', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 19:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('4d85f9ea-2e26-654e-800e-60766ffcfdba', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 11:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('506ac588-cbb3-ee72-c8f4-60766fe732aa', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 09:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('5339c37d-49c6-68b0-0b55-60766f863728', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 19:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('55c007a0-bb72-e58e-0483-60766ff988a0', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 17:15:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('58203e30-d0be-f02a-b27e-60766fcf40f8', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 14:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5aacd0f7-50c3-9efc-1dc2-60766f4d93dd', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 11:45:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('5cc394cc-8711-df76-bead-60766f17cd0b', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 09:45:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('5f51cb66-5510-7e51-1c95-60766f2524b3', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 15:15:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('61c8eace-f87f-2d61-1cb7-60766fc97e9c', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 12:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('6457769d-7e63-2544-0199-60766f86db34', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 08:00:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('66ed96b8-b344-b1f9-d62c-60766f08f1e1', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 14:00:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('69419dd5-23f1-2a87-39d9-60766f6f1b45', 0, '2021-04-14 04:26:36', '2021-04-14 04:26:36', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 12:00:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--
DROP TABLE IF EXISTS securitygroups;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--
DROP TABLE IF EXISTS securitygroups_acl_roles;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--
DROP TABLE IF EXISTS securitygroups_audit;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--
DROP TABLE IF EXISTS securitygroups_default;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--
DROP TABLE IF EXISTS securitygroups_records;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--
DROP TABLE IF EXISTS securitygroups_users;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--
DROP TABLE IF EXISTS spots;
CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--
DROP TABLE IF EXISTS sugarfeed;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('2dafcdf1-7e12-dc06-4145-6076f1df81cc', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0:Hai Vu]', '2021-04-14 13:42:41', '2021-04-14 13:42:41', '1', '1', NULL, 0, '1', 'Contacts', '1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', NULL, NULL),
('3ba36ce2-4df9-214a-791e-608800630d19', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e37682ed-2e32-c2e7-f9cf-6088005c02a7:Vũ Hải]', '2021-04-27 12:14:54', '2021-04-27 12:14:54', '1', '1', NULL, 0, '1', 'Contacts', 'e37682ed-2e32-c2e7-f9cf-6088005c02a7', NULL, NULL),
('3f51f6f8-7577-c5a2-9cbc-60882bfa49cb', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:32cf7e21-70c6-6209-1c8a-60882bac6874:Vũ Hải]', '2021-04-27 15:17:49', '2021-04-27 15:17:49', '1', '1', NULL, 0, '1', 'Leads', '32cf7e21-70c6-6209-1c8a-60882bac6874', NULL, NULL),
('7300092e-2ddb-9af0-10f5-6087fdc6bb41', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:ac080d64-f23e-2b64-68c1-6087fdc8db63:Trấn Hải Chiêm]', '2021-04-27 12:04:13', '2021-04-27 12:04:13', '1', '1', NULL, 0, '1', 'Contacts', 'ac080d64-f23e-2b64-68c1-6087fdc8db63', NULL, NULL),
('8134457e-d7e2-9dfd-bf91-60881fca505a', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:efe6fe3b-57b6-55fd-0449-60881fd245ce:Phương Gia Châu]', '2021-04-27 14:29:31', '2021-04-27 14:29:31', '1', '1', NULL, 0, 'b07810a6-fbf0-40fe-f328-6076712f35e3', 'Contacts', 'efe6fe3b-57b6-55fd-0449-60881fd245ce', NULL, NULL),
('b1b11362-2772-4d5d-cc7b-60ace13bcb1a', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:683f95be-6a15-ceb2-9213-60ace1f12fd4:Vũ Hải]', '2021-05-25 11:36:35', '2021-05-25 11:36:35', '1', '1', NULL, 0, NULL, 'Contacts', '683f95be-6a15-ceb2-9213-60ace1f12fd4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--
DROP TABLE IF EXISTS tasks;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT 0,
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT 0,
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatesectionline`
--
DROP TABLE IF EXISTS templatesectionline;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templatesectionline`
--

INSERT INTO `templatesectionline` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `thumbnail`, `grp`, `ord`) VALUES
('9575e10f-37e1-4445-140c-60964b24be3e', 'Headline', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<h1>Add your headline here..</h1>', 0, 'include/javascript/mozaik/tpls/default/thumbs/headline.png', NULL, 1),
('9b79fba3-0eb2-1be5-7396-60964b3f69fe', 'Content', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<h2>Title</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</p>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content1.png', NULL, 2),
('a44628a6-ff07-7685-39a1-60964b897495', 'Content with two columns', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content2.png', NULL, 3),
('a9094cb0-e04d-529c-3f2a-60964ba7ddcb', 'Content with three columns', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content3.png', NULL, 4),
('ade208ba-9aa0-9880-d959-60964ba5f434', 'Content with left image', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://localhost/suitecrm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image1left.png', NULL, 5),
('b2897074-de53-f702-1524-60964b88192b', 'Content with right image', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://localhost/suitecrm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image1right.png', NULL, 6),
('b51630ec-2f2a-f1f1-e052-60964b7f4091', 'Content with two image', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://localhost/suitecrm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://localhost/suitecrm/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image2.png', NULL, 7),
('bb6b3360-1429-0c34-4986-60964b191f66', 'Content with three image', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://localhost/suitecrm/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://localhost/suitecrm/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://localhost/suitecrm/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td></tr><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image3.png', NULL, 8),
('bed6939d-c7c7-8f85-cc83-60964b4611ca', 'Footer', '2021-05-08 08:28:12', '2021-05-08 08:28:12', '1', '1', '<p class=\"footer\">Take your footer contents and information here..</p>', 0, 'include/javascript/mozaik/tpls/default/thumbs/footer.png', NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--
DROP TABLE IF EXISTS tracker;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(1, 'e92d0e1b-2348-df5e-0a93-607670ad017e', '1', 'AOS_Products', 'bf852904-0205-570e-6d43-6076705efaae', 'test', '2021-04-14 04:32:13', 'detailview', 'q7lfcmb7i7rnqnls8lt1ngfj3v', 1, 0),
(4, 'a5ec0971-26a1-2f75-2ad4-607671bd1310', '1', 'Users', 'b07810a6-fbf0-40fe-f328-6076712f35e3', 'Van Vu', '2021-04-14 04:38:53', 'detailview', 'q7lfcmb7i7rnqnls8lt1ngfj3v', 1, 0),
(10, '63c78dbc-09c2-c370-900e-6076ee7e2d86', '1', 'AOS_Product_Categories', '82984a00-ae27-5f5c-3198-6076722e6556', 'Bag', '2021-04-14 13:31:52', 'detailview', 'q7lfcmb7i7rnqnls8lt1ngfj3v', 1, 0),
(11, '6a7c2ab2-6733-c767-551e-6076eefa656d', '1', 'AOS_Product_Categories', 'eb4e24e4-5d2d-9c00-fa3e-607672777673', 'Bracelet', '2021-04-14 13:31:59', 'detailview', 'q7lfcmb7i7rnqnls8lt1ngfj3v', 1, 0),
(23, 'e9b4d598-91ab-c170-7e5e-60770ef4d5c1', '1', 'AOS_Product_Categories', '9100087e-7e4f-7e6e-f589-60770e4f3982', 'Chăm', '2021-04-14 15:45:54', 'detailview', 'q7lfcmb7i7rnqnls8lt1ngfj3v', 1, 0),
(30, '8d500816-a016-b106-94bf-60771412cf4a', '1', 'AOS_Products', 'db17476b-33fd-cbd9-e1f9-60770da2b5b4', 'test 2', '2021-04-14 16:14:50', 'detailview', 'q7lfcmb7i7rnqnls8lt1ngfj3v', 1, 0),
(41, '32943449-47fc-31ef-d4b6-6079a88f5cfa', '1', 'Accounts', '8b6c4dd6-d43e-0c33-fc74-6079927b26e1', 'Vũ Thanh Hải', '2021-04-16 15:07:48', 'detailview', '7rs4opksq2tfout2b87hbr71k8', 1, 0),
(44, '57709081-71d3-ed91-021f-6087ffacce7b', '1', 'Contacts', 'ac080d64-f23e-2b64-68c1-6087fdc8db63', 'Mr. Trấn Hải Chiêm', '2021-04-27 12:12:45', 'detailview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(45, '482f21ec-c5c1-f3a5-2538-6087ff52de6d', '1', 'Contacts', '1fefec9a-ef95-8b10-7d9d-6076f1c9b1b0', 'Mr. Hai Vu', '2021-04-27 12:12:48', 'editview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(46, '9c1a449c-0e80-6931-4eff-608800e0a1c1', '1', 'Contacts', 'e37682ed-2e32-c2e7-f9cf-6088005c02a7', 'Mr. Vũ Hải', '2021-04-27 12:14:54', 'detailview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(49, 'a74e70a2-081e-5dbe-7aa9-60881b90150d', '1', 'AOS_Invoices', 'e53774d0-b96f-1d20-7ef4-608801956dca', NULL, '2021-04-27 14:10:32', 'editview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(53, '353d080a-61d5-10aa-010b-60881bd51843', '1', 'AOS_Product_Categories', 'a0c29ff2-9969-3b4f-6229-60881bbe720a', 'test tran hai', '2021-04-27 14:13:15', 'detailview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(54, 'a6f0c073-f09c-883a-00ca-60881c107a73', '1', 'AOS_Product_Categories', 'e21892dc-f879-0a4f-16ab-6079a19ae686', 'earings', '2021-04-27 14:13:21', 'detailview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(57, '4f1d15dc-8760-e86d-eafe-60881cad5fcc', '1', 'AOS_Product_Categories', 'a0e40a7d-41b0-6b00-cb18-6076723a660d', 'Bana', '2021-04-27 14:13:41', 'detailview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(63, 'dc1d340e-b5fe-59a3-df2c-60882210c71f', '1', 'AOS_Invoices', '99100845-584a-3556-5cbe-607835087e8c', 'test', '2021-04-27 14:41:56', 'editview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(65, 'cc210a19-6d5c-fc24-a320-60882380c773', '1', 'AOS_Invoices', '1e4a971e-9a4d-e7b9-1cbd-60799e5f04d6', 'test', '2021-04-27 14:43:27', 'detailview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(67, 'bea3c455-9101-4785-91d3-60882bf486b3', '1', 'Leads', '32cf7e21-70c6-6209-1c8a-60882bac6874', 'Vũ Hải', '2021-04-27 15:17:49', 'detailview', '5r71mmjl1d12v6oi18uig40i9l', 1, 0),
(71, '57240c7d-dd70-a96c-4281-608f86833a4f', '1', 'Contacts', 'efe6fe3b-57b6-55fd-0449-60881fd245ce', 'Mr. Phương Gia Châu', '2021-05-03 05:14:09', 'detailview', 'g0dl2joffmnktfd1qi922gqc0i', 1, 0),
(76, 'd78b9b8f-e05e-38fe-e854-6095016f2047', '1', 'AOS_Invoices', '31229e3e-4246-6ea6-b4d4-6088227b02ba', NULL, '2021-05-07 09:01:28', 'detailview', 'pq57du6a9257eptb1t6ar3ki2k', 1, 0),
(78, '8ec971b7-3b5d-27bd-69a3-609501420d09', '1', 'AOS_Invoices', '17a6ee50-ddf5-b74d-3326-608820eeb3fe', NULL, '2021-05-07 09:01:49', 'detailview', 'pq57du6a9257eptb1t6ar3ki2k', 1, 0),
(88, '4f427b63-02ea-8bd3-267a-609526ce5fc2', '1', 'idKyG_HangKyGui', '9b037089-d9f8-0741-8168-609501263610', 'Vũ Hải', '2021-05-07 11:38:15', 'detailview', 'iouf00m1t0ap5aabstv9h6v8lu', 0, 0),
(90, '571dc72d-548d-4f03-84a9-609527f81c05', '1', 'AOS_Invoices', '8c549e54-6a94-164f-db0d-609527dfed74', NULL, '2021-05-07 11:41:16', 'editview', 'iouf00m1t0ap5aabstv9h6v8lu', 1, 0),
(91, '576907b4-ffcb-3c66-f75d-6095279374e4', '1', 'idKyG_HangKyGui', 'a265b5c3-22c9-c085-ff5f-608eb9a9acf0', 'tenCH', '2021-05-07 11:41:19', 'detailview', 'iouf00m1t0ap5aabstv9h6v8lu', 0, 0),
(92, 'a0362243-5b11-fe56-5fbe-60960e1f71d8', '1', 'Users', '1', 'Administrator', '2021-05-08 04:06:38', 'editview', '9iqg11e8qdme1bdocp3pjbemlr', 1, 0),
(93, '64bc5d97-ed7b-1301-f364-609610b6234d', '1', 'ProspectLists', '744ab1bc-83b6-5306-6d7b-609610ce848a', 'test CPG', '2021-05-08 04:15:05', 'detailview', '9iqg11e8qdme1bdocp3pjbemlr', 1, 0),
(94, 'b539bdaa-967c-5d24-cc89-6096117bb7eb', '1', 'ProspectLists', '44e7b68d-0452-f21e-8be3-609611bc239d', 'Monthly newsletter', '2021-05-08 04:19:58', 'detailview', '9iqg11e8qdme1bdocp3pjbemlr', 1, 0),
(95, 'b3d6f1f4-b869-d6db-6549-609640ebbef1', '1', 'AOS_Invoices', '8903ed81-524e-c70b-4934-609640e17e66', NULL, '2021-05-08 07:39:20', 'detailview', '9iqg11e8qdme1bdocp3pjbemlr', 1, 0),
(100, 'ae1d45e7-3952-c09e-2114-609648bea19d', '1', 'idKyG_HangKyGui', '5d98056d-34fa-9510-6543-6096469d5e43', 'Phương Gia Châu', '2021-05-08 08:16:16', 'detailview', '9iqg11e8qdme1bdocp3pjbemlr', 0, 0),
(101, 'd0a51475-51f7-7e44-c6c9-60964b5d7550', '1', 'TemplateSectionLine', 'bed6939d-c7c7-8f85-cc83-60964b4611ca', 'Footer', '2021-05-08 08:28:12', 'save', '9iqg11e8qdme1bdocp3pjbemlr', 1, 0),
(105, '16c6d565-c8fd-8940-6c3a-60acde91700a', '1', 'AOS_Products', '6c81a8e5-e3ad-4f8b-3dc0-607673d722a2', 'Bão', '2021-05-25 11:24:37', 'editview', 'j0nmvcl32hpi3f965gdp22l0mh', 1, 0),
(111, 'bcd30edc-a3e4-6815-65bc-60ace19150fa', '1', 'Accounts', '6b39bb5b-9345-b8f7-d5f6-60ace1f223ba', 'Khách hàng', '2021-05-25 11:35:49', 'detailview', 'j0nmvcl32hpi3f965gdp22l0mh', 1, 0),
(112, '4b4f3e71-cb9f-76fd-a0f4-60ace128b023', '1', 'Contacts', '683f95be-6a15-ceb2-9213-60ace1f12fd4', 'Mr. Vũ Hải', '2021-05-25 11:36:36', 'detailview', 'j0nmvcl32hpi3f965gdp22l0mh', 1, 0),
(114, 'b0e6e8ce-7814-b780-2f1d-60ace1f9e81b', '1', 'idKyG_HangKyGui', '13fca11e-b6cc-d491-7a95-60acdd32b4e1', 'Hai', '2021-05-25 11:36:51', 'editview', 'j0nmvcl32hpi3f965gdp22l0mh', 1, 0),
(117, '63ca1ff7-f9ca-bdb0-e902-60ace22469fd', '1', 'AOS_Invoices', '29cbbc94-6f3c-6618-e08a-6076f37741c6', 'MR', '2021-05-25 11:40:45', 'editview', 'j0nmvcl32hpi3f965gdp22l0mh', 1, 0),
(124, '78ad8b1a-2c00-0cbe-c4c5-60ace21ceaf3', '1', 'AOS_Invoices', '935a31a0-da78-453f-aafd-6095016d6862', NULL, '2021-05-25 11:42:37', 'detailview', 'j0nmvcl32hpi3f965gdp22l0mh', 1, 0),
(125, '56b051e0-4c5c-9290-0925-60ace2a4e523', '1', 'AOS_Invoices', '55b10424-9c5d-f727-b41e-60ace222b78d', NULL, '2021-05-25 11:43:32', 'detailview', 'j0nmvcl32hpi3f965gdp22l0mh', 1, 0),
(129, 'b887a4c3-e367-17f9-5131-60ace35d066e', '1', 'idKyG_HangKyGui', '9e69d7d3-43e3-b618-fd09-60acdfc197bd', 'Coffe', '2021-05-25 11:45:11', 'detailview', 'j0nmvcl32hpi3f965gdp22l0mh', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--
DROP TABLE IF EXISTS upgrade_history;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('22bbf52b-8be0-b4e8-1045-60880886a741', 'upload/upgrades/module/ProductsKyGui2021_04_27_145052.zip', '42368c2a4ed89b6653dd8ca4f1356e85', 'module', 'installed', '1619527852', 'ProductsKyGui', 'Lưu trữ hàng hóa ký gửi', 'ProductsKyGui', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NToiaWRLeUciO3M6NjoiYXV0aG9yIjtzOjE1OiJWxakgVGhhbmggSOG6o2kiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjMxOiJMxrB1IHRy4buvIGjDoG5nIGjDs2Ega8O9IGfhu61pIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjEzOiJQcm9kdWN0c0t5R3VpIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyMS0wNC0yNyAxMjo1MDo1MiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE2MTk1Mjc4NTI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo4OntzOjI6ImlkIjtzOjEzOiJQcm9kdWN0c0t5R3VpIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE1OiJpZEt5R19IYW5nS3lHdWkiO3M6NToiY2xhc3MiO3M6MTU6ImlkS3lHX0hhbmdLeUd1aSI7czo0OiJwYXRoIjtzOjQzOiJtb2R1bGVzL2lkS3lHX0hhbmdLeUd1aS9pZEt5R19IYW5nS3lHdWkucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YToyOntpOjA7YToyOntzOjQ6ImZyb20iO3M6OTQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9pZGt5Z19oYW5na3lndWlfYW9zX3Byb2R1Y3RzX0FPU19Qcm9kdWN0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJBT1NfUHJvZHVjdHMiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6OTc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9pZGt5Z19oYW5na3lndWlfYW9zX3Byb2R1Y3RzX2lkS3lHX0hhbmdLeUd1aS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE1OiJpZEt5R19IYW5nS3lHdWkiO319czoxMzoicmVsYXRpb25zaGlwcyI7YToxOntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo5MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2lka3lnX2hhbmdreWd1aV9hb3NfcHJvZHVjdHNNZXRhRGF0YS5waHAiO319czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvaWRLeUdfSGFuZ0t5R3VpIjtzOjI6InRvIjtzOjIzOiJtb2R1bGVzL2lkS3lHX0hhbmdLeUd1aSI7fX1zOjg6Imxhbmd1YWdlIjthOjM6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9BT1NfUHJvZHVjdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiQU9TX1Byb2R1Y3RzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjY2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2lkS3lHX0hhbmdLeUd1aS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE1OiJpZEt5R19IYW5nS3lHdWkiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319czo3OiJ2YXJkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo5MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2lka3lnX2hhbmdreWd1aV9hb3NfcHJvZHVjdHNfQU9TX1Byb2R1Y3RzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6IkFPU19Qcm9kdWN0cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo5NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2lka3lnX2hhbmdreWd1aV9hb3NfcHJvZHVjdHNfaWRLeUdfSGFuZ0t5R3VpLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTU6ImlkS3lHX0hhbmdLeUd1aSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2021-04-27 12:50:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT 1,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT 0,
  `show_on_employees` tinyint(1) DEFAULT 1,
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$2y$10$wo65wAaQ7J6quQfiSO.IeuAps.NKQLpBh81G1xGjQqwZUysOw6m.q', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2021-04-14 04:26:36', '2021-04-15 12:51:57', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('b07810a6-fbf0-40fe-f328-6076712f35e3', 'vanvtt', NULL, 0, NULL, NULL, 1, 'Van', 'Vu', 1, 0, 1, '', '2021-04-14 04:38:52', '2021-04-14 04:38:52', '1', '1', 'Founder', NULL, 'themayvn', '', '+84933780327', '+84933780327', '', '', 'Active', '79/20 đường số 16 phường hiệp Bình Chánh quận Thủ Đức', '', '', 'Vietnam', '7000', 0, 0, 0, 'Active', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--
DROP TABLE IF EXISTS users_feeds;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--
DROP TABLE IF EXISTS users_last_import;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--
DROP TABLE IF EXISTS users_password_link;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--
DROP TABLE IF EXISTS users_signatures;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_html` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--
DROP TABLE IF EXISTS user_preferences;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('17746ca9-2f48-5b88-a4e7-60766f86af0e', 'AOS_Products2_AOS_PRODUCTS', 0, '2021-04-14 04:30:30', '2021-04-27 14:11:17', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo5OiJzb2x1b25nX2MiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('20229202-9bb4-9906-09ac-60770b6b5a33', 'Opportunities2_OPPORTUNITY', 0, '2021-04-14 15:33:28', '2021-04-14 15:33:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('22f9f143-7ea2-a363-bfb1-607673f8ad8a', 'Accounts2_ACCOUNT', 0, '2021-04-14 04:44:08', '2021-04-16 15:06:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('2cc23632-7473-aab8-12d5-60766f867655', 'AOS_Invoices2_AOS_INVOICES', 0, '2021-04-14 04:30:21', '2021-04-27 14:43:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo2OiJudW1iZXIiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('38056c7c-7d6b-46fb-b41b-60770cfc8908', 'Schedulers2_SCHEDULER', 0, '2021-04-14 15:40:38', '2021-04-14 15:40:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('42546774-daf1-7eee-1eaf-60766ff8436d', 'global', 0, '2021-04-14 04:26:36', '2021-05-25 11:40:54', '1', 'YTo1Njp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjQxNWZlOTdiLTlkYzgtZmNmMi0wZGE1LTYwNzY2ZjQzNzc2OSI7czo4OiJ0aW1lem9uZSI7czoxNjoiQXNpYS9Ib19DaGlfTWluaCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjoidXQiO3M6MToiMSI7czo1OiJkYXRlZiI7czo1OiJkLW0tWSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6MTA6IlByb3NwZWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX0ludm9pY2VzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjEzOiJBT1NfUHJvZHVjdHNRIjthOjE5OntzOjEzOiJyZXR1cm5fYWN0aW9uIjtzOjA6IiI7czoxMzoicmV0dXJuX21vZHVsZSI7czowOiIiO3M6NjoibW9kdWxlIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjQ6Imx2c28iO3M6MzoiYXNjIjtzOjM1OiJBT1NfUHJvZHVjdHMyX0FPU19QUk9EVUNUU19PUkRFUl9CWSI7czo5OiJzb2x1b25nX2MiO3M6MTg6InNlbGVjdF9lbnRpcmVfbGlzdCI7czoxOiIwIjtzOjMzOiJBT1NfUHJvZHVjdHMyX0FPU19QUk9EVUNUU19vZmZzZXQiO3M6MToiMCI7czo5OiJzaG93X3BsdXMiO3M6MDoiIjtzOjE4OiJhc3NpZ25lZF91c2VyX25hbWUiO3M6MDoiIjtzOjE2OiJhc3NpZ25lZF91c2VyX2lkIjtzOjA6IiI7czo5OiJwYXJlbnRUYWIiO3M6ODoiUHJvZHVjdHMiO3M6OToiYWpheF9sb2FkIjtzOjE6IjEiO3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjtzOjgwOiJOQU1FfENPU1R8UFJJQ0V8QU9TX1BST0RVQ1RfQ0FURUdPUllfTkFNRXxTT0xVT05HX0N8Q1JFQVRFRF9CWV9OQU1FfERBVEVfRU5URVJFRCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjE2OiJ1c2Vfc3RvcmVkX3F1ZXJ5IjtzOjQ6InRydWUiO3M6MTU6Imxhc3Rfc2VhcmNoX3RhYiI7czo1OiJiYXNpYyI7czoxODoic2F2ZV9jb2x1bW5zX29yZGVyIjtzOjQ6InRydWUiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MjM6IkFPU19Qcm9kdWN0X0NhdGVnb3JpZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxMDoiRW1wbG95ZWVzUSI7YTo0OntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6NjoiVGFza3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTQ6Ik9wcG9ydHVuaXRpZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiTGVhZHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTE6IlNjaGVkdWxlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTY6ImlkS3lHX0hhbmdLeUd1aVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJNZWV0aW5nc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMDoiQ2FtcGFpZ25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE0OiJQcm9zcGVjdExpc3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEzOiJBT1dfV29ya0Zsb3dRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),
('4e301b63-2e2c-c6cd-3f78-607671ae7ad3', 'Employees2_EMPLOYEE', 0, '2021-04-14 04:36:12', '2021-04-14 04:36:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5a799a00-8eb8-cb5d-f3b0-608808480784', 'idKyG_HangKyGui2_IDKYG_HANGKYGUI', 0, '2021-04-27 12:51:05', '2021-04-27 12:51:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5cebe3ee-b7ab-ac05-3810-6076708380e9', 'AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES', 0, '2021-04-14 04:31:23', '2021-04-14 04:31:23', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5e9f2474-b8e1-94f0-7f1a-6079a8672a16', 'Accounts', 0, '2021-04-16 15:06:53', '2021-04-16 15:06:53', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('63990be3-a5f9-8e23-91da-607672d04bca', 'Contacts2_CONTACT', 0, '2021-04-14 04:43:10', '2021-04-14 04:43:10', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6a717182-52c4-efb3-5da8-60766fdc1143', 'Home2_LEAD_17f73436-95dc-a718-6c42-60766f440223', 0, '2021-04-14 04:28:25', '2021-04-14 04:28:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7e165958-838a-9010-3d4b-6088238da09c', 'AOS_Invoices', 0, '2021-04-27 14:43:13', '2021-04-27 14:43:13', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('a96a39f9-672f-f17b-2896-60767123fa9a', 'Users2_USER', 0, '2021-04-14 04:39:00', '2021-04-14 04:39:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('afe7c84b-0cba-dbd3-c601-60961085982a', 'ProspectLists2_PROSPECTLIST', 0, '2021-05-08 04:13:54', '2021-05-08 04:13:54', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c7217b05-5926-23a6-71db-60767110227c', 'global', 0, '2021-04-14 04:38:52', '2021-04-14 04:38:52', 'b07810a6-fbf0-40fe-f328-6076712f35e3', 'YTozMjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvQmVybGluIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImM2MDIyNmI3LTVhMGYtMWE0MC00ZmRkLTYwNzY3MWQ2NGQ0NCI7fQ=='),
('d07ac1aa-f462-c5f6-9623-60770bfb3ce2', 'Leads2_LEAD', 0, '2021-04-14 15:33:31', '2021-04-14 15:33:31', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dafd9d5a-601f-c86e-f556-60960e9b3d85', 'Campaigns2_CAMPAIGN', 0, '2021-05-08 04:07:12', '2021-05-08 04:07:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dcf0098f-2878-15b3-f3c0-60766fa7f122', 'Prospects2_PROSPECT', 0, '2021-04-14 04:29:52', '2021-04-14 04:29:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('df1af47c-080c-26fc-faa7-60766f0ee356', 'Home', 0, '2021-04-14 04:28:16', '2021-04-16 13:38:22', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjE1ZmU1ODI4LWE1NWItNTJjOS0xZjZmLTYwNzY2ZjRhNGVjNSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjE2NjQyZmI5LWYwMzQtNjkxZC01ZWY1LTYwNzY2ZmFhNjIzNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE2ZDAyNjFiLTlmOGYtMTgzMi01MzJhLTYwNzY2ZjQ5NzFkOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE3MTBiOGYyLWViNTAtZDY0OC02NWM0LTYwNzY2ZjA0ZWFmMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMTdhMTlmNTItMzMzYS1jZDM3LTdjMGMtNjA3NjZmNmQ4MTZkIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMTdmNzM0MzYtOTVkYy1hNzE4LTZjNDItNjA3NjZmNDQwMjIzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIxN2ExOWY1Mi0zMzNhLWNkMzctN2MwYy02MDc2NmY2ZDgxNmQiO2k6MTtzOjM2OiIxN2Y3MzQzNi05NWRjLWE3MTgtNmM0Mi02MDc2NmY0NDAyMjMiO2k6MjtzOjM2OiIxNjY0MmZiOS1mMDM0LTY5MWQtNWVmNS02MDc2NmZhYTYyMzciO2k6MztzOjM2OiIxNmQwMjYxYi05ZjhmLTE4MzItNTMyYS02MDc2NmY0OTcxZDkiO2k6NDtzOjM2OiIxNzEwYjhmMi1lYjUwLWQ2NDgtNjVjNC02MDc2NmYwNGVhZjMiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjE1ZmU1ODI4LWE1NWItNTJjOS0xZjZmLTYwNzY2ZjRhNGVjNSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('e202a65b-bcf6-30a3-9cdf-60766f4c5ca9', 'Home2_CALL', 0, '2021-04-14 04:28:16', '2021-04-14 04:28:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e443aee2-927c-3eff-dd7b-60766f79846d', 'Home2_MEETING', 0, '2021-04-14 04:28:16', '2021-04-14 04:28:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e6af061b-45ba-6857-50f9-60766f115951', 'Home2_OPPORTUNITY', 0, '2021-04-14 04:28:16', '2021-04-14 04:28:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e8ef977b-2b38-ade2-5bd6-60766f1535a3', 'Home2_ACCOUNT', 0, '2021-04-14 04:28:16', '2021-04-14 04:28:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eb14f714-46f9-c07e-04df-60964e658b57', 'AOW_WorkFlow2_AOW_WORKFLOW', 0, '2021-05-08 08:41:50', '2021-05-08 08:41:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eb17e2c3-b118-833f-e666-60766f9003cf', 'Home2_LEAD', 0, '2021-04-14 04:28:16', '2021-04-14 04:28:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ed3e5088-f95a-565b-1d31-60766fefa818', 'Home2_SUGARFEED', 0, '2021-04-14 04:28:16', '2021-04-14 04:28:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('fddc0a82-e484-b5d5-21e4-60766f264c32', 'ETag', 0, '2021-04-14 04:26:36', '2021-04-27 12:50:52', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NDt9');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--
DROP TABLE IF EXISTS vcals;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_invoices_cstm`
--
ALTER TABLE `aos_invoices_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_aos_invoices_1_c`
--
ALTER TABLE `aos_products_aos_invoices_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_products_aos_invoices_1_alt` (`aos_products_aos_invoices_1aos_products_ida`,`aos_products_aos_invoices_1aos_invoices_idb`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_cstm`
--
ALTER TABLE `aos_products_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `idkyg_hangkygui`
--
ALTER TABLE `idkyg_hangkygui`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idkyg_hangkygui_aos_invoices_1_c`
--
ALTER TABLE `idkyg_hangkygui_aos_invoices_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkyg_hangkygui_aos_invoices_1_ida1` (`idkyg_hangkygui_aos_invoices_1idkyg_hangkygui_ida`),
  ADD KEY `idkyg_hangkygui_aos_invoices_1_idb2` (`idkyg_hangkygui_aos_invoices_1aos_invoices_idb`);

--
-- Indexes for table `idkyg_hangkygui_aos_products_c`
--
ALTER TABLE `idkyg_hangkygui_aos_products_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkyg_hangkygui_aos_products_alt` (`idkyg_hangkygui_aos_productsidkyg_hangkygui_ida`,`idkyg_hangkygui_aos_productsaos_products_idb`);

--
-- Indexes for table `idkyg_hangkygui_audit`
--
ALTER TABLE `idkyg_hangkygui_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_idkyg_hangkygui_parent_id` (`parent_id`);

--
-- Indexes for table `idkyg_hangkygui_cstm`
--
ALTER TABLE `idkyg_hangkygui_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
