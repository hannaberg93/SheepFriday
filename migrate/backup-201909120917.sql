-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Värd: mariadb:3306
-- Tid vid skapande: 09 dec 2019 kl 08:16
-- Serverversion: 10.4.10-MariaDB-1:10.4.10+maria~bionic
-- PHP-version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `sheepfriday`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_commentmeta`
--

CREATE TABLE `ull_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_comments`
--

CREATE TABLE `ull_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_comments`
--

INSERT INTO `ull_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-02 10:37:25', '2019-12-02 10:37:25', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_duplicator_packages`
--

CREATE TABLE `ull_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `package` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_duplicator_packages`
--

INSERT INTO `ull_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20191202_sheepfriday', '6caa11e34f6f32672853_20191202135116', 100, '2019-12-02 13:51:27', 'unknown', 'O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-02 13:51:16\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:3:\"5.3\";s:9:\"VersionDB\";s:6:\"5.7.26\";s:10:\"VersionPHP\";s:5:\"7.3.8\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:1;s:4:\"Name\";s:20:\"20191202_sheepfriday\";s:4:\"Hash\";s:35:\"6caa11e34f6f32672853_20191202135116\";s:8:\"NameHash\";s:56:\"20191202_sheepfriday_6caa11e34f6f32672853_20191202135116\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:61:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-snapshots/tmp\";s:8:\"StoreURL\";s:49:\"http://localhost/SheepFriday/public/wp-snapshots/\";s:8:\"ScanFile\";s:66:\"20191202_sheepfriday_6caa11e34f6f32672853_20191202135116_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"35.86 sec.\";s:7:\"ExeSize\";s:7:\"60.53KB\";s:7:\"ZipSize\";s:6:\"35.8MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:68:\"20191202_sheepfriday_6caa11e34f6f32672853_20191202135116_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:44:\"/Applications/MAMP/htdocs/SheepFriday/public\";s:4:\"Size\";i:37543839;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:6203;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:53:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-admin\";i:1;s:63:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content/uploads\";i:2;s:65:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content/languages\";i:3;s:62:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content/themes\";i:4;s:56:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:44:\"/Applications/MAMP/htdocs/SheepFriday/public\";i:1;s:55:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:56:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:70:\"20191202_sheepfriday_6caa11e34f6f32672853_20191202135116_installer.php\";s:4:\"Size\";i:61982;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:898346;s:4:\"File\";s:69:\"20191202_sheepfriday_6caa11e34f6f32672853_20191202135116_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:3:\"PHP\";s:13:\"collationList\";a:3:{i:0;s:22:\"utf8mb4_unicode_520_ci\";i:1;s:18:\"utf8mb4_general_ci\";i:2;s:15:\"utf8_general_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:11:\"sheepfriday\";s:15:\"tablesBaseCount\";i:52;s:16:\"tablesFinalCount\";i:52;s:14:\"tablesRowCount\";s:3:\"794\";s:16:\"tablesSizeOnDisk\";s:6:\"3.72MB\";s:18:\"varLowerCaseTables\";s:1:\"2\";s:7:\"version\";s:6:\"5.7.26\";s:14:\"versionComment\";s:28:\"MySQL Community Server (GPL)\";s:18:\"tableWiseRowCounts\";a:52:{s:15:\"ull_commentmeta\";s:1:\"0\";s:12:\"ull_comments\";s:1:\"1\";s:23:\"ull_duplicator_packages\";s:1:\"1\";s:9:\"ull_links\";s:1:\"0\";s:11:\"ull_options\";s:3:\"460\";s:12:\"ull_postmeta\";s:2:\"11\";s:9:\"ull_posts\";s:2:\"12\";s:22:\"ull_term_relationships\";s:1:\"1\";s:17:\"ull_term_taxonomy\";s:2:\"15\";s:12:\"ull_termmeta\";s:1:\"0\";s:9:\"ull_terms\";s:2:\"15\";s:12:\"ull_usermeta\";s:2:\"20\";s:9:\"ull_users\";s:1:\"1\";s:19:\"ull_wc_download_log\";s:1:\"0\";s:26:\"ull_wc_product_meta_lookup\";s:1:\"0\";s:23:\"ull_wc_tax_rate_classes\";s:1:\"2\";s:15:\"ull_wc_webhooks\";s:1:\"0\";s:18:\"ull_wfblockediplog\";s:1:\"0\";s:13:\"ull_wfblocks7\";s:1:\"0\";s:12:\"ull_wfconfig\";s:3:\"228\";s:14:\"ull_wfcrawlers\";s:1:\"0\";s:17:\"ull_wffilechanges\";s:1:\"0\";s:14:\"ull_wffilemods\";s:1:\"0\";s:10:\"ull_wfhits\";s:1:\"0\";s:12:\"ull_wfhoover\";s:1:\"0\";s:12:\"ull_wfissues\";s:1:\"0\";s:19:\"ull_wfknownfilelist\";s:1:\"0\";s:22:\"ull_wflivetraffichuman\";s:1:\"0\";s:10:\"ull_wflocs\";s:1:\"0\";s:12:\"ull_wflogins\";s:1:\"0\";s:20:\"ull_wfls_2fa_secrets\";s:1:\"0\";s:17:\"ull_wfls_settings\";s:2:\"19\";s:19:\"ull_wfnotifications\";s:1:\"0\";s:19:\"ull_wfpendingissues\";s:1:\"0\";s:18:\"ull_wfreversecache\";s:1:\"0\";s:15:\"ull_wfsnipcache\";s:1:\"0\";s:12:\"ull_wfstatus\";s:2:\"10\";s:18:\"ull_wftrafficrates\";s:1:\"0\";s:24:\"ull_woocommerce_api_keys\";s:1:\"0\";s:36:\"ull_woocommerce_attribute_taxonomies\";s:1:\"0\";s:48:\"ull_woocommerce_downloadable_product_permissions\";s:1:\"0\";s:19:\"ull_woocommerce_log\";s:1:\"0\";s:30:\"ull_woocommerce_order_itemmeta\";s:1:\"0\";s:27:\"ull_woocommerce_order_items\";s:1:\"0\";s:33:\"ull_woocommerce_payment_tokenmeta\";s:1:\"0\";s:30:\"ull_woocommerce_payment_tokens\";s:1:\"0\";s:24:\"ull_woocommerce_sessions\";s:1:\"1\";s:39:\"ull_woocommerce_shipping_zone_locations\";s:1:\"1\";s:37:\"ull_woocommerce_shipping_zone_methods\";s:1:\"0\";s:30:\"ull_woocommerce_shipping_zones\";s:1:\"1\";s:34:\"ull_woocommerce_tax_rate_locations\";s:1:\"0\";s:25:\"ull_woocommerce_tax_rates\";s:1:\"0\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";s:131:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-snapshots/tmp/20191202_sheepfriday_6caa11e34f6f32672853_20191202135116_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-02 13:51:16\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:3:\"5.3\";s:9:\"VersionDB\";s:6:\"5.7.26\";s:10:\"VersionPHP\";s:5:\"7.3.8\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:20:\"20191202_sheepfriday\";s:4:\"Hash\";s:35:\"6caa11e34f6f32672853_20191202135116\";s:8:\"NameHash\";s:56:\"20191202_sheepfriday_6caa11e34f6f32672853_20191202135116\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:61:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-snapshots/tmp\";s:8:\"StoreURL\";s:49:\"http://localhost/SheepFriday/public/wp-snapshots/\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:23;s:9:\"Installer\";r:76;s:8:\"Database\";r:88;s:13:\"BuildProgress\";r:174;}}}'),
(2, '20191202_sheepfriday', 'bc42fc4ad41bb9cd2301_20191202140014', 100, '2019-12-02 14:00:37', 'unknown', 'O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-02 14:00:14\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:3:\"5.3\";s:9:\"VersionDB\";s:6:\"5.7.26\";s:10:\"VersionPHP\";s:5:\"7.3.8\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";i:2;s:4:\"Name\";s:20:\"20191202_sheepfriday\";s:4:\"Hash\";s:35:\"bc42fc4ad41bb9cd2301_20191202140014\";s:8:\"NameHash\";s:56:\"20191202_sheepfriday_bc42fc4ad41bb9cd2301_20191202140014\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:61:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-snapshots/tmp\";s:8:\"StoreURL\";s:49:\"http://localhost/SheepFriday/public/wp-snapshots/\";s:8:\"ScanFile\";s:66:\"20191202_sheepfriday_bc42fc4ad41bb9cd2301_20191202140014_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:9:\"1.26 sec.\";s:7:\"ExeSize\";s:7:\"60.53KB\";s:7:\"ZipSize\";s:5:\"1.5MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":22:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:1;s:4:\"File\";s:68:\"20191202_sheepfriday_bc42fc4ad41bb9cd2301_20191202140014_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:44:\"/Applications/MAMP/htdocs/SheepFriday/public\";s:4:\"Size\";i:1577973;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:0;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:53:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-admin\";i:1;s:63:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content/uploads\";i:2;s:65:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content/languages\";i:3;s:62:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content/themes\";i:4;s:56:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:44:\"/Applications/MAMP/htdocs/SheepFriday/public\";i:1;s:55:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;}s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:70:\"20191202_sheepfriday_bc42fc4ad41bb9cd2301_20191202140014_installer.php\";s:4:\"Size\";i:61980;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:907334;s:4:\"File\";s:69:\"20191202_sheepfriday_bc42fc4ad41bb9cd2301_20191202140014_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:3:\"PHP\";s:13:\"collationList\";a:3:{i:0;s:22:\"utf8mb4_unicode_520_ci\";i:1;s:18:\"utf8mb4_general_ci\";i:2;s:15:\"utf8_general_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:11:\"sheepfriday\";s:15:\"tablesBaseCount\";i:52;s:16:\"tablesFinalCount\";i:52;s:14:\"tablesRowCount\";s:3:\"796\";s:16:\"tablesSizeOnDisk\";s:6:\"3.72MB\";s:18:\"varLowerCaseTables\";s:1:\"2\";s:7:\"version\";s:6:\"5.7.26\";s:14:\"versionComment\";s:28:\"MySQL Community Server (GPL)\";s:18:\"tableWiseRowCounts\";a:52:{s:15:\"ull_commentmeta\";s:1:\"0\";s:12:\"ull_comments\";s:1:\"1\";s:23:\"ull_duplicator_packages\";s:1:\"2\";s:9:\"ull_links\";s:1:\"0\";s:11:\"ull_options\";s:3:\"461\";s:12:\"ull_postmeta\";s:2:\"11\";s:9:\"ull_posts\";s:2:\"12\";s:22:\"ull_term_relationships\";s:1:\"1\";s:17:\"ull_term_taxonomy\";s:2:\"15\";s:12:\"ull_termmeta\";s:1:\"0\";s:9:\"ull_terms\";s:2:\"15\";s:12:\"ull_usermeta\";s:2:\"20\";s:9:\"ull_users\";s:1:\"1\";s:19:\"ull_wc_download_log\";s:1:\"0\";s:26:\"ull_wc_product_meta_lookup\";s:1:\"0\";s:23:\"ull_wc_tax_rate_classes\";s:1:\"2\";s:15:\"ull_wc_webhooks\";s:1:\"0\";s:18:\"ull_wfblockediplog\";s:1:\"0\";s:13:\"ull_wfblocks7\";s:1:\"0\";s:12:\"ull_wfconfig\";s:3:\"228\";s:14:\"ull_wfcrawlers\";s:1:\"0\";s:17:\"ull_wffilechanges\";s:1:\"0\";s:14:\"ull_wffilemods\";s:1:\"0\";s:10:\"ull_wfhits\";s:1:\"0\";s:12:\"ull_wfhoover\";s:1:\"0\";s:12:\"ull_wfissues\";s:1:\"0\";s:19:\"ull_wfknownfilelist\";s:1:\"0\";s:22:\"ull_wflivetraffichuman\";s:1:\"0\";s:10:\"ull_wflocs\";s:1:\"0\";s:12:\"ull_wflogins\";s:1:\"0\";s:20:\"ull_wfls_2fa_secrets\";s:1:\"0\";s:17:\"ull_wfls_settings\";s:2:\"19\";s:19:\"ull_wfnotifications\";s:1:\"0\";s:19:\"ull_wfpendingissues\";s:1:\"0\";s:18:\"ull_wfreversecache\";s:1:\"0\";s:15:\"ull_wfsnipcache\";s:1:\"0\";s:12:\"ull_wfstatus\";s:2:\"10\";s:18:\"ull_wftrafficrates\";s:1:\"0\";s:24:\"ull_woocommerce_api_keys\";s:1:\"0\";s:36:\"ull_woocommerce_attribute_taxonomies\";s:1:\"0\";s:48:\"ull_woocommerce_downloadable_product_permissions\";s:1:\"0\";s:19:\"ull_woocommerce_log\";s:1:\"0\";s:30:\"ull_woocommerce_order_itemmeta\";s:1:\"0\";s:27:\"ull_woocommerce_order_items\";s:1:\"0\";s:33:\"ull_woocommerce_payment_tokenmeta\";s:1:\"0\";s:30:\"ull_woocommerce_payment_tokens\";s:1:\"0\";s:24:\"ull_woocommerce_sessions\";s:1:\"1\";s:39:\"ull_woocommerce_shipping_zone_locations\";s:1:\"1\";s:37:\"ull_woocommerce_shipping_zone_methods\";s:1:\"0\";s:30:\"ull_woocommerce_shipping_zones\";s:1:\"1\";s:34:\"ull_woocommerce_tax_rate_locations\";s:1:\"0\";s:25:\"ull_woocommerce_tax_rates\";s:1:\"0\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";s:131:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-snapshots/tmp/20191202_sheepfriday_bc42fc4ad41bb9cd2301_20191202140014_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-02 14:00:14\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:3:\"5.3\";s:9:\"VersionDB\";s:6:\"5.7.26\";s:10:\"VersionPHP\";s:5:\"7.3.8\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:20:\"20191202_sheepfriday\";s:4:\"Hash\";s:35:\"bc42fc4ad41bb9cd2301_20191202140014\";s:8:\"NameHash\";s:56:\"20191202_sheepfriday_bc42fc4ad41bb9cd2301_20191202140014\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:61:\"/Applications/MAMP/htdocs/SheepFriday/public/wp-snapshots/tmp\";s:8:\"StoreURL\";s:49:\"http://localhost/SheepFriday/public/wp-snapshots/\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:23;s:9:\"Installer\";r:75;s:8:\"Database\";r:87;s:13:\"BuildProgress\";r:173;}}}');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_links`
--

CREATE TABLE `ull_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_options`
--

CREATE TABLE `ull_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_options`
--

INSERT INTO `ull_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://sheepfriday.test', 'yes'),
(2, 'home', 'http://sheepfriday.test', 'yes'),
(3, 'blogname', 'Sheep Friday', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kingenalban@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:178:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:17:\"index.php/shop/?$\";s:27:\"index.php?post_type=product\";s:47:\"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:42:\"index.php/shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"index.php/shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:58:\"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:53:\"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"index.php/faq/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"index.php/faq/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"index.php/faq/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"index.php/faq/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"index.php/faq/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/faq/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"index.php/faq/([^/]+)/embed/?$\";s:36:\"index.php?faq=$matches[1]&embed=true\";s:34:\"index.php/faq/([^/]+)/trackback/?$\";s:30:\"index.php?faq=$matches[1]&tb=1\";s:42:\"index.php/faq/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&paged=$matches[2]\";s:49:\"index.php/faq/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?faq=$matches[1]&cpage=$matches[2]\";s:39:\"index.php/faq/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?faq=$matches[1]&wc-api=$matches[3]\";s:45:\"index.php/faq/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"index.php/faq/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:38:\"index.php/faq/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?faq=$matches[1]&page=$matches[2]\";s:30:\"index.php/faq/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"index.php/faq/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"index.php/faq/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"index.php/faq/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"index.php/faq/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"index.php/faq/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=32&cpage=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:27:\"woocommerce/woocommerce.php\";i:4;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'understrap', 'yes'),
(41, 'stylesheet', 'understrap', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '32', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1590781550', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'ull_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:118:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:0:{}s:12:\"left-sidebar\";a:0:{}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:19:{i:1575877936;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1575877962;a:1:{s:21:\"wordfence_ls_ntp_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575877969;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575881058;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575881152;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1575881256;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1575895216;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575895226;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575899569;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575906016;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575907200;a:1:{s:31:\"wordfence_email_activity_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1575916816;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1575920751;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575920752;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1575920756;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575920764;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575936000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578355200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1575877657;s:15:\"version_checked\";s:3:\"5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(118, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1575289822;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1575877665;s:7:\"checked\";a:2:{s:12:\"twentytwenty\";s:3:\"1.0\";s:10:\"understrap\";s:5:\"0.9.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(138, 'recently_activated', 'a:3:{s:34:\"yith-woocommerce-wishlist/init.php\";i:1575634607;s:19:\"mailgun/mailgun.php\";i:1575564771;s:23:\"loco-translate/loco.php\";i:1575540393;}', 'yes'),
(152, 'current_theme', 'UnderStrap', 'yes'),
(153, 'theme_mods_understrap', 'a:7:{i:0;b:0;s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:186;}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(171, 'woocommerce_store_address', 'Drottninggatan 5', 'yes'),
(172, 'woocommerce_store_address_2', '', 'yes'),
(173, 'woocommerce_store_city', 'Malmö', 'yes'),
(174, 'woocommerce_default_country', 'SE:*', 'yes'),
(175, 'woocommerce_store_postcode', '212 11', 'yes'),
(176, 'woocommerce_allowed_countries', 'all', 'yes'),
(177, 'woocommerce_all_except_countries', '', 'yes'),
(178, 'woocommerce_specific_allowed_countries', '', 'yes'),
(179, 'woocommerce_ship_to_countries', '', 'yes'),
(180, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(181, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(182, 'woocommerce_calc_taxes', 'no', 'yes'),
(183, 'woocommerce_enable_coupons', 'yes', 'yes'),
(184, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(185, 'woocommerce_currency', 'SEK', 'yes'),
(186, 'woocommerce_currency_pos', 'left', 'yes'),
(187, 'woocommerce_price_thousand_sep', ',', 'yes'),
(188, 'woocommerce_price_decimal_sep', '.', 'yes'),
(189, 'woocommerce_price_num_decimals', '2', 'yes'),
(190, 'woocommerce_shop_page_id', '7', 'yes'),
(191, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(192, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(193, 'woocommerce_placeholder_image', '5', 'yes'),
(194, 'woocommerce_weight_unit', 'kg', 'yes'),
(195, 'woocommerce_dimension_unit', 'mm', 'yes'),
(196, 'woocommerce_enable_reviews', 'yes', 'yes'),
(197, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(198, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(199, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(200, 'woocommerce_review_rating_required', 'yes', 'no'),
(201, 'woocommerce_manage_stock', 'yes', 'yes'),
(202, 'woocommerce_hold_stock_minutes', '60', 'no'),
(203, 'woocommerce_notify_low_stock', 'yes', 'no'),
(204, 'woocommerce_notify_no_stock', 'yes', 'no'),
(205, 'woocommerce_stock_email_recipient', 'Hanna.berg93@gmail.com', 'no'),
(206, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(207, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(208, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(209, 'woocommerce_stock_format', '', 'yes'),
(210, 'woocommerce_file_download_method', 'force', 'no'),
(211, 'woocommerce_downloads_require_login', 'no', 'no'),
(212, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(213, 'woocommerce_prices_include_tax', 'no', 'yes'),
(214, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(215, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(216, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(217, 'woocommerce_tax_classes', '', 'yes'),
(218, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(219, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(220, 'woocommerce_price_display_suffix', '', 'yes'),
(221, 'woocommerce_tax_total_display', 'itemized', 'no'),
(222, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(223, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(224, 'woocommerce_ship_to_destination', 'billing', 'no'),
(225, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(226, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(227, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(228, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(229, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(230, 'woocommerce_registration_generate_username', 'yes', 'no'),
(231, 'woocommerce_registration_generate_password', 'yes', 'no'),
(232, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(233, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(234, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(235, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(236, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(237, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(238, 'woocommerce_trash_pending_orders', '', 'no'),
(239, 'woocommerce_trash_failed_orders', '', 'no'),
(240, 'woocommerce_trash_cancelled_orders', '', 'no'),
(241, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(242, 'woocommerce_email_from_name', 'Sheep Friday', 'no'),
(243, 'woocommerce_email_from_address', 'Hanna.berg93@gmail.com', 'no'),
(244, 'woocommerce_email_header_image', '', 'no'),
(245, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(246, 'woocommerce_email_base_color', '#96588a', 'no'),
(247, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(248, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(249, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(250, 'woocommerce_cart_page_id', '7', 'no'),
(251, 'woocommerce_checkout_page_id', '8', 'no'),
(252, 'woocommerce_myaccount_page_id', '9', 'no'),
(253, 'woocommerce_terms_page_id', '', 'no'),
(254, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(255, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(256, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(257, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(258, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(259, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(260, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(261, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(262, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(263, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(264, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(265, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(266, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(267, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(268, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(269, 'woocommerce_api_enabled', 'no', 'yes'),
(270, 'woocommerce_allow_tracking', 'no', 'no'),
(271, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(272, 'woocommerce_single_image_width', '600', 'yes'),
(273, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(274, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(275, 'woocommerce_demo_store', 'no', 'no'),
(276, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(277, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(278, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(279, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(281, 'default_product_cat', '15', 'yes'),
(284, 'woocommerce_version', '3.8.1', 'yes'),
(285, 'woocommerce_db_version', '3.8.1', 'yes'),
(286, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(287, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(288, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, '_transient_timeout_external_ip_address_127.0.0.1', '1575895217', 'no'),
(303, '_transient_external_ip_address_127.0.0.1', '194.68.170.10', 'no'),
(306, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(315, 'woocommerce_product_type', 'physical', 'yes'),
(320, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:14:\"create_account\";s:3:\"yes\";s:5:\"email\";s:22:\"Hanna.berg93@gmail.com\";}', 'yes'),
(321, 'woocommerce_klarna_checkout_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(322, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(323, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(324, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(325, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(328, 'jetpack_activated', '1', 'yes'),
(331, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes');
INSERT INTO `ull_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(332, 'jetpack_options', 'a:2:{s:7:\"version\";s:16:\"7.9.1:1575290659\";s:11:\"old_version\";s:16:\"7.9.1:1575290659\";}', 'yes'),
(333, 'jetpack_sync_settings_disable', '0', 'yes'),
(336, 'do_activate', '0', 'yes'),
(341, 'wc_stripe_show_style_notice', 'no', 'yes'),
(342, 'wc_stripe_show_sca_notice', 'no', 'yes'),
(343, 'wc_stripe_version', '4.3.1', 'yes'),
(344, '_transient_shipping-transient-version', '1575290732', 'yes'),
(348, '_site_transient_timeout_browser_21d97b139026e885b10fc791a2edf477', '1575895753', 'no'),
(349, '_site_transient_browser_21d97b139026e885b10fc791a2edf477', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"78.0.3904.108\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(350, 'jetpack_ab_connect_banner_green_bar', 'b', 'yes'),
(355, 'understrap_news_last_checked', '1575290954', 'yes'),
(377, 'wc_stripe_show_keys_notice', 'no', 'yes'),
(382, 'wc_stripe_show_ssl_notice', 'no', 'yes'),
(383, 'jetpack_dismissed_connection_banner', '1', 'yes'),
(411, '_transient_product_query-transient-version', '1575749627', 'yes'),
(414, '_transient_timeout_jetpack_file_data_7.9.1', '1577799127', 'no'),
(415, '_transient_jetpack_file_data_7.9.1', 'a:51:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:87:\"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}', 'no'),
(416, 'jetpack_available_modules', 'a:1:{s:5:\"7.9.1\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(424, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1575293593;}', 'no');
INSERT INTO `ull_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(430, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(431, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(448, 'duplicator_settings', 'a:15:{s:7:\"version\";s:6:\"1.3.24\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}', 'yes'),
(449, 'duplicator_version_plugin', '1.3.24', 'yes'),
(452, 'wordfence_ls_version', '1.0.4', 'yes'),
(453, 'wordfence_version', '7.4.1', 'yes'),
(454, 'wordfence_case', '1', 'yes'),
(455, 'wordfence_installed', '1', 'yes'),
(456, 'wordfenceActivated', '1', 'yes'),
(457, 'wf_plugin_act_error', '', 'yes'),
(466, 'duplicator_package_active', 'O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-02 13:55:07\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:3:\"5.3\";s:9:\"VersionDB\";s:6:\"8.0.18\";s:10:\"VersionPHP\";s:6:\"7.3.11\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:20:\"20191202_sheepfriday\";s:4:\"Hash\";s:35:\"995e7859024400649297_20191202135507\";s:8:\"NameHash\";s:56:\"20191202_sheepfriday_995e7859024400649297_20191202135507\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:58:\"/Users/hannaberg/Sites/sheepfriday/public/wp-snapshots/tmp\";s:8:\"StoreURL\";s:37:\"http://sheepfriday.test/wp-snapshots/\";s:8:\"ScanFile\";s:66:\"20191202_sheepfriday_995e7859024400649297_20191202135507_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:41:\"/Users/hannaberg/Sites/sheepfriday/public\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-02 13:55:07\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:3:\"5.3\";s:9:\"VersionDB\";s:6:\"8.0.18\";s:10:\"VersionPHP\";s:6:\"7.3.11\";s:9:\"VersionOS\";s:6:\"Darwin\";s:2:\"ID\";N;s:4:\"Name\";s:20:\"20191202_sheepfriday\";s:4:\"Hash\";s:35:\"995e7859024400649297_20191202135507\";s:8:\"NameHash\";s:56:\"20191202_sheepfriday_995e7859024400649297_20191202135507\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:58:\"/Users/hannaberg/Sites/sheepfriday/public/wp-snapshots/tmp\";s:8:\"StoreURL\";s:37:\"http://sheepfriday.test/wp-snapshots/\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:23;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server - GPL\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:0;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:63;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:50:\"/Users/hannaberg/Sites/sheepfriday/public/wp-admin\";i:1;s:60:\"/Users/hannaberg/Sites/sheepfriday/public/wp-content/uploads\";i:2;s:62:\"/Users/hannaberg/Sites/sheepfriday/public/wp-content/languages\";i:3;s:59:\"/Users/hannaberg/Sites/sheepfriday/public/wp-content/themes\";i:4;s:53:\"/Users/hannaberg/Sites/sheepfriday/public/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:41:\"/Users/hannaberg/Sites/sheepfriday/public\";i:1;s:52:\"/Users/hannaberg/Sites/sheepfriday/public/wp-content\";}}s:9:\"Installer\";r:86;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:128;}', 'yes'),
(638, '_site_transient_timeout_browser_809da7037e1b9d5199193ec430b98d03', '1575994467', 'no'),
(639, '_site_transient_browser_809da7037e1b9d5199193ec430b98d03', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"70.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(640, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1575994468', 'no'),
(641, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(682, '_site_transient_timeout_browser_6a622d47fb08177c1441b37c7ddd7498', '1576013677', 'no'),
(683, '_site_transient_browser_6a622d47fb08177c1441b37c7ddd7498', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"78.0.3904.108\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(684, '_site_transient_timeout_php_check_0cbcbda5109bcde6b94054595b5c2163', '1576013678', 'no'),
(685, '_site_transient_php_check_0cbcbda5109bcde6b94054595b5c2163', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(717, '_site_transient_timeout_browser_10d6d753ac249432fa3c5e4ef48d6c7f', '1576054650', 'no'),
(718, '_site_transient_browser_10d6d753ac249432fa3c5e4ef48d6c7f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"78.0.3904.108\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(758, 'cptui_new_install', 'false', 'yes'),
(786, 'acf_version', '5.8.7', 'yes'),
(983, '_transient_timeout_wc_shipping_method_count_legacy', '1578062756', 'no'),
(984, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1575290732\";s:5:\"value\";i:0;}', 'no'),
(993, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1063, '_transient_product-transient-version', '1575626343', 'yes'),
(1178, '_transient_timeout_external_ip_address_172.29.0.1', '1576144048', 'no'),
(1179, '_transient_external_ip_address_172.29.0.1', '109.228.150.13', 'no'),
(1188, '_transient_timeout_loco_po_7482014623b9184020ade1941f9b77b8', '1576403412', 'no'),
(1189, '_transient_loco_po_7482014623b9184020ade1941f9b77b8', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:42:\"themes/understrap/languages/understrap.pot\";s:5:\"bytes\";i:16614;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:165;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1190, '_transient_timeout_loco_po_7740014d1d7ce524a1141a89c77118e4', '1576403412', 'no'),
(1191, '_transient_loco_po_7740014d1d7ce524a1141a89c77118e4', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/nl_NL.po\";s:5:\"bytes\";i:19318;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:165;s:1:\"p\";i:160;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1192, '_transient_timeout_loco_po_db5ecd1af1fcc11a9e636883cbd98e8d', '1576403412', 'no'),
(1193, '_transient_loco_po_db5ecd1af1fcc11a9e636883cbd98e8d', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/fr_FR.po\";s:5:\"bytes\";i:21621;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:155;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1194, '_transient_timeout_loco_po_a56186020261611c7f9d836a8b6916d8', '1576403412', 'no'),
(1195, '_transient_loco_po_a56186020261611c7f9d836a8b6916d8', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/nb_NO.po\";s:5:\"bytes\";i:20856;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:161;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1196, '_transient_timeout_loco_po_35d5fcf7f1e1512ea639ec5f504a59b8', '1576403412', 'no'),
(1197, '_transient_loco_po_35d5fcf7f1e1512ea639ec5f504a59b8', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/sl_SI.po\";s:5:\"bytes\";i:21525;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:165;s:1:\"p\";i:164;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1198, '_transient_timeout_loco_po_4500560cfef35c01c0d81873c68051db', '1576403412', 'no'),
(1199, '_transient_loco_po_4500560cfef35c01c0d81873c68051db', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/pt_BR.po\";s:5:\"bytes\";i:11539;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:86;s:1:\"p\";i:86;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1200, '_transient_timeout_loco_po_4796232ba39a9d613961c24dfffa9e36', '1576403412', 'no'),
(1201, '_transient_loco_po_4796232ba39a9d613961c24dfffa9e36', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/ko_KR.po\";s:5:\"bytes\";i:7932;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:56;s:1:\"p\";i:56;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1202, '_transient_timeout_loco_po_17560ae61400aa5af376e0f08b7c44dc', '1576403412', 'no'),
(1203, '_transient_loco_po_17560ae61400aa5af376e0f08b7c44dc', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/tr_TR.po\";s:5:\"bytes\";i:21435;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:161;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1204, '_transient_timeout_loco_po_705fb5a3c6a4235fbe9894cca98d18af', '1576403412', 'no'),
(1205, '_transient_loco_po_705fb5a3c6a4235fbe9894cca98d18af', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/pl_PL.po\";s:5:\"bytes\";i:21242;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:153;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1206, '_transient_timeout_loco_po_b77c6c9452b362ef3775963db82da02e', '1576403412', 'no'),
(1207, '_transient_loco_po_b77c6c9452b362ef3775963db82da02e', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/ru_RU.po\";s:5:\"bytes\";i:24355;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:165;s:1:\"p\";i:165;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1208, '_transient_timeout_loco_po_a4b287e3a757033933f2203753d57bb7', '1576403412', 'no'),
(1209, '_transient_loco_po_a4b287e3a757033933f2203753d57bb7', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/it_IT.po\";s:5:\"bytes\";i:8111;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:56;s:1:\"p\";i:56;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1210, '_transient_timeout_loco_po_96e40bc7e58ca290a778670ad9ea6a8c', '1576403412', 'no'),
(1211, '_transient_loco_po_96e40bc7e58ca290a778670ad9ea6a8c', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/de_DE.po\";s:5:\"bytes\";i:21765;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:161;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539412;}', 'no'),
(1212, '_transient_timeout_loco_po_91698d71e0d487a0dcc2837645efea1e', '1576403413', 'no'),
(1213, '_transient_loco_po_91698d71e0d487a0dcc2837645efea1e', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/el_GR.po\";s:5:\"bytes\";i:26115;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:161;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539413;}', 'no'),
(1214, '_transient_timeout_loco_po_5b5639dcadd96980bbf7f37e0e08a700', '1576403413', 'no'),
(1215, '_transient_loco_po_5b5639dcadd96980bbf7f37e0e08a700', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/pt_PT.po\";s:5:\"bytes\";i:21703;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:165;s:1:\"p\";i:165;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539413;}', 'no'),
(1216, '_transient_timeout_loco_po_c8ac5ac87c7eb20ea50c3edda7e74a68', '1576403413', 'no'),
(1217, '_transient_loco_po_c8ac5ac87c7eb20ea50c3edda7e74a68', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/es_ES.po\";s:5:\"bytes\";i:8010;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:56;s:1:\"p\";i:56;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539413;}', 'no'),
(1218, '_transient_timeout_loco_po_1b6c71f794f752daedffcec2eb365552', '1576403413', 'no'),
(1219, '_transient_loco_po_1b6c71f794f752daedffcec2eb365552', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/sv_SE.po\";s:5:\"bytes\";i:10509;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:77;s:1:\"p\";i:77;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539413;}', 'no'),
(1220, '_transient_timeout_loco_po_c6093f4aa035605d120a6cc4d6f9ffe8', '1576403413', 'no'),
(1221, '_transient_loco_po_c6093f4aa035605d120a6cc4d6f9ffe8', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/ja_JP.po\";s:5:\"bytes\";i:22441;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:161;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539413;}', 'no'),
(1222, '_transient_timeout_loco_po_09016723f951d42d28ef4ed0b1745427', '1576403413', 'no'),
(1223, '_transient_loco_po_09016723f951d42d28ef4ed0b1745427', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/he_IL.po\";s:5:\"bytes\";i:19848;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:149;s:1:\"p\";i:148;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539413;}', 'no'),
(1224, '_transient_timeout_loco_po_4b3a800ce04f0ee9c4004b7efcfffea0', '1576403413', 'no'),
(1225, '_transient_loco_po_4b3a800ce04f0ee9c4004b7efcfffea0', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:43:\"themes/understrap/languages/de_DE_formal.po\";s:5:\"bytes\";i:21889;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:161;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539413;}', 'no'),
(1226, '_transient_timeout_loco_po_460a755ffdf71f45e117005fe5f6e850', '1576403413', 'no'),
(1227, '_transient_loco_po_460a755ffdf71f45e117005fe5f6e850', 'a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"themes/understrap/languages/nn_NO.po\";s:5:\"bytes\";i:20882;s:5:\"mtime\";i:1575282559;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:161;s:1:\"p\";i:161;s:1:\"f\";i:0;}}s:1:\"t\";i:1575539413;}', 'no'),
(1253, '_transient_timeout_external_ip_address_::1', '1576145905', 'no'),
(1254, '_transient_external_ip_address_::1', '194.68.170.10', 'no'),
(1273, 'wpcf7', 'a:3:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1575542247;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:0;s:13:\"count_invalid\";i:1;}s:9:\"recaptcha\";N;}', 'yes'),
(1304, 'mailgun', 'a:14:{s:6:\"region\";s:2:\"us\";s:6:\"useAPI\";s:1:\"1\";s:6:\"domain\";s:51:\"sandbox01f3b82ddb4f4178b70eb846a10652d1.mailgun.org\";s:6:\"apiKey\";s:50:\"1ee90e4c4e9d7af7118c4172dd052f26-c27bf672-60bf0e06\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:6:\"secure\";s:1:\"1\";s:7:\"sectype\";s:3:\"tls\";s:12:\"track-clicks\";s:8:\"htmlonly\";s:11:\"track-opens\";s:1:\"1\";s:12:\"from-address\";s:21:\"kingenalban@gmail.com\";s:9:\"from-name\";s:11:\"SheepFriday\";s:13:\"override-from\";N;s:11:\"campaign-id\";s:0:\"\";}', 'yes'),
(1305, 'widget_list_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1327, 'wp_mail_smtp_initial_version', '1.7.1', 'no'),
(1328, 'wp_mail_smtp_version', '1.7.1', 'no'),
(1329, 'wp_mail_smtp', 'a:6:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:21:\"kingenalban@gmail.com\";s:9:\"from_name\";s:12:\"Sheep Friday\";s:6:\"mailer\";s:7:\"mailgun\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:50:\"1ee90e4c4e9d7af7118c4172dd052f26-c27bf672-60bf0e06\";s:6:\"domain\";s:51:\"sandbox01f3b82ddb4f4178b70eb846a10652d1.mailgun.org\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}}', 'no'),
(1333, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(1435, '_transient_timeout_wc_block_09cfc650abc0ea7d91aad1fe0667b856', '1578140836', 'no'),
(1436, '_transient_wc_block_09cfc650abc0ea7d91aad1fe0667b856', 'a:2:{s:7:\"version\";s:10:\"1575547788\";s:5:\"value\";a:3:{i:0;i:92;i:1;i:91;i:2;i:90;}}', 'no'),
(1438, '_transient_timeout_wc_block_9a623384fe200f2434b101fcd158f728', '1578140855', 'no'),
(1439, '_transient_wc_block_9a623384fe200f2434b101fcd158f728', 'a:2:{s:7:\"version\";s:10:\"1575547788\";s:5:\"value\";a:3:{i:0;i:92;i:1;i:91;i:2;i:90;}}', 'no'),
(1591, 'product_cat_children', 'a:6:{i:22;a:4:{i:0;i:23;i:1;i:24;i:2;i:25;i:3;i:40;}i:19;a:2:{i:0;i:26;i:1;i:27;}i:21;a:3:{i:0;i:28;i:1;i:29;i:2;i:30;}i:17;a:2:{i:0;i:31;i:1;i:32;}i:20;a:4:{i:0;i:33;i:1;i:34;i:2;i:35;i:3;i:36;}i:18;a:3:{i:0;i:37;i:1;i:38;i:2;i:39;}}', 'yes'),
(1712, 'WPLANG', '', 'yes'),
(1714, '_transient_random_seed', 'd3c4ee2a48432a9badd085f2822f121c', 'yes'),
(2019, '_transient_timeout_wc_block_7f95c502a02dccfe997dadf0a3fd1c79', '1578215594', 'no'),
(2020, '_transient_wc_block_7f95c502a02dccfe997dadf0a3fd1c79', 'a:2:{s:7:\"version\";s:10:\"1575623482\";s:5:\"value\";a:3:{i:0;i:143;i:1;i:141;i:2;i:139;}}', 'no'),
(2100, '_transient_timeout_wc_term_counts', '1578229625', 'no'),
(2101, '_transient_wc_term_counts', 'a:25:{i:39;s:1:\"2\";i:18;s:1:\"5\";i:38;s:1:\"1\";i:37;s:1:\"2\";i:32;s:1:\"5\";i:17;s:1:\"6\";i:31;s:1:\"1\";i:19;s:1:\"4\";i:34;s:1:\"2\";i:23;s:1:\"3\";i:24;s:1:\"3\";i:25;s:1:\"2\";i:21;s:1:\"4\";i:30;s:1:\"1\";i:28;s:1:\"2\";i:20;s:1:\"8\";i:27;s:1:\"1\";i:40;s:1:\"1\";i:33;s:1:\"2\";i:35;s:1:\"1\";i:26;s:1:\"3\";i:22;s:1:\"9\";i:29;s:1:\"1\";i:36;s:1:\"3\";i:15;s:1:\"0\";}', 'no'),
(2134, '_transient_timeout_wc_low_stock_count', '1578220173', 'no'),
(2135, '_transient_wc_low_stock_count', '0', 'no'),
(2136, '_transient_timeout_wc_outofstock_count', '1578220173', 'no'),
(2137, '_transient_wc_outofstock_count', '0', 'no'),
(2201, 'yit_recently_activated', 'a:0:{}', 'yes'),
(2202, 'yith_wcwl_frontend_css_colors', 's:1159:\"a:10:{s:15:\"add_to_wishlist\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:21:\"add_to_wishlist_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:11:\"add_to_cart\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:17:\"add_to_cart_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_1\";a:3:{s:10:\"background\";s:7:\"#333333\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#333333\";}s:20:\"button_style_1_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"button_style_2\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#858484\";s:12:\"border_color\";s:7:\"#c6c6c6\";}s:20:\"button_style_2_hover\";a:3:{s:10:\"background\";s:7:\"#4F4F4F\";s:5:\"color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#4F4F4F\";}s:14:\"wishlist_table\";a:3:{s:10:\"background\";s:7:\"#FFFFFF\";s:5:\"color\";s:7:\"#6d6c6c\";s:12:\"border_color\";s:7:\"#FFFFFF\";}s:7:\"headers\";a:1:{s:10:\"background\";s:7:\"#F4F4F4\";}}\";', 'yes'),
(2203, 'yith_wcwl_wishlist_title', 'My wishlist on Sheep Friday', 'yes'),
(2204, 'yith_wcwl_version', '2.2.17', 'yes'),
(2205, 'yith_wcwl_db_version', '2.2.0', 'yes'),
(2206, 'yith_system_info', 'a:2:{s:11:\"system_info\";a:13:{s:14:\"min_wp_version\";a:1:{s:5:\"value\";s:3:\"5.3\";}s:14:\"min_wc_version\";a:1:{s:5:\"value\";s:5:\"3.8.1\";}s:15:\"wp_memory_limit\";a:1:{s:5:\"value\";i:268435456;}s:15:\"min_php_version\";a:1:{s:5:\"value\";s:5:\"7.3.2\";}s:15:\"min_tls_version\";a:1:{s:5:\"value\";s:3:\"1.3\";}s:15:\"imagick_version\";a:1:{s:5:\"value\";s:3:\"n/a\";}s:15:\"wp_cron_enabled\";a:1:{s:5:\"value\";b:1;}s:16:\"mbstring_enabled\";a:1:{s:5:\"value\";b:1;}s:17:\"simplexml_enabled\";a:1:{s:5:\"value\";b:1;}s:10:\"gd_enabled\";a:1:{s:5:\"value\";b:1;}s:13:\"iconv_enabled\";a:1:{s:5:\"value\";b:1;}s:15:\"opcache_enabled\";a:1:{s:5:\"value\";b:0;}s:17:\"url_fopen_enabled\";a:1:{s:5:\"value\";s:1:\"1\";}}s:6:\"errors\";b:0;}', 'yes'),
(2207, 'yith_wcwl_general_videobox', 'a:7:{s:11:\"plugin_name\";s:25:\"YITH WooCommerce Wishlist\";s:18:\"title_first_column\";s:30:\"Discover the Advanced Features\";s:24:\"description_first_column\";s:89:\"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE WISHLIST to benefit from all features!\";s:5:\"video\";a:3:{s:8:\"video_id\";s:9:\"118797844\";s:15:\"video_image_url\";s:99:\"http://sheepfriday.test/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg\";s:17:\"video_description\";s:0:\"\";}s:19:\"title_second_column\";s:28:\"Get Support and Pro Features\";s:25:\"description_second_column\";s:205:\"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.\";s:6:\"button\";a:2:{s:4:\"href\";s:79:\"https://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585\";s:5:\"title\";s:28:\"Get Support and Pro Features\";}}', 'yes'),
(2208, 'yith_wcwl_enabled', 'yes', 'yes'),
(2209, 'yith_wcwl_wishlist_page_id', '181', 'yes'),
(2210, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(2211, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(2212, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(2213, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(2214, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(2215, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(2216, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(2217, 'yith_wcwl_price_show', 'yes', 'yes'),
(2218, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(2219, 'yith_wcwl_stock_show', 'yes', 'yes'),
(2220, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(2221, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(2222, 'yith_wcwl_share_fb', 'no', 'yes'),
(2223, 'yith_wcwl_share_twitter', 'no', 'yes'),
(2224, 'yith_wcwl_share_pinterest', 'no', 'yes'),
(2225, 'yith_wcwl_share_googleplus', 'no', 'yes'),
(2226, 'yith_wcwl_share_email', 'no', 'yes'),
(2227, 'yith_wcwl_share_whatsapp', 'no', 'yes'),
(2228, 'yith_wcwl_share_url', 'no', 'yes'),
(2229, 'yith_wcwl_socials_title', 'My wishlist on Sheep Friday', 'yes'),
(2230, 'yith_wcwl_socials_text', '', 'yes'),
(2231, 'yith_wcwl_socials_image_url', '', 'yes'),
(2232, 'yith_wfbt_enable_integration', 'no', 'yes'),
(2233, 'yith_wcwl_use_button', 'no', 'yes'),
(2234, 'yith_wcwl_custom_css', '', 'yes'),
(2235, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(2236, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(2237, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(2238, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(2239, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcwl_panel\";b:1;}', 'yes'),
(2240, 'yith_plugin_fw_promo_2019_bis', '1', 'yes'),
(2241, '_site_transient_timeout_yith_promo_message', '3151570008', 'no'),
(2242, '_site_transient_yith_promo_message', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2019-12-10</expiry_date>\n    <promo>\n        <promo_id>yithblackfriday2019</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <description><![CDATA[\n            Don\'t miss our <strong>30% discount</strong> on all our products! No coupon needed in cart. Valid from <strong>28th November</strong> to <strong>2nd December</strong>.\n        ]]></description>\n        <link>\n            <label>Get your deals now!</label>\n            <url><![CDATA[https://yithemes.com]]></url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n            <border_color>#272121</border_color>\n            <background_color>#ffffff</background_color>\n        </style>\n        <start_date>2019-11-27 23:59:59</start_date>\n        <end_date>2019-12-03 08:00:00</end_date>\n    </promo>\n</promotions>', 'no'),
(2245, 'yith_wcwl_button_position', 'add-to-cart', 'yes'),
(2264, '_transient_timeout_yith_wcwl_wishlist_count_4KX1SKKNCYAM', '1576239359', 'no'),
(2265, '_transient_yith_wcwl_wishlist_count_4KX1SKKNCYAM', '0', 'no'),
(2306, 'recovery_mode_email_last_sent', '1575636823', 'yes'),
(2312, 'cptui_post_types', 'a:1:{s:3:\"faq\";a:30:{s:4:\"name\";s:3:\"faq\";s:5:\"label\";s:4:\"FAQs\";s:14:\"singular_label\";s:3:\"FAQ\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:3:\"faq\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(2336, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(2752, '_transient_timeout_acf_plugin_updates', '1575920830', 'no'),
(2753, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.7\";}}', 'no'),
(2804, '_transient_is_multi_author', '0', 'yes'),
(2840, '_transient_understrap_categories', '1', 'yes'),
(2985, '_transient_timeout__woocommerce_helper_subscriptions', '1575878558', 'no'),
(2986, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(2987, '_site_transient_timeout_theme_roots', '1575879458', 'no'),
(2988, '_site_transient_theme_roots', 'a:2:{s:12:\"twentytwenty\";s:7:\"/themes\";s:10:\"understrap\";s:7:\"/themes\";}', 'no'),
(2989, '_transient_timeout__woocommerce_helper_updates', '1575920858', 'no'),
(2990, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1575877658;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(2991, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1575877667;s:7:\"checked\";a:12:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.7\";s:43:\"woocommerce-jetpack/woocommerce-jetpack.php\";s:5:\"4.6.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.1\";s:25:\"duplicator/duplicator.php\";s:6:\"1.3.24\";s:19:\"jetpack/jetpack.php\";s:5:\"7.9.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.8.1\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.22.1\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"4.3.1\";s:23:\"wordfence/wordfence.php\";s:5:\"7.4.1\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.7.1\";}s:8:\"response\";a:2:{s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"8.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.8.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:5:\"7.4.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wordfence.7.4.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=2070855\";s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"woocommerce-jetpack/woocommerce-jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/woocommerce-jetpack\";s:4:\"slug\";s:19:\"woocommerce-jetpack\";s:6:\"plugin\";s:43:\"woocommerce-jetpack/woocommerce-jetpack.php\";s:11:\"new_version\";s:5:\"4.6.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/woocommerce-jetpack/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/woocommerce-jetpack.4.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/woocommerce-jetpack/assets/icon-256x256.png?rev=1813426\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-jetpack/assets/icon-128x128.png?rev=1813426\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/woocommerce-jetpack/assets/banner-1544x500.jpg?rev=1636218\";s:2:\"1x\";s:74:\"https://ps.w.org/woocommerce-jetpack/assets/banner-772x250.jpg?rev=1636218\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.3.24\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.3.24.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.22.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.22.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"4.3.1\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1917495\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1917495\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1917495\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1917495\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_postmeta`
--

CREATE TABLE `ull_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_postmeta`
--

INSERT INTO `ull_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(10, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 11, '_edit_lock', '1575294506:1'),
(12, 11, '_wp_trash_meta_status', 'publish'),
(13, 11, '_wp_trash_meta_time', '1575300987'),
(14, 11, '_wp_desired_post_slug', 'kontakt'),
(15, 13, '_edit_lock', '1575359194:1'),
(16, 14, '_edit_lock', '1575360193:1'),
(17, 15, '_edit_lock', '1575538462:3'),
(18, 18, '_edit_lock', '1575389673:3'),
(19, 21, '_edit_lock', '1575409076:2'),
(20, 23, '_menu_item_type', 'custom'),
(21, 23, '_menu_item_menu_item_parent', '0'),
(22, 23, '_menu_item_object_id', '23'),
(23, 23, '_menu_item_object', 'custom'),
(24, 23, '_menu_item_target', ''),
(25, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 23, '_menu_item_xfn', ''),
(27, 23, '_menu_item_url', 'http://sheepfriday.test/'),
(28, 23, '_menu_item_orphaned', '1575459793'),
(29, 24, '_menu_item_type', 'post_type'),
(30, 24, '_menu_item_menu_item_parent', '0'),
(31, 24, '_menu_item_object_id', '8'),
(32, 24, '_menu_item_object', 'page'),
(33, 24, '_menu_item_target', ''),
(34, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 24, '_menu_item_xfn', ''),
(36, 24, '_menu_item_url', ''),
(37, 24, '_menu_item_orphaned', '1575459794'),
(38, 25, '_menu_item_type', 'post_type'),
(39, 25, '_menu_item_menu_item_parent', '0'),
(40, 25, '_menu_item_object_id', '9'),
(41, 25, '_menu_item_object', 'page'),
(42, 25, '_menu_item_target', ''),
(43, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 25, '_menu_item_xfn', ''),
(45, 25, '_menu_item_url', ''),
(46, 25, '_menu_item_orphaned', '1575459794'),
(47, 26, '_menu_item_type', 'post_type'),
(48, 26, '_menu_item_menu_item_parent', '0'),
(49, 26, '_menu_item_object_id', '10'),
(50, 26, '_menu_item_object', 'page'),
(51, 26, '_menu_item_target', ''),
(52, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 26, '_menu_item_xfn', ''),
(54, 26, '_menu_item_url', ''),
(55, 26, '_menu_item_orphaned', '1575459795'),
(56, 27, '_menu_item_type', 'post_type'),
(57, 27, '_menu_item_menu_item_parent', '0'),
(58, 27, '_menu_item_object_id', '2'),
(59, 27, '_menu_item_object', 'page'),
(60, 27, '_menu_item_target', ''),
(61, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 27, '_menu_item_xfn', ''),
(63, 27, '_menu_item_url', ''),
(64, 27, '_menu_item_orphaned', '1575459795'),
(65, 28, '_menu_item_type', 'post_type'),
(66, 28, '_menu_item_menu_item_parent', '0'),
(67, 28, '_menu_item_object_id', '7'),
(68, 28, '_menu_item_object', 'page'),
(69, 28, '_menu_item_target', ''),
(70, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 28, '_menu_item_xfn', ''),
(72, 28, '_menu_item_url', ''),
(73, 28, '_menu_item_orphaned', '1575459796'),
(74, 29, '_menu_item_type', 'post_type'),
(75, 29, '_menu_item_menu_item_parent', '0'),
(76, 29, '_menu_item_object_id', '15'),
(77, 29, '_menu_item_object', 'page'),
(78, 29, '_menu_item_target', ''),
(79, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 29, '_menu_item_xfn', ''),
(81, 29, '_menu_item_url', ''),
(82, 29, '_menu_item_orphaned', '1575459796'),
(83, 30, '_menu_item_type', 'post_type'),
(84, 30, '_menu_item_menu_item_parent', '0'),
(85, 30, '_menu_item_object_id', '18'),
(86, 30, '_menu_item_object', 'page'),
(87, 30, '_menu_item_target', ''),
(88, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 30, '_menu_item_xfn', ''),
(90, 30, '_menu_item_url', ''),
(91, 30, '_menu_item_orphaned', '1575459797'),
(93, 32, '_edit_lock', '1575623564:2'),
(94, 34, '_menu_item_type', 'post_type'),
(95, 34, '_menu_item_menu_item_parent', '0'),
(96, 34, '_menu_item_object_id', '32'),
(97, 34, '_menu_item_object', 'page'),
(98, 34, '_menu_item_target', ''),
(99, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 34, '_menu_item_xfn', ''),
(101, 34, '_menu_item_url', ''),
(102, 34, '_menu_item_orphaned', '1575460143'),
(103, 35, '_menu_item_type', 'post_type'),
(104, 35, '_menu_item_menu_item_parent', '0'),
(105, 35, '_menu_item_object_id', '8'),
(106, 35, '_menu_item_object', 'page'),
(107, 35, '_menu_item_target', ''),
(108, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 35, '_menu_item_xfn', ''),
(110, 35, '_menu_item_url', ''),
(111, 35, '_menu_item_orphaned', '1575460143'),
(112, 36, '_menu_item_type', 'post_type'),
(113, 36, '_menu_item_menu_item_parent', '0'),
(114, 36, '_menu_item_object_id', '9'),
(115, 36, '_menu_item_object', 'page'),
(116, 36, '_menu_item_target', ''),
(117, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 36, '_menu_item_xfn', ''),
(119, 36, '_menu_item_url', ''),
(120, 36, '_menu_item_orphaned', '1575460144'),
(121, 37, '_menu_item_type', 'post_type'),
(122, 37, '_menu_item_menu_item_parent', '0'),
(123, 37, '_menu_item_object_id', '10'),
(124, 37, '_menu_item_object', 'page'),
(125, 37, '_menu_item_target', ''),
(126, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 37, '_menu_item_xfn', ''),
(128, 37, '_menu_item_url', ''),
(129, 37, '_menu_item_orphaned', '1575460145'),
(130, 38, '_menu_item_type', 'post_type'),
(131, 38, '_menu_item_menu_item_parent', '0'),
(132, 38, '_menu_item_object_id', '2'),
(133, 38, '_menu_item_object', 'page'),
(134, 38, '_menu_item_target', ''),
(135, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 38, '_menu_item_xfn', ''),
(137, 38, '_menu_item_url', ''),
(138, 38, '_menu_item_orphaned', '1575460145'),
(139, 39, '_menu_item_type', 'post_type'),
(140, 39, '_menu_item_menu_item_parent', '0'),
(141, 39, '_menu_item_object_id', '7'),
(142, 39, '_menu_item_object', 'page'),
(143, 39, '_menu_item_target', ''),
(144, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 39, '_menu_item_xfn', ''),
(146, 39, '_menu_item_url', ''),
(147, 39, '_menu_item_orphaned', '1575460146'),
(148, 40, '_menu_item_type', 'post_type'),
(149, 40, '_menu_item_menu_item_parent', '0'),
(150, 40, '_menu_item_object_id', '15'),
(151, 40, '_menu_item_object', 'page'),
(152, 40, '_menu_item_target', ''),
(153, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 40, '_menu_item_xfn', ''),
(155, 40, '_menu_item_url', ''),
(156, 40, '_menu_item_orphaned', '1575460146'),
(157, 41, '_menu_item_type', 'post_type'),
(158, 41, '_menu_item_menu_item_parent', '0'),
(159, 41, '_menu_item_object_id', '18'),
(160, 41, '_menu_item_object', 'page'),
(161, 41, '_menu_item_target', ''),
(162, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 41, '_menu_item_xfn', ''),
(164, 41, '_menu_item_url', ''),
(165, 41, '_menu_item_orphaned', '1575460147'),
(166, 32, '_wp_page_template', ''),
(167, 42, '_menu_item_type', 'post_type'),
(168, 42, '_menu_item_menu_item_parent', '0'),
(169, 42, '_menu_item_object_id', '32'),
(170, 42, '_menu_item_object', 'page'),
(171, 42, '_menu_item_target', ''),
(172, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 42, '_menu_item_xfn', ''),
(174, 42, '_menu_item_url', ''),
(175, 42, '_menu_item_orphaned', '1575470243'),
(176, 43, '_menu_item_type', 'post_type'),
(177, 43, '_menu_item_menu_item_parent', '0'),
(178, 43, '_menu_item_object_id', '8'),
(179, 43, '_menu_item_object', 'page'),
(180, 43, '_menu_item_target', ''),
(181, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 43, '_menu_item_xfn', ''),
(183, 43, '_menu_item_url', ''),
(184, 43, '_menu_item_orphaned', '1575470243'),
(185, 44, '_menu_item_type', 'post_type'),
(186, 44, '_menu_item_menu_item_parent', '0'),
(187, 44, '_menu_item_object_id', '9'),
(188, 44, '_menu_item_object', 'page'),
(189, 44, '_menu_item_target', ''),
(190, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 44, '_menu_item_xfn', ''),
(192, 44, '_menu_item_url', ''),
(193, 44, '_menu_item_orphaned', '1575470244'),
(194, 45, '_menu_item_type', 'post_type'),
(195, 45, '_menu_item_menu_item_parent', '0'),
(196, 45, '_menu_item_object_id', '10'),
(197, 45, '_menu_item_object', 'page'),
(198, 45, '_menu_item_target', ''),
(199, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 45, '_menu_item_xfn', ''),
(201, 45, '_menu_item_url', ''),
(202, 45, '_menu_item_orphaned', '1575470245'),
(203, 46, '_menu_item_type', 'post_type'),
(204, 46, '_menu_item_menu_item_parent', '0'),
(205, 46, '_menu_item_object_id', '2'),
(206, 46, '_menu_item_object', 'page'),
(207, 46, '_menu_item_target', ''),
(208, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(209, 46, '_menu_item_xfn', ''),
(210, 46, '_menu_item_url', ''),
(211, 46, '_menu_item_orphaned', '1575470245'),
(212, 47, '_menu_item_type', 'post_type'),
(213, 47, '_menu_item_menu_item_parent', '0'),
(214, 47, '_menu_item_object_id', '7'),
(215, 47, '_menu_item_object', 'page'),
(216, 47, '_menu_item_target', ''),
(217, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 47, '_menu_item_xfn', ''),
(219, 47, '_menu_item_url', ''),
(220, 47, '_menu_item_orphaned', '1575470246'),
(221, 48, '_menu_item_type', 'post_type'),
(222, 48, '_menu_item_menu_item_parent', '0'),
(223, 48, '_menu_item_object_id', '15'),
(224, 48, '_menu_item_object', 'page'),
(225, 48, '_menu_item_target', ''),
(226, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(227, 48, '_menu_item_xfn', ''),
(228, 48, '_menu_item_url', ''),
(229, 48, '_menu_item_orphaned', '1575470247'),
(230, 49, '_menu_item_type', 'post_type'),
(231, 49, '_menu_item_menu_item_parent', '0'),
(232, 49, '_menu_item_object_id', '18'),
(233, 49, '_menu_item_object', 'page'),
(234, 49, '_menu_item_target', ''),
(235, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 49, '_menu_item_xfn', ''),
(237, 49, '_menu_item_url', ''),
(238, 49, '_menu_item_orphaned', '1575470248'),
(248, 51, '_menu_item_type', 'post_type'),
(249, 51, '_menu_item_menu_item_parent', '0'),
(250, 51, '_menu_item_object_id', '8'),
(251, 51, '_menu_item_object', 'page'),
(252, 51, '_menu_item_target', ''),
(253, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 51, '_menu_item_xfn', ''),
(255, 51, '_menu_item_url', ''),
(266, 53, '_menu_item_type', 'post_type'),
(267, 53, '_menu_item_menu_item_parent', '0'),
(268, 53, '_menu_item_object_id', '10'),
(269, 53, '_menu_item_object', 'page'),
(270, 53, '_menu_item_target', ''),
(271, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 53, '_menu_item_xfn', ''),
(273, 53, '_menu_item_url', ''),
(311, 7, '_edit_lock', '1575483256:1'),
(312, 58, '_edit_lock', '1575483357:1'),
(313, 58, '_edit_last', '1'),
(314, 58, '_regular_price', '10'),
(315, 58, 'total_sales', '0'),
(316, 58, '_tax_status', 'taxable'),
(317, 58, '_tax_class', ''),
(318, 58, '_manage_stock', 'no'),
(319, 58, '_backorders', 'no'),
(320, 58, '_sold_individually', 'no'),
(321, 58, '_virtual', 'no'),
(322, 58, '_downloadable', 'no'),
(323, 58, '_download_limit', '-1'),
(324, 58, '_download_expiry', '-1'),
(325, 58, '_stock', NULL),
(326, 58, '_stock_status', 'instock'),
(327, 58, '_wc_average_rating', '0'),
(328, 58, '_wc_review_count', '0'),
(329, 58, '_product_version', '3.8.1'),
(330, 58, '_price', '10'),
(331, 31, '_customize_restore_dismissed', '1'),
(335, 59, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Order Number\n    [text order-number] </label>\n\n[select* menu-597 include_blank \"About order\" \"About Payment\" \"Shipping & Delivery issues\" \"Return & complaint issues\" \"Other Questions\"]\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(336, 59, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"Sheep Friday - \"[menu-597]\"\";s:6:\"sender\";s:41:\"Sheep Friday <wordpress@sheepfriday.test>\";s:9:\"recipient\";s:21:\"kingenalban@gmail.com\";s:4:\"body\";s:202:\"From: [your-name] \nEmail: [your-email]\nOrder Number: [order-number]\n\n<strong>Message Body:</strong>\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Sheep Friday (http://sheepfriday.test)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(337, 59, '_mail_2', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"Sheep Friday - \"[menu-597]\"\";s:6:\"sender\";s:41:\"Sheep Friday <wordpress@sheepfriday.test>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"<strong>Message Body:</strong>\n[your-message]\n\n\n<em>Thank you for your email. We will look into this and get back to you soon.</em>\n\n\n-- \nThis e-mail was sent from a contact form on Sheep Friday (http://sheepfriday.test)\";s:18:\"additional_headers\";s:31:\"Reply-To: kingenalban@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:0;}'),
(338, 59, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(339, 59, '_additional_settings', ''),
(340, 59, '_locale', 'en_US'),
(341, 60, '_edit_lock', '1575624070:2'),
(348, 65, '_edit_lock', '1575556998:3'),
(349, 65, '_edit_last', '3'),
(350, 65, '_regular_price', '22'),
(351, 65, 'total_sales', '0'),
(352, 65, '_tax_status', 'taxable'),
(353, 65, '_tax_class', ''),
(354, 65, '_manage_stock', 'no'),
(355, 65, '_backorders', 'no'),
(356, 65, '_sold_individually', 'no'),
(357, 65, '_virtual', 'no'),
(358, 65, '_downloadable', 'no'),
(359, 65, '_download_limit', '-1'),
(360, 65, '_download_expiry', '-1'),
(361, 65, '_stock', NULL),
(362, 65, '_stock_status', 'instock'),
(363, 65, '_wc_average_rating', '0'),
(364, 65, '_wc_review_count', '0'),
(365, 65, '_product_version', '3.8.1'),
(366, 65, '_price', '22'),
(367, 66, '_wp_attached_file', '2019/12/02340415200007_c1l1.jpeg.jpg'),
(368, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/02340415200007_c1l1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"02340415200007_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"02340415200007_c1l1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"02340415200007_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"02340415200007_c1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"02340415200007_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"02340415200007_c1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(369, 67, '_wp_attached_file', '2019/12/06408432061233_c1n1.jpeg.jpg'),
(370, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/06408432061233_c1n1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"06408432061233_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"06408432061233_c1n1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"06408432061233_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"06408432061233_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"06408432061233_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"06408432061233_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 68, '_wp_attached_file', '2019/12/07310860005804_c1l1.jpeg.jpg'),
(372, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/07310860005804_c1l1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"07310860005804_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"07310860005804_c1l1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"07310860005804_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310860005804_c1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"07310860005804_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310860005804_c1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(373, 69, '_wp_attached_file', '2019/12/07310865001191_g1l1.jpeg.jpg'),
(374, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/07310865001191_g1l1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"07310865001191_g1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"07310865001191_g1l1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"07310865001191_g1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310865001191_g1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"07310865001191_g1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310865001191_g1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 70, '_wp_attached_file', '2019/12/07310865088116_c1l1.jpeg.jpg'),
(376, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/07310865088116_c1l1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"07310865088116_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"07310865088116_c1l1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"07310865088116_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310865088116_c1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"07310865088116_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310865088116_c1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 71, '_wp_attached_file', '2019/12/07310865088215_g1l1.jpg'),
(378, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07310865088215_g1l1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07310865088215_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07310865088215_g1l1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07310865088215_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07310865088215_g1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07310865088215_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07310865088215_g1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 72, '_wp_attached_file', '2019/12/07311070008159_c1l1.jpg'),
(380, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07311070008159_c1l1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07311070008159_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070008159_c1l1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07311070008159_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070008159_c1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07311070008159_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070008159_c1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 73, '_wp_attached_file', '2019/12/07311070330243_c1l1-scaled.jpg'),
(382, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1819;s:4:\"file\";s:38:\"2019/12/07311070330243_c1l1-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07311070330243_c1l1-300x213.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"07311070330243_c1l1-1024x728.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:728;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070330243_c1l1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"07311070330243_c1l1-768x546.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:546;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"07311070330243_c1l1-1536x1092.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1092;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:33:\"07311070330243_c1l1-2048x1455.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07311070330243_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"07311070330243_c1l1-600x426.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070330243_c1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07311070330243_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"07311070330243_c1l1-600x426.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070330243_c1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"14\";s:6:\"credit\";s:16:\"Jesper Arvidsson\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1284021836\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"90\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:23:\"07311070330243_c1l1.jpg\";}'),
(383, 74, '_wp_attached_file', '2019/12/07311070336160_g1l1.jpg'),
(384, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07311070336160_g1l1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07311070336160_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070336160_g1l1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07311070336160_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070336160_g1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07311070336160_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070336160_g1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 75, '_wp_attached_file', '2019/12/07311070338188_c1l1.jpg'),
(386, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07311070338188_c1l1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07311070338188_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070338188_c1l1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07311070338188_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070338188_c1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07311070338188_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311070338188_c1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 76, '_wp_attached_file', '2019/12/07311071336244_g1l1.jpg'),
(388, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07311071336244_g1l1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07311071336244_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07311071336244_g1l1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07311071336244_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311071336244_g1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07311071336244_g1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07311071336244_g1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 77, '_wp_attached_file', '2019/12/07331746234828_c1c1.jpg'),
(390, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07331746234828_c1c1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07331746234828_c1c1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07331746234828_c1c1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07331746234828_c1c1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07331746234828_c1c1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07331746234828_c1c1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07331746234828_c1c1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(391, 78, '_wp_attached_file', '2019/12/07350002402658_c1n1.jpg'),
(392, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07350002402658_c1n1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07350002402658_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07350002402658_c1n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07350002402658_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07350002402658_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07350002402658_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07350002402658_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(393, 79, '_wp_attached_file', '2019/12/07394376616174_c1n1.jpg'),
(394, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07394376616174_c1n1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07394376616174_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07394376616174_c1n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07394376616174_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07394376616174_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07394376616174_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07394376616174_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(395, 80, '_wp_attached_file', '2019/12/julknacke-300g-wasabrod-3.jpg'),
(396, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:37:\"2019/12/julknacke-300g-wasabrod-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"julknacke-300g-wasabrod-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"julknacke-300g-wasabrod-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"julknacke-300g-wasabrod-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"julknacke-300g-wasabrod-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"julknacke-300g-wasabrod-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"julknacke-300g-wasabrod-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(397, 81, '_wp_attached_file', '2019/12/mild-yoghurt-grekisk-6-1000g-arla-5.jpg'),
(398, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:47:\"2019/12/mild-yoghurt-grekisk-6-1000g-arla-5.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"mild-yoghurt-grekisk-6-1000g-arla-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"mild-yoghurt-grekisk-6-1000g-arla-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"mild-yoghurt-grekisk-6-1000g-arla-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"mild-yoghurt-grekisk-6-1000g-arla-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"mild-yoghurt-grekisk-6-1000g-arla-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"mild-yoghurt-grekisk-6-1000g-arla-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(399, 82, '_wp_attached_file', '2019/12/surdegsbaguette-480g-bake-my-day.jpg'),
(400, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:44:\"2019/12/surdegsbaguette-480g-bake-my-day.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"surdegsbaguette-480g-bake-my-day-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"surdegsbaguette-480g-bake-my-day-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"surdegsbaguette-480g-bake-my-day-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"surdegsbaguette-480g-bake-my-day-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"surdegsbaguette-480g-bake-my-day-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"surdegsbaguette-480g-bake-my-day-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 83, '_wp_attached_file', '2019/12/svensk-ost-riven-24-500g-arla.jpg'),
(402, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:41:\"2019/12/svensk-ost-riven-24-500g-arla.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"svensk-ost-riven-24-500g-arla-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"svensk-ost-riven-24-500g-arla-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"svensk-ost-riven-24-500g-arla-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"svensk-ost-riven-24-500g-arla-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"svensk-ost-riven-24-500g-arla-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"svensk-ost-riven-24-500g-arla-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(403, 65, '_thumbnail_id', '73'),
(404, 84, '_edit_lock', '1575627047:3'),
(405, 84, '_edit_last', '3'),
(406, 84, '_thumbnail_id', '82'),
(407, 84, '_regular_price', '15'),
(408, 84, 'total_sales', '0'),
(409, 84, '_tax_status', 'taxable'),
(410, 84, '_tax_class', ''),
(411, 84, '_manage_stock', 'no'),
(412, 84, '_backorders', 'no'),
(413, 84, '_sold_individually', 'no'),
(414, 84, '_virtual', 'no'),
(415, 84, '_downloadable', 'no'),
(416, 84, '_download_limit', '-1'),
(417, 84, '_download_expiry', '-1'),
(418, 84, '_stock', NULL),
(419, 84, '_stock_status', 'instock'),
(420, 84, '_wc_average_rating', '0'),
(421, 84, '_wc_review_count', '0'),
(422, 84, '_product_version', '3.8.1'),
(423, 84, '_price', '15'),
(424, 85, '_edit_lock', '1575626158:3'),
(425, 85, '_edit_last', '3'),
(426, 85, '_thumbnail_id', '75'),
(427, 85, 'total_sales', '0'),
(428, 85, '_tax_status', 'taxable'),
(429, 85, '_tax_class', ''),
(430, 85, '_manage_stock', 'no'),
(431, 85, '_backorders', 'no'),
(432, 85, '_sold_individually', 'no'),
(433, 85, '_virtual', 'no'),
(434, 85, '_downloadable', 'no'),
(435, 85, '_download_limit', '-1'),
(436, 85, '_download_expiry', '-1'),
(437, 85, '_stock', NULL),
(438, 85, '_stock_status', 'instock'),
(439, 85, '_wc_average_rating', '0'),
(440, 85, '_wc_review_count', '0'),
(441, 85, '_product_version', '3.8.1'),
(442, 86, '_edit_lock', '1575626211:3'),
(443, 86, '_edit_last', '3'),
(444, 86, '_thumbnail_id', '72'),
(445, 86, '_regular_price', '20'),
(446, 86, 'total_sales', '0'),
(447, 86, '_tax_status', 'taxable'),
(448, 86, '_tax_class', ''),
(449, 86, '_manage_stock', 'no'),
(450, 86, '_backorders', 'no'),
(451, 86, '_sold_individually', 'no'),
(452, 86, '_virtual', 'no'),
(453, 86, '_downloadable', 'no'),
(454, 86, '_download_limit', '-1'),
(455, 86, '_download_expiry', '-1'),
(456, 86, '_stock', NULL),
(457, 86, '_stock_status', 'instock'),
(458, 86, '_wc_average_rating', '0'),
(459, 86, '_wc_review_count', '0'),
(460, 86, '_product_version', '3.8.1'),
(461, 86, '_price', '20'),
(462, 87, '_edit_lock', '1575626030:3'),
(463, 87, '_edit_last', '3'),
(464, 87, '_thumbnail_id', '74'),
(465, 87, '_regular_price', '19'),
(466, 87, 'total_sales', '0'),
(467, 87, '_tax_status', 'taxable'),
(468, 87, '_tax_class', ''),
(469, 87, '_manage_stock', 'no'),
(470, 87, '_backorders', 'no'),
(471, 87, '_sold_individually', 'no'),
(472, 87, '_virtual', 'no'),
(473, 87, '_downloadable', 'no'),
(474, 87, '_download_limit', '-1'),
(475, 87, '_download_expiry', '-1'),
(476, 87, '_stock', NULL),
(477, 87, '_stock_status', 'instock'),
(478, 87, '_wc_average_rating', '0'),
(479, 87, '_wc_review_count', '0'),
(480, 87, '_product_version', '3.8.1'),
(481, 87, '_price', '10'),
(482, 88, '_edit_lock', '1575626099:3'),
(483, 88, '_edit_last', '3'),
(484, 88, '_thumbnail_id', '77'),
(485, 88, 'total_sales', '0'),
(486, 88, '_tax_status', 'taxable'),
(487, 88, '_tax_class', ''),
(488, 88, '_manage_stock', 'no'),
(489, 88, '_backorders', 'no'),
(490, 88, '_sold_individually', 'no'),
(491, 88, '_virtual', 'no'),
(492, 88, '_downloadable', 'no'),
(493, 88, '_download_limit', '-1'),
(494, 88, '_download_expiry', '-1'),
(495, 88, '_stock', NULL),
(496, 88, '_stock_status', 'instock'),
(497, 88, '_wc_average_rating', '0'),
(498, 88, '_wc_review_count', '0'),
(499, 88, '_product_version', '3.8.1'),
(500, 89, '_edit_lock', '1575625908:3'),
(501, 89, '_edit_last', '3'),
(502, 89, '_thumbnail_id', '79'),
(503, 89, 'total_sales', '0'),
(504, 89, '_tax_status', 'taxable'),
(505, 89, '_tax_class', ''),
(506, 89, '_manage_stock', 'no'),
(507, 89, '_backorders', 'no'),
(508, 89, '_sold_individually', 'no'),
(509, 89, '_virtual', 'no'),
(510, 89, '_downloadable', 'no'),
(511, 89, '_download_limit', '-1');
INSERT INTO `ull_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(512, 89, '_download_expiry', '-1'),
(513, 89, '_stock', NULL),
(514, 89, '_stock_status', 'instock'),
(515, 89, '_wc_average_rating', '0'),
(516, 89, '_wc_review_count', '0'),
(517, 89, '_product_version', '3.8.1'),
(518, 90, '_edit_lock', '1575625861:3'),
(519, 90, '_edit_last', '3'),
(520, 90, '_thumbnail_id', '71'),
(521, 90, 'total_sales', '0'),
(522, 90, '_tax_status', 'taxable'),
(523, 90, '_tax_class', ''),
(524, 90, '_manage_stock', 'no'),
(525, 90, '_backorders', 'no'),
(526, 90, '_sold_individually', 'no'),
(527, 90, '_virtual', 'no'),
(528, 90, '_downloadable', 'no'),
(529, 90, '_download_limit', '-1'),
(530, 90, '_download_expiry', '-1'),
(531, 90, '_stock', NULL),
(532, 90, '_stock_status', 'outofstock'),
(533, 90, '_wc_average_rating', '0'),
(534, 90, '_wc_review_count', '0'),
(535, 90, '_product_version', '3.8.1'),
(536, 91, '_edit_lock', '1575625781:3'),
(537, 91, '_edit_last', '3'),
(538, 91, '_thumbnail_id', '78'),
(539, 91, '_regular_price', '35'),
(540, 91, 'total_sales', '0'),
(541, 91, '_tax_status', 'taxable'),
(542, 91, '_tax_class', ''),
(543, 91, '_manage_stock', 'no'),
(544, 91, '_backorders', 'no'),
(545, 91, '_sold_individually', 'no'),
(546, 91, '_virtual', 'no'),
(547, 91, '_downloadable', 'no'),
(548, 91, '_download_limit', '-1'),
(549, 91, '_download_expiry', '-1'),
(550, 91, '_stock', NULL),
(551, 91, '_stock_status', 'instock'),
(552, 91, '_wc_average_rating', '0'),
(553, 91, '_wc_review_count', '0'),
(554, 91, '_product_version', '3.8.1'),
(555, 91, '_price', '35'),
(556, 90, '_regular_price', '23'),
(557, 90, '_price', '18'),
(558, 89, '_regular_price', '25'),
(559, 89, '_price', '25'),
(560, 88, '_regular_price', '20'),
(561, 88, '_price', '20'),
(562, 85, '_regular_price', '28'),
(563, 85, '_price', '24'),
(564, 92, '_edit_lock', '1575625706:3'),
(565, 92, '_edit_last', '3'),
(566, 92, '_thumbnail_id', '83'),
(567, 92, '_regular_price', '30'),
(568, 92, 'total_sales', '0'),
(569, 92, '_tax_status', 'taxable'),
(570, 92, '_tax_class', ''),
(571, 92, '_manage_stock', 'no'),
(572, 92, '_backorders', 'no'),
(573, 92, '_sold_individually', 'no'),
(574, 92, '_virtual', 'no'),
(575, 92, '_downloadable', 'no'),
(576, 92, '_download_limit', '-1'),
(577, 92, '_download_expiry', '-1'),
(578, 92, '_stock', NULL),
(579, 92, '_stock_status', 'instock'),
(580, 92, '_wc_average_rating', '0'),
(581, 92, '_wc_review_count', '0'),
(582, 92, '_product_version', '3.8.1'),
(583, 92, '_price', '30'),
(584, 103, '_edit_lock', '1575625792:3'),
(585, 103, '_edit_last', '3'),
(586, 104, '_wp_attached_file', '2019/12/02320687400008_c1l1.jpg'),
(587, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/02320687400008_c1l1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"02320687400008_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"02320687400008_c1l1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"02320687400008_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"02320687400008_c1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"02320687400008_c1l1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"02320687400008_c1l1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(588, 103, '_thumbnail_id', '104'),
(589, 103, '_regular_price', '70'),
(590, 103, 'total_sales', '0'),
(591, 103, '_tax_status', 'taxable'),
(592, 103, '_tax_class', ''),
(593, 103, '_manage_stock', 'no'),
(594, 103, '_backorders', 'no'),
(595, 103, '_sold_individually', 'no'),
(596, 103, '_virtual', 'no'),
(597, 103, '_downloadable', 'no'),
(598, 103, '_download_limit', '-1'),
(599, 103, '_download_expiry', '-1'),
(600, 103, '_stock', NULL),
(601, 103, '_stock_status', 'instock'),
(602, 103, '_wc_average_rating', '0'),
(603, 103, '_wc_review_count', '0'),
(604, 103, '_product_version', '3.8.1'),
(605, 103, '_price', '70'),
(606, 105, '_edit_lock', '1575625601:3'),
(607, 105, '_edit_last', '3'),
(608, 106, '_wp_attached_file', '2019/12/07330563001217_c1n1.jpg'),
(609, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07330563001217_c1n1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07330563001217_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07330563001217_c1n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07330563001217_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07330563001217_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07330563001217_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07330563001217_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(610, 105, '_thumbnail_id', '106'),
(611, 105, '_regular_price', '55'),
(612, 105, 'total_sales', '0'),
(613, 105, '_tax_status', 'taxable'),
(614, 105, '_tax_class', ''),
(615, 105, '_manage_stock', 'no'),
(616, 105, '_backorders', 'no'),
(617, 105, '_sold_individually', 'no'),
(618, 105, '_virtual', 'no'),
(619, 105, '_downloadable', 'no'),
(620, 105, '_download_limit', '-1'),
(621, 105, '_download_expiry', '-1'),
(622, 105, '_stock', NULL),
(623, 105, '_stock_status', 'instock'),
(624, 105, '_wc_average_rating', '0'),
(625, 105, '_wc_review_count', '0'),
(626, 105, '_product_version', '3.8.1'),
(627, 105, '_price', '40'),
(628, 107, '_edit_lock', '1575625674:3'),
(629, 107, '_edit_last', '3'),
(630, 108, '_wp_attached_file', '2019/12/07310240039511_c1n1.jpeg.jpg'),
(631, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/07310240039511_c1n1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"07310240039511_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"07310240039511_c1n1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"07310240039511_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310240039511_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"07310240039511_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310240039511_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(632, 107, '_thumbnail_id', '108'),
(633, 107, '_regular_price', '58'),
(634, 107, 'total_sales', '0'),
(635, 107, '_tax_status', 'taxable'),
(636, 107, '_tax_class', ''),
(637, 107, '_manage_stock', 'no'),
(638, 107, '_backorders', 'no'),
(639, 107, '_sold_individually', 'no'),
(640, 107, '_virtual', 'no'),
(641, 107, '_downloadable', 'no'),
(642, 107, '_download_limit', '-1'),
(643, 107, '_download_expiry', '-1'),
(644, 107, '_stock', NULL),
(645, 107, '_stock_status', 'instock'),
(646, 107, '_wc_average_rating', '0'),
(647, 107, '_wc_review_count', '0'),
(648, 107, '_product_version', '3.8.1'),
(649, 107, '_price', '58'),
(650, 109, '_edit_lock', '1575625471:3'),
(651, 109, '_edit_last', '3'),
(652, 110, '_wp_attached_file', '2019/12/minutfile-ca-630g-kronfagel.jpeg'),
(653, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:40:\"2019/12/minutfile-ca-630g-kronfagel.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"minutfile-ca-630g-kronfagel-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"minutfile-ca-630g-kronfagel-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"minutfile-ca-630g-kronfagel-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"minutfile-ca-630g-kronfagel-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"minutfile-ca-630g-kronfagel-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"minutfile-ca-630g-kronfagel-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(654, 109, '_thumbnail_id', '110'),
(655, 109, '_regular_price', '70'),
(656, 109, 'total_sales', '0'),
(657, 109, '_tax_status', 'taxable'),
(658, 109, '_tax_class', ''),
(659, 109, '_manage_stock', 'no'),
(660, 109, '_backorders', 'no'),
(661, 109, '_sold_individually', 'no'),
(662, 109, '_virtual', 'no'),
(663, 109, '_downloadable', 'no'),
(664, 109, '_download_limit', '-1'),
(665, 109, '_download_expiry', '-1'),
(666, 109, '_stock', NULL),
(667, 109, '_stock_status', 'outofstock'),
(668, 109, '_wc_average_rating', '0'),
(669, 109, '_wc_review_count', '0'),
(670, 109, '_product_version', '3.8.1'),
(671, 109, '_price', '70'),
(672, 111, '_edit_lock', '1575625362:3'),
(673, 111, '_edit_last', '3'),
(674, 112, '_wp_attached_file', '2019/12/majskyckling-16.jpg'),
(675, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:27:\"2019/12/majskyckling-16.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"majskyckling-16-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"majskyckling-16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"majskyckling-16-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"majskyckling-16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"majskyckling-16-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"majskyckling-16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(676, 111, '_thumbnail_id', '112'),
(677, 111, '_regular_price', '80'),
(678, 111, 'total_sales', '0'),
(679, 111, '_tax_status', 'taxable'),
(680, 111, '_tax_class', ''),
(681, 111, '_manage_stock', 'no'),
(682, 111, '_backorders', 'no'),
(683, 111, '_sold_individually', 'no'),
(684, 111, '_virtual', 'no'),
(685, 111, '_downloadable', 'no'),
(686, 111, '_download_limit', '-1'),
(687, 111, '_download_expiry', '-1'),
(688, 111, '_stock', NULL),
(689, 111, '_stock_status', 'instock'),
(690, 111, '_wc_average_rating', '0'),
(691, 111, '_wc_review_count', '0'),
(692, 111, '_product_version', '3.8.1'),
(693, 111, '_price', '80'),
(694, 113, '_edit_lock', '1575624968:3'),
(695, 113, '_edit_last', '3'),
(696, 114, '_wp_attached_file', '2019/12/07330797077118_c1c1.jpg'),
(697, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07330797077118_c1c1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07330797077118_c1c1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07330797077118_c1c1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07330797077118_c1c1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07330797077118_c1c1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07330797077118_c1c1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07330797077118_c1c1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(698, 113, '_thumbnail_id', '114'),
(699, 113, '_regular_price', '39'),
(700, 113, 'total_sales', '0'),
(701, 113, '_tax_status', 'taxable'),
(702, 113, '_tax_class', ''),
(703, 113, '_manage_stock', 'no'),
(704, 113, '_backorders', 'no'),
(705, 113, '_sold_individually', 'no'),
(706, 113, '_virtual', 'no'),
(707, 113, '_downloadable', 'no'),
(708, 113, '_download_limit', '-1'),
(709, 113, '_download_expiry', '-1'),
(710, 113, '_stock', NULL),
(711, 113, '_stock_status', 'instock'),
(712, 113, '_wc_average_rating', '0'),
(713, 113, '_wc_review_count', '0'),
(714, 113, '_product_version', '3.8.1'),
(715, 113, '_price', '39'),
(716, 115, '_edit_lock', '1575624863:3'),
(717, 115, '_edit_last', '3'),
(718, 116, '_wp_attached_file', '2019/12/07331044075925_c1n1.jpg'),
(719, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/07331044075925_c1n1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"07331044075925_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"07331044075925_c1n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"07331044075925_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"07331044075925_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"07331044075925_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"07331044075925_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(720, 115, '_thumbnail_id', '116'),
(721, 115, '_regular_price', '45'),
(722, 115, 'total_sales', '0'),
(723, 115, '_tax_status', 'taxable'),
(724, 115, '_tax_class', ''),
(725, 115, '_manage_stock', 'no'),
(726, 115, '_backorders', 'no'),
(727, 115, '_sold_individually', 'no'),
(728, 115, '_virtual', 'no'),
(729, 115, '_downloadable', 'no'),
(730, 115, '_download_limit', '-1'),
(731, 115, '_download_expiry', '-1'),
(732, 115, '_stock', NULL),
(733, 115, '_stock_status', 'instock'),
(734, 115, '_wc_average_rating', '0'),
(735, 115, '_wc_review_count', '0'),
(736, 115, '_product_version', '3.8.1'),
(737, 115, '_price', '45'),
(738, 117, '_edit_lock', '1575624794:3'),
(739, 117, '_edit_last', '3'),
(740, 118, '_wp_attached_file', '2019/12/07340023802575_c1n1.jpeg.jpg'),
(741, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/07340023802575_c1n1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"07340023802575_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"07340023802575_c1n1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"07340023802575_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"07340023802575_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"07340023802575_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"07340023802575_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(742, 117, '_thumbnail_id', '118'),
(743, 117, '_regular_price', '53'),
(744, 117, 'total_sales', '0'),
(745, 117, '_tax_status', 'taxable'),
(746, 117, '_tax_class', ''),
(747, 117, '_manage_stock', 'no'),
(748, 117, '_backorders', 'no'),
(749, 117, '_sold_individually', 'no'),
(750, 117, '_virtual', 'no'),
(751, 117, '_downloadable', 'no'),
(752, 117, '_download_limit', '-1'),
(753, 117, '_download_expiry', '-1'),
(754, 117, '_stock', NULL),
(755, 117, '_stock_status', 'instock'),
(756, 117, '_wc_average_rating', '0'),
(757, 117, '_wc_review_count', '0'),
(758, 117, '_product_version', '3.8.1'),
(759, 117, '_price', '53'),
(760, 119, '_edit_lock', '1575624642:3'),
(761, 119, '_edit_last', '3'),
(762, 120, '_wp_attached_file', '2019/12/chips-sourcream-o-onion-maxibag-450g-olw-3.jpg'),
(763, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:54:\"2019/12/chips-sourcream-o-onion-maxibag-450g-olw-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"chips-sourcream-o-onion-maxibag-450g-olw-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"chips-sourcream-o-onion-maxibag-450g-olw-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:54:\"chips-sourcream-o-onion-maxibag-450g-olw-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:54:\"chips-sourcream-o-onion-maxibag-450g-olw-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:54:\"chips-sourcream-o-onion-maxibag-450g-olw-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:54:\"chips-sourcream-o-onion-maxibag-450g-olw-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(764, 119, '_thumbnail_id', '120'),
(765, 119, '_regular_price', '19'),
(766, 119, 'total_sales', '0'),
(767, 119, '_tax_status', 'taxable'),
(768, 119, '_tax_class', ''),
(769, 119, '_manage_stock', 'no'),
(770, 119, '_backorders', 'no'),
(771, 119, '_sold_individually', 'no'),
(772, 119, '_virtual', 'no'),
(773, 119, '_downloadable', 'no'),
(774, 119, '_download_limit', '-1'),
(775, 119, '_download_expiry', '-1'),
(776, 119, '_stock', NULL),
(777, 119, '_stock_status', 'instock'),
(778, 119, '_wc_average_rating', '0'),
(779, 119, '_wc_review_count', '0'),
(780, 119, '_product_version', '3.8.1'),
(781, 119, '_price', '19'),
(782, 121, '_edit_lock', '1575624555:3'),
(783, 121, '_edit_last', '3'),
(784, 122, '_wp_attached_file', '2019/12/08710398161987_g1n1.jpg'),
(785, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/08710398161987_g1n1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"08710398161987_g1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"08710398161987_g1n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"08710398161987_g1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"08710398161987_g1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"08710398161987_g1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"08710398161987_g1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(786, 121, '_thumbnail_id', '122'),
(787, 121, '_regular_price', '22'),
(788, 121, 'total_sales', '0'),
(789, 121, '_tax_status', 'taxable'),
(790, 121, '_tax_class', ''),
(791, 121, '_manage_stock', 'no'),
(792, 121, '_backorders', 'no'),
(793, 121, '_sold_individually', 'no'),
(794, 121, '_virtual', 'no'),
(795, 121, '_downloadable', 'no'),
(796, 121, '_download_limit', '-1'),
(797, 121, '_download_expiry', '-1'),
(798, 121, '_stock', NULL),
(799, 121, '_stock_status', 'instock'),
(800, 121, '_wc_average_rating', '0'),
(801, 121, '_wc_review_count', '0'),
(802, 121, '_product_version', '3.8.1'),
(803, 121, '_price', '22'),
(804, 123, '_edit_lock', '1575624534:3'),
(805, 123, '_edit_last', '3'),
(806, 124, '_wp_attached_file', '2019/12/05053990138722_c1n1.jpeg.jpg'),
(807, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/05053990138722_c1n1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"05053990138722_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"05053990138722_c1n1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"05053990138722_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"05053990138722_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"05053990138722_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"05053990138722_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(808, 123, '_thumbnail_id', '124'),
(809, 123, '_regular_price', '15'),
(810, 123, 'total_sales', '0'),
(811, 123, '_tax_status', 'taxable'),
(812, 123, '_tax_class', ''),
(813, 123, '_manage_stock', 'no'),
(814, 123, '_backorders', 'no'),
(815, 123, '_sold_individually', 'no'),
(816, 123, '_virtual', 'no'),
(817, 123, '_downloadable', 'no'),
(818, 123, '_download_limit', '-1'),
(819, 123, '_download_expiry', '-1'),
(820, 123, '_stock', NULL),
(821, 123, '_stock_status', 'instock'),
(822, 123, '_wc_average_rating', '0'),
(823, 123, '_wc_review_count', '0'),
(824, 123, '_product_version', '3.8.1'),
(825, 123, '_price', '15'),
(826, 125, '_edit_lock', '1575624466:3'),
(827, 125, '_edit_last', '3'),
(828, 126, '_wp_attached_file', '2019/12/07310511210403_c1n0.jpeg.jpg'),
(829, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/07310511210403_c1n0.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"07310511210403_c1n0.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"07310511210403_c1n0.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"07310511210403_c1n0.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310511210403_c1n0.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"07310511210403_c1n0.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310511210403_c1n0.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(830, 125, '_thumbnail_id', '126'),
(831, 125, '_regular_price', '20'),
(832, 125, 'total_sales', '0'),
(833, 125, '_tax_status', 'taxable'),
(834, 125, '_tax_class', ''),
(835, 125, '_manage_stock', 'no'),
(836, 125, '_backorders', 'no'),
(837, 125, '_sold_individually', 'no'),
(838, 125, '_virtual', 'no'),
(839, 125, '_downloadable', 'no'),
(840, 125, '_download_limit', '-1'),
(841, 125, '_download_expiry', '-1'),
(842, 125, '_stock', NULL),
(843, 125, '_stock_status', 'instock'),
(844, 125, '_wc_average_rating', '0'),
(845, 125, '_wc_review_count', '0'),
(846, 125, '_product_version', '3.8.1'),
(847, 125, '_price', '20'),
(848, 127, '_edit_lock', '1575624270:3'),
(849, 127, '_edit_last', '3'),
(850, 128, '_wp_attached_file', '2019/12/05000159461313_c1n1.jpg'),
(851, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:31:\"2019/12/05000159461313_c1n1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"05000159461313_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"05000159461313_c1n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"05000159461313_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"05000159461313_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"05000159461313_c1n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"05000159461313_c1n1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(852, 127, '_thumbnail_id', '128'),
(853, 127, '_regular_price', '26'),
(854, 127, 'total_sales', '0'),
(855, 127, '_tax_status', 'taxable'),
(856, 127, '_tax_class', ''),
(857, 127, '_manage_stock', 'no'),
(858, 127, '_backorders', 'no'),
(859, 127, '_sold_individually', 'no'),
(860, 127, '_virtual', 'no'),
(861, 127, '_downloadable', 'no'),
(862, 127, '_download_limit', '-1'),
(863, 127, '_download_expiry', '-1'),
(864, 127, '_stock', NULL),
(865, 127, '_stock_status', 'instock'),
(866, 127, '_wc_average_rating', '0'),
(867, 127, '_wc_review_count', '0'),
(868, 127, '_product_version', '3.8.1'),
(869, 127, '_price', '20'),
(870, 129, '_edit_lock', '1575624210:3'),
(871, 129, '_edit_last', '3'),
(872, 130, '_wp_attached_file', '2019/12/gott-o-blandat-original-550g-malaco.jpg'),
(873, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:47:\"2019/12/gott-o-blandat-original-550g-malaco.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"gott-o-blandat-original-550g-malaco-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"gott-o-blandat-original-550g-malaco-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"gott-o-blandat-original-550g-malaco-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"gott-o-blandat-original-550g-malaco-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"gott-o-blandat-original-550g-malaco-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"gott-o-blandat-original-550g-malaco-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(874, 129, '_thumbnail_id', '130'),
(875, 129, '_regular_price', '18'),
(876, 129, 'total_sales', '0'),
(877, 129, '_tax_status', 'taxable'),
(878, 129, '_tax_class', ''),
(879, 129, '_manage_stock', 'no'),
(880, 129, '_backorders', 'no'),
(881, 129, '_sold_individually', 'no'),
(882, 129, '_virtual', 'no'),
(883, 129, '_downloadable', 'no'),
(884, 129, '_download_limit', '-1'),
(885, 129, '_download_expiry', '-1'),
(886, 129, '_stock', NULL),
(887, 129, '_stock_status', 'instock'),
(888, 129, '_wc_average_rating', '0'),
(889, 129, '_wc_review_count', '0'),
(890, 129, '_product_version', '3.8.1'),
(891, 129, '_price', '18'),
(892, 131, '_edit_lock', '1575624220:3'),
(893, 131, '_edit_last', '3'),
(894, 132, '_wp_attached_file', '2019/12/06416453038295_c1n1.jpeg.jpg'),
(895, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/06416453038295_c1n1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"06416453038295_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"06416453038295_c1n1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"06416453038295_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"06416453038295_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"06416453038295_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"06416453038295_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(896, 131, '_thumbnail_id', '132'),
(897, 131, '_regular_price', '19'),
(898, 131, 'total_sales', '0'),
(899, 131, '_tax_status', 'taxable'),
(900, 131, '_tax_class', ''),
(901, 131, '_manage_stock', 'no'),
(902, 131, '_backorders', 'no'),
(903, 131, '_sold_individually', 'no'),
(904, 131, '_virtual', 'no'),
(905, 131, '_downloadable', 'no'),
(906, 131, '_download_limit', '-1'),
(907, 131, '_download_expiry', '-1'),
(908, 131, '_stock', NULL),
(909, 131, '_stock_status', 'instock'),
(910, 131, '_wc_average_rating', '0'),
(911, 131, '_wc_review_count', '0'),
(912, 131, '_product_version', '3.8.1'),
(913, 131, '_price', '19'),
(914, 133, '_edit_lock', '1575623891:3'),
(915, 133, '_edit_last', '3'),
(916, 134, '_wp_attached_file', '2019/12/turkisk-peppar-original-150g-fazer-3.jpg'),
(917, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:48:\"2019/12/turkisk-peppar-original-150g-fazer-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"turkisk-peppar-original-150g-fazer-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"turkisk-peppar-original-150g-fazer-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"turkisk-peppar-original-150g-fazer-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"turkisk-peppar-original-150g-fazer-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"turkisk-peppar-original-150g-fazer-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"turkisk-peppar-original-150g-fazer-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(918, 133, '_thumbnail_id', '134'),
(919, 133, '_regular_price', '22'),
(920, 133, 'total_sales', '0'),
(921, 133, '_tax_status', 'taxable'),
(922, 133, '_tax_class', ''),
(923, 133, '_manage_stock', 'no'),
(924, 133, '_backorders', 'no'),
(925, 133, '_sold_individually', 'no'),
(926, 133, '_virtual', 'no'),
(927, 133, '_downloadable', 'no'),
(928, 133, '_download_limit', '-1'),
(929, 133, '_download_expiry', '-1'),
(930, 133, '_stock', NULL),
(931, 133, '_stock_status', 'instock'),
(932, 133, '_wc_average_rating', '0'),
(933, 133, '_wc_review_count', '0'),
(934, 133, '_product_version', '3.8.1'),
(935, 133, '_price', '22'),
(936, 135, '_edit_lock', '1575623370:3'),
(937, 135, '_edit_last', '3'),
(938, 136, '_wp_attached_file', '2019/12/00076840600021_c1c1.jpeg.jpg'),
(939, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/00076840600021_c1c1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"00076840600021_c1c1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"00076840600021_c1c1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"00076840600021_c1c1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"00076840600021_c1c1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"00076840600021_c1c1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"00076840600021_c1c1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(940, 135, '_thumbnail_id', '136'),
(941, 135, '_regular_price', '39'),
(942, 135, 'total_sales', '0'),
(943, 135, '_tax_status', 'taxable'),
(944, 135, '_tax_class', ''),
(945, 135, '_manage_stock', 'no'),
(946, 135, '_backorders', 'no'),
(947, 135, '_sold_individually', 'no'),
(948, 135, '_virtual', 'no'),
(949, 135, '_downloadable', 'no'),
(950, 135, '_download_limit', '-1'),
(951, 135, '_download_expiry', '-1'),
(952, 135, '_stock', NULL),
(953, 135, '_stock_status', 'instock'),
(954, 135, '_wc_average_rating', '0'),
(955, 135, '_wc_review_count', '0'),
(956, 135, '_product_version', '3.8.1'),
(957, 135, '_price', '30'),
(958, 137, '_edit_lock', '1575622727:3'),
(959, 137, '_edit_last', '3'),
(960, 138, '_wp_attached_file', '2019/12/energidryck-miami-33cl-nocco-1.jpg'),
(961, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:42:\"2019/12/energidryck-miami-33cl-nocco-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"energidryck-miami-33cl-nocco-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"energidryck-miami-33cl-nocco-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"energidryck-miami-33cl-nocco-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"energidryck-miami-33cl-nocco-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"energidryck-miami-33cl-nocco-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"energidryck-miami-33cl-nocco-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(962, 137, '_thumbnail_id', '138'),
(963, 137, '_regular_price', '12'),
(964, 137, 'total_sales', '0'),
(965, 137, '_tax_status', 'taxable'),
(966, 137, '_tax_class', ''),
(967, 137, '_manage_stock', 'no'),
(968, 137, '_backorders', 'no'),
(969, 137, '_sold_individually', 'no'),
(970, 137, '_virtual', 'no'),
(971, 137, '_downloadable', 'no'),
(972, 137, '_download_limit', '-1'),
(973, 137, '_download_expiry', '-1'),
(974, 137, '_stock', NULL),
(975, 137, '_stock_status', 'instock'),
(976, 137, '_wc_average_rating', '0'),
(977, 137, '_wc_review_count', '0'),
(978, 137, '_product_version', '3.8.1'),
(979, 137, '_price', '12'),
(980, 139, '_edit_lock', '1575622132:3'),
(981, 139, '_edit_last', '3'),
(982, 140, '_wp_attached_file', '2019/12/07310867561020_c1l1.jpeg.jpg'),
(983, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/07310867561020_c1l1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"07310867561020_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"07310867561020_c1l1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"07310867561020_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310867561020_c1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"07310867561020_c1l1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"07310867561020_c1l1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(984, 139, '_thumbnail_id', '140'),
(985, 139, '_regular_price', '29'),
(986, 139, 'total_sales', '0'),
(987, 139, '_tax_status', 'taxable'),
(988, 139, '_tax_class', ''),
(989, 139, '_manage_stock', 'no'),
(990, 139, '_backorders', 'no'),
(991, 139, '_sold_individually', 'no'),
(992, 139, '_virtual', 'no'),
(993, 139, '_downloadable', 'no'),
(994, 139, '_download_limit', '-1'),
(995, 139, '_download_expiry', '-1'),
(996, 139, '_stock', NULL),
(997, 139, '_stock_status', 'instock'),
(998, 139, '_wc_average_rating', '0'),
(999, 139, '_wc_review_count', '0'),
(1000, 139, '_product_version', '3.8.1'),
(1001, 139, '_price', '25'),
(1002, 141, '_edit_lock', '1575622684:3'),
(1003, 141, '_edit_last', '3'),
(1004, 142, '_wp_attached_file', '2019/12/05705001432113_c1n1.jpeg.jpg'),
(1005, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/05705001432113_c1n1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"05705001432113_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"05705001432113_c1n1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"05705001432113_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"05705001432113_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"05705001432113_c1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"05705001432113_c1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1006, 141, '_thumbnail_id', '142'),
(1007, 141, '_regular_price', '30'),
(1008, 141, 'total_sales', '0'),
(1009, 141, '_tax_status', 'taxable'),
(1010, 141, '_tax_class', ''),
(1011, 141, '_manage_stock', 'no'),
(1012, 141, '_backorders', 'no'),
(1013, 141, '_sold_individually', 'no'),
(1014, 141, '_virtual', 'no'),
(1015, 141, '_downloadable', 'no'),
(1016, 141, '_download_limit', '-1'),
(1017, 141, '_download_expiry', '-1'),
(1018, 141, '_stock', NULL),
(1019, 141, '_stock_status', 'instock'),
(1020, 141, '_wc_average_rating', '0'),
(1021, 141, '_wc_review_count', '0'),
(1022, 141, '_product_version', '3.8.1'),
(1023, 141, '_price', '30'),
(1024, 143, '_edit_lock', '1575622355:3'),
(1025, 143, '_edit_last', '3'),
(1026, 144, '_wp_attached_file', '2019/12/05449000133335_g1n1.jpeg.jpg');
INSERT INTO `ull_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1027, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2019/12/05449000133335_g1n1.jpeg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"05449000133335_g1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"05449000133335_g1n1.jpeg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"05449000133335_g1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"05449000133335_g1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"05449000133335_g1n1.jpeg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"05449000133335_g1n1.jpeg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1028, 143, '_thumbnail_id', '144'),
(1029, 143, '_regular_price', '21'),
(1030, 143, 'total_sales', '0'),
(1031, 143, '_tax_status', 'taxable'),
(1032, 143, '_tax_class', ''),
(1033, 143, '_manage_stock', 'no'),
(1034, 143, '_backorders', 'no'),
(1035, 143, '_sold_individually', 'no'),
(1036, 143, '_virtual', 'no'),
(1037, 143, '_downloadable', 'no'),
(1038, 143, '_download_limit', '-1'),
(1039, 143, '_download_expiry', '-1'),
(1040, 143, '_stock', NULL),
(1041, 143, '_stock_status', 'instock'),
(1042, 143, '_wc_average_rating', '0'),
(1043, 143, '_wc_review_count', '0'),
(1044, 143, '_product_version', '3.8.1'),
(1045, 143, '_price', '21'),
(1046, 145, '_edit_lock', '1575622738:3'),
(1047, 145, '_edit_last', '3'),
(1048, 146, '_wp_attached_file', '2019/12/blabar-125g-klass1-2.jpg'),
(1049, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:32:\"2019/12/blabar-125g-klass1-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"blabar-125g-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"blabar-125g-klass1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"blabar-125g-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"blabar-125g-klass1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"blabar-125g-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"blabar-125g-klass1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1050, 145, '_thumbnail_id', '146'),
(1051, 145, '_regular_price', '25'),
(1052, 145, 'total_sales', '0'),
(1053, 145, '_tax_status', 'taxable'),
(1054, 145, '_tax_class', ''),
(1055, 145, '_manage_stock', 'no'),
(1056, 145, '_backorders', 'no'),
(1057, 145, '_sold_individually', 'no'),
(1058, 145, '_virtual', 'no'),
(1059, 145, '_downloadable', 'no'),
(1060, 145, '_download_limit', '-1'),
(1061, 145, '_download_expiry', '-1'),
(1062, 145, '_stock', NULL),
(1063, 145, '_stock_status', 'outofstock'),
(1064, 145, '_wc_average_rating', '0'),
(1065, 145, '_wc_review_count', '0'),
(1066, 145, '_product_version', '3.8.1'),
(1067, 145, '_price', '25'),
(1068, 147, '_edit_lock', '1575622529:3'),
(1069, 147, '_edit_last', '3'),
(1070, 148, '_wp_attached_file', '2019/12/potatis-kokfast-1kg-klass1-2.jpg'),
(1071, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:40:\"2019/12/potatis-kokfast-1kg-klass1-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"potatis-kokfast-1kg-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"potatis-kokfast-1kg-klass1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"potatis-kokfast-1kg-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"potatis-kokfast-1kg-klass1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"potatis-kokfast-1kg-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"potatis-kokfast-1kg-klass1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1072, 147, '_thumbnail_id', '148'),
(1073, 147, '_regular_price', '31'),
(1074, 147, 'total_sales', '0'),
(1075, 147, '_tax_status', 'taxable'),
(1076, 147, '_tax_class', ''),
(1077, 147, '_manage_stock', 'no'),
(1078, 147, '_backorders', 'no'),
(1079, 147, '_sold_individually', 'no'),
(1080, 147, '_virtual', 'no'),
(1081, 147, '_downloadable', 'no'),
(1082, 147, '_download_limit', '-1'),
(1083, 147, '_download_expiry', '-1'),
(1084, 147, '_stock', NULL),
(1085, 147, '_stock_status', 'instock'),
(1086, 147, '_wc_average_rating', '0'),
(1087, 147, '_wc_review_count', '0'),
(1088, 147, '_product_version', '3.8.1'),
(1089, 147, '_price', '25'),
(1090, 149, '_edit_lock', '1575622478:3'),
(1091, 149, '_edit_last', '3'),
(1092, 150, '_wp_attached_file', '2019/12/broccoli-eko-300g-klass1-1.jpg'),
(1093, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:38:\"2019/12/broccoli-eko-300g-klass1-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"broccoli-eko-300g-klass1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"broccoli-eko-300g-klass1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"broccoli-eko-300g-klass1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"broccoli-eko-300g-klass1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"broccoli-eko-300g-klass1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"broccoli-eko-300g-klass1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1094, 149, '_thumbnail_id', '150'),
(1095, 149, '_regular_price', '10'),
(1096, 149, 'total_sales', '0'),
(1097, 149, '_tax_status', 'taxable'),
(1098, 149, '_tax_class', ''),
(1099, 149, '_manage_stock', 'no'),
(1100, 149, '_backorders', 'no'),
(1101, 149, '_sold_individually', 'no'),
(1102, 149, '_virtual', 'no'),
(1103, 149, '_downloadable', 'no'),
(1104, 149, '_download_limit', '-1'),
(1105, 149, '_download_expiry', '-1'),
(1106, 149, '_stock', NULL),
(1107, 149, '_stock_status', 'instock'),
(1108, 149, '_wc_average_rating', '0'),
(1109, 149, '_wc_review_count', '0'),
(1110, 149, '_product_version', '3.8.1'),
(1111, 149, '_price', '8'),
(1112, 151, '_edit_lock', '1575622434:3'),
(1113, 151, '_edit_last', '3'),
(1114, 152, '_wp_attached_file', '2019/12/tomat-kvist-eko-500g-klass1-2.jpg'),
(1115, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:41:\"2019/12/tomat-kvist-eko-500g-klass1-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"tomat-kvist-eko-500g-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"tomat-kvist-eko-500g-klass1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"tomat-kvist-eko-500g-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"tomat-kvist-eko-500g-klass1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"tomat-kvist-eko-500g-klass1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"tomat-kvist-eko-500g-klass1-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1116, 151, '_thumbnail_id', '152'),
(1117, 151, '_regular_price', '14'),
(1118, 151, 'total_sales', '0'),
(1119, 151, '_tax_status', 'taxable'),
(1120, 151, '_tax_class', ''),
(1121, 151, '_manage_stock', 'no'),
(1122, 151, '_backorders', 'no'),
(1123, 151, '_sold_individually', 'no'),
(1124, 151, '_virtual', 'no'),
(1125, 151, '_downloadable', 'no'),
(1126, 151, '_download_limit', '-1'),
(1127, 151, '_download_expiry', '-1'),
(1128, 151, '_stock', NULL),
(1129, 151, '_stock_status', 'instock'),
(1130, 151, '_wc_average_rating', '0'),
(1131, 151, '_wc_review_count', '0'),
(1132, 151, '_product_version', '3.8.1'),
(1133, 151, '_price', '14'),
(1134, 153, '_edit_lock', '1575622529:3'),
(1135, 153, '_edit_last', '3'),
(1136, 154, '_wp_attached_file', '2019/12/grapefrukt-rod-klass1-1.jpg'),
(1137, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:35:\"2019/12/grapefrukt-rod-klass1-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"grapefrukt-rod-klass1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"grapefrukt-rod-klass1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"grapefrukt-rod-klass1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"grapefrukt-rod-klass1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"grapefrukt-rod-klass1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"grapefrukt-rod-klass1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1138, 153, '_thumbnail_id', '154'),
(1139, 153, 'total_sales', '0'),
(1140, 153, '_tax_status', 'taxable'),
(1141, 153, '_tax_class', ''),
(1142, 153, '_manage_stock', 'no'),
(1143, 153, '_backorders', 'no'),
(1144, 153, '_sold_individually', 'no'),
(1145, 153, '_virtual', 'no'),
(1146, 153, '_downloadable', 'no'),
(1147, 153, '_download_limit', '-1'),
(1148, 153, '_download_expiry', '-1'),
(1149, 153, '_stock', NULL),
(1150, 153, '_stock_status', 'instock'),
(1151, 153, '_wc_average_rating', '0'),
(1152, 153, '_wc_review_count', '0'),
(1153, 153, '_product_version', '3.8.1'),
(1154, 155, '_edit_lock', '1575634151:2'),
(1155, 155, '_edit_last', '3'),
(1156, 156, '_wp_attached_file', '2019/12/banan-eko-klass1-4.jpg'),
(1157, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2019/12/banan-eko-klass1-4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"banan-eko-klass1-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"banan-eko-klass1-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"banan-eko-klass1-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"banan-eko-klass1-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"banan-eko-klass1-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"banan-eko-klass1-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1158, 155, '_thumbnail_id', '156'),
(1159, 155, '_regular_price', '13'),
(1160, 155, 'total_sales', '0'),
(1161, 155, '_tax_status', 'taxable'),
(1162, 155, '_tax_class', ''),
(1163, 155, '_manage_stock', 'no'),
(1164, 155, '_backorders', 'no'),
(1165, 155, '_sold_individually', 'no'),
(1166, 155, '_virtual', 'no'),
(1167, 155, '_downloadable', 'no'),
(1168, 155, '_download_limit', '-1'),
(1169, 155, '_download_expiry', '-1'),
(1170, 155, '_stock', NULL),
(1171, 155, '_stock_status', 'instock'),
(1172, 155, '_wc_average_rating', '0'),
(1173, 155, '_wc_review_count', '0'),
(1174, 155, '_product_version', '3.8.1'),
(1175, 155, '_price', '13'),
(1176, 65, '_wp_trash_meta_status', 'publish'),
(1177, 65, '_wp_trash_meta_time', '1575557138'),
(1178, 65, '_wp_desired_post_slug', 'sliced-bread'),
(1179, 157, '_menu_item_type', 'custom'),
(1180, 157, '_menu_item_menu_item_parent', '0'),
(1181, 157, '_menu_item_object_id', '157'),
(1182, 157, '_menu_item_object', 'custom'),
(1183, 157, '_menu_item_target', ''),
(1184, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1185, 157, '_menu_item_xfn', ''),
(1186, 157, '_menu_item_url', 'http://dd'),
(1187, 157, '_menu_item_orphaned', '1575557537'),
(1188, 139, '_sale_price', '25'),
(1189, 139, '_sale_price_dates_from', '1575590400'),
(1190, 139, '_sale_price_dates_to', '1576799999'),
(1191, 167, '_wp_attached_file', '2019/12/naringsvarde.jpg'),
(1192, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:309;s:4:\"file\";s:24:\"2019/12/naringsvarde.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"naringsvarde-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"naringsvarde-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"naringsvarde-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"naringsvarde-600x290.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"naringsvarde-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"naringsvarde-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"naringsvarde-600x290.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"naringsvarde-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1193, 169, '_wp_attached_file', '2019/12/index.jpg'),
(1194, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:143;s:4:\"file\";s:17:\"2019/12/index.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"index-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"index-150x143.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"index-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"index-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"index-300x143.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"index-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1195, 170, '_wp_attached_file', '2019/12/images.jpg'),
(1196, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:345;s:6:\"height\";i:146;s:4:\"file\";s:18:\"2019/12/images.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"images-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x146.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"images-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"images-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"images-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1197, 171, '_wp_attached_file', '2019/12/inn.jpg'),
(1198, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:315;s:6:\"height\";i:160;s:4:\"file\";s:15:\"2019/12/inn.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"inn-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"inn-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"inn-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"inn-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"inn-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"inn-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1199, 172, '_wp_attached_file', '2019/12/mjolkfakta-729722.jpg'),
(1200, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:716;s:6:\"height\";i:1128;s:4:\"file\";s:29:\"2019/12/mjolkfakta-729722.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"mjolkfakta-729722-190x300.jpg\";s:5:\"width\";i:190;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"mjolkfakta-729722-650x1024.jpg\";s:5:\"width\";i:650;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"mjolkfakta-729722-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"mjolkfakta-729722-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"mjolkfakta-729722-600x945.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:945;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"mjolkfakta-729722-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"mjolkfakta-729722-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"mjolkfakta-729722-600x945.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:945;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"mjolkfakta-729722-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1201, 173, '_wp_attached_file', '2019/12/Nutrition-Facts-Label-Sample.jpg'),
(1202, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:458;s:4:\"file\";s:40:\"2019/12/Nutrition-Facts-Label-Sample.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Nutrition-Facts-Label-Sample-162x300.jpg\";s:5:\"width\";i:162;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Nutrition-Facts-Label-Sample-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"Nutrition-Facts-Label-Sample-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"Nutrition-Facts-Label-Sample-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"Nutrition-Facts-Label-Sample-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"Nutrition-Facts-Label-Sample-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1203, 174, '_wp_attached_file', '2019/12/Final-Nutrition-Label-150dpi.png'),
(1204, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:822;s:4:\"file\";s:40:\"2019/12/Final-Nutrition-Label-150dpi.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Final-Nutrition-Label-150dpi-153x300.png\";s:5:\"width\";i:153;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Final-Nutrition-Label-150dpi-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"Final-Nutrition-Label-150dpi-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"Final-Nutrition-Label-150dpi-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"Final-Nutrition-Label-150dpi-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"Final-Nutrition-Label-150dpi-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1205, 153, '_regular_price', '16'),
(1206, 153, '_price', '16'),
(1207, 149, '_sale_price', '8'),
(1208, 147, '_sale_price', '25'),
(1209, 147, '_sale_price_dates_from', '1575590400'),
(1210, 147, '_sale_price_dates_to', '1577491199'),
(1211, 135, '_sale_price', '30'),
(1212, 135, '_sale_price_dates_from', '1575590400'),
(1213, 135, '_sale_price_dates_to', '1577836799'),
(1214, 127, '_sale_price', '20'),
(1215, 127, '_sale_price_dates_from', '1575590400'),
(1216, 127, '_sale_price_dates_to', '1577836799'),
(1226, 105, '_sale_price', '40'),
(1227, 105, '_sale_price_dates_from', '1575590400'),
(1228, 105, '_sale_price_dates_to', '1580428799'),
(1229, 90, '_sale_price', '18'),
(1230, 90, '_sale_price_dates_from', '1575590400'),
(1231, 90, '_sale_price_dates_to', '1579823999'),
(1232, 87, '_sale_price', '10'),
(1233, 87, '_sale_price_dates_from', '1575590400'),
(1234, 87, '_sale_price_dates_to', '1580428799'),
(1235, 85, '_sale_price', '24'),
(1236, 85, '_sale_price_dates_from', '1575590400'),
(1237, 85, '_sale_price_dates_to', '1580515199'),
(1238, 58, '_wp_trash_meta_status', 'publish'),
(1239, 58, '_wp_trash_meta_time', '1575626308'),
(1240, 58, '_wp_desired_post_slug', 'test'),
(1247, 183, '_edit_lock', '1575636648:2'),
(1248, 185, '_menu_item_type', 'post_type'),
(1249, 185, '_menu_item_menu_item_parent', '0'),
(1250, 185, '_menu_item_object_id', '60'),
(1251, 185, '_menu_item_object', 'page'),
(1252, 185, '_menu_item_target', ''),
(1253, 185, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1254, 185, '_menu_item_xfn', ''),
(1255, 185, '_menu_item_url', ''),
(1257, 186, '_wp_attached_file', '2019/12/sheepyhunkyfriday.png'),
(1258, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:251;s:6:\"height\";i:226;s:4:\"file\";s:29:\"2019/12/sheepyhunkyfriday.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"sheepyhunkyfriday-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"sheepyhunkyfriday-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"sheepyhunkyfriday-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1259, 187, '_wp_trash_meta_status', 'publish'),
(1260, 187, '_wp_trash_meta_time', '1575638190');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_posts`
--

CREATE TABLE `ull_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_posts`
--

INSERT INTO `ull_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-02 10:37:25', '2019-12-02 10:37:25', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-12-02 10:37:25', '2019-12-02 10:37:25', '', 0, 'http://sheepfriday.test/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-02 10:37:25', '2019-12-02 10:37:25', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://sheepfriday.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-12-02 10:37:25', '2019-12-02 10:37:25', '', 0, 'http://sheepfriday.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-02 10:37:25', '2019-12-02 10:37:25', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://sheepfriday.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-12-02 10:37:25', '2019-12-02 10:37:25', '', 0, 'http://sheepfriday.test/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-12-02 10:41:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-02 10:41:56', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=4', 0, 'post', '', 0),
(6, 1, '2019-12-02 12:39:26', '2019-12-02 12:39:26', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-12-02 12:39:26', '2019-12-02 12:39:26', '', 0, 'http://sheepfriday.test/wp-content/uploads/2019/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2019-12-02 12:42:10', '2019-12-02 12:42:10', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-12-02 12:42:10', '2019-12-02 12:42:10', '', 0, 'http://sheepfriday.test/shop/', 0, 'page', '', 0),
(8, 1, '2019-12-02 12:42:10', '2019-12-02 12:42:10', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-12-02 12:42:10', '2019-12-02 12:42:10', '', 0, 'http://sheepfriday.test/cart/', 0, 'page', '', 0),
(9, 1, '2019-12-02 12:42:10', '2019-12-02 12:42:10', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-12-02 12:42:10', '2019-12-02 12:42:10', '', 0, 'http://sheepfriday.test/checkout/', 0, 'page', '', 0),
(10, 1, '2019-12-02 12:42:10', '2019-12-02 12:42:10', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-12-02 12:42:10', '2019-12-02 12:42:10', '', 0, 'http://sheepfriday.test/my-account/', 0, 'page', '', 0),
(11, 1, '2019-12-02 13:50:43', '2019-12-02 13:50:43', '<!-- wp:paragraph -->\n<p>Detta är vår kontaktsida</p>\n<!-- /wp:paragraph -->', 'Kontakt', '', 'trash', 'closed', 'closed', '', 'kontakt__trashed', '', '', '2019-12-02 15:36:27', '2019-12-02 15:36:27', '', 0, 'http://sheepfriday.test/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-12-02 13:50:43', '2019-12-02 13:50:43', '<!-- wp:paragraph -->\n<p>Detta är vår kontaktsida</p>\n<!-- /wp:paragraph -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-12-02 13:50:43', '2019-12-02 13:50:43', '', 11, 'http://sheepfriday.test/2019/12/02/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-12-03 07:48:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-03 07:48:32', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-12-03 07:50:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-03 07:50:55', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-12-03 15:18:34', '2019-12-03 15:18:34', '<!-- wp:paragraph -->\n<p>wow so much test</p>\n<!-- /wp:paragraph -->', 'Test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2019-12-03 15:18:34', '2019-12-03 15:18:34', '', 0, 'http://sheepfriday.test/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-12-03 15:18:34', '2019-12-03 15:18:34', '<!-- wp:paragraph -->\n<p>wow so much test</p>\n<!-- /wp:paragraph -->', 'Test', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-03 15:18:34', '2019-12-03 15:18:34', '', 15, 'http://sheepfriday.test/index.php/2019/12/03/15-revision-v1/', 0, 'revision', '', 0),
(17, 3, '2019-12-03 16:14:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-03 16:14:32', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=17', 0, 'post', '', 0),
(18, 3, '2019-12-03 16:15:04', '2019-12-03 16:15:04', '', 'Test2 - hej från aws', '', 'publish', 'closed', 'closed', '', 'test2-hej-fran-aws', '', '', '2019-12-03 16:15:04', '2019-12-03 16:15:04', '', 0, 'http://sheepfriday.test/?page_id=18', 0, 'page', '', 0),
(19, 3, '2019-12-03 16:15:04', '2019-12-03 16:15:04', '', 'Test2 - hej från aws', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-03 16:15:04', '2019-12-03 16:15:04', '', 18, 'http://sheepfriday.test/index.php/2019/12/03/18-revision-v1/', 0, 'revision', '', 0),
(20, 2, '2019-12-03 21:34:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-03 21:34:44', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=20', 0, 'post', '', 0),
(21, 2, '2019-12-03 21:39:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-03 21:39:41', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=21', 0, 'post', '', 0),
(22, 4, '2019-12-04 08:57:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-04 08:57:43', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=22', 0, 'post', '', 0),
(23, 3, '2019-12-04 11:43:13', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:43:13', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=23', 1, 'nav_menu_item', '', 0),
(24, 3, '2019-12-04 11:43:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:43:13', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=24', 1, 'nav_menu_item', '', 0),
(25, 3, '2019-12-04 11:43:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:43:14', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=25', 1, 'nav_menu_item', '', 0),
(26, 3, '2019-12-04 11:43:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:43:14', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=26', 1, 'nav_menu_item', '', 0),
(27, 3, '2019-12-04 11:43:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:43:15', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=27', 1, 'nav_menu_item', '', 0),
(28, 3, '2019-12-04 11:43:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:43:15', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=28', 1, 'nav_menu_item', '', 0),
(29, 3, '2019-12-04 11:43:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:43:16', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=29', 1, 'nav_menu_item', '', 0),
(30, 3, '2019-12-04 11:43:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:43:17', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=30', 1, 'nav_menu_item', '', 0),
(31, 4, '2019-12-04 11:44:29', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[footerfull]\": {\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 4,\n        \"date_modified_gmt\": \"2019-12-04 11:44:29\"\n    },\n    \"widget_text[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjQ6InRlc3QiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0af69ee08f9591bd1e12321949b6893a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 4,\n        \"date_modified_gmt\": \"2019-12-04 11:44:29\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0d6436f6-2f27-4e89-9a87-4c1cb941e79a', '', '', '2019-12-04 11:44:29', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=31', 0, 'customize_changeset', '', 0),
(32, 3, '2019-12-04 11:44:02', '2019-12-04 11:44:02', '', 'Start page', '', 'publish', 'closed', 'closed', '', 'start-page', '', '', '2019-12-04 13:40:53', '2019-12-04 13:40:53', '', 0, 'http://sheepfriday.test/?page_id=32', 0, 'page', '', 0),
(33, 3, '2019-12-04 11:44:02', '2019-12-04 11:44:02', '', 'Start page', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-12-04 11:44:02', '2019-12-04 11:44:02', '', 32, 'http://sheepfriday.test/index.php/2019/12/04/32-revision-v1/', 0, 'revision', '', 0),
(34, 3, '2019-12-04 11:49:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:49:02', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=34', 1, 'nav_menu_item', '', 0),
(35, 3, '2019-12-04 11:49:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:49:03', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=35', 1, 'nav_menu_item', '', 0),
(36, 3, '2019-12-04 11:49:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:49:04', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=36', 1, 'nav_menu_item', '', 0),
(37, 3, '2019-12-04 11:49:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:49:04', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=37', 1, 'nav_menu_item', '', 0),
(38, 3, '2019-12-04 11:49:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:49:05', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=38', 1, 'nav_menu_item', '', 0),
(39, 3, '2019-12-04 11:49:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:49:05', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=39', 1, 'nav_menu_item', '', 0),
(40, 3, '2019-12-04 11:49:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:49:06', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=40', 1, 'nav_menu_item', '', 0),
(41, 3, '2019-12-04 11:49:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 11:49:06', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-12-04 14:37:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:37:22', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2019-12-04 14:37:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:37:23', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2019-12-04 14:37:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:37:23', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-12-04 14:37:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:37:24', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2019-12-04 14:37:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:37:25', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2019-12-04 14:37:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:37:25', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2019-12-04 14:37:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:37:26', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2019-12-04 14:37:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-04 14:37:27', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=49', 1, 'nav_menu_item', '', 0),
(51, 1, '2019-12-04 14:54:44', '2019-12-04 14:54:44', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2019-12-07 20:21:35', '2019-12-07 20:21:35', '', 0, 'http://sheepfriday.test/?p=51', 1, 'nav_menu_item', '', 0),
(53, 1, '2019-12-04 14:54:45', '2019-12-04 14:54:45', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2019-12-07 20:21:35', '2019-12-07 20:21:35', '', 0, 'http://sheepfriday.test/?p=53', 2, 'nav_menu_item', '', 0),
(58, 1, '2019-12-04 18:17:36', '2019-12-04 18:17:36', 'wow', 'Test', '', 'trash', 'open', 'closed', '', 'test__trashed', '', '', '2019-12-06 09:58:28', '2019-12-06 09:58:28', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=58', 0, 'product', '', 0),
(59, 2, '2019-12-05 10:44:15', '2019-12-05 10:44:15', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Order Number\r\n    [text order-number] </label>\r\n\r\n[select* menu-597 include_blank \"About order\" \"About Payment\" \"Shipping & Delivery issues\" \"Return & complaint issues\" \"Other Questions\"]\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit \"Send\"]\n1\nSheep Friday - \"[menu-597]\"\nSheep Friday <wordpress@sheepfriday.test>\nkingenalban@gmail.com\nFrom: [your-name] \r\nEmail: [your-email]\r\nOrder Number: [order-number]\r\n\r\n<strong>Message Body:</strong>\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Sheep Friday (http://sheepfriday.test)\nReply-To: [your-email]\n\n1\n\n1\nSheep Friday - \"[menu-597]\"\nSheep Friday <wordpress@sheepfriday.test>\n[your-email]\n<strong>Message Body:</strong>\r\n[your-message]\r\n\r\n\r\n<em>Thank you for your email. We will look into this and get back to you soon.</em>\r\n\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Sheep Friday (http://sheepfriday.test)\nReply-To: kingenalban@gmail.com\n\n1\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2019-12-06 13:07:06', '2019-12-06 13:07:06', '', 0, 'http://sheepfriday.test/?post_type=wpcf7_contact_form&#038;p=59', 0, 'wpcf7_contact_form', '', 0),
(60, 2, '2019-12-05 10:45:22', '2019-12-05 10:45:22', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\",\"fontSize\":\"medium\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background has-medium-font-size\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background\"><strong>Opening Hours:</strong><br><br>Customer Support<br>Mon - Fri 8-22<br>Saturday 8-17<br>Sunday 14-22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-12-06 08:57:14', '2019-12-06 08:57:14', '', 0, 'http://sheepfriday.test/?page_id=60', 0, 'page', '', 0),
(61, 2, '2019-12-05 10:45:22', '2019-12-05 10:45:22', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 10:45:22', '2019-12-05 10:45:22', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(63, 2, '2019-12-05 10:48:28', '2019-12-05 10:48:28', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"62\" title=\"contact\"]</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 10:48:28', '2019-12-05 10:48:28', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(64, 2, '2019-12-05 11:11:41', '2019-12-05 11:11:41', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 11:11:41', '2019-12-05 11:11:41', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(65, 3, '2019-12-05 11:34:45', '2019-12-05 11:34:45', '', 'Lingon Grova', '', 'trash', 'open', 'closed', '', 'sliced-bread__trashed', '', '', '2019-12-05 14:45:38', '2019-12-05 14:45:38', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 3, '2019-12-05 11:48:44', '2019-12-05 11:48:44', '', '02340415200007_c1l1.jpeg', '', 'inherit', 'open', 'closed', '', '02340415200007_c1l1-jpeg', '', '', '2019-12-05 11:48:44', '2019-12-05 11:48:44', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/02340415200007_c1l1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 3, '2019-12-05 11:48:48', '2019-12-05 11:48:48', '', '06408432061233_c1n1.jpeg', '', 'inherit', 'open', 'closed', '', '06408432061233_c1n1-jpeg', '', '', '2019-12-05 11:48:48', '2019-12-05 11:48:48', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/06408432061233_c1n1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 3, '2019-12-05 11:48:51', '2019-12-05 11:48:51', '', '07310860005804_c1l1.jpeg', '', 'inherit', 'open', 'closed', '', '07310860005804_c1l1-jpeg', '', '', '2019-12-05 11:48:51', '2019-12-05 11:48:51', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07310860005804_c1l1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 3, '2019-12-05 11:48:54', '2019-12-05 11:48:54', '', '07310865001191_g1l1.jpeg', '', 'inherit', 'open', 'closed', '', '07310865001191_g1l1-jpeg', '', '', '2019-12-05 11:48:54', '2019-12-05 11:48:54', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07310865001191_g1l1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 3, '2019-12-05 11:48:58', '2019-12-05 11:48:58', '', '07310865088116_c1l1.jpeg', '', 'inherit', 'open', 'closed', '', '07310865088116_c1l1-jpeg', '', '', '2019-12-05 11:48:58', '2019-12-05 11:48:58', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07310865088116_c1l1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 3, '2019-12-05 11:49:04', '2019-12-05 11:49:04', '', '07310865088215_g1l1', '', 'inherit', 'open', 'closed', '', '07310865088215_g1l1', '', '', '2019-12-05 11:49:04', '2019-12-05 11:49:04', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07310865088215_g1l1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 3, '2019-12-05 11:49:08', '2019-12-05 11:49:08', '', '07311070008159_c1l1', '', 'inherit', 'open', 'closed', '', '07311070008159_c1l1', '', '', '2019-12-05 11:49:08', '2019-12-05 11:49:08', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07311070008159_c1l1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 3, '2019-12-05 11:49:11', '2019-12-05 11:49:11', '', '07311070330243_c1l1', '', 'inherit', 'open', 'closed', '', '07311070330243_c1l1', '', '', '2019-12-05 11:49:11', '2019-12-05 11:49:11', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07311070330243_c1l1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 3, '2019-12-05 11:49:20', '2019-12-05 11:49:20', '', '07311070336160_g1l1', '', 'inherit', 'open', 'closed', '', '07311070336160_g1l1', '', '', '2019-12-05 11:49:20', '2019-12-05 11:49:20', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07311070336160_g1l1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 3, '2019-12-05 11:49:24', '2019-12-05 11:49:24', '', '07311070338188_c1l1', '', 'inherit', 'open', 'closed', '', '07311070338188_c1l1', '', '', '2019-12-05 11:49:24', '2019-12-05 11:49:24', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07311070338188_c1l1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 3, '2019-12-05 11:49:28', '2019-12-05 11:49:28', '', '07311071336244_g1l1', '', 'inherit', 'open', 'closed', '', '07311071336244_g1l1', '', '', '2019-12-05 11:49:28', '2019-12-05 11:49:28', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07311071336244_g1l1.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 3, '2019-12-05 11:49:31', '2019-12-05 11:49:31', '', '07331746234828_c1c1', '', 'inherit', 'open', 'closed', '', '07331746234828_c1c1', '', '', '2019-12-05 11:49:31', '2019-12-05 11:49:31', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07331746234828_c1c1.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 3, '2019-12-05 11:49:35', '2019-12-05 11:49:35', '', '07350002402658_c1n1', '', 'inherit', 'open', 'closed', '', '07350002402658_c1n1', '', '', '2019-12-05 11:49:35', '2019-12-05 11:49:35', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07350002402658_c1n1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 3, '2019-12-05 11:49:38', '2019-12-05 11:49:38', '', '07394376616174_c1n1', '', 'inherit', 'open', 'closed', '', '07394376616174_c1n1', '', '', '2019-12-05 11:49:38', '2019-12-05 11:49:38', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/07394376616174_c1n1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 3, '2019-12-05 11:49:42', '2019-12-05 11:49:42', '', 'julknacke-300g-wasabrod-3', '', 'inherit', 'open', 'closed', '', 'julknacke-300g-wasabrod-3', '', '', '2019-12-05 11:49:42', '2019-12-05 11:49:42', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/julknacke-300g-wasabrod-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 3, '2019-12-05 11:49:45', '2019-12-05 11:49:45', '', 'mild-yoghurt-grekisk-6--1000g-arla-5', '', 'inherit', 'open', 'closed', '', 'mild-yoghurt-grekisk-6-1000g-arla-5', '', '', '2019-12-05 11:49:45', '2019-12-05 11:49:45', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/mild-yoghurt-grekisk-6-1000g-arla-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 3, '2019-12-05 11:49:49', '2019-12-05 11:49:49', '', 'surdegsbaguette-480g-bake-my-day', '', 'inherit', 'open', 'closed', '', 'surdegsbaguette-480g-bake-my-day', '', '', '2019-12-05 11:49:49', '2019-12-05 11:49:49', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/surdegsbaguette-480g-bake-my-day.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 3, '2019-12-05 11:49:52', '2019-12-05 11:49:52', '', 'svensk-ost-riven-24--500g-arla', '', 'inherit', 'open', 'closed', '', 'svensk-ost-riven-24-500g-arla', '', '', '2019-12-05 11:49:52', '2019-12-05 11:49:52', '', 65, 'http://sheepfriday.test/wp-content/uploads/2019/12/svensk-ost-riven-24-500g-arla.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 3, '2019-12-05 11:53:43', '2019-12-05 11:53:43', '', 'Baguette', '<img class=\"alignnone size-medium wp-image-174\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Final-Nutrition-Label-150dpi-153x300.png\" alt=\"\" width=\"153\" height=\"300\" />', 'publish', 'open', 'closed', '', 'baguette', '', '', '2019-12-06 09:59:02', '2019-12-06 09:59:02', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 3, '2019-12-05 11:56:27', '2019-12-05 11:56:27', '', 'Pågenlimpan', '<img class=\"alignnone size-medium wp-image-173\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Nutrition-Facts-Label-Sample-162x300.jpg\" alt=\"\" width=\"162\" height=\"300\" />', 'publish', 'open', 'closed', '', 'pagenlimpan', '', '', '2019-12-06 09:58:02', '2019-12-06 09:58:02', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 3, '2019-12-05 11:57:29', '2019-12-05 11:57:29', '', 'Levain Surdegsbröd', '<img class=\"alignnone size-medium wp-image-171\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/inn-300x152.jpg\" alt=\"\" width=\"300\" height=\"152\" />', 'publish', 'open', 'closed', '', 'levain-surdegsbrod', '', '', '2019-12-06 09:56:47', '2019-12-06 09:56:47', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 3, '2019-12-05 11:58:29', '2019-12-05 11:58:29', '', 'Roast\'n Toast', '<img class=\"alignnone size-medium wp-image-170\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/images-300x127.jpg\" alt=\"\" width=\"300\" height=\"127\" />', 'publish', 'open', 'closed', '', 'roastn-toast', '', '', '2019-12-06 09:55:53', '2019-12-06 09:55:53', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 3, '2019-12-05 11:59:50', '2019-12-05 11:59:50', '', 'Light Creme Fraiche', '<img class=\"alignnone size-medium wp-image-169\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/index-300x122.jpg\" alt=\"\" width=\"300\" height=\"122\" />', 'publish', 'open', 'closed', '', 'light-creme-fraiche', '', '', '2019-12-06 09:54:55', '2019-12-06 09:54:55', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 3, '2019-12-05 12:01:12', '2019-12-05 12:01:12', '', 'Oatly Milk', '<img class=\"alignnone size-medium wp-image-167\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" alt=\"\" width=\"300\" height=\"145\" />', 'publish', 'open', 'closed', '', 'oatly-milk', '', '', '2019-12-06 09:54:00', '2019-12-06 09:54:00', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 3, '2019-12-05 12:02:23', '2019-12-05 12:02:23', '', 'Sour Milk', '<img class=\"alignnone size-medium wp-image-174\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Final-Nutrition-Label-150dpi-153x300.png\" alt=\"\" width=\"153\" height=\"300\" />', 'publish', 'open', 'closed', '', 'sour-milk', '', '', '2019-12-06 09:53:12', '2019-12-06 09:53:12', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 3, '2019-12-05 12:06:47', '2019-12-05 12:06:47', '', 'Feta', '<img class=\"alignnone size-medium wp-image-173\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Nutrition-Facts-Label-Sample-162x300.jpg\" alt=\"\" width=\"162\" height=\"300\" />', 'publish', 'open', 'closed', '', 'feta', '', '', '2019-12-06 09:51:52', '2019-12-06 09:51:52', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 3, '2019-12-05 12:09:41', '2019-12-05 12:09:41', '', 'Shredded Cheese', '<img class=\"alignnone size-medium wp-image-172\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/mjolkfakta-729722-190x300.jpg\" alt=\"\" width=\"190\" height=\"300\" />', 'publish', 'open', 'closed', '', 'shredded-cheese', '', '', '2019-12-06 09:50:36', '2019-12-06 09:50:36', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 2, '2019-12-05 12:29:12', '2019-12-05 12:29:12', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Email: kingenalban@gmail.com</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Mobile: 070 430 48 45</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 12:29:12', '2019-12-05 12:29:12', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(95, 2, '2019-12-05 12:36:43', '2019-12-05 12:36:43', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>E-mail: <a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p>Mobile: 070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 12:36:43', '2019-12-05 12:36:43', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(96, 2, '2019-12-05 12:38:01', '2019-12-05 12:38:01', '<!-- wp:paragraph -->\n<p>E-mail: <a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph -->', 'Untitled Reusable Block', '', 'publish', 'closed', 'closed', '', 'untitled-reusable-block', '', '', '2019-12-05 12:38:01', '2019-12-05 12:38:01', '', 0, 'http://sheepfriday.test/index.php/2019/12/05/untitled-reusable-block/', 0, 'wp_block', '', 0),
(97, 2, '2019-12-05 12:38:23', '2019-12-05 12:38:23', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">E-mail: <a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">Mobile: 070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 12:38:23', '2019-12-05 12:38:23', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(98, 2, '2019-12-05 12:39:45', '2019-12-05 12:39:45', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">E-mail: <a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">Mobile: 070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 12:39:45', '2019-12-05 12:39:45', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(99, 2, '2019-12-05 12:41:03', '2019-12-05 12:41:03', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:nextpage -->\n<!--nextpage-->\n<!-- /wp:nextpage -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">E-mail: <a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">Mobile: 070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 12:41:03', '2019-12-05 12:41:03', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(100, 2, '2019-12-05 12:41:38', '2019-12-05 12:41:38', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">E-mail: <a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">Mobile: 070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 12:41:38', '2019-12-05 12:41:38', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(101, 2, '2019-12-05 12:42:09', '2019-12-05 12:42:09', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">E-mail: <a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">Mobile: 070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 12:42:09', '2019-12-05 12:42:09', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(102, 2, '2019-12-05 12:43:20', '2019-12-05 12:43:20', '<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>E-mail</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\"><a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Mobile</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 12:43:20', '2019-12-05 12:43:20', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(103, 3, '2019-12-05 13:34:57', '2019-12-05 13:34:57', '', 'Minced Meat', '<img class=\"alignnone size-medium wp-image-171\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/inn-300x152.jpg\" alt=\"\" width=\"300\" height=\"152\" />', 'publish', 'open', 'closed', '', 'minced-meat', '', '', '2019-12-06 09:49:46', '2019-12-06 09:49:46', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=103', 0, 'product', '', 0),
(104, 3, '2019-12-05 13:34:45', '2019-12-05 13:34:45', '', '02320687400008_c1l1', '', 'inherit', 'open', 'closed', '', '02320687400008_c1l1', '', '', '2019-12-05 13:34:45', '2019-12-05 13:34:45', '', 103, 'http://sheepfriday.test/wp-content/uploads/2019/12/02320687400008_c1l1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 3, '2019-12-05 13:35:54', '2019-12-05 13:35:54', '', 'Chorizo', '<img class=\"alignnone size-medium wp-image-170\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/images-300x127.jpg\" alt=\"\" width=\"300\" height=\"127\" />', 'publish', 'open', 'closed', '', 'chorizo', '', '', '2019-12-06 09:48:51', '2019-12-06 09:48:51', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=105', 0, 'product', '', 0),
(106, 3, '2019-12-05 13:35:34', '2019-12-05 13:35:34', '', '07330563001217_c1n1', '', 'inherit', 'open', 'closed', '', '07330563001217_c1n1', '', '', '2019-12-05 13:35:34', '2019-12-05 13:35:34', '', 105, 'http://sheepfriday.test/wp-content/uploads/2019/12/07330563001217_c1n1.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 3, '2019-12-05 13:36:36', '2019-12-05 13:36:36', '', 'Meatballs', '<img class=\"alignnone size-medium wp-image-169\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/index-300x122.jpg\" alt=\"\" width=\"300\" height=\"122\" />', 'publish', 'open', 'closed', '', 'meatballs', '', '', '2019-12-06 09:47:32', '2019-12-06 09:47:32', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=107', 0, 'product', '', 0),
(108, 3, '2019-12-05 13:36:23', '2019-12-05 13:36:23', '', '07310240039511_c1n1.jpeg', '', 'inherit', 'open', 'closed', '', '07310240039511_c1n1-jpeg', '', '', '2019-12-05 13:36:23', '2019-12-05 13:36:23', '', 107, 'http://sheepfriday.test/wp-content/uploads/2019/12/07310240039511_c1n1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 3, '2019-12-05 13:37:41', '2019-12-05 13:37:41', '', 'Chicken Filé', '<img class=\"alignnone size-medium wp-image-167\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" alt=\"\" width=\"300\" height=\"145\" />', 'publish', 'open', 'closed', '', 'chicken-file', '', '', '2019-12-06 09:46:42', '2019-12-06 09:46:42', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=109', 0, 'product', '', 0),
(110, 3, '2019-12-05 13:37:31', '2019-12-05 13:37:31', '', 'minutfile-ca-630g-kronfagel', '', 'inherit', 'open', 'closed', '', 'minutfile-ca-630g-kronfagel', '', '', '2019-12-05 13:37:31', '2019-12-05 13:37:31', '', 109, 'http://sheepfriday.test/wp-content/uploads/2019/12/minutfile-ca-630g-kronfagel.jpeg', 0, 'attachment', 'image/jpeg', 0),
(111, 3, '2019-12-05 13:38:27', '2019-12-05 13:38:27', '', 'Marinated Chicken Filé', '<img class=\"alignnone size-medium wp-image-174\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Final-Nutrition-Label-150dpi-153x300.png\" alt=\"\" width=\"153\" height=\"300\" />', 'publish', 'open', 'closed', '', 'marinated-chicken-file', '', '', '2019-12-06 09:39:20', '2019-12-06 09:39:20', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=111', 0, 'product', '', 0),
(112, 3, '2019-12-05 13:38:20', '2019-12-05 13:38:20', '', 'majskyckling-16', '', 'inherit', 'open', 'closed', '', 'majskyckling-16', '', '', '2019-12-05 13:38:20', '2019-12-05 13:38:20', '', 111, 'http://sheepfriday.test/wp-content/uploads/2019/12/majskyckling-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 3, '2019-12-05 13:39:28', '2019-12-05 13:39:28', '', 'Sliced Smoked Turkey', '<img class=\"alignnone size-medium wp-image-173\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Nutrition-Facts-Label-Sample-162x300.jpg\" alt=\"\" width=\"162\" height=\"300\" />', 'publish', 'open', 'closed', '', 'sliced-smoked-turkey', '', '', '2019-12-06 09:38:15', '2019-12-06 09:38:15', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=113', 0, 'product', '', 0),
(114, 3, '2019-12-05 13:39:11', '2019-12-05 13:39:11', '', '07330797077118_c1c1', '', 'inherit', 'open', 'closed', '', '07330797077118_c1c1', '', '', '2019-12-05 13:39:11', '2019-12-05 13:39:11', '', 113, 'http://sheepfriday.test/wp-content/uploads/2019/12/07330797077118_c1c1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 3, '2019-12-05 13:40:02', '2019-12-05 13:40:02', '', 'Pastrami', '<img class=\"alignnone size-medium wp-image-171\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/inn-300x152.jpg\" alt=\"\" width=\"300\" height=\"152\" />', 'publish', 'open', 'closed', '', 'pastrami', '', '', '2019-12-06 09:36:22', '2019-12-06 09:36:22', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=115', 0, 'product', '', 0),
(116, 3, '2019-12-05 13:39:55', '2019-12-05 13:39:55', '', '07331044075925_c1n1', '', 'inherit', 'open', 'closed', '', '07331044075925_c1n1', '', '', '2019-12-05 13:39:55', '2019-12-05 13:39:55', '', 115, 'http://sheepfriday.test/wp-content/uploads/2019/12/07331044075925_c1n1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `ull_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(117, 3, '2019-12-05 13:40:47', '2019-12-05 13:40:47', '', 'Roast Beef', '<img class=\"alignnone size-medium wp-image-169\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/index-300x122.jpg\" alt=\"\" width=\"300\" height=\"122\" />', 'publish', 'open', 'closed', '', 'roast-beef', '', '', '2019-12-06 09:34:59', '2019-12-06 09:34:59', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=117', 0, 'product', '', 0),
(118, 3, '2019-12-05 13:40:39', '2019-12-05 13:40:39', '', '07340023802575_c1n1.jpeg', '', 'inherit', 'open', 'closed', '', '07340023802575_c1n1-jpeg', '', '', '2019-12-05 13:40:39', '2019-12-05 13:40:39', '', 117, 'http://sheepfriday.test/wp-content/uploads/2019/12/07340023802575_c1n1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 3, '2019-12-05 13:45:35', '2019-12-05 13:45:35', '', 'Sour Cream and Onion', '<img class=\"alignnone size-medium wp-image-167\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" alt=\"\" width=\"300\" height=\"145\" />', 'publish', 'open', 'closed', '', 'sour-cream-and-onion', '', '', '2019-12-06 09:32:40', '2019-12-06 09:32:40', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=119', 0, 'product', '', 0),
(120, 3, '2019-12-05 13:45:15', '2019-12-05 13:45:15', '', 'chips-sourcream-o-onion-maxibag-450g-olw-3', '', 'inherit', 'open', 'closed', '', 'chips-sourcream-o-onion-maxibag-450g-olw-3', '', '', '2019-12-05 13:45:15', '2019-12-05 13:45:15', '', 119, 'http://sheepfriday.test/wp-content/uploads/2019/12/chips-sourcream-o-onion-maxibag-450g-olw-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 3, '2019-12-05 13:46:26', '2019-12-05 13:46:26', '', 'Doritos', '<img class=\"alignnone size-medium wp-image-174\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Final-Nutrition-Label-150dpi-153x300.png\" alt=\"\" width=\"153\" height=\"300\" />', 'publish', 'open', 'closed', '', 'doritos', '', '', '2019-12-06 09:31:12', '2019-12-06 09:31:12', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=121', 0, 'product', '', 0),
(122, 3, '2019-12-05 13:46:09', '2019-12-05 13:46:09', '', '08710398161987_g1n1', '', 'inherit', 'open', 'closed', '', '08710398161987_g1n1', '', '', '2019-12-05 13:46:09', '2019-12-05 13:46:09', '', 121, 'http://sheepfriday.test/wp-content/uploads/2019/12/08710398161987_g1n1.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 3, '2019-12-05 13:47:08', '2019-12-05 13:47:08', '', 'Pringles', '<img class=\"alignnone size-medium wp-image-174\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Final-Nutrition-Label-150dpi-153x300.png\" alt=\"\" width=\"153\" height=\"300\" />', 'publish', 'open', 'closed', '', 'pringles', '', '', '2019-12-06 09:28:31', '2019-12-06 09:28:31', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=123', 0, 'product', '', 0),
(124, 3, '2019-12-05 13:47:00', '2019-12-05 13:47:00', '', '05053990138722_c1n1.jpeg', '', 'inherit', 'open', 'closed', '', '05053990138722_c1n1-jpeg', '', '', '2019-12-05 13:47:00', '2019-12-05 13:47:00', '', 123, 'http://sheepfriday.test/wp-content/uploads/2019/12/05053990138722_c1n1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 3, '2019-12-05 13:47:48', '2019-12-05 13:47:48', '', 'Maribou', '<img class=\"alignnone size-medium wp-image-173\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Nutrition-Facts-Label-Sample-162x300.jpg\" alt=\"\" width=\"162\" height=\"300\" />', 'publish', 'open', 'closed', '', 'maribou', '', '', '2019-12-06 09:27:39', '2019-12-06 09:27:39', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=125', 0, 'product', '', 0),
(126, 3, '2019-12-05 13:47:42', '2019-12-05 13:47:42', '', '07310511210403_c1n0.jpeg', '', 'inherit', 'open', 'closed', '', '07310511210403_c1n0-jpeg', '', '', '2019-12-05 13:47:42', '2019-12-05 13:47:42', '', 125, 'http://sheepfriday.test/wp-content/uploads/2019/12/07310511210403_c1n0.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 3, '2019-12-05 13:48:26', '2019-12-05 13:48:26', '', 'Twix', '<img class=\"alignnone size-medium wp-image-172\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/mjolkfakta-729722-190x300.jpg\" alt=\"\" width=\"190\" height=\"300\" />', 'publish', 'open', 'closed', '', 'twix', '', '', '2019-12-06 09:26:35', '2019-12-06 09:26:35', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=127', 0, 'product', '', 0),
(128, 3, '2019-12-05 13:48:20', '2019-12-05 13:48:20', '', '05000159461313_c1n1', '', 'inherit', 'open', 'closed', '', '05000159461313_c1n1', '', '', '2019-12-05 13:48:20', '2019-12-05 13:48:20', '', 127, 'http://sheepfriday.test/wp-content/uploads/2019/12/05000159461313_c1n1.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 3, '2019-12-05 13:49:07', '2019-12-05 13:49:07', '', 'Gott & Blandat', '<img class=\"alignnone size-medium wp-image-170\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/images-300x127.jpg\" alt=\"\" width=\"300\" height=\"127\" />', 'publish', 'open', 'closed', '', 'gott-blandat', '', '', '2019-12-06 09:25:38', '2019-12-06 09:25:38', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=129', 0, 'product', '', 0),
(130, 3, '2019-12-05 13:49:00', '2019-12-05 13:49:00', '', 'gott-o-blandat-original-550g-malaco', '', 'inherit', 'open', 'closed', '', 'gott-o-blandat-original-550g-malaco', '', '', '2019-12-05 13:49:00', '2019-12-05 13:49:00', '', 129, 'http://sheepfriday.test/wp-content/uploads/2019/12/gott-o-blandat-original-550g-malaco.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 3, '2019-12-05 13:49:43', '2019-12-05 13:49:43', '', 'Tutti Frutti', '<img class=\"alignnone size-medium wp-image-169\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/index-300x122.jpg\" alt=\"\" width=\"300\" height=\"122\" />', 'publish', 'open', 'closed', '', 'tutti-frutti', '', '', '2019-12-06 09:23:36', '2019-12-06 09:23:36', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=131', 0, 'product', '', 0),
(132, 3, '2019-12-05 13:49:37', '2019-12-05 13:49:37', '', '06416453038295_c1n1.jpeg', '', 'inherit', 'open', 'closed', '', '06416453038295_c1n1-jpeg', '', '', '2019-12-05 13:49:37', '2019-12-05 13:49:37', '', 131, 'http://sheepfriday.test/wp-content/uploads/2019/12/06416453038295_c1n1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 3, '2019-12-05 13:50:21', '2019-12-05 13:50:21', '', 'Turkish Pepper', '<img class=\"alignnone size-medium wp-image-167\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" alt=\"\" width=\"300\" height=\"145\" />', 'publish', 'open', 'closed', '', 'turkish-pepper', '', '', '2019-12-06 09:15:04', '2019-12-06 09:15:04', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=133', 0, 'product', '', 0),
(134, 3, '2019-12-05 13:50:13', '2019-12-05 13:50:13', '', 'turkisk-peppar-original-150g-fazer-3', '', 'inherit', 'open', 'closed', '', 'turkisk-peppar-original-150g-fazer-3', '', '', '2019-12-05 13:50:13', '2019-12-05 13:50:13', '', 133, 'http://sheepfriday.test/wp-content/uploads/2019/12/turkisk-peppar-original-150g-fazer-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 3, '2019-12-05 13:50:58', '2019-12-05 13:50:58', '', 'Ben & Jerry\'s', '<img class=\"alignnone size-medium wp-image-174\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Final-Nutrition-Label-150dpi-153x300.png\" alt=\"\" width=\"153\" height=\"300\" />', 'publish', 'open', 'closed', '', 'ben-jerrys', '', '', '2019-12-06 09:11:21', '2019-12-06 09:11:21', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=135', 0, 'product', '', 0),
(136, 3, '2019-12-05 13:50:53', '2019-12-05 13:50:53', '', '00076840600021_c1c1.jpeg', '', 'inherit', 'open', 'closed', '', '00076840600021_c1c1-jpeg', '', '', '2019-12-05 13:50:53', '2019-12-05 13:50:53', '', 135, 'http://sheepfriday.test/wp-content/uploads/2019/12/00076840600021_c1c1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 3, '2019-12-05 13:51:36', '2019-12-05 13:51:36', '', 'NOCCO Miami', '<img class=\"alignnone size-medium wp-image-171\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/inn-300x152.jpg\" alt=\"\" width=\"300\" height=\"152\" />', 'publish', 'open', 'closed', '', 'nocco-miami', '', '', '2019-12-06 09:00:57', '2019-12-06 09:00:57', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=137', 0, 'product', '', 0),
(138, 3, '2019-12-05 13:51:29', '2019-12-05 13:51:29', '', 'energidryck-miami-33cl-nocco-1', '', 'inherit', 'open', 'closed', '', 'energidryck-miami-33cl-nocco-1', '', '', '2019-12-05 13:51:29', '2019-12-05 13:51:29', '', 137, 'http://sheepfriday.test/wp-content/uploads/2019/12/energidryck-miami-33cl-nocco-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 3, '2019-12-05 13:52:20', '2019-12-05 13:52:20', '', 'Bravo Tropic', '<img class=\"alignnone size-medium wp-image-167\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" alt=\"\" width=\"300\" height=\"145\" />', 'publish', 'open', 'closed', '', 'bravo-tropic', '', '', '2019-12-06 08:49:55', '2019-12-06 08:49:55', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=139', 0, 'product', '', 0),
(140, 3, '2019-12-05 13:52:14', '2019-12-05 13:52:14', '', '07310867561020_c1l1.jpeg', '', 'inherit', 'open', 'closed', '', '07310867561020_c1l1-jpeg', '', '', '2019-12-05 13:52:14', '2019-12-05 13:52:14', '', 139, 'http://sheepfriday.test/wp-content/uploads/2019/12/07310867561020_c1l1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 3, '2019-12-05 13:52:55', '2019-12-05 13:52:55', '', 'Orange Juice', '<img class=\"alignnone size-medium wp-image-169\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/index-300x122.jpg\" alt=\"\" width=\"300\" height=\"122\" />', 'publish', 'open', 'closed', '', 'orange-juice', '', '', '2019-12-06 09:00:16', '2019-12-06 09:00:16', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=141', 0, 'product', '', 0),
(142, 3, '2019-12-05 13:52:49', '2019-12-05 13:52:49', '', '05705001432113_c1n1.jpeg', '', 'inherit', 'open', 'closed', '', '05705001432113_c1n1-jpeg', '', '', '2019-12-05 13:52:49', '2019-12-05 13:52:49', '', 141, 'http://sheepfriday.test/wp-content/uploads/2019/12/05705001432113_c1n1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 3, '2019-12-05 13:53:36', '2019-12-05 13:53:36', '', 'Coca-Cola 1.5L', '<img class=\"alignnone size-medium wp-image-169\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/index-300x122.jpg\" alt=\"\" width=\"300\" height=\"122\" />', 'publish', 'open', 'closed', '', 'coca-cola-1-5l', '', '', '2019-12-06 08:51:57', '2019-12-06 08:51:57', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=143', 0, 'product', '', 0),
(144, 3, '2019-12-05 13:53:28', '2019-12-05 13:53:28', '', '05449000133335_g1n1.jpeg', '', 'inherit', 'open', 'closed', '', '05449000133335_g1n1-jpeg', '', '', '2019-12-05 13:53:28', '2019-12-05 13:53:28', '', 143, 'http://sheepfriday.test/wp-content/uploads/2019/12/05449000133335_g1n1.jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 3, '2019-12-05 13:57:12', '2019-12-05 13:57:12', '', 'Blueberries', '<img class=\"alignnone size-medium wp-image-167\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" alt=\"\" width=\"300\" height=\"145\" />', 'publish', 'open', 'closed', '', 'blueberries', '', '', '2019-12-06 08:58:33', '2019-12-06 08:58:33', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 3, '2019-12-05 13:56:47', '2019-12-05 13:56:47', '', 'blabar-125g-klass1-2', '', 'inherit', 'open', 'closed', '', 'blabar-125g-klass1-2', '', '', '2019-12-05 13:56:47', '2019-12-05 13:56:47', '', 145, 'http://sheepfriday.test/wp-content/uploads/2019/12/blabar-125g-klass1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 3, '2019-12-05 13:57:55', '2019-12-05 13:57:55', '', 'Potatoes', '<img class=\"alignnone size-medium wp-image-174\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Final-Nutrition-Label-150dpi-153x300.png\" alt=\"\" width=\"153\" height=\"300\" />', 'publish', 'open', 'closed', '', 'potatos', '', '', '2019-12-06 08:57:41', '2019-12-06 08:57:41', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 3, '2019-12-05 13:57:44', '2019-12-05 13:57:44', '', 'potatis-kokfast-1kg-klass1-2', '', 'inherit', 'open', 'closed', '', 'potatis-kokfast-1kg-klass1-2', '', '', '2019-12-05 13:57:44', '2019-12-05 13:57:44', '', 147, 'http://sheepfriday.test/wp-content/uploads/2019/12/potatis-kokfast-1kg-klass1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 3, '2019-12-05 13:58:42', '2019-12-05 13:58:42', '', 'Broccolli', '<img class=\"alignnone size-medium wp-image-173\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/Nutrition-Facts-Label-Sample-162x300.jpg\" alt=\"\" width=\"162\" height=\"300\" />', 'publish', 'open', 'closed', '', 'broccolli', '', '', '2019-12-06 08:56:49', '2019-12-06 08:56:49', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=149', 0, 'product', '', 0),
(150, 3, '2019-12-05 13:58:36', '2019-12-05 13:58:36', '', 'broccoli-eko-300g-klass1-1', '', 'inherit', 'open', 'closed', '', 'broccoli-eko-300g-klass1-1', '', '', '2019-12-05 13:58:36', '2019-12-05 13:58:36', '', 149, 'http://sheepfriday.test/wp-content/uploads/2019/12/broccoli-eko-300g-klass1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 3, '2019-12-05 13:59:16', '2019-12-05 13:59:16', '', 'Tomatoes', '<img class=\"alignnone size-medium wp-image-172\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/mjolkfakta-729722-190x300.jpg\" alt=\"\" width=\"190\" height=\"300\" />', 'publish', 'open', 'closed', '', 'tomatos', '', '', '2019-12-06 08:56:05', '2019-12-06 08:56:05', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=151', 0, 'product', '', 0),
(152, 3, '2019-12-05 13:59:09', '2019-12-05 13:59:09', '', 'tomat-kvist-eko-500g-klass1-2', '', 'inherit', 'open', 'closed', '', 'tomat-kvist-eko-500g-klass1-2', '', '', '2019-12-05 13:59:09', '2019-12-05 13:59:09', '', 151, 'http://sheepfriday.test/wp-content/uploads/2019/12/tomat-kvist-eko-500g-klass1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 3, '2019-12-05 14:00:05', '2019-12-05 14:00:05', '', 'Grapefruit', '<img class=\"alignnone size-medium wp-image-171\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/inn-300x152.jpg\" alt=\"\" width=\"300\" height=\"152\" />', 'publish', 'open', 'closed', '', 'grapefruit', '', '', '2019-12-06 08:55:23', '2019-12-06 08:55:23', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=153', 0, 'product', '', 0),
(154, 3, '2019-12-05 13:59:58', '2019-12-05 13:59:58', '', 'grapefrukt-rod-klass1-1', '', 'inherit', 'open', 'closed', '', 'grapefrukt-rod-klass1-1', '', '', '2019-12-05 13:59:58', '2019-12-05 13:59:58', '', 153, 'http://sheepfriday.test/wp-content/uploads/2019/12/grapefrukt-rod-klass1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 3, '2019-12-05 14:00:36', '2019-12-05 14:00:36', '', 'Bananas', '<img class=\"alignnone size-medium wp-image-170\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/images-300x127.jpg\" alt=\"\" width=\"300\" height=\"127\" />', 'publish', 'open', 'closed', '', 'bananas', '', '', '2019-12-06 08:53:42', '2019-12-06 08:53:42', '', 0, 'http://sheepfriday.test/?post_type=product&#038;p=155', 0, 'product', '', 0),
(156, 3, '2019-12-05 14:00:32', '2019-12-05 14:00:32', '', 'banan-eko-klass1-4', '', 'inherit', 'open', 'closed', '', 'banan-eko-klass1-4', '', '', '2019-12-05 14:00:32', '2019-12-05 14:00:32', '', 155, 'http://sheepfriday.test/wp-content/uploads/2019/12/banan-eko-klass1-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2019-12-05 14:52:17', '0000-00-00 00:00:00', '', 'ddd', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-05 14:52:17', '0000-00-00 00:00:00', '', 0, 'http://sheepfriday.test/?p=157', 1, 'nav_menu_item', '', 0),
(158, 2, '2019-12-05 16:57:20', '2019-12-05 16:57:20', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><br><em>Phone:</em><br>0418 - 45 33 22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>E-mail</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\"><a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Mobile</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 16:57:20', '2019-12-05 16:57:20', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(159, 2, '2019-12-05 16:57:59', '2019-12-05 16:57:59', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\",\"fontSize\":\"medium\"} -->\n<p class=\"has-background has-medium-font-size has-very-light-gray-background-color\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong><br>0418 - 45 33 22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>E-mail</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\"><a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Mobile</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 16:57:59', '2019-12-05 16:57:59', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(160, 2, '2019-12-05 16:58:26', '2019-12-05 16:58:26', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\",\"fontSize\":\"medium\"} -->\n<p class=\"has-background has-medium-font-size has-very-light-gray-background-color\"><strong>E-mail:</strong> <br><a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>E-mail</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\"><a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Mobile</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 16:58:26', '2019-12-05 16:58:26', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(161, 2, '2019-12-05 16:58:57', '2019-12-05 16:58:57', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\",\"fontSize\":\"medium\"} -->\n<p class=\"has-background has-medium-font-size has-very-light-gray-background-color\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p>[contact-form-7 id=\"59\" title=\"Contact Form\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>E-mail</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\"><a href=\"mailto:kingenalban@gmail.com\">kingenalban@gmail.com</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Mobile</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\">070 436 45 32</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 16:58:57', '2019-12-05 16:58:57', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(163, 2, '2019-12-05 17:16:51', '2019-12-05 17:16:51', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\",\"fontSize\":\"medium\"} -->\n<p class=\"has-background has-medium-font-size has-very-light-gray-background-color\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-05 17:16:51', '2019-12-05 17:16:51', '', 60, 'http://sheepfriday.test/index.php/2019/12/05/60-revision-v1/', 0, 'revision', '', 0),
(164, 2, '2019-12-06 08:37:14', '2019-12-06 08:37:14', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\",\"fontSize\":\"medium\"} -->\n<p class=\"has-background has-medium-font-size has-very-light-gray-background-color\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Kundtjänst har öppet:</strong><br>Mån - Fre 8-22<br>Lördag 8-17<br>Söndag 14-22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-06 08:37:14', '2019-12-06 08:37:14', '', 60, 'http://sheepfriday.test/index.php/2019/12/06/60-revision-v1/', 0, 'revision', '', 0),
(165, 2, '2019-12-06 08:37:48', '2019-12-06 08:37:48', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\",\"fontSize\":\"medium\"} -->\n<p class=\"has-background has-medium-font-size has-very-light-gray-background-color\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"backgroundColor\":\"very-light-gray\"} -->\n<p class=\"has-background has-very-light-gray-background-color\"><strong>Kundtjänst har öppet:</strong><br>Mån - Fre 8-22<br>Lördag 8-17<br>Söndag 14-22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-06 08:37:48', '2019-12-06 08:37:48', '', 60, 'http://sheepfriday.test/index.php/2019/12/06/60-revision-v1/', 0, 'revision', '', 0),
(166, 2, '2019-12-06 08:39:24', '2019-12-06 08:39:24', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\",\"fontSize\":\"medium\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background has-medium-font-size\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background\"><strong>Kundtjänst har öppet:</strong><br>Mån - Fre 8-22<br>Lördag 8-17<br>Söndag 14-22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-06 08:39:24', '2019-12-06 08:39:24', '', 60, 'http://sheepfriday.test/index.php/2019/12/06/60-revision-v1/', 0, 'revision', '', 0),
(167, 3, '2019-12-06 08:48:36', '2019-12-06 08:48:36', '', 'naringsvarde', '', 'inherit', 'open', 'closed', '', 'naringsvarde', '', '', '2019-12-06 08:48:36', '2019-12-06 08:48:36', '', 139, 'http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 3, '2019-12-06 08:48:44', '2019-12-06 08:48:44', '<img class=\"alignnone size-medium wp-image-167\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" alt=\"\" width=\"300\" height=\"145\" />', 'Bravo Tropic', '', 'inherit', 'closed', 'closed', '', '139-autosave-v1', '', '', '2019-12-06 08:48:44', '2019-12-06 08:48:44', '', 139, 'http://sheepfriday.test/index.php/2019/12/06/139-autosave-v1/', 0, 'revision', '', 0),
(169, 3, '2019-12-06 08:51:43', '2019-12-06 08:51:43', '', 'index', '', 'inherit', 'open', 'closed', '', 'index', '', '', '2019-12-06 08:51:43', '2019-12-06 08:51:43', '', 143, 'http://sheepfriday.test/wp-content/uploads/2019/12/index.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 3, '2019-12-06 08:53:04', '2019-12-06 08:53:04', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2019-12-06 08:53:04', '2019-12-06 08:53:04', '', 155, 'http://sheepfriday.test/wp-content/uploads/2019/12/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 3, '2019-12-06 08:53:08', '2019-12-06 08:53:08', '', 'inn', '', 'inherit', 'open', 'closed', '', 'inn', '', '', '2019-12-06 08:53:08', '2019-12-06 08:53:08', '', 155, 'http://sheepfriday.test/wp-content/uploads/2019/12/inn.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 3, '2019-12-06 08:53:12', '2019-12-06 08:53:12', '', 'mjolkfakta-729722', '', 'inherit', 'open', 'closed', '', 'mjolkfakta-729722', '', '', '2019-12-06 08:53:12', '2019-12-06 08:53:12', '', 155, 'http://sheepfriday.test/wp-content/uploads/2019/12/mjolkfakta-729722.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 3, '2019-12-06 08:53:17', '2019-12-06 08:53:17', '', 'Nutrition-Facts-Label-Sample', '', 'inherit', 'open', 'closed', '', 'nutrition-facts-label-sample', '', '', '2019-12-06 08:53:17', '2019-12-06 08:53:17', '', 155, 'http://sheepfriday.test/wp-content/uploads/2019/12/Nutrition-Facts-Label-Sample.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 3, '2019-12-06 08:53:20', '2019-12-06 08:53:20', '', 'Final-Nutrition-Label-150dpi', '', 'inherit', 'open', 'closed', '', 'final-nutrition-label-150dpi', '', '', '2019-12-06 08:53:20', '2019-12-06 08:53:20', '', 155, 'http://sheepfriday.test/wp-content/uploads/2019/12/Final-Nutrition-Label-150dpi.png', 0, 'attachment', 'image/png', 0),
(175, 2, '2019-12-06 08:56:36', '2019-12-06 08:56:36', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\",\"fontSize\":\"medium\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background has-medium-font-size\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background\"><strong>Opening Hours:</strong><br><br>Customer Support<br>Mon - Fri 8-22<br>Saturday 8-17<br>Sunday 14-22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-06 08:56:36', '2019-12-06 08:56:36', '', 60, 'http://sheepfriday.test/index.php/2019/12/06/60-revision-v1/', 0, 'revision', '', 0),
(176, 2, '2019-12-06 08:56:57', '2019-12-06 08:56:57', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\",\"fontSize\":\"medium\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background has-medium-font-size\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background\"><strong>Opening Hours:</strong><br>Customer Support<br>Mon - Fri 8-22<br>Saturday 8-17<br>Sunday 14-22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-06 08:56:57', '2019-12-06 08:56:57', '', 60, 'http://sheepfriday.test/index.php/2019/12/06/60-revision-v1/', 0, 'revision', '', 0),
(177, 2, '2019-12-06 08:57:14', '2019-12-06 08:57:14', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":66.66} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.66%\"><!-- wp:paragraph -->\n<p> [contact-form-7 id=\"59\" title=\"Contact Form\"] </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":33.33} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.33%\"><!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\",\"fontSize\":\"medium\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background has-medium-font-size\"><strong>E-mail:</strong> <a href=\"mailto:support@sheepfriday.test\">support@sheepfriday.test</a><br><br><strong>Phone:</strong> 0418 - 45 33 22</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customBackgroundColor\":\"#f1f1f1\"} -->\n<p style=\"background-color:#f1f1f1\" class=\"has-background\"><strong>Opening Hours:</strong><br><br>Customer Support<br>Mon - Fri 8-22<br>Saturday 8-17<br>Sunday 14-22</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2019-12-06 08:57:14', '2019-12-06 08:57:14', '', 60, 'http://sheepfriday.test/index.php/2019/12/06/60-revision-v1/', 0, 'revision', '', 0),
(178, 3, '2019-12-06 09:18:11', '2019-12-06 09:18:11', '', 'Turkish Pepper', '<p><img class=\"alignnone size-medium wp-image-167\" src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" alt=\"\" data-mce-src=\"http://sheepfriday.test/wp-content/uploads/2019/12/naringsvarde-300x145.jpg\" width=\"300\" height=\"145\"></p>', 'inherit', 'closed', 'closed', '', '133-autosave-v1', '', '', '2019-12-06 09:18:11', '2019-12-06 09:18:11', '', 133, 'http://sheepfriday.test/index.php/2019/12/06/133-autosave-v1/', 0, 'revision', '', 0),
(183, 2, '2019-12-06 12:31:06', '2019-12-06 12:31:06', '', 'FAQs', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2019-12-06 12:31:06', '2019-12-06 12:31:06', '', 0, 'http://sheepfriday.test/?page_id=183', 0, 'page', '', 0),
(184, 2, '2019-12-06 12:31:06', '2019-12-06 12:31:06', '', 'FAQs', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-12-06 12:31:06', '2019-12-06 12:31:06', '', 183, 'http://sheepfriday.test/index.php/2019/12/06/183-revision-v1/', 0, 'revision', '', 0),
(185, 2, '2019-12-06 13:09:02', '2019-12-06 13:09:02', '', 'Contact', '', 'publish', 'closed', 'closed', '', '185', '', '', '2019-12-07 20:21:36', '2019-12-07 20:21:36', '', 0, 'http://sheepfriday.test/?p=185', 3, 'nav_menu_item', '', 0),
(186, 1, '2019-12-06 13:15:29', '2019-12-06 13:15:29', '', 'sheepyhunkyfriday', '', 'inherit', 'open', 'closed', '', 'sheepyhunkyfriday', '', '', '2019-12-06 13:15:29', '2019-12-06 13:15:29', '', 0, 'http://sheepfriday.test/wp-content/uploads/2019/12/sheepyhunkyfriday.png', 0, 'attachment', 'image/png', 0),
(187, 1, '2019-12-06 13:16:27', '2019-12-06 13:16:27', '{\n    \"understrap::custom_logo\": {\n        \"value\": 186,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-12-06 13:16:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fd4da1f0-8329-4343-8b6d-7e185070ecc6', '', '', '2019-12-06 13:16:27', '2019-12-06 13:16:27', '', 0, 'http://sheepfriday.test/index.php/2019/12/06/fd4da1f0-8329-4343-8b6d-7e185070ecc6/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_termmeta`
--

CREATE TABLE `ull_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_termmeta`
--

INSERT INTO `ull_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 17, 'order', '0'),
(3, 17, 'display_type', ''),
(4, 17, 'thumbnail_id', '0'),
(5, 18, 'order', '0'),
(6, 18, 'display_type', ''),
(7, 18, 'thumbnail_id', '0'),
(8, 19, 'order', '0'),
(9, 19, 'display_type', ''),
(10, 19, 'thumbnail_id', '0'),
(11, 20, 'order', '0'),
(12, 20, 'display_type', ''),
(13, 20, 'thumbnail_id', '0'),
(14, 21, 'order', '0'),
(15, 21, 'display_type', ''),
(16, 21, 'thumbnail_id', '0'),
(17, 22, 'order', '0'),
(18, 22, 'display_type', ''),
(19, 22, 'thumbnail_id', '0'),
(20, 19, 'product_count_product_cat', '4'),
(21, 18, 'product_count_product_cat', '5'),
(22, 20, 'product_count_product_cat', '8'),
(23, 22, 'product_count_product_cat', '9'),
(24, 21, 'product_count_product_cat', '4'),
(25, 17, 'product_count_product_cat', '6'),
(26, 23, 'order', '0'),
(27, 23, 'display_type', ''),
(28, 23, 'thumbnail_id', '0'),
(29, 24, 'order', '0'),
(30, 24, 'display_type', ''),
(31, 24, 'thumbnail_id', '0'),
(32, 25, 'order', '0'),
(33, 25, 'display_type', ''),
(34, 25, 'thumbnail_id', '0'),
(35, 26, 'order', '0'),
(36, 26, 'display_type', ''),
(37, 26, 'thumbnail_id', '0'),
(38, 27, 'order', '0'),
(39, 27, 'display_type', ''),
(40, 27, 'thumbnail_id', '0'),
(41, 28, 'order', '0'),
(42, 28, 'display_type', ''),
(43, 28, 'thumbnail_id', '0'),
(44, 29, 'order', '0'),
(45, 29, 'display_type', ''),
(46, 29, 'thumbnail_id', '0'),
(47, 30, 'order', '0'),
(48, 30, 'display_type', ''),
(49, 30, 'thumbnail_id', '0'),
(50, 31, 'order', '0'),
(51, 31, 'display_type', ''),
(52, 31, 'thumbnail_id', '0'),
(53, 32, 'order', '0'),
(54, 32, 'display_type', ''),
(55, 32, 'thumbnail_id', '0'),
(56, 33, 'order', '0'),
(57, 33, 'display_type', ''),
(58, 33, 'thumbnail_id', '0'),
(59, 34, 'order', '0'),
(60, 34, 'display_type', ''),
(61, 34, 'thumbnail_id', '0'),
(62, 35, 'order', '0'),
(63, 35, 'display_type', ''),
(64, 35, 'thumbnail_id', '0'),
(65, 36, 'order', '0'),
(66, 36, 'display_type', ''),
(67, 36, 'thumbnail_id', '0'),
(68, 37, 'order', '0'),
(69, 37, 'display_type', ''),
(70, 37, 'thumbnail_id', '0'),
(71, 38, 'order', '0'),
(72, 38, 'display_type', ''),
(73, 38, 'thumbnail_id', '0'),
(74, 39, 'order', '0'),
(75, 39, 'display_type', ''),
(76, 39, 'thumbnail_id', '0'),
(77, 32, 'product_count_product_cat', '5'),
(78, 31, 'product_count_product_cat', '1'),
(79, 29, 'product_count_product_cat', '1'),
(80, 28, 'product_count_product_cat', '2'),
(81, 30, 'product_count_product_cat', '1'),
(82, 40, 'order', '0'),
(83, 40, 'display_type', ''),
(84, 40, 'thumbnail_id', '0'),
(85, 40, 'product_count_product_cat', '1'),
(86, 23, 'product_count_product_cat', '3'),
(87, 25, 'product_count_product_cat', '2'),
(88, 24, 'product_count_product_cat', '3'),
(89, 36, 'product_count_product_cat', '3'),
(90, 33, 'product_count_product_cat', '2'),
(91, 34, 'product_count_product_cat', '2'),
(92, 35, 'product_count_product_cat', '1'),
(93, 37, 'product_count_product_cat', '2'),
(94, 39, 'product_count_product_cat', '2'),
(95, 38, 'product_count_product_cat', '1'),
(96, 26, 'product_count_product_cat', '3'),
(97, 27, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_terms`
--

CREATE TABLE `ull_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_terms`
--

INSERT INTO `ull_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Main menu', 'main-menu', 0),
(17, 'Fruit &amp; Vegetables', 'fruit-vegetables', 0),
(18, 'Milk Products', 'milk-products', 0),
(19, 'Baked Goods', 'baked-goods', 0),
(20, 'Meat', 'meat', 0),
(21, 'Drinks', 'drinks', 0),
(22, 'Snacks', 'snacks', 0),
(23, 'Candy', 'candy', 0),
(24, 'Chips', 'chips', 0),
(25, 'Chocolate', 'chocolate', 0),
(26, 'Sliced Bread', 'sliced-bread', 0),
(27, 'Other', 'other-baked-goods', 0),
(28, 'Juices', 'juices', 0),
(29, 'Soda', 'soda', 0),
(30, 'Energy', 'energy', 0),
(31, 'Vegetables', 'vegetables', 0),
(32, 'Fruit', 'fruit', 0),
(33, 'Poultry', 'poultry', 0),
(34, 'Beef', 'beef', 0),
(35, 'Sausages', 'sausages', 0),
(36, 'Toppings', 'toppings-meat', 0),
(37, 'Cheese', 'cheese', 0),
(38, 'Drinkable', 'drinkable', 0),
(39, 'Other', 'other-milk-products', 0),
(40, 'Other', 'other-snacks', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_term_relationships`
--

CREATE TABLE `ull_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_term_relationships`
--

INSERT INTO `ull_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(51, 16, 0),
(53, 16, 0),
(58, 2, 0),
(58, 15, 0),
(65, 2, 0),
(65, 19, 0),
(65, 26, 0),
(84, 2, 0),
(84, 19, 0),
(84, 27, 0),
(85, 2, 0),
(85, 19, 0),
(85, 26, 0),
(86, 2, 0),
(86, 19, 0),
(86, 26, 0),
(87, 2, 0),
(87, 19, 0),
(87, 26, 0),
(88, 2, 0),
(88, 18, 0),
(88, 39, 0),
(89, 2, 0),
(89, 18, 0),
(89, 38, 0),
(90, 2, 0),
(90, 9, 0),
(90, 18, 0),
(90, 39, 0),
(91, 2, 0),
(91, 18, 0),
(91, 37, 0),
(92, 2, 0),
(92, 18, 0),
(92, 37, 0),
(103, 2, 0),
(103, 20, 0),
(103, 34, 0),
(105, 2, 0),
(105, 20, 0),
(105, 35, 0),
(107, 2, 0),
(107, 20, 0),
(107, 34, 0),
(109, 2, 0),
(109, 9, 0),
(109, 20, 0),
(109, 33, 0),
(111, 2, 0),
(111, 20, 0),
(111, 33, 0),
(113, 2, 0),
(113, 20, 0),
(113, 36, 0),
(115, 2, 0),
(115, 20, 0),
(115, 36, 0),
(117, 2, 0),
(117, 20, 0),
(117, 36, 0),
(119, 2, 0),
(119, 22, 0),
(119, 24, 0),
(121, 2, 0),
(121, 22, 0),
(121, 24, 0),
(123, 2, 0),
(123, 22, 0),
(123, 24, 0),
(125, 2, 0),
(125, 22, 0),
(125, 25, 0),
(127, 2, 0),
(127, 22, 0),
(127, 25, 0),
(129, 2, 0),
(129, 22, 0),
(129, 23, 0),
(131, 2, 0),
(131, 22, 0),
(131, 23, 0),
(133, 2, 0),
(133, 22, 0),
(133, 23, 0),
(135, 2, 0),
(135, 22, 0),
(135, 40, 0),
(137, 2, 0),
(137, 21, 0),
(137, 30, 0),
(139, 2, 0),
(139, 21, 0),
(139, 28, 0),
(141, 2, 0),
(141, 21, 0),
(141, 28, 0),
(143, 2, 0),
(143, 21, 0),
(143, 29, 0),
(145, 2, 0),
(145, 9, 0),
(145, 17, 0),
(145, 32, 0),
(147, 2, 0),
(147, 17, 0),
(147, 31, 0),
(149, 2, 0),
(149, 17, 0),
(149, 32, 0),
(151, 2, 0),
(151, 17, 0),
(151, 32, 0),
(153, 2, 0),
(153, 17, 0),
(153, 32, 0),
(155, 2, 0),
(155, 17, 0),
(155, 32, 0),
(185, 16, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_term_taxonomy`
--

CREATE TABLE `ull_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_term_taxonomy`
--

INSERT INTO `ull_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 36),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 3),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 3),
(17, 17, 'product_cat', '', 0, 6),
(18, 18, 'product_cat', '', 0, 5),
(19, 19, 'product_cat', '', 0, 4),
(20, 20, 'product_cat', '', 0, 8),
(21, 21, 'product_cat', '', 0, 4),
(22, 22, 'product_cat', '', 0, 9),
(23, 23, 'product_cat', '', 22, 3),
(24, 24, 'product_cat', '', 22, 3),
(25, 25, 'product_cat', '', 22, 2),
(26, 26, 'product_cat', '', 19, 3),
(27, 27, 'product_cat', '', 19, 1),
(28, 28, 'product_cat', '', 21, 2),
(29, 29, 'product_cat', '', 21, 1),
(30, 30, 'product_cat', '', 21, 1),
(31, 31, 'product_cat', '', 17, 1),
(32, 32, 'product_cat', '', 17, 5),
(33, 33, 'product_cat', '', 20, 2),
(34, 34, 'product_cat', '', 20, 2),
(35, 35, 'product_cat', '', 20, 1),
(36, 36, 'product_cat', '', 20, 3),
(37, 37, 'product_cat', '', 18, 2),
(38, 38, 'product_cat', '', 18, 1),
(39, 39, 'product_cat', '', 18, 2),
(40, 40, 'product_cat', '', 22, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_usermeta`
--

CREATE TABLE `ull_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_usermeta`
--

INSERT INTO `ull_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'shaunthesheep'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'ull_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ull_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"9912c82cd094c7f0fd9e02ed76e3aaa746ebdf11de3f4f0490bcfe546f690e58\";a:4:{s:10:\"expiration\";i:1576492914;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1575283314;}s:64:\"8cd967c71780a12fd2d5bca250c18f9099e21f6906133c859d7659998b825cb0\";a:4:{s:10:\"expiration\";i:1576510568;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1575300968;}s:64:\"70947142e3512f8bb83011f459a39d98b9036cbc466f153350b9831c667b6934\";a:4:{s:10:\"expiration\";i:1575970119;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575797319;}}'),
(17, 1, 'ull_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:576u8jrlNAvDZqRwI8g+ncUk'),
(19, 1, 'dismissed_wc_admin_notice', '1'),
(20, 1, 'wc_last_active', '1575849600'),
(23, 1, 'wfls-last-login', '1575379265'),
(24, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(27, 1, 'jetpack_tracks_anon_id', 'jetpack:zW2Von3328+uDV8XQf/Chh6s'),
(28, 2, 'nickname', 'ak'),
(29, 2, 'first_name', ''),
(30, 2, 'last_name', ''),
(31, 2, 'description', ''),
(32, 2, 'rich_editing', 'true'),
(33, 2, 'syntax_highlighting', 'true'),
(34, 2, 'comment_shortcuts', 'false'),
(35, 2, 'admin_color', 'fresh'),
(36, 2, 'use_ssl', '0'),
(37, 2, 'show_admin_bar_front', 'true'),
(38, 2, 'locale', ''),
(39, 2, 'ull_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(40, 2, 'ull_user_level', '10'),
(41, 2, 'dismissed_wp_pointers', ''),
(42, 2, 'last_update', '1575387727'),
(43, 3, 'nickname', 'ch'),
(44, 3, 'first_name', ''),
(45, 3, 'last_name', ''),
(46, 3, 'description', ''),
(47, 3, 'rich_editing', 'true'),
(48, 3, 'syntax_highlighting', 'true'),
(49, 3, 'comment_shortcuts', 'false'),
(50, 3, 'admin_color', 'fresh'),
(51, 3, 'use_ssl', '0'),
(52, 3, 'show_admin_bar_front', 'true'),
(53, 3, 'locale', ''),
(54, 3, 'ull_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(55, 3, 'ull_user_level', '10'),
(56, 3, 'dismissed_wp_pointers', ''),
(57, 3, 'last_update', '1575387846'),
(59, 3, 'session_tokens', 'a:1:{s:64:\"9e9b9bcdc85c622feefdea66418a12dfbe5b17f5095121efcbefc94bed3d3b01\";a:4:{s:10:\"expiration\";i:1576599263;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1575389663;}}'),
(60, 3, 'wc_last_active', '1575590400'),
(62, 3, 'wfls-last-login', '1575389711'),
(63, 3, 'ull_dashboard_quick_press_last_post_id', '17'),
(64, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(65, 4, 'nickname', 'fo'),
(66, 4, 'first_name', ''),
(67, 4, 'last_name', ''),
(68, 4, 'description', ''),
(69, 4, 'rich_editing', 'true'),
(70, 4, 'syntax_highlighting', 'true'),
(71, 4, 'comment_shortcuts', 'false'),
(72, 4, 'admin_color', 'fresh'),
(73, 4, 'use_ssl', '0'),
(74, 4, 'show_admin_bar_front', 'true'),
(75, 4, 'locale', ''),
(76, 4, 'ull_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(77, 4, 'ull_user_level', '10'),
(78, 4, 'dismissed_wp_pointers', ''),
(79, 4, 'last_update', '1575391198'),
(80, 4, 'billing_first_name', ''),
(81, 4, 'billing_last_name', ''),
(82, 4, 'billing_company', ''),
(83, 4, 'billing_address_1', ''),
(84, 4, 'billing_address_2', ''),
(85, 4, 'billing_city', ''),
(86, 4, 'billing_postcode', ''),
(87, 4, 'billing_country', ''),
(88, 4, 'billing_state', ''),
(89, 4, 'billing_phone', ''),
(90, 4, 'billing_email', 'Fabtasticdesign@live.se'),
(91, 4, 'shipping_first_name', ''),
(92, 4, 'shipping_last_name', ''),
(93, 4, 'shipping_company', ''),
(94, 4, 'shipping_address_1', ''),
(95, 4, 'shipping_address_2', ''),
(96, 4, 'shipping_city', ''),
(97, 4, 'shipping_postcode', ''),
(98, 4, 'shipping_country', ''),
(99, 4, 'shipping_state', ''),
(101, 2, 'session_tokens', 'a:4:{s:64:\"b35c8fefed0abe253f29cae6c5cea68b0eab684a893fad14c125c85c66addb2c\";a:4:{s:10:\"expiration\";i:1575714904;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575542104;}s:64:\"47391587f7674a082ab3f3acc8e14e8351bfc9ba608e1d094a14df6b8ed1a9b0\";a:4:{s:10:\"expiration\";i:1575736054;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575563254;}s:64:\"69e654d85be69736b9e5a6b1c39328dfcf3ef99d5148a927ca9996148aca521c\";a:4:{s:10:\"expiration\";i:1575793926;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575621126;}s:64:\"c8f4f38a8e447ada2a5ac0e0a3782e915219d449983296b5633ded8559e23abb\";a:4:{s:10:\"expiration\";i:1575806698;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575633898;}}'),
(102, 2, 'wc_last_active', '1575590400'),
(104, 2, 'wfls-last-login', '1575408918'),
(105, 2, '_woocommerce_tracks_anon_id', 'woo:/ACnuvLOzh+KECvwtZTlhtch'),
(106, 2, 'ull_dashboard_quick_press_last_post_id', '20'),
(107, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(108, 4, 'session_tokens', 'a:3:{s:64:\"e855728620e027665e5357c5c591f9627b19b72fb5d9d4ff36cb90453e8e8f19\";a:4:{s:10:\"expiration\";i:1576659446;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575449846;}s:64:\"f01aa036eab025ba6ea1bd716f6142efbab3a126c7975aa8c42d00bc243de37b\";a:4:{s:10:\"expiration\";i:1575711479;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575538679;}s:64:\"4f70e1c521f0e5abc313414ebacc1d7c4fa2753b39d0cb6f7db5cabee5bf0422\";a:4:{s:10:\"expiration\";i:1575713738;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1575540938;}}'),
(109, 4, 'wc_last_active', '1575590400'),
(111, 4, 'jetpack_tracks_anon_id', 'jetpack:tscs3jRf1R+gJZl2XBXo6QVJ'),
(112, 4, 'ull_dashboard_quick_press_last_post_id', '22'),
(113, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(114, 3, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(115, 3, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(116, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(117, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(118, 1, 'nav_menu_recently_edited', '16'),
(122, 3, 'ull_user-settings', 'libraryContent=browse'),
(123, 3, 'ull_user-settings-time', '1575546713'),
(128, 2, 'nav_menu_recently_edited', '16'),
(129, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(130, 2, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:21:\"add-post-type-product\";i:1;s:17:\"add-post-type-faq\";i:2;s:12:\"add-post_tag\";i:3;s:15:\"add-post_format\";i:4;s:15:\"add-product_cat\";i:5;s:15:\"add-product_tag\";}'),
(131, 1, 'ull_user-settings', 'libraryContent=browse'),
(132, 1, 'ull_user-settings-time', '1575749596'),
(134, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"7f1de29e6da19d22b51c68001e7e0e54\";a:11:{s:3:\"key\";s:32:\"7f1de29e6da19d22b51c68001e7e0e54\";s:10:\"product_id\";i:135;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:30;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:30;s:8:\"line_tax\";i:0;}s:32:\"3ef815416f775098fe977004015c6193\";a:6:{s:3:\"key\";s:32:\"3ef815416f775098fe977004015c6193\";s:10:\"product_id\";i:85;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_users`
--

CREATE TABLE `ull_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_users`
--

INSERT INTO `ull_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hb', '$P$BYuPjgXTmztrOrnbBjDcWBEf3sORze/', 'hb', 'Hanna.berg93@gmail.com', '', '2019-12-01 19:45:50', '', 0, 'hb'),
(2, 'ak', '$P$Bl1Jq5qqNAPw958a8j9nL6uDUtm1kY.', 'ak', 'kingenalban@gmail.com', '', '2019-12-03 15:42:06', '1575387727:$P$BHO/rzOjD6ctoKpYXSuncguDhz/F9g0', 0, 'ak'),
(3, 'ch', '$P$BLVTm3YeoFpjrevNMjdd7ZuBBtjNG91', 'ch', 'christofer.haglund@outlook.com', '', '2019-12-03 15:44:05', '1575387846:$P$BfN5aJr0kEgtb/AchHW.0JtFiZ4Aje0', 0, 'ch'),
(4, 'fo', '$P$BLJI5vtJNSdDSK6C3BkJGFkjo5NUDM0', 'fo', 'Fabtasticdesign@live.se', '', '2019-12-03 16:28:33', '1575390514:$P$BcKZ06YF.fcDSNy4sdba0sLl87Mtg7/', 0, 'fo');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wc_download_log`
--

CREATE TABLE `ull_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wc_product_meta_lookup`
--

CREATE TABLE `ull_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_wc_product_meta_lookup`
--

INSERT INTO `ull_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(58, '', 0, 0, '10.00', '10.00', 0, NULL, 'instock', 0, '0.00', 0),
(65, '', 0, 0, '22.00', '22.00', 0, NULL, 'instock', 0, '0.00', 0),
(84, '', 0, 0, '15.00', '15.00', 0, NULL, 'instock', 0, '0.00', 0),
(85, '', 0, 0, '24.00', '24.00', 1, NULL, 'instock', 0, '0.00', 0),
(86, '', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(87, '', 0, 0, '10.00', '10.00', 1, NULL, 'instock', 0, '0.00', 0),
(88, '', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(89, '', 0, 0, '25.00', '25.00', 0, NULL, 'instock', 0, '0.00', 0),
(90, '', 0, 0, '18.00', '18.00', 1, NULL, 'outofstock', 0, '0.00', 0),
(91, '', 0, 0, '35.00', '35.00', 0, NULL, 'instock', 0, '0.00', 0),
(92, '', 0, 0, '30.00', '30.00', 0, NULL, 'instock', 0, '0.00', 0),
(103, '', 0, 0, '70.00', '70.00', 0, NULL, 'instock', 0, '0.00', 0),
(105, '', 0, 0, '40.00', '40.00', 1, NULL, 'instock', 0, '0.00', 0),
(107, '', 0, 0, '58.00', '58.00', 0, NULL, 'instock', 0, '0.00', 0),
(109, '', 0, 0, '70.00', '70.00', 0, NULL, 'outofstock', 0, '0.00', 0),
(111, '', 0, 0, '80.00', '80.00', 0, NULL, 'instock', 0, '0.00', 0),
(113, '', 0, 0, '39.00', '39.00', 0, NULL, 'instock', 0, '0.00', 0),
(115, '', 0, 0, '45.00', '45.00', 0, NULL, 'instock', 0, '0.00', 0),
(117, '', 0, 0, '53.00', '53.00', 0, NULL, 'instock', 0, '0.00', 0),
(119, '', 0, 0, '19.00', '19.00', 0, NULL, 'instock', 0, '0.00', 0),
(121, '', 0, 0, '22.00', '22.00', 0, NULL, 'instock', 0, '0.00', 0),
(123, '', 0, 0, '15.00', '15.00', 0, NULL, 'instock', 0, '0.00', 0),
(125, '', 0, 0, '20.00', '20.00', 0, NULL, 'instock', 0, '0.00', 0),
(127, '', 0, 0, '20.00', '20.00', 1, NULL, 'instock', 0, '0.00', 0),
(129, '', 0, 0, '18.00', '18.00', 0, NULL, 'instock', 0, '0.00', 0),
(131, '', 0, 0, '19.00', '19.00', 0, NULL, 'instock', 0, '0.00', 0),
(133, '', 0, 0, '22.00', '22.00', 0, NULL, 'instock', 0, '0.00', 0),
(135, '', 0, 0, '30.00', '30.00', 1, NULL, 'instock', 0, '0.00', 0),
(137, '', 0, 0, '12.00', '12.00', 0, NULL, 'instock', 0, '0.00', 0),
(139, '', 0, 0, '25.00', '25.00', 1, NULL, 'instock', 0, '0.00', 0),
(141, '', 0, 0, '30.00', '30.00', 0, NULL, 'instock', 0, '0.00', 0),
(143, '', 0, 0, '21.00', '21.00', 0, NULL, 'instock', 0, '0.00', 0),
(145, '', 0, 0, '25.00', '25.00', 0, NULL, 'outofstock', 0, '0.00', 0),
(147, '', 0, 0, '25.00', '25.00', 1, NULL, 'instock', 0, '0.00', 0),
(149, '', 0, 0, '8.00', '8.00', 1, NULL, 'instock', 0, '0.00', 0),
(151, '', 0, 0, '14.00', '14.00', 0, NULL, 'instock', 0, '0.00', 0),
(153, '', 0, 0, '16.00', '16.00', 0, NULL, 'instock', 0, '0.00', 0),
(155, '', 0, 0, '13.00', '13.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wc_tax_rate_classes`
--

CREATE TABLE `ull_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_wc_tax_rate_classes`
--

INSERT INTO `ull_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wc_webhooks`
--

CREATE TABLE `ull_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfblockediplog`
--

CREATE TABLE `ull_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfblocks7`
--

CREATE TABLE `ull_wfblocks7` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT 0,
  `blockedHits` int(10) UNSIGNED DEFAULT 0,
  `expiration` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfconfig`
--

CREATE TABLE `ull_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wfconfig`
--

INSERT INTO `ull_wfconfig` (`name`, `val`, `autoload`) VALUES
('activatingIP', 0x3a3a31, 'yes'),
('actUpdateInterval', 0x32, 'yes'),
('addCacheComment', 0x30, 'yes'),
('adminNoticeQueue', 0x613a303a7b7d, 'yes'),
('adminUserList', 0x613a343a7b693a323b693a313b693a313b693a313b693a333b693a313b693a343b693a313b7d, 'yes'),
('advancedCommentScanning', 0x31, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('alertEmails', 0x6368726973746f6665722e6861676c756e64406f75746c6f6f6b2e636f6d, 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_breachLogin', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_scanIssues', 0x31, 'yes'),
('alertOn_severityLevel', 0x3235, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_wafDeactivated', 0x31, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('allowed404s6116Migration', 0x31, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('allowLegacy2FA', 0x30, 'yes'),
('allowMySQLi', 0x31, 'yes'),
('allScansScheduled', 0x613a323a7b693a303b613a323a7b733a393a2274696d657374616d70223b693a313537353532363230303b733a343a2261726773223b613a313a7b693a303b693a313537353532363230303b7d7d693a313b613a323a7b733a393a2274696d657374616d70223b693a313537353738353430303b733a343a2261726773223b613a313a7b693a303b693a313537353738353430303b7d7d7d, 'yes'),
('apiKey', 0x37393062313865383361353835343439373565356132663930616131326665353962326165643038323964366433313535316438646238373764646331343436316532396430653665346235396664633530393362623136613764613432343530323061616232353239383564303866373563386164643233313362336135633834333730373538636433643931636465316338386335393537326261316432, 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('autoUpdate', 0x30, 'yes'),
('autoUpdateAttempts', 0x30, 'yes'),
('bannedURLs', '', 'yes'),
('betaThreatDefenseFeed', 0x30, 'yes'),
('blockCustomText', '', 'yes'),
('blockedTime', 0x333030, 'yes'),
('blockFakeBots', 0x30, 'yes'),
('blocks702Migration', 0x31, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', 0x35646535303365346238623338, 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('checkSpamIP', 0x31, 'yes'),
('config701Migration', 0x31, 'yes'),
('config720Migration', 0x31, 'yes'),
('currentCronKey', '', 'yes'),
('dashboardData', 0x613a343a7b733a393a2267656e657261746564223b693a313537353338333532313b733a333a22746466223b613a333a7b733a393a22636f6d6d756e697479223b693a353731303b733a373a227072656d69756d223b693a353731313b733a393a22626c61636b6c697374223b693a31313939343b7d733a31303a2261747461636b64617461223b613a333a7b733a333a22323468223b613a32343a7b693a303b613a323a7b733a313a2274223b693a313537353239353230303b733a313a2263223b693a343237383835373b7d693a313b613a323a7b733a313a2274223b693a313537353239383830303b733a313a2263223b693a343136343837303b7d693a323b613a323a7b733a313a2274223b693a313537353330323430303b733a313a2263223b693a343230323737373b7d693a333b613a323a7b733a313a2274223b693a313537353330363030303b733a313a2263223b693a343031343131343b7d693a343b613a323a7b733a313a2274223b693a313537353330393630303b733a313a2263223b693a343030383937363b7d693a353b613a323a7b733a313a2274223b693a313537353331333230303b733a313a2263223b693a343335393537363b7d693a363b613a323a7b733a313a2274223b693a313537353331363830303b733a313a2263223b693a343331333230343b7d693a373b613a323a7b733a313a2274223b693a313537353332303430303b733a313a2263223b693a343234323138303b7d693a383b613a323a7b733a313a2274223b693a313537353332343030303b733a313a2263223b693a343138333439363b7d693a393b613a323a7b733a313a2274223b693a313537353332373630303b733a313a2263223b693a343138383631353b7d693a31303b613a323a7b733a313a2274223b693a313537353333313230303b733a313a2263223b693a343330353535363b7d693a31313b613a323a7b733a313a2274223b693a313537353333343830303b733a313a2263223b693a343339383635373b7d693a31323b613a323a7b733a313a2274223b693a313537353333383430303b733a313a2263223b693a343338323531353b7d693a31333b613a323a7b733a313a2274223b693a313537353334323030303b733a313a2263223b693a343433303035353b7d693a31343b613a323a7b733a313a2274223b693a313537353334353630303b733a313a2263223b693a343531313434333b7d693a31353b613a323a7b733a313a2274223b693a313537353334393230303b733a313a2263223b693a343436303130313b7d693a31363b613a323a7b733a313a2274223b693a313537353335323830303b733a313a2263223b693a343335323636353b7d693a31373b613a323a7b733a313a2274223b693a313537353335363430303b733a313a2263223b693a343333353131303b7d693a31383b613a323a7b733a313a2274223b693a313537353336303030303b733a313a2263223b693a343330333436353b7d693a31393b613a323a7b733a313a2274223b693a313537353336333630303b733a313a2263223b693a343435343335323b7d693a32303b613a323a7b733a313a2274223b693a313537353336373230303b733a313a2263223b693a343234353039333b7d693a32313b613a323a7b733a313a2274223b693a313537353337303830303b733a313a2263223b693a343238383434353b7d693a32323b613a323a7b733a313a2274223b693a313537353337343430303b733a313a2263223b693a343233383231303b7d693a32333b613a323a7b733a313a2274223b693a313537353337383030303b733a313a2263223b693a343239383733343b7d7d733a323a223764223b613a373a7b693a303b613a323a7b733a313a2274223b693a313537343732363430303b733a313a2263223b693a39383039323932353b7d693a313b613a323a7b733a313a2274223b693a313537343831323830303b733a313a2263223b693a3130393637373036373b7d693a323b613a323a7b733a313a2274223b693a313537343839393230303b733a313a2263223b693a3131383737303538323b7d693a333b613a323a7b733a313a2274223b693a313537343938353630303b733a313a2263223b693a3130343235383033333b7d693a343b613a323a7b733a313a2274223b693a313537353037323030303b733a313a2263223b693a3130333636363031323b7d693a353b613a323a7b733a313a2274223b693a313537353135383430303b733a313a2263223b693a39333638313639303b7d693a363b613a323a7b733a313a2274223b693a313537353234343830303b733a313a2263223b693a3130333538383431343b7d7d733a333a22333064223b613a33303a7b693a303b613a323a7b733a313a2274223b693a313537323733393230303b733a313a2263223b693a3130313831303235383b7d693a313b613a323a7b733a313a2274223b693a313537323832353630303b733a313a2263223b693a3130333936323132313b7d693a323b613a323a7b733a313a2274223b693a313537323931323030303b733a313a2263223b693a39383039333836333b7d693a333b613a323a7b733a313a2274223b693a313537323939383430303b733a313a2263223b693a3131323835393338333b7d693a343b613a323a7b733a313a2274223b693a313537333038343830303b733a313a2263223b693a3133373933323336393b7d693a353b613a323a7b733a313a2274223b693a313537333137313230303b733a313a2263223b693a3132353535353136353b7d693a363b613a323a7b733a313a2274223b693a313537333235373630303b733a313a2263223b693a3130393933383437323b7d693a373b613a323a7b733a313a2274223b693a313537333334343030303b733a313a2263223b693a39353231383735323b7d693a383b613a323a7b733a313a2274223b693a313537333433303430303b733a313a2263223b693a39333839323034363b7d693a393b613a323a7b733a313a2274223b693a313537333531363830303b733a313a2263223b693a39363337313139373b7d693a31303b613a323a7b733a313a2274223b693a313537333630333230303b733a313a2263223b693a38363631343836383b7d693a31313b613a323a7b733a313a2274223b693a313537333638393630303b733a313a2263223b693a39303134313438373b7d693a31323b613a323a7b733a313a2274223b693a313537333737363030303b733a313a2263223b693a38373139323931333b7d693a31333b613a323a7b733a313a2274223b693a313537333836323430303b733a313a2263223b693a38353435303133303b7d693a31343b613a323a7b733a313a2274223b693a313537333934383830303b733a313a2263223b693a39373934323433343b7d693a31353b613a323a7b733a313a2274223b693a313537343033353230303b733a313a2263223b693a39343037313731373b7d693a31363b613a323a7b733a313a2274223b693a313537343132313630303b733a313a2263223b693a3130323132393733303b7d693a31373b613a323a7b733a313a2274223b693a313537343230383030303b733a313a2263223b693a3130383536353534363b7d693a31383b613a323a7b733a313a2274223b693a313537343239343430303b733a313a2263223b693a3132343936343539353b7d693a31393b613a323a7b733a313a2274223b693a313537343338303830303b733a313a2263223b693a3133333834363338343b7d693a32303b613a323a7b733a313a2274223b693a313537343436373230303b733a313a2263223b693a3132343438333637353b7d693a32313b613a323a7b733a313a2274223b693a313537343535333630303b733a313a2263223b693a3131363938353033343b7d693a32323b613a323a7b733a313a2274223b693a313537343634303030303b733a313a2263223b693a3130333732373932363b7d693a32333b613a323a7b733a313a2274223b693a313537343732363430303b733a313a2263223b693a39383039323932353b7d693a32343b613a323a7b733a313a2274223b693a313537343831323830303b733a313a2263223b693a3130393637373036373b7d693a32353b613a323a7b733a313a2274223b693a313537343839393230303b733a313a2263223b693a3131383737303538323b7d693a32363b613a323a7b733a313a2274223b693a313537343938353630303b733a313a2263223b693a3130343235383033333b7d693a32373b613a323a7b733a313a2274223b693a313537353037323030303b733a313a2263223b693a3130333636363031323b7d693a32383b613a323a7b733a313a2274223b693a313537353135383430303b733a313a2263223b693a39333638313639303b7d693a32393b613a323a7b733a313a2274223b693a313537353234343830303b733a313a2263223b693a3130333538383431343b7d7d7d733a393a22636f756e7472696573223b613a313a7b733a323a223764223b613a31303a7b693a303b613a323a7b733a323a226364223b733a323a22434e223b733a323a226374223b693a3233363439393333313b7d693a313b613a323a7b733a323a226364223b733a323a225553223b733a323a226374223b693a3232303236313436373b7d693a323b613a323a7b733a323a226364223b733a323a225255223b733a323a226374223b693a38363238343136333b7d693a333b613a323a7b733a323a226364223b733a323a225541223b733a323a226374223b693a37313630373733363b7d693a343b613a323a7b733a323a226364223b733a323a224652223b733a323a226374223b693a36363930343133393b7d693a353b613a323a7b733a323a226364223b733a323a22524f223b733a323a226374223b693a36323539373937363b7d693a363b613a323a7b733a323a226364223b733a323a22494e223b733a323a226374223b693a35363432323736393b7d693a373b613a323a7b733a323a226364223b733a323a224e4c223b733a323a226374223b693a34313538313031323b7d693a383b613a323a7b733a323a226364223b733a323a224445223b733a323a226374223b693a34303235383235353b7d693a393b613a323a7b733a323a226364223b733a323a224341223b733a323a226374223b693a33393235353239333b7d7d7d7d, 'yes'),
('dbTest', 0x613a313a7b733a353a226e6f6e6365223b733a36343a2263373461366562376339376363356436303264663437646433373536633434316361663332393266306534303934646237373861656162316363356639343030223b7d, 'no'),
('dbVersion', 0x31302e342e31302d4d6172696144422d313a31302e342e31302b6d617269617e62696f6e6963, 'yes'),
('debugOn', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('detectProxyNextCheck', 0x31353735383934363238, 'no'),
('detectProxyNonce', 0x35636235616134363233626431313631663533613366323465376435656661366530366139643737343531636133343930613565333636626662663233623934, 'no'),
('detectProxyRecommendation', '', 'no'),
('diagnosticsWflogsRemovalHistory', 0x5b5d, 'no'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('dismissAutoPrependNotice', 0x30, 'yes'),
('displayAutomaticBlocks', 0x31, 'yes'),
('displayTopLevelBlocking', 0x30, 'yes'),
('displayTopLevelLiveTraffic', 0x30, 'yes'),
('displayTopLevelOptions', 0x31, 'yes'),
('emailedIssuesList', 0x613a313a7b693a303b613a323a7b733a373a2269676e6f726543223b733a33323a223461643435633534336433386435336330386130373065346530363363343532223b733a373a2269676e6f726550223b733a33323a223461643435633534336433386435336330386130373065346530363363343532223b7d7d, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('encKey', 0x37383337326434376333383366323365, 'yes'),
('fileContentsGSB6315Migration', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('geoIPVersionHash', 0x36313832376263643838356233663864306266313838356536663666396233376464343637363936626436363465623932383335303035326436363137306534, 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('isPaid', '', 'yes'),
('keyType', 0x66726565, 'yes'),
('lastAdminLogin', 0x613a363a7b733a363a22757365724944223b693a323b733a383a22757365726e616d65223b733a323a22616b223b733a393a2266697273744e616d65223b733a303a22223b733a383a226c6173744e616d65223b733a303a22223b733a343a2274696d65223b733a32393a225475652033726420446563656d62657220402030393a33343a3330504d223b733a323a224950223b733a393a223132372e302e302e31223b7d, 'yes'),
('lastBlockAggregation', 0x31353735333834363835, 'yes'),
('lastDailyCron', 0x31353735333834363832, 'yes'),
('lastDashboardCheck', 0x31353735333834363833, 'yes'),
('lastEmailHash', 0x313537353430383837313a3465656236656663383365643734353233396138373532333534353762336538, 'yes'),
('lastNotificationID', 0x32, 'no'),
('lastPermissionsTemplateCheck', 0x31353735343533353536, 'yes'),
('lastScanCompleted', 0x6f6b, 'yes'),
('lastScanFailureType', '', 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('liveTrafficEnabled', 0x30, 'yes'),
('liveTraf_displayExpandedRecords', 0x30, 'no'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxAge', 0x3330, 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_breachPasswds', 0x61646d696e73, 'yes'),
('loginSec_breachPasswds_enabled', 0x31, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('loginSec_requireAdminTwoFactor', 0x30, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_strongPasswds_enabled', 0x31, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('longEncKey', 0x66653038613536393733663931623566323936366635303164663164373631613466323433356163653662306365646139393533333062333030616165323833, 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('lowResourceScanWaitStep', '', 'yes'),
('manualScanType', 0x6f6e63654461696c79, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxExecutionTime', 0x30, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxMem', 0x323536, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('migration636_email_summary_excluded_directories', 0x31, 'no'),
('needsNewTour_blocking', 0x31, 'yes'),
('needsNewTour_dashboard', 0x31, 'yes'),
('needsNewTour_firewall', 0x31, 'yes'),
('needsNewTour_livetraffic', 0x31, 'yes'),
('needsNewTour_loginsecurity', 0x31, 'yes'),
('needsNewTour_scan', 0x31, 'yes'),
('needsUpgradeTour_blocking', 0x30, 'yes'),
('needsUpgradeTour_dashboard', 0x30, 'yes'),
('needsUpgradeTour_firewall', 0x30, 'yes'),
('needsUpgradeTour_livetraffic', 0x30, 'yes'),
('needsUpgradeTour_loginsecurity', 0x30, 'yes'),
('needsUpgradeTour_scan', 0x30, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('noc1ScanSchedule', 0x613a323a7b693a303b693a313537353532363230303b693a313b693a313537353738353430303b7d, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('onboardingAttempt1', 0x6c6963656e7365, 'yes'),
('onboardingAttempt2', '', 'no'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', 0x30, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_WFNet', 0x31, 'yes'),
('previousWflogsFileList', 0x5b2261747461636b2d646174612e706870222c2272756c65732e706870222c22636f6e6669672d6c6976657761662e706870222c22636f6e6669672d73796e6365642e706870222c22636f6e6669672e706870222c22636f6e6669672d7472616e7369656e742e706870222c2247656f4c697465322d436f756e7472792e6d6d6462222c2274656d706c6174652e706870222c226970732e706870222c222e6874616363657373225d, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_geoipSupport', 0x31, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_wafStatus', 0x31, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scanTime', 0x313537353338343639352e32363832, 'yes'),
('scanType', 0x7374616e64617264, 'yes'),
('scan_exclude', '', 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('schedMode', 0x6175746f, 'yes'),
('schedStartHour', 0x38, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('serverDNS', 0x313537353338373334363b313b3132372e302e302e31, 'yes'),
('serverIP', 0x313537353238393832383b3139342e36382e3137302e3130, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('showWfCentralUI', 0x31, 'yes'),
('spamvertizeCheck', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('supportContent', 0x7b22746f70223a5b7b227469746c65223a224920616d206c6f636b6564206f7574206f66206d792073697465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f626c6f636b65642d6f722d6c6f636b65642d6f75745c2f23692d616d2d6c6f636b65642d6f75742d6f662d6d792d73697465222c226f72646572223a307d2c7b227469746c65223a224f7074696d697a696e6720546865204669726577616c6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696d697a696e672d7468652d6669726577616c6c5c2f222c226f72646572223a317d2c7b227469746c65223a22576f726466656e636520576562204170706c69636174696f6e204669726577616c6c202857414629222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f222c226f72646572223a327d2c7b227469746c65223a225363616e2054726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a337d2c7b227469746c65223a22576f726466656e636520616e64204c6974655370656564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f73797374656d2d726571756972656d656e74735c2f6c69746573706565645c2f222c226f72646572223a347d2c7b227469746c65223a2254776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a357d2c7b227469746c65223a224669726577616c6c204c6561726e696e67204d6f6465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6c6561726e696e672d6d6f64655c2f222c226f72646572223a367d2c7b227469746c65223a225363616e20526573756c7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363616e2d726573756c74735c2f222c226f72646572223a377d2c7b227469746c65223a22426c6f636b6564206f72204c6f636b6564204f7574222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f626c6f636b65642d6f722d6c6f636b65642d6f75745c2f222c226f72646572223a387d2c7b227469746c65223a2250485020466174616c206572726f723a204661696c6564206f70656e696e6720726571756972656420776f726466656e63652d7761662e706870222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f237068702d666174616c2d6572726f722d6661696c65642d6f70656e696e672d72657175697265642d776f726466656e63652d7761662d706870222c226f72646572223a397d5d2c22616c6c223a5b7b227469746c65223a22576f726466656e63652043656e7472616c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f222c2265786365727074223a22576f726466656e63652043656e7472616c2070726f7669646573206120706f77657266756c20616e6420656666696369656e742077617920746f206d616e61676520746865207365637572697479206f66206d616e7920576f726450726573732073697465732076696120612073696e676c6520696e746572666163652e222c226368696c6472656e223a5b7b227469746c65223a225573696e67207468652053657474696e67732070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f73657474696e67735c2f222c226f72646572223a307d2c7b227469746c65223a22436f6e6e656374696e6720796f757220736974657320746f20576f726466656e63652043656e7472616c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f636f6e6e6563745c2f222c226f72646572223a317d2c7b227469746c65223a2253657474696e672075702074776f2d666163746f722061757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f3266615c2f222c226f72646572223a327d2c7b227469746c65223a225573696e67207468652044617368626f6172642070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f63656e7472616c5c2f222c226f72646572223a337d2c7b227469746c65223a2256696577696e67207363616e2046696e64696e6773222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f66696e64696e67735c2f222c226f72646572223a347d2c7b227469746c65223a225573696e672074686520436f6e66696775726174696f6e2070616765222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f636f6e66696775726174696f6e5c2f222c226f72646572223a357d2c7b227469746c65223a225573696e6720576f726466656e636520706c7567696e206f7074696f6e732054656d706c61746573222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f63656e7472616c5c2f74656d706c617465735c2f222c226f72646572223a367d5d2c226f72646572223a307d2c7b227469746c65223a2244617368626f617264222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f222c2265786365727074223a2254686520576f726466656e63652044617368626f6172642070726f766964657320696e736967687420696e746f207468652063757272656e74207374617465206f6620796f75722073697465e28099732073656375726974792e222c226368696c6472656e223a5b7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f6f7074696f6e735c2f222c226f72646572223a307d2c7b227469746c65223a22416c65727473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f64617368626f6172645c2f616c657274735c2f222c226f72646572223a317d5d2c226f72646572223a317d2c7b227469746c65223a224669726577616c6c222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f222c2265786365727074223a2254686520576f726466656e636520576562204170706c69636174696f6e204669726577616c6c2069732061205048502062617365642c206170706c69636174696f6e206c6576656c206669726577616c6c20746861742066696c74657273206f7574206d616c6963696f757320726571756573747320746f20796f757220736974652e20222c226368696c6472656e223a5b7b227469746c65223a224f7074696d697a696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696d697a696e672d7468652d6669726577616c6c5c2f222c226f72646572223a307d2c7b227469746c65223a224c6561726e696e67204d6f6465222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6c6561726e696e672d6d6f64655c2f222c226f72646572223a317d2c7b227469746c65223a2253746174697374696373222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f737461746973746963735c2f222c226f72646572223a327d2c7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6f7074696f6e735c2f222c226f72646572223a337d2c7b227469746c65223a224d7953514c692073746f7261676520656e67696e65222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f6d7973716c692d73746f726167652d656e67696e655c2f222c226f72646572223a347d2c7b227469746c65223a22427275746520466f7263652050726f74656374696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f62727574652d666f7263655c2f222c226f72646572223a357d2c7b227469746c65223a2252617465204c696d6974696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f726174652d6c696d6974696e675c2f222c226f72646572223a367d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6669726577616c6c5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a377d5d2c226f72646572223a327d2c7b227469746c65223a22426c6f636b696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f222c2265786365727074223a2241736964652066726f6d20746865204669726577616c6c2072756c657320746861742070726f7465637420616761696e73742053514c2d696e6a656374696f6e2c2058535320616e64206d6f72652c20576f726466656e636520616c736f2068617320637573746f6d20666561747572657320666f72206164646974696f6e616c20626c6f636b696e672e20222c226368696c6472656e223a5b7b227469746c65223a22426c6f636b6564206f72204c6f636b6564204f7574222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f626c6f636b65642d6f722d6c6f636b65642d6f75745c2f222c226f72646572223a307d2c7b227469746c65223a22436f756e74727920426c6f636b696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f636f756e7472792d626c6f636b696e675c2f222c226f72646572223a317d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f626c6f636b696e675c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a327d5d2c226f72646572223a337d2c7b227469746c65223a225363616e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f222c2265786365727074223a224120576f726466656e6365207363616e206578616d696e657320616c6c2066696c6573206f6e20796f757220576f726450726573732077656273697465206c6f6f6b696e6720666f72206d616c6963696f757320636f64652c206261636b646f6f72732c207368656c6c732074686174206861636b657273206861766520696e7374616c6c65642c206b6e6f776e206d616c6963696f75732055524c7320616e64206b6e6f776e207061747465726e73206f6620696e66656374696f6e732e222c226368696c6472656e223a5b7b227469746c65223a224f7074696f6e73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f6f7074696f6e735c2f222c226f72646572223a307d2c7b227469746c65223a22526573756c7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363616e2d726573756c74735c2f222c226f72646572223a317d2c7b227469746c65223a225363686564756c696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f7363686564756c696e675c2f222c226f72646572223a327d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7363616e5c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a337d5d2c226f72646572223a347d2c7b227469746c65223a22546f6f6c73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f222c2265786365727074223a22576f726466656e636520546f6f6c7320696e636c7564652054776f20466163746f722041757468656e7469636174696f6e2c2057686f6973204c6f6f6b75702c2050617373776f72642041756469742c204c697665205472616666696320616e6420446961676e6f73746963732e222c226368696c6472656e223a5b7b227469746c65223a22496d706f72745c2f4578706f7274222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f696d706f72742d6578706f72745c2f222c226f72646572223a307d2c7b227469746c65223a2250617373776f7264204175646974696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f70617373776f72642d6175646974696e675c2f222c226f72646572223a317d2c7b227469746c65223a2257686f6973204c6f6f6b7570222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f77686f69732d6c6f6f6b75705c2f222c226f72646572223a327d2c7b227469746c65223a22446961676e6f7374696373222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f646961676e6f73746963735c2f222c226f72646572223a337d2c7b227469746c65223a224c6976652054726166666963222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f6c6976652d747261666669635c2f222c226f72646572223a347d2c7b227469746c65223a2254776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a357d2c7b227469746c65223a224c65676163792054776f2d466163746f722041757468656e7469636174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f746f6f6c735c2f6c65676163792d74776f2d666163746f722d61757468656e7469636174696f6e5c2f222c226f72646572223a367d5d2c226f72646572223a357d2c7b227469746c65223a224c6f67696e205365637572697479222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6c6f67696e2d73656375726974795c2f222c2265786365727074223a22546865204c6f67696e20536563757269747920706167652063757272656e746c7920636f6e7461696e732073657474696e677320666f722074776f2d666163746f722061757468656e7469636174696f6e20283246412920616e64207265434150544348412e20496e20612066757475726520576f726466656e63652076657273696f6e2c206578697374696e67206c6f67696e2d72656c617465642066656174757265732077696c6c20616c736f206d6f766520746f207468652073616d6520706167652e222c226f72646572223a367d2c7b227469746c65223a22416476616e636564222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f222c2265786365727074223a22496620796f752077616e7420746f206b6e6f77206d6f72652061626f75742074686520746563686e6963616c2064657461696c73206f6620576f726466656e63652c20796f75276c6c2066696e642074686520616e737765727320696e20746869732073656374696f6e2e222c226368696c6472656e223a5b7b227469746c65223a2253797374656d20726571756972656d656e7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f73797374656d2d726571756972656d656e74735c2f222c226f72646572223a307d2c7b227469746c65223a224368616e67656c6f67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f6368616e67656c6f675c2f222c226f72646572223a317d2c7b227469746c65223a2252656d6f7665206f72205265736574222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f72656d6f76652d6f722d72657365745c2f222c226f72646572223a327d2c7b227469746c65223a22546563686e6963616c2044657461696c73222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f746563686e6963616c2d64657461696c735c2f222c226f72646572223a337d2c7b227469746c65223a22436f6e7374616e7473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f636f6e7374616e74735c2f222c226f72646572223a347d2c7b227469746c65223a22576f726466656e636520415049222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f776f726466656e63652d6170695c2f222c226f72646572223a357d2c7b227469746c65223a2254726f75626c6573686f6f74696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f616476616e6365645c2f74726f75626c6573686f6f74696e675c2f222c226f72646572223a367d5d2c226f72646572223a377d2c7b227469746c65223a22576f726466656e6365205072656d69756d222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f222c2265786365727074223a22576f726466656e6365205072656d69756d20636f6d6573207769746820616e20495020426c61636b6c6973742c205265616c2054696d652050726f74656374696f6e20616e64206d756368206d6f72652e222c226368696c6472656e223a5b7b227469746c65223a224163636f756e74222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f6163636f756e745c2f222c226f72646572223a307d2c7b227469746c65223a2250726963696e67222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f70726963696e675c2f222c226f72646572223a317d2c7b227469746c65223a224c6963656e7365204b6579222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f7072656d69756d5c2f6170692d6b65795c2f222c226f72646572223a327d5d2c226f72646572223a387d2c7b227469746c65223a22576f726466656e636520616e642047445052202d2047656e6572616c20446174612050726f74656374696f6e20526567756c6174696f6e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f67656e6572616c2d646174612d70726f74656374696f6e2d726567756c6174696f6e5c2f222c2265786365727074223a2244656669616e742c2074686520636f6d70616e7920626568696e6420576f726466656e63652c20686173207570646174656420697473207465726d73206f66207573652c207072697661637920706f6c696369657320616e6420736f6674776172652c2061732077656c6c206173206d61646520617661696c61626c65206120646174612070726f63657373696e672061677265656d656e7420746f206d656574204744505220636f6d706c69616e63652e20437573746f6d657273206d7573742072657669657720616e6420616772656520746f2075706461746564207465726d7320696e206f7264657220746f20636f6e74696e7565207573696e67206f75722070726f647563747320616e642073657276696365732e20576520616c736f2070726f76696465206120646174612070726f63657373696e672061677265656d656e7420696620796f75207175616c6966792061732061206461746120636f6e74726f6c6c657220756e6465722074686520474450522e222c226f72646572223a397d2c7b227469746c65223a225369746520436c65616e696e6720616e6420536563757269747920417564697473222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f73656375726974792d73657276696365735c2f222c2265786365727074223a224c6574206f6e65206f66206f757220536563757269747920416e616c797374732068656c7020796f7520636c65616e20796f757220696e6665637465642073697465206f7220696e737065637420697420666f722076756c6e65726162696c69746965732e222c226f72646572223a31307d2c7b227469746c65223a224c6f67696e20536563757269747920506c7567696e222c227065726d616c696e6b223a2268747470733a5c2f5c2f7777772e776f726466656e63652e636f6d5c2f68656c705c2f6c6f67696e2d73656375726974792d706c7567696e5c2f222c2265786365727074223a2254686520576f726466656e6365204c6f67696e20536563757269747920706c7567696e20636f6e7461696e73206120737562736574206f662074686520666561747572657320666f756e6420696e207468652066756c6c20576f726466656e636520706c7567696e3a2054776f2d666163746f722041757468656e7469636174696f6e2c20584d4c2d5250432050726f74656374696f6e20616e64204c6f67696e205061676520434150544348412e20497420697320696465616c20666f722073697465732074686174206e656564206c6f67696e2073656375726974792066756e6374696f6e616c69747920627574206569746865722063616ee2809974206f7220646f6ee28099742077616e7420746f2072756e207468652066756c6c20576f726466656e636520706c7567696e2e222c226f72646572223a31317d5d7d, 'yes'),
('supportHash', 0x33396530323331323061366664643035626163623334663763383636373065353166623039343537376564386334663861343438306362383934633730393065, 'yes'),
('timeoffset_wf', 0x3436, 'yes'),
('timeoffset_wf_updated', 0x31353735333839363634, 'yes'),
('totalAlertsSent', 0x34, 'yes'),
('totalLoginHits', 0x39, 'yes'),
('totalLogins', 0x34, 'yes'),
('totalScansRun', 0x32, 'yes'),
('touppBypassNextCheck', 0x30, 'yes'),
('touppPromptNeeded', '', 'yes'),
('vulnerabilities_plugin', 0x613a31303a7b693a303b613a343a7b733a343a22736c7567223b733a32323a22616476616e6365642d637573746f6d2d6669656c6473223b733a31313a2266726f6d56657273696f6e223b733a353a22352e382e37223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a313b613a343a7b733a343a22736c7567223b733a31393a22776f6f636f6d6d657263652d6a65747061636b223b733a31313a2266726f6d56657273696f6e223b733a353a22342e362e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a323b613a343a7b733a343a22736c7567223b733a31343a22636f6e746163742d666f726d2d37223b733a31313a2266726f6d56657273696f6e223b733a353a22352e312e36223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a333b613a343a7b733a343a22736c7567223b733a31393a22637573746f6d2d706f73742d747970652d7569223b733a31313a2266726f6d56657273696f6e223b733a353a22312e372e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a343b613a343a7b733a343a22736c7567223b733a31303a226475706c696361746f72223b733a31313a2266726f6d56657273696f6e223b733a363a22312e332e3234223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a353b613a343a7b733a343a22736c7567223b733a373a226a65747061636b223b733a31313a2266726f6d56657273696f6e223b733a353a22372e392e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a363b613a343a7b733a343a22736c7567223b733a31313a22776f6f636f6d6d65726365223b733a31313a2266726f6d56657273696f6e223b733a353a22332e382e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a373b613a343a7b733a343a22736c7567223b733a32303a22776f6f636f6d6d657263652d7365727669636573223b733a31313a2266726f6d56657273696f6e223b733a363a22312e32322e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a383b613a343a7b733a343a22736c7567223b733a32363a22776f6f636f6d6d657263652d676174657761792d737472697065223b733a31313a2266726f6d56657273696f6e223b733a353a22342e332e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d693a393b613a343a7b733a343a22736c7567223b733a393a22776f726466656e6365223b733a31313a2266726f6d56657273696f6e223b733a353a22372e342e31223b733a31303a2276756c6e657261626c65223b623a303b733a343a226c696e6b223b623a303b7d7d, 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('waf_status', 0x6c6561726e696e672d6d6f6465, 'yes'),
('wfKillRequested', 0x30, 'no'),
('wfPeakMemory', 0x34313934333034, 'no'),
('wfScanStartVersion', 0x352e33, 'yes'),
('wfStatusStartMsgs', 0x613a323a7b693a303b733a303a22223b693a313b733a303a22223b7d, 'yes'),
('wf_scanLastStatusTime', 0x30, 'yes'),
('wf_scanRunning', '', 'yes'),
('wf_summaryItems', 0x613a383a7b733a31323a227363616e6e6564506f737473223b693a303b733a31353a227363616e6e6564436f6d6d656e7473223b693a303b733a31323a227363616e6e656446696c6573223b693a303b733a31343a227363616e6e6564506c7567696e73223b693a303b733a31333a227363616e6e65645468656d6573223b693a303b733a31323a227363616e6e65645573657273223b693a303b733a31313a227363616e6e656455524c73223b693a303b733a31303a226c617374557064617465223b693a313537353338343639333b7d, 'yes'),
('whitelisted', '', 'yes'),
('whitelistedServices', 0x7b7d, 'yes'),
('whitelistHash', 0x62663364373664633035636166383632336362336665303163316663396533303865326632656133376238323639333764383530666465333631636465666434, 'yes');
INSERT INTO `ull_wfconfig` (`name`, `val`, `autoload`) VALUES
('whitelistPresets', 0x7b22776f726466656e6365223a7b226e223a22576f726466656e6365222c2268223a747275652c2264223a747275652c2266223a747275652c2272223a5b2235342e36382e33322e323437222c2236392e34362e33362e305c2f3237222c22323630353a323430303a303130343a303130303a3a5c2f3536225d7d2c22737563757269223a7b226e223a22537563757269222c2264223a747275652c2272223a5b2239372e37342e3132372e313731222c2236392e3136342e3230332e313732222c223137332e3233302e3132382e313335222c2236362e3232382e33342e3439222c2236362e3232382e34302e313835222c2235302e3131362e33362e3932222c2235302e3131362e33362e3933222c2235302e3131362e332e313731222c223139382e35382e39362e323132222c2235302e3131362e36332e323231222c223139322e3135352e39322e313132222c223139322e38312e3132382e3331222c223139382e35382e3130362e323434222c223139322e3135352e39352e313339222c2232332e3233392e392e323237222c223139382e35382e3131322e313033222c223139322e3135352e39342e3433222c223136322e3231362e31362e3333222c223137332e3235352e3233332e313234222c223137332e3235352e3233332e313234222c223139322e3135352e39302e313739222c2235302e3131362e34312e323137222c223139322e38312e3132392e323237222c223139382e35382e3131312e3830222c223136322e3231362e31392e313833225d7d2c2266616365626f6f6b223a7b226e223a2246616365626f6f6b222c2264223a747275652c2272223a5b2236392e36332e3137362e305c2f3230222c2236362e3232302e3134342e305c2f3230222c2236362e3232302e3134342e305c2f3231222c2236392e36332e3138342e305c2f3231222c2236392e36332e3137362e305c2f3231222c2237342e3131392e37362e305c2f3232222c2236392e3137312e3235352e305c2f3234222c223137332e3235322e36342e305c2f3138222c2236392e3137312e3232342e305c2f3139222c2236392e3137312e3232342e305c2f3230222c223130332e342e39362e305c2f3232222c2236392e36332e3137362e305c2f3234222c223137332e3235322e36342e305c2f3139222c223137332e3235322e37302e305c2f3234222c2233312e31332e36342e305c2f3138222c2233312e31332e32342e305c2f3231222c2236362e3232302e3135322e305c2f3231222c2236362e3232302e3135392e305c2f3234222c2236392e3137312e3233392e305c2f3234222c2236392e3137312e3234302e305c2f3230222c2233312e31332e36342e305c2f3139222c2233312e31332e36342e305c2f3234222c2233312e31332e36352e305c2f3234222c2233312e31332e36372e305c2f3234222c2233312e31332e36382e305c2f3234222c2233312e31332e36392e305c2f3234222c2233312e31332e37302e305c2f3234222c2233312e31332e37312e305c2f3234222c2233312e31332e37322e305c2f3234222c2233312e31332e37332e305c2f3234222c2233312e31332e37342e305c2f3234222c2233312e31332e37352e305c2f3234222c2233312e31332e37362e305c2f3234222c2233312e31332e37372e305c2f3234222c2233312e31332e39362e305c2f3139222c2233312e31332e36362e305c2f3234222c223137332e3235322e39362e305c2f3139222c2236392e36332e3137382e305c2f3234222c2233312e31332e37382e305c2f3234222c2233312e31332e37392e305c2f3234222c2233312e31332e38302e305c2f3234222c2233312e31332e38322e305c2f3234222c2233312e31332e38332e305c2f3234222c2233312e31332e38342e305c2f3234222c2233312e31332e38352e305c2f3234222c2233312e31332e38362e305c2f3234222c2233312e31332e38372e305c2f3234222c2233312e31332e38382e305c2f3234222c2233312e31332e38392e305c2f3234222c2233312e31332e39302e305c2f3234222c2233312e31332e39312e305c2f3234222c2233312e31332e39322e305c2f3234222c2233312e31332e39332e305c2f3234222c2233312e31332e39342e305c2f3234222c2233312e31332e39352e305c2f3234222c2236392e3137312e3235332e305c2f3234222c2236392e36332e3138362e305c2f3234222c2233312e31332e38312e305c2f3234222c223137392e36302e3139322e305c2f3232222c223137392e36302e3139322e305c2f3234222c223137392e36302e3139332e305c2f3234222c223137392e36302e3139342e305c2f3234222c223137392e36302e3139352e305c2f3234222c223138352e36302e3231362e305c2f3232222c2234352e36342e34302e305c2f3232222c223138352e36302e3231362e305c2f3234222c223138352e36302e3231372e305c2f3234222c223138352e36302e3231382e305c2f3234222c223138352e36302e3231392e305c2f3234222c223132392e3133342e302e305c2f3136222c223135372e3234302e302e305c2f3136222c223135372e3234302e382e305c2f3234222c223135372e3234302e302e305c2f3234222c223135372e3234302e312e305c2f3234222c223135372e3234302e322e305c2f3234222c223135372e3234302e332e305c2f3234222c223135372e3234302e342e305c2f3234222c223135372e3234302e352e305c2f3234222c223135372e3234302e362e305c2f3234222c223135372e3234302e372e305c2f3234222c223135372e3234302e392e305c2f3234222c223135372e3234302e31302e305c2f3234222c223135372e3234302e31362e305c2f3234222c223135372e3234302e31392e305c2f3234222c223135372e3234302e31312e305c2f3234222c223135372e3234302e31322e305c2f3234222c223135372e3234302e31332e305c2f3234222c223135372e3234302e31342e305c2f3234222c223135372e3234302e31352e305c2f3234222c223135372e3234302e31372e305c2f3234222c223135372e3234302e31382e305c2f3234222c223135372e3234302e32302e305c2f3234222c223135372e3234302e32312e305c2f3234222c223135372e3234302e32322e305c2f3234222c223135372e3234302e32332e305c2f3234222c223135372e3234302e302e305c2f3137222c2236392e3137312e3235302e305c2f3234222c223135372e3234302e32342e305c2f3234222c223135372e3234302e32352e305c2f3234222c223139392e3230312e36342e305c2f3234222c223139392e3230312e36352e305c2f3234222c223139392e3230312e36342e305c2f3232222c223230342e31352e32302e305c2f3232222c223135372e3234302e3139322e305c2f3234222c223132392e3133342e302e305c2f3137222c223230342e31352e32302e305c2f3232222c2236392e36332e3137362e305c2f3230222c2236392e36332e3137362e305c2f3231222c2236392e36332e3138342e305c2f3231222c2236362e3232302e3134342e305c2f3230222c2236392e36332e3137362e305c2f3230222c22323632303a303a316330303a3a5c2f3430222c22326130333a323838303a3a5c2f3332222c22326130333a323838303a666666653a3a5c2f3438222c22326130333a323838303a666666663a3a5c2f3438222c22323632303a303a316366663a3a5c2f3438222c22326130333a323838303a663030303a3a5c2f3438222c22326130333a323838303a663030313a3a5c2f3438222c22326130333a323838303a663030323a3a5c2f3438222c22326130333a323838303a663030333a3a5c2f3438222c22326130333a323838303a663030343a3a5c2f3438222c22326130333a323838303a663030353a3a5c2f3438222c22326130333a323838303a663030363a3a5c2f3438222c22326130333a323838303a663030373a3a5c2f3438222c22326130333a323838303a663030383a3a5c2f3438222c22326130333a323838303a663030393a3a5c2f3438222c22326130333a323838303a663030613a3a5c2f3438222c22326130333a323838303a663030623a3a5c2f3438222c22326130333a323838303a663030633a3a5c2f3438222c22326130333a323838303a663030643a3a5c2f3438222c22326130333a323838303a663030653a3a5c2f3438222c22326130333a323838303a663030663a3a5c2f3438222c22326130333a323838303a663031303a3a5c2f3438222c22326130333a323838303a663031313a3a5c2f3438222c22326130333a323838303a663031323a3a5c2f3438222c22326130333a323838303a663031333a3a5c2f3438222c22326130333a323838303a663031343a3a5c2f3438222c22326130333a323838303a663031353a3a5c2f3438222c22326130333a323838303a663031363a3a5c2f3438222c22326130333a323838303a663031373a3a5c2f3438222c22326130333a323838303a663031383a3a5c2f3438222c22326130333a323838303a663031393a3a5c2f3438222c22326130333a323838303a663031613a3a5c2f3438222c22326130333a323838303a663031623a3a5c2f3438222c22326130333a323838303a663031633a3a5c2f3438222c22326130333a323838303a663031643a3a5c2f3438222c22326130333a323838303a663031653a3a5c2f3438222c22326130333a323838303a663031663a3a5c2f3438222c22326130333a323838303a313030303a3a5c2f3336222c22326130333a323838303a323030303a3a5c2f3336222c22326130333a323838303a333030303a3a5c2f3336222c22326130333a323838303a343030303a3a5c2f3336222c22326130333a323838303a353030303a3a5c2f3336222c22326130333a323838303a363030303a3a5c2f3336222c22326130333a323838303a373030303a3a5c2f3336222c22326130333a323838303a663032303a3a5c2f3438222c22326130333a323838303a663032313a3a5c2f3438222c22326130333a323838303a663032323a3a5c2f3438222c22326130333a323838303a663032333a3a5c2f3438222c22326130333a323838303a663032343a3a5c2f3438222c22326130333a323838303a663032353a3a5c2f3438222c22326130333a323838303a663032363a3a5c2f3438222c22326130333a323838303a663032373a3a5c2f3438222c22326130333a323838303a663032383a3a5c2f3438222c22326130333a323838303a663032393a3a5c2f3438222c22326130333a323838303a663032623a3a5c2f3438222c22326130333a323838303a663032633a3a5c2f3438222c22326130333a323838303a663032643a3a5c2f3438222c22326130333a323838303a663032653a3a5c2f3438222c22326130333a323838303a663032663a3a5c2f3438222c22326130333a323838303a663033303a3a5c2f3438222c22326130333a323838303a663033313a3a5c2f3438222c22326130333a323838303a663033323a3a5c2f3438222c22326130333a323838303a663033333a3a5c2f3438222c22326130333a323838303a663033343a3a5c2f3438222c22326130333a323838303a663033353a3a5c2f3438222c22326130333a323838303a663033363a3a5c2f3438222c22326130333a323838303a663033373a3a5c2f3438222c22326130333a323838303a663033383a3a5c2f3438222c22326130333a323838303a663033393a3a5c2f3438222c22326130333a323838303a663033613a3a5c2f3438222c22326130333a323838303a663033623a3a5c2f3438222c22326130333a323838303a663033633a3a5c2f3438222c22326130333a323838303a663033643a3a5c2f3438222c22326130333a323838303a663033653a3a5c2f3438222c22326130333a323838303a663033663a3a5c2f3438222c22323430313a646230303a3a5c2f3332222c22326130333a323838303a3a5c2f3336222c22323830333a363038303a3a5c2f3332222c22326130333a323838303a663130303a3a5c2f3438222c22326130333a323838303a663230303a3a5c2f3438222c22326130333a323838303a663130313a3a5c2f3438222c22326130333a323838303a663230313a3a5c2f3438222c22326130333a323838303a663130323a3a5c2f3438222c22326130333a323838303a663230323a3a5c2f3438222c22326130333a323838303a663130333a3a5c2f3438222c22326130333a323838303a663230333a3a5c2f3438222c22326130333a323838303a663130343a3a5c2f3438222c22326130333a323838303a663230343a3a5c2f3438222c22326130333a323838303a663130373a3a5c2f3438222c22326130333a323838303a663230373a3a5c2f3438222c22326130333a323838303a663130383a3a5c2f3438222c22326130333a323838303a663230383a3a5c2f3438222c22326130333a323838303a663130393a3a5c2f3438222c22326130333a323838303a663230393a3a5c2f3438222c22326130333a323838303a663130613a3a5c2f3438222c22326130333a323838303a663230613a3a5c2f3438222c22326130333a323838303a663130623a3a5c2f3438222c22326130333a323838303a663230623a3a5c2f3438222c22326130333a323838303a663130643a3a5c2f3438222c22326130333a323838303a663230643a3a5c2f3438222c22326130333a323838303a663130653a3a5c2f3438222c22326130333a323838303a663230653a3a5c2f3438222c22326130333a323838303a663130663a3a5c2f3438222c22326130333a323838303a663230663a3a5c2f3438222c22326130333a323838303a663131303a3a5c2f3438222c22326130333a323838303a663231303a3a5c2f3438222c22326130333a323838303a663131313a3a5c2f3438222c22326130333a323838303a663231313a3a5c2f3438222c22326130333a323838303a663131323a3a5c2f3438222c22326130333a323838303a663231323a3a5c2f3438222c22326130333a323838303a663131343a3a5c2f3438222c22326130333a323838303a663231343a3a5c2f3438222c22326130333a323838303a663131353a3a5c2f3438222c22326130333a323838303a663231353a3a5c2f3438222c22326130333a323838303a663131363a3a5c2f3438222c22326130333a323838303a663231363a3a5c2f3438222c22326130333a323838303a663131373a3a5c2f3438222c22326130333a323838303a663231373a3a5c2f3438222c22326130333a323838303a663131383a3a5c2f3438222c22326130333a323838303a663231383a3a5c2f3438222c22326130333a323838303a663131393a3a5c2f3438222c22326130333a323838303a663231393a3a5c2f3438222c22326130333a323838303a663131613a3a5c2f3438222c22326130333a323838303a663231613a3a5c2f3438222c22326130333a323838303a663131663a3a5c2f3438222c22326130333a323838303a663231663a3a5c2f3438222c22326130333a323838303a663132313a3a5c2f3438222c22326130333a323838303a663232313a3a5c2f3438222c22326130333a323838303a663132323a3a5c2f3438222c22326130333a323838303a663232323a3a5c2f3438222c22326130333a323838303a663132333a3a5c2f3438222c22326130333a323838303a663232333a3a5c2f3438222c22326130333a323838303a663130633a3a5c2f3438222c22326130333a323838303a663230633a3a5c2f3438222c22326130333a323838303a663132363a3a5c2f3438222c22326130333a323838303a663232363a3a5c2f3438222c22326130333a323838303a663130353a3a5c2f3438222c22326130333a323838303a663230353a3a5c2f3438222c22326130333a323838303a663132353a3a5c2f3438222c22326130333a323838303a663232353a3a5c2f3438222c22326130333a323838303a663130363a3a5c2f3438222c22326130333a323838303a663230363a3a5c2f3438222c22326130333a323838303a663131623a3a5c2f3438222c22326130333a323838303a663231623a3a5c2f3438222c22326130333a323838303a663131333a3a5c2f3438222c22326130333a323838303a663231333a3a5c2f3438222c22326130333a323838303a663131633a3a5c2f3438222c22326130333a323838303a663231633a3a5c2f3438222c22326130333a323838303a663132383a3a5c2f3438222c22326130333a323838303a663232383a3a5c2f3438222c22326130333a323838303a663032613a3a5c2f3438222c22326130333a323838303a663132613a3a5c2f3438222c22326130333a323838303a663232613a3a5c2f3438222c22326130333a323838303a663132663a3a5c2f3438222c22326130333a323838303a663232663a3a5c2f3438222c22326130333a323838303a663131643a3a5c2f3438222c22326130333a323838303a663131653a3a5c2f3438222c22326130333a323838303a663132303a3a5c2f3438222c22326130333a323838303a663132343a3a5c2f3438222c22326130333a323838303a663132373a3a5c2f3438222c22326130333a323838303a663132393a3a5c2f3438222c22326130333a323838303a663132623a3a5c2f3438222c22326130333a323838303a663132633a3a5c2f3438222c22326130333a323838303a663132643a3a5c2f3438222c22326130333a323838303a663132653a3a5c2f3438222c22326130333a323838303a663133303a3a5c2f3438222c22326130333a323838303a663133313a3a5c2f3438222c22326130333a323838303a663133323a3a5c2f3438222c22326130333a323838303a663133333a3a5c2f3438222c22326130333a323838303a663133343a3a5c2f3438222c22326130333a323838303a663133353a3a5c2f3438222c22326130333a323838303a663133363a3a5c2f3438222c22326130333a323838303a663133373a3a5c2f3438222c22326130333a323838303a663133383a3a5c2f3438222c22326130333a323838303a663133393a3a5c2f3438222c22326130333a323838303a663133613a3a5c2f3438222c22326130333a323838303a663133623a3a5c2f3438222c22326130333a323838303a663133633a3a5c2f3438222c22326130333a323838303a663133643a3a5c2f3438222c22326130333a323838303a663133653a3a5c2f3438222c22326130333a323838303a663133663a3a5c2f3438222c22326130333a323838303a663231643a3a5c2f3438222c22326130333a323838303a663231653a3a5c2f3438222c22326130333a323838303a663232303a3a5c2f3438222c22326130333a323838303a663232343a3a5c2f3438222c22326130333a323838303a663232373a3a5c2f3438222c22326130333a323838303a663232393a3a5c2f3438222c22326130333a323838303a663232623a3a5c2f3438222c22326130333a323838303a663232633a3a5c2f3438222c22326130333a323838303a663232643a3a5c2f3438222c22326130333a323838303a663232653a3a5c2f3438222c22326130333a323838303a663233303a3a5c2f3438222c22326130333a323838303a663233313a3a5c2f3438222c22326130333a323838303a663233323a3a5c2f3438222c22326130333a323838303a663233333a3a5c2f3438222c22326130333a323838303a663233343a3a5c2f3438222c22326130333a323838303a663233353a3a5c2f3438222c22326130333a323838303a663233363a3a5c2f3438222c22326130333a323838303a663233373a3a5c2f3438222c22326130333a323838303a663233383a3a5c2f3438222c22326130333a323838303a663233393a3a5c2f3438222c22326130333a323838303a663233613a3a5c2f3438222c22326130333a323838303a663233623a3a5c2f3438222c22326130333a323838303a663233633a3a5c2f3438222c22326130333a323838303a663233643a3a5c2f3438222c22326130333a323838303a663233653a3a5c2f3438222c22326130333a323838303a663233663a3a5c2f3438222c22326130333a323838303a663066663a3a5c2f3438222c22326130333a323838303a663166663a3a5c2f3438222c22326130333a323838303a663266663a3a5c2f3438222c22326330663a656637383a303030333a3a5c2f3438225d7d2c22757074696d65726f626f74223a7b226e223a22557074696d6520526f626f74222c2264223a747275652c2272223a5b2236392e3136322e3132342e3232345c2f3238222c2236332e3134332e34322e3234305c2f3238225d7d2c2273746174757363616b65223a7b226e223a2253746174757343616b65222c2264223a747275652c2272223a5b223130332e3139342e3131322e3730222c223130342e3133312e3234372e313531222c223130342e3133312e3234382e3635222c223130342e3133312e3234382e3738222c223130342e3135362e3232392e3234222c223130342e3135362e3235352e313834222c223130342e3230362e3136382e3236222c223130342e3233382e3136342e313035222c223130372e3135302e312e313335222c223130372e3135352e3130342e313832222c223130372e3135352e3130382e323334222c223130372e3135352e3132352e3239222c223130372e3136312e32382e323139222c223130372e3137302e3139372e323438222c223130372e3137302e3231392e3436222c223130372e3137302e3232372e3233222c223130372e3137302e3232372e3234222c223130372e3137302e3234302e313431222c223130372e3137302e35332e313931222c223130372e3139312e34372e313331222c223130372e3139312e35372e323337222c223130382e36312e3131392e313533222c223130382e36312e3136322e323134222c223130382e36312e3230352e323031222c223130382e36312e3231322e313431222c223130382e36312e3231352e313739222c223132352e36332e34382e323339222c223132382e3139392e3232322e3635222c223133382e3139372e3133302e323332222c223133382e3139372e3133302e323335222c223133382e3139372e3134302e323433222c223133382e3230342e3137312e313336222c223133382e36382e32342e313135222c223133382e36382e32342e313336222c223133382e36382e32342e323037222c223133382e36382e32342e3630222c223133382e36382e38302e3130222c223133382e36382e38302e313733222c223133392e35392e31352e3739222c223133392e35392e3135352e3236222c223133392e35392e3139302e323431222c223133392e35392e32322e313039222c223133392e35392e32362e3835222c223133392e35392e32392e313637222c223134392e3135342e3135372e3631222c223134392e3235352e35392e313030222c223135312e3233362e31302e323338222c223135312e3233362e31382e3830222c223135312e38302e3137352e323233222c223135312e38302e3137352e323236222c223135342e3132372e36302e3233222c223135342e3132372e36302e3539222c223135382e3235352e3230382e3736222c223135392e3230332e3138322e3232222c223135392e3230332e3138322e3630222c223135392e3230332e3138362e323235222c223135392e3230332e33312e3138222c223136322e3234332e3234372e313633222c223136322e3234332e37312e3536222c223136322e3234382e39372e3732222c223136322e3235332e36342e313034222c223136322e3235332e36342e3837222c223137362e35362e3233302e313130222c223137382e36322e3130312e3537222c223137382e36322e3130342e313337222c223137382e36322e3130362e3834222c223137382e36322e3130392e37222c223137382e36322e34302e323333222c223137382e36322e34312e3434222c223137382e36322e34312e3439222c223137382e36322e34312e3532222c223137382e36322e36352e313632222c223137382e36322e37312e323237222c223137382e36322e37382e313939222c223137382e36322e38302e3933222c223137382e36322e38362e3639222c223137382e37332e3231302e3939222c223138312e34312e3230312e313137222c223138312e34312e3231342e313337222c223138352e3131322e3135372e313835222c223138352e31322e34352e3730222c223138352e34372e3132392e313638222c223138352e36302e3133352e3836222c223138382e3136362e3135382e323234222c223138382e3136362e3235332e313438222c223138382e3232362e3133392e313538222c223138382e3232362e3135382e313630222c223138382e3232362e3136392e323238222c223138382e3232362e3137312e3538222c223138382e3232362e3138342e313532222c223138382e3232362e3138352e313036222c223138382e3232362e3138362e313939222c223138382e3232362e3230332e3834222c223138382e3232362e3234372e313834222c223138382e36382e3233382e3739222c223139322e3234312e3232312e3131222c223139332e3132342e3137382e3534222c223139332e3132342e3137382e3631222c223139332e3138322e3134342e313035222c223139332e3138322e3134342e313437222c223139392e3136372e3132382e3830222c223230392e3232322e33302e323432222c223231332e3138332e35362e313037222c223231372e3134382e34332e313838222c223231372e3134382e34332e323032222c2233312e3232302e372e323337222c2233372e3135372e3234362e313436222c2233372e3233352e34382e3432222c2233372e3233352e35322e3235222c2233372e3233352e35332e323430222c2233372e3233352e35352e323035222c2233372e39372e3138382e313033222c2234352e33322e3132382e3830222c2234352e33322e3134352e3739222c2234352e33322e3135312e3231222c2234352e33322e3136302e313732222c2234352e33322e3136362e313935222c2234352e33322e3137312e3234222c2234352e33322e3139322e313938222c2234352e33322e3139352e313836222c2234352e33322e3139352e3933222c2234352e33322e3231322e3536222c2234352e33322e33362e313538222c2234352e33322e372e3232222c2234352e36332e3132312e313539222c2234352e36332e32362e3738222c2234352e36332e35312e3633222c2234352e36332e36312e323133222c2234352e36332e37362e3638222c2234352e36332e37382e3834222c2234352e36332e38362e313230222c2234352e36332e38382e323133222c2234352e37362e312e3434222c2234352e37362e3139322e3530222c2234352e37362e332e313132222c2234362e3130312e302e3234222c2234362e3130312e3131302e3332222c2234362e3130312e3131302e3433222c2234362e3130312e3131302e3435222c2234362e3130312e32302e3936222c2234362e3130312e3233382e313832222c2234362e3130312e3233382e313839222c2234362e3130312e3234302e323038222c2234362e3130312e32372e313836222c2234362e3130312e36312e3833222c2234362e3130312e37342e323531222c22352e34352e3137392e313033222c2235302e322e3133392e3136222c2238322e3232312e39352e313631222c2239312e3233362e3131362e313633225d7d2c226d616e6167657770223a7b226e223a224d616e6167655750222c2264223a66616c73652c2272223a5b2233342e3231312e3138302e3636222c2235342e37302e36352e313037222c2233342e3231302e3232342e37222c2235322e34312e352e313038222c2235322e33352e37322e313239222c2235342e3139312e3133372e3137222c2233352e3136322e3235342e323533222c2235322e31312e31322e323331222c2235322e31312e32392e3730222c2235322e31312e35342e313631222c2235322e32342e3134322e313539222c2235322e32352e3139312e323535222c2235322e32372e3138312e313236222c2235322e33342e3132362e313137222c2235322e33342e3235342e3437222c2235322e33352e38322e3939222c2235322e33362e32382e3830222c2235322e33382e3130362e3937222c2235322e33392e3137372e313532222c2235322e34312e3233302e313438222c2235322e34312e3233372e3132222c2235322e34322e3132362e313636222c2235322e34332e31332e3731222c2235322e34332e37362e323234222c2235322e38382e39362e313130222c2235322e38392e3135352e3531222c2235342e3134382e37332e313138222c2235342e3138362e33372e313035222c2235342e3138372e39322e3537222c2235342e3139312e33322e3635222c2235342e3139312e36372e3233222c2235342e3139312e38302e313139222c2235342e3139312e3133352e323039222c2235342e3139312e3133362e313736222c2235342e3139312e3134382e3835222c2235342e3139312e3134392e38222c2235322e32362e3132322e3231222c2235322e32342e3138372e3239222c2235322e38392e38352e313037222c2235342e3138362e3132382e313637222c2235342e3139312e34302e313336222c2235322e32342e36322e3131222c2235322e38382e3131392e313232222c2235342e3139312e3134382e323235222c2235342e3139312e3135312e3138222c2235322e38392e39342e313231222c2235322e32352e3131362e313136222c2235322e38382e3231352e323235222c2235342e3138362e3134332e313834222c2235322e38382e3139372e313830222c2235322e32372e3137312e313236225d7d2c2273657a6e616d223a7b226e223a2253657a6e616d2053656172636820456e67696e65222c2264223a747275652c2272223a5b2237372e37352e37342e305c2f3234222c2237372e37352e37362e305c2f3234222c2237372e37352e37372e305c2f3234222c2237372e37352e37382e305c2f3234222c2237372e37352e37392e305c2f3234222c22326130323a3539383a613a3a37383a305c2f313132222c22326130323a3539383a613a3a37393a305c2f313132222c22326130323a3539383a323a3a305c2f3936225d7d7d, 'yes'),
('wp_home_url', 0x687474703a2f2f73686565706672696461792e74657374, 'yes'),
('wp_site_url', 0x687474703a2f2f73686565706672696461792e74657374, 'yes');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfcrawlers`
--

CREATE TABLE `ull_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wffilechanges`
--

CREATE TABLE `ull_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wffilemods`
--

CREATE TABLE `ull_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfhits`
--

CREATE TABLE `ull_wfhits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT 0,
  `statusCode` int(11) NOT NULL DEFAULT 200,
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `UA` text DEFAULT NULL,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text DEFAULT NULL,
  `actionData` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wfhits`
--

INSERT INTO `ull_wfhits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(1, 0.000000, 1575300967.872227, 0x00000000000000000000ffff7f000001, 0, 302, 0, 1, 0, 'http://sheepfriday.test/wp-login.php', 'http://sheepfriday.test/wp-login.php?redirect_to=http%3A%2F%2Fsheepfriday.test%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:70.0) Gecko/20100101 Firefox/70.0', 'loginOK', NULL, NULL),
(2, 0.000000, 1575379217.775339, 0x00000000000000000000ffff7f000001, 0, 302, 0, 1, 0, 'http://sheepfriday.test/wp-login.php', 'http://sheepfriday.test/wp-login.php?redirect_to=http%3A%2F%2Fsheepfriday.test%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'loginOK', NULL, NULL),
(3, 0.000000, 1575389661.968583, 0x00000000000000000000ffff7f000001, 0, 302, 0, 3, 0, 'http://sheepfriday.test/wp-login.php', 'http://sheepfriday.test/wp-login.php?redirect_to=http%3A%2F%2Fsheepfriday.test%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:70.0) Gecko/20100101 Firefox/70.0', 'loginOK', NULL, NULL),
(4, 0.000000, 1575408869.248544, 0x00000000000000000000ffff7f000001, 0, 302, 0, 2, 0, 'http://sheepfriday.test/wp-login.php', 'http://sheepfriday.test/wp-login.php?redirect_to=http%3A%2F%2Fsheepfriday.test%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'loginOK', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfhoover`
--

CREATE TABLE `ull_wfhoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text DEFAULT NULL,
  `host` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfissues`
--

CREATE TABLE `ull_wfissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wfissues`
--

INSERT INTO `ull_wfissues` (`id`, `time`, `lastUpdated`, `status`, `type`, `severity`, `ignoreP`, `ignoreC`, `shortMsg`, `longMsg`, `data`) VALUES
(1, 1575384694, 1575384694, 'new', 'wfPluginUpgrade', 50, '4ad45c543d38d53c08a070e4e063c452', '4ad45c543d38d53c08a070e4e063c452', 'The Plugin \"Jetpack by WordPress.com\" needs an upgrade (7.9.1 -> 8.0).', 'You need to upgrade \"Jetpack by WordPress.com\" to the newest version to ensure you have any security fixes the developer has released.', 'a:21:{s:20:\"WC requires at least\";s:0:\"\";s:15:\"WC tested up to\";s:0:\"\";s:3:\"Woo\";s:0:\"\";s:4:\"Name\";s:24:\"Jetpack by WordPress.com\";s:9:\"PluginURI\";s:19:\"https://jetpack.com\";s:7:\"Version\";s:5:\"7.9.1\";s:11:\"Description\";s:280:\"Bring the power of the WordPress.com cloud to your self-hosted WordPress. Jetpack enables you to connect your blog to a WordPress.com account to use the powerful features normally only available to WordPress.com users. <cite>By <a href=\"https://jetpack.com\">Automattic</a>.</cite>\";s:6:\"Author\";s:44:\"<a href=\"https://jetpack.com\">Automattic</a>\";s:9:\"AuthorURI\";s:19:\"https://jetpack.com\";s:10:\"TextDomain\";s:7:\"jetpack\";s:10:\"DomainPath\";s:11:\"/languages/\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:5:\"Title\";s:58:\"<a href=\"https://jetpack.com\">Jetpack by WordPress.com</a>\";s:10:\"AuthorName\";s:10:\"Automattic\";s:10:\"pluginFile\";s:80:\"/Users/hannaberg/Sites/sheepfriday/public/wp-content/plugins/jetpack/jetpack.php\";s:10:\"newVersion\";s:3:\"8.0\";s:4:\"slug\";s:7:\"jetpack\";s:5:\"wpURL\";s:37:\"https://wordpress.org/plugins/jetpack\";s:10:\"vulnerable\";b:0;}');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfknownfilelist`
--

CREATE TABLE `ull_wfknownfilelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wflivetraffichuman`
--

CREATE TABLE `ull_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wflocs`
--

CREATE TABLE `ull_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT 0.0000000,
  `lon` float(10,7) DEFAULT 0.0000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wflocs`
--

INSERT INTO `ull_wflocs` (`IP`, `ctime`, `failed`, `city`, `region`, `countryName`, `countryCode`, `lat`, `lon`) VALUES
(0x00000000000000000000ffff7f000001, 1575389710, 1, '', '', '', '', 0.0000000, 0.0000000);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wflogins`
--

CREATE TABLE `ull_wflogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wflogins`
--

INSERT INTO `ull_wflogins` (`id`, `hitID`, `ctime`, `fail`, `action`, `username`, `userID`, `IP`, `UA`) VALUES
(1, 1, 1575300968.111565, 0, 'loginOK', 'shaunthesheep', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:70.0) Gecko/20100101 Firefox/70.0'),
(2, 2, 1575379220.307899, 0, 'loginOK', 'hb', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'),
(3, 3, 1575389664.004759, 0, 'loginOK', 'ch', 3, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:70.0) Gecko/20100101 Firefox/70.0'),
(4, 4, 1575408870.852636, 0, 'loginOK', 'ak', 2, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfls_2fa_secrets`
--

CREATE TABLE `ull_wfls_2fa_secrets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `vtime` int(10) UNSIGNED NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfls_settings`
--

CREATE TABLE `ull_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wfls_settings`
--

INSERT INTO `ull_wfls_settings` (`name`, `value`, `autoload`) VALUES
('allow-xml-rpc', 0x31, 'yes'),
('captcha-stats', 0x7b22636f756e7473223a5b302c302c302c302c302c302c302c302c302c302c305d2c22617667223a307d, 'yes'),
('delete-deactivation', '', 'yes'),
('enable-auth-captcha', '', 'yes'),
('global-notices', 0x5b5d, 'yes'),
('ip-source', '', 'yes'),
('ip-trusted-proxies', '', 'yes'),
('last-secret-refresh', 0x31353735323839383235, 'yes'),
('ntp-offset', 0x34382e393833323030353530303739, 'yes'),
('recaptcha-threshold', 0x302e35, 'yes'),
('remember-device', '', 'yes'),
('remember-device-duration', 0x32353932303030, 'yes'),
('require-2fa-grace-period-enabled', '', 'yes'),
('require-2fa.administrator', '', 'yes'),
('shared-hash-secret', 0x38643038323539633663646261376138663732383235663831383436316662393938373634343635356563383737326635346536663466363833323432363533, 'yes'),
('shared-symmetric-secret', 0x64386235663636643866643433336432636535323838613261373336623262313666616330613866303565646237643031303465383936303233303763623934, 'yes'),
('use-ntp', 0x31, 'yes'),
('whitelisted', '', 'yes'),
('xmlrpc-enabled', 0x31, 'yes');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfnotifications`
--

CREATE TABLE `ull_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1000,
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wfnotifications`
--

INSERT INTO `ull_wfnotifications` (`id`, `new`, `category`, `priority`, `ctime`, `html`, `links`) VALUES
('site-AEAAAAA', 1, 'wfplugin_updates', 502, 1575384690, '<a href=\"http://sheepfriday.test/wp-admin/update-core.php\">An update is available for 1 plugin</a>', '[]'),
('site-AIAAAAA', 1, 'wfplugin_scan', 502, 1575384695, '<a href=\"http://sheepfriday.test/wp-admin/admin.php?page=WordfenceScan\">1 issue found in most recent scan</a>', '[]');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfpendingissues`
--

CREATE TABLE `ull_wfpendingissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfreversecache`
--

CREATE TABLE `ull_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wfreversecache`
--

INSERT INTO `ull_wfreversecache` (`IP`, `host`, `lastUpdate`) VALUES
(0x00000000000000000000ffff7f000001, 'localhost', 1575389710);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfsnipcache`
--

CREATE TABLE `ull_wfsnipcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wfstatus`
--

CREATE TABLE `ull_wfstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_wfstatus`
--

INSERT INTO `ull_wfstatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(1, 1575289857.839858, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(2, 1575289857.843170, 1, 'info', 'Initiating quick scan'),
(3, 1575289857.848611, 10, 'info', 'SUM_START:Checking Web Application Firewall status'),
(4, 1575289857.849815, 10, 'info', 'SUM_ENDOK:Checking Web Application Firewall status'),
(5, 1575289857.857715, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(6, 1575289857.871093, 10, 'info', 'SUM_ENDOK:Scanning for old themes, plugins and core files'),
(7, 1575289857.876348, 1, 'info', '-------------------'),
(8, 1575289857.878403, 2, 'info', 'Wordfence used 0 B of memory for scan. Server peak memory usage was: 4.5 MB'),
(9, 1575289857.879407, 1, 'info', 'Quick Scan Complete. Scanned in less than 1 second.'),
(10, 1575289857.880257, 10, 'info', 'SUM_FINAL:Scan complete. Congratulations, no new problems found.'),
(11, 1575384693.646873, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(12, 1575384693.745178, 1, 'info', 'Initiating quick scan'),
(13, 1575384694.070973, 10, 'info', 'SUM_START:Checking Web Application Firewall status'),
(14, 1575384694.101255, 10, 'info', 'SUM_ENDOK:Checking Web Application Firewall status'),
(15, 1575384694.685721, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(16, 1575384694.988026, 10, 'info', 'SUM_ENDBAD:Scanning for old themes, plugins and core files'),
(17, 1575384695.135967, 1, 'info', '-------------------'),
(18, 1575384695.179718, 2, 'info', 'Wordfence used 0 B of memory for scan. Server peak memory usage was: 4 MB'),
(19, 1575384695.194934, 1, 'info', 'Quick Scan Complete. Scanned in 2 seconds.'),
(20, 1575384695.210991, 10, 'info', 'SUM_FINAL:Scan complete. You have 1 new issue to fix. See below.');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_wftrafficrates`
--

CREATE TABLE `ull_wftrafficrates` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_api_keys`
--

CREATE TABLE `ull_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_attribute_taxonomies`
--

CREATE TABLE `ull_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `ull_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_log`
--

CREATE TABLE `ull_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_order_itemmeta`
--

CREATE TABLE `ull_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_order_items`
--

CREATE TABLE `ull_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_payment_tokenmeta`
--

CREATE TABLE `ull_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_payment_tokens`
--

CREATE TABLE `ull_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_sessions`
--

CREATE TABLE `ull_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_woocommerce_sessions`
--

INSERT INTO `ull_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(32, '4b653ab8e187b3135c8fa43f33385f4d', 'a:1:{s:8:\"customer\";s:710:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"SE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"SE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"Hanna.berg93@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1575909108),
(35, '1', 'a:8:{s:4:\"cart\";s:815:\"a:2:{s:32:\"7f1de29e6da19d22b51c68001e7e0e54\";a:11:{s:3:\"key\";s:32:\"7f1de29e6da19d22b51c68001e7e0e54\";s:10:\"product_id\";i:135;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:30;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:30;s:8:\"line_tax\";i:0;}s:32:\"3ef815416f775098fe977004015c6193\";a:11:{s:3:\"key\";s:32:\"3ef815416f775098fe977004015c6193\";s:10:\"product_id\";i:85;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:24;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:24;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:405:\"a:15:{s:8:\"subtotal\";s:5:\"54.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"54.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"54.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:411:\"a:1:{s:32:\"2a79ea27c279e471f4d180b08d62b00a\";a:11:{s:3:\"key\";s:32:\"2a79ea27c279e471f4d180b08d62b00a\";s:10:\"product_id\";i:155;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:26;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:26;s:8:\"line_tax\";i:0;}}\";s:8:\"customer\";s:710:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"SE\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"SE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"Hanna.berg93@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1575970082);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_shipping_zones`
--

CREATE TABLE `ull_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_woocommerce_shipping_zones`
--

INSERT INTO `ull_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Sweden', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_shipping_zone_locations`
--

CREATE TABLE `ull_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumpning av Data i tabell `ull_woocommerce_shipping_zone_locations`
--

INSERT INTO `ull_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'SE', 'country');

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_shipping_zone_methods`
--

CREATE TABLE `ull_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_tax_rates`
--

CREATE TABLE `ull_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_woocommerce_tax_rate_locations`
--

CREATE TABLE `ull_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_yith_wcwl`
--

CREATE TABLE `ull_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellstruktur `ull_yith_wcwl_lists`
--

CREATE TABLE `ull_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text DEFAULT NULL,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT 0,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `ull_yith_wcwl_lists`
--

INSERT INTO `ull_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`) VALUES
(1, 2, '', '', '4KX1SKKNCYAM', 0, 1, '2019-12-06 12:09:23');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `ull_commentmeta`
--
ALTER TABLE `ull_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index för tabell `ull_comments`
--
ALTER TABLE `ull_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index för tabell `ull_duplicator_packages`
--
ALTER TABLE `ull_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Index för tabell `ull_links`
--
ALTER TABLE `ull_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index för tabell `ull_options`
--
ALTER TABLE `ull_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index för tabell `ull_postmeta`
--
ALTER TABLE `ull_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index för tabell `ull_posts`
--
ALTER TABLE `ull_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index för tabell `ull_termmeta`
--
ALTER TABLE `ull_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index för tabell `ull_terms`
--
ALTER TABLE `ull_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index för tabell `ull_term_relationships`
--
ALTER TABLE `ull_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index för tabell `ull_term_taxonomy`
--
ALTER TABLE `ull_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index för tabell `ull_usermeta`
--
ALTER TABLE `ull_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index för tabell `ull_users`
--
ALTER TABLE `ull_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index för tabell `ull_wc_download_log`
--
ALTER TABLE `ull_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index för tabell `ull_wc_product_meta_lookup`
--
ALTER TABLE `ull_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Index för tabell `ull_wc_tax_rate_classes`
--
ALTER TABLE `ull_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Index för tabell `ull_wc_webhooks`
--
ALTER TABLE `ull_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index för tabell `ull_wfblockediplog`
--
ALTER TABLE `ull_wfblockediplog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Index för tabell `ull_wfblocks7`
--
ALTER TABLE `ull_wfblocks7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `IP` (`IP`),
  ADD KEY `expiration` (`expiration`);

--
-- Index för tabell `ull_wfconfig`
--
ALTER TABLE `ull_wfconfig`
  ADD PRIMARY KEY (`name`);

--
-- Index för tabell `ull_wfcrawlers`
--
ALTER TABLE `ull_wfcrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Index för tabell `ull_wffilechanges`
--
ALTER TABLE `ull_wffilechanges`
  ADD PRIMARY KEY (`filenameHash`);

--
-- Index för tabell `ull_wffilemods`
--
ALTER TABLE `ull_wffilemods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Index för tabell `ull_wfhits`
--
ALTER TABLE `ull_wfhits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Index för tabell `ull_wfhoover`
--
ALTER TABLE `ull_wfhoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Index för tabell `ull_wfissues`
--
ALTER TABLE `ull_wfissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Index för tabell `ull_wfknownfilelist`
--
ALTER TABLE `ull_wfknownfilelist`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `ull_wflivetraffichuman`
--
ALTER TABLE `ull_wflivetraffichuman`
  ADD PRIMARY KEY (`IP`,`identifier`),
  ADD KEY `expiration` (`expiration`);

--
-- Index för tabell `ull_wflocs`
--
ALTER TABLE `ull_wflocs`
  ADD PRIMARY KEY (`IP`);

--
-- Index för tabell `ull_wflogins`
--
ALTER TABLE `ull_wflogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Index för tabell `ull_wfls_2fa_secrets`
--
ALTER TABLE `ull_wfls_2fa_secrets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index för tabell `ull_wfls_settings`
--
ALTER TABLE `ull_wfls_settings`
  ADD PRIMARY KEY (`name`);

--
-- Index för tabell `ull_wfnotifications`
--
ALTER TABLE `ull_wfnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `ull_wfpendingissues`
--
ALTER TABLE `ull_wfpendingissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Index för tabell `ull_wfreversecache`
--
ALTER TABLE `ull_wfreversecache`
  ADD PRIMARY KEY (`IP`);

--
-- Index för tabell `ull_wfsnipcache`
--
ALTER TABLE `ull_wfsnipcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Index för tabell `ull_wfstatus`
--
ALTER TABLE `ull_wfstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Index för tabell `ull_wftrafficrates`
--
ALTER TABLE `ull_wftrafficrates`
  ADD PRIMARY KEY (`eMin`,`IP`,`hitType`);

--
-- Index för tabell `ull_woocommerce_api_keys`
--
ALTER TABLE `ull_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index för tabell `ull_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ull_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index för tabell `ull_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ull_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Index för tabell `ull_woocommerce_log`
--
ALTER TABLE `ull_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index för tabell `ull_woocommerce_order_itemmeta`
--
ALTER TABLE `ull_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index för tabell `ull_woocommerce_order_items`
--
ALTER TABLE `ull_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index för tabell `ull_woocommerce_payment_tokenmeta`
--
ALTER TABLE `ull_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index för tabell `ull_woocommerce_payment_tokens`
--
ALTER TABLE `ull_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index för tabell `ull_woocommerce_sessions`
--
ALTER TABLE `ull_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Index för tabell `ull_woocommerce_shipping_zones`
--
ALTER TABLE `ull_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index för tabell `ull_woocommerce_shipping_zone_locations`
--
ALTER TABLE `ull_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index för tabell `ull_woocommerce_shipping_zone_methods`
--
ALTER TABLE `ull_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index för tabell `ull_woocommerce_tax_rates`
--
ALTER TABLE `ull_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index för tabell `ull_woocommerce_tax_rate_locations`
--
ALTER TABLE `ull_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index för tabell `ull_yith_wcwl`
--
ALTER TABLE `ull_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Index för tabell `ull_yith_wcwl_lists`
--
ALTER TABLE `ull_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `ull_commentmeta`
--
ALTER TABLE `ull_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_comments`
--
ALTER TABLE `ull_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT för tabell `ull_duplicator_packages`
--
ALTER TABLE `ull_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT för tabell `ull_links`
--
ALTER TABLE `ull_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_options`
--
ALTER TABLE `ull_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2994;

--
-- AUTO_INCREMENT för tabell `ull_postmeta`
--
ALTER TABLE `ull_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1261;

--
-- AUTO_INCREMENT för tabell `ull_posts`
--
ALTER TABLE `ull_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT för tabell `ull_termmeta`
--
ALTER TABLE `ull_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT för tabell `ull_terms`
--
ALTER TABLE `ull_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT för tabell `ull_term_taxonomy`
--
ALTER TABLE `ull_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT för tabell `ull_usermeta`
--
ALTER TABLE `ull_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT för tabell `ull_users`
--
ALTER TABLE `ull_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT för tabell `ull_wc_download_log`
--
ALTER TABLE `ull_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_wc_tax_rate_classes`
--
ALTER TABLE `ull_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT för tabell `ull_wc_webhooks`
--
ALTER TABLE `ull_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_wfblocks7`
--
ALTER TABLE `ull_wfblocks7`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_wfhits`
--
ALTER TABLE `ull_wfhits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT för tabell `ull_wfhoover`
--
ALTER TABLE `ull_wfhoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_wfissues`
--
ALTER TABLE `ull_wfissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT för tabell `ull_wfknownfilelist`
--
ALTER TABLE `ull_wfknownfilelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_wflogins`
--
ALTER TABLE `ull_wflogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT för tabell `ull_wfls_2fa_secrets`
--
ALTER TABLE `ull_wfls_2fa_secrets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_wfpendingissues`
--
ALTER TABLE `ull_wfpendingissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_wfsnipcache`
--
ALTER TABLE `ull_wfsnipcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_wfstatus`
--
ALTER TABLE `ull_wfstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_api_keys`
--
ALTER TABLE `ull_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_attribute_taxonomies`
--
ALTER TABLE `ull_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `ull_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_log`
--
ALTER TABLE `ull_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_order_itemmeta`
--
ALTER TABLE `ull_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_order_items`
--
ALTER TABLE `ull_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_payment_tokenmeta`
--
ALTER TABLE `ull_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_payment_tokens`
--
ALTER TABLE `ull_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_sessions`
--
ALTER TABLE `ull_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_shipping_zones`
--
ALTER TABLE `ull_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_shipping_zone_locations`
--
ALTER TABLE `ull_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_shipping_zone_methods`
--
ALTER TABLE `ull_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_tax_rates`
--
ALTER TABLE `ull_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_woocommerce_tax_rate_locations`
--
ALTER TABLE `ull_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `ull_yith_wcwl`
--
ALTER TABLE `ull_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT för tabell `ull_yith_wcwl_lists`
--
ALTER TABLE `ull_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `ull_wc_download_log`
--
ALTER TABLE `ull_wc_download_log`
  ADD CONSTRAINT `fk_ull_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `ull_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
