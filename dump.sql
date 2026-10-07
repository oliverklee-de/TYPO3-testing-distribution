
-- Dump of TYPO3 Connection "Default"
/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: db    Database: db
-- ------------------------------------------------------
-- Server version	10.6.28-MariaDB-ubu2204-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `config` longtext DEFAULT NULL,
  `icon` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_dashboards` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `widgets` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES
(1,0,1681136030,1681136030,2,0,0,0,0,'a789be90af62969620339f403de7f74072572aaa','My dashboard','{\"36614fbb7345fceb73410b7d44d6b2a318817652\":{\"identifier\":\"t3information\"},\"190eb4a17cd5ef72093fc22c291f99103051a210\":{\"identifier\":\"docGettingStarted\"}}');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` longtext DEFAULT NULL,
  `explicit_allowdeny` longtext DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` longtext DEFAULT NULL,
  `db_mountpoints` longtext DEFAULT NULL,
  `pagetypes_select` longtext DEFAULT NULL,
  `tables_select` longtext DEFAULT NULL,
  `tables_modify` longtext DEFAULT NULL,
  `groupMods` longtext DEFAULT NULL,
  `availableWidgets` longtext DEFAULT NULL,
  `file_mountpoints` varchar(255) DEFAULT '',
  `file_permissions` longtext DEFAULT NULL,
  `TSconfig` longtext DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT '',
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category_perms` longtext DEFAULT NULL,
  `mfa_providers` longtext DEFAULT NULL,
  `tsconfig_includes` varchar(255) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `usergroup` varchar(512) DEFAULT '',
  `lang` varchar(10) NOT NULL DEFAULT 'en',
  `email` varchar(255) NOT NULL DEFAULT '',
  `db_mountpoints` longtext DEFAULT NULL,
  `options` smallint(5) unsigned NOT NULL DEFAULT 3,
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` longtext DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` varchar(255) DEFAULT '',
  `file_permissions` longtext DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TSconfig` longtext DEFAULT NULL,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` longtext DEFAULT NULL,
  `password_reset_token` varchar(128) NOT NULL DEFAULT '',
  `mfa` mediumblob DEFAULT NULL,
  `user_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`user_settings`)),
  `tsconfig_includes` varchar(255) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES
(1,0,1668178395,1668178395,0,0,0,0,NULL,'_cli_',0,'$argon2i$v=19$m=65536,t=16,p=1$blVUUDcvMkZnS0E4cXRYaQ$Drs1ruYAO6r9+xXd1ACXlyzx7Chg/oIUGKaUg91jtDo',1,'','en','',NULL,0,'',NULL,'','a:12:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:7:\"default\";s:19:\"firstLoginTimeStamp\";i:1668178395;}',NULL,NULL,1,NULL,0,0,NULL,'',NULL,'{\"emailMeAtLogin\":0,\"titleLen\":50,\"edit_docModuleUpload\":\"1\"}',''),
(2,0,1699808021,1668446719,0,0,0,0,NULL,'admin',0,'$argon2id$v=19$m=65536,t=16,p=1$Sy5pVVdjU3NvWTlwaVY0cg$C2yPSbO5h5VgGHEbwccLlYQ8DCHbq8JNJX8fF5+2NdE',1,'','de','',NULL,0,'',NULL,'','a:27:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:12:{s:10:\"web_layout\";a:5:{s:8:\"viewMode\";i:1;s:10:\"showHidden\";b:1;s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";s:9:\"languages\";a:1:{i:0;i:0;}}s:8:\"web_list\";a:2:{s:9:\"clipBoard\";s:1:\"0\";s:15:\"bigControlPanel\";s:1:\"1\";}s:10:\"FormEngine\";a:2:{i:0;a:0:{}i:1;s:32:\"581106f297d9eed8dec1190ee4d6b04d\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:16:\"opendocs::recent\";a:8:{s:32:\"581106f297d9eed8dec1190ee4d6b04d\";a:5:{i:0;s:12:\"Leckere Tees\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B3%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:3;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:91:\"/typo3/module/web/list?token=dc824d366c7816e3cc2b07af3c4b518ad2669a25&id=9&table=&pointer=1\";}s:32:\"4f49e7a015546b1f05fbc75fa2b5ea2c\";a:5:{i:0;s:3:\"Tea\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:41;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";a:1:{s:5:\"pages\";a:1:{s:16:\"sys_language_uid\";s:1:\"1\";}}s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:77:\"&edit%5Bpages%5D%5B41%5D=edit&overrideVals%5Bpages%5D%5Bsys_language_uid%5D=1\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:41;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:91:\"/typo3/module/web/list?token=dc824d366c7816e3cc2b07af3c4b518ad2669a25&id=9&table=&pointer=1\";}s:32:\"7379749a99e9acb386dd0e97c5e558df\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:20;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B20%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:20;s:3:\"pid\";i:21;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"1c6b8631e9334e0979c16107e5ab9ab6\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:40;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B40%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:40;s:3:\"pid\";i:49;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"062fe123aa6de8f1be4afd4e90062279\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:37;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B37%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:37;s:3:\"pid\";i:47;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"d4da84319118bf151b548cc61b911282\";a:4:{i:0;s:20:\"Veranstaltungsarchiv\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:35;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B35%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:35;s:3:\"pid\";i:45;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"f7e608d6e9127a38fb480425c61d2c10\";a:4:{i:0;s:22:\"Veranstaltungsausblick\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:36;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B36%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:36;s:3:\"pid\";i:46;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"0252c6c61f28307400b80ac7e01e4c3c\";a:4:{i:0;s:16:\"My Registrations\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:49;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B49%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:49;s:3:\"pid\";i:16;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:16:\"browse_links.php\";a:1:{s:10:\"expandPage\";s:1:\"3\";}s:18:\"list/displayFields\";a:4:{s:5:\"pages\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"hidden\";i:2;s:4:\"slug\";}s:20:\"tx_seminars_seminars\";a:2:{i:0;s:5:\"title\";i:1;s:5:\"place\";}s:17:\"tx_seminars_sites\";a:3:{i:0;s:5:\"title\";i:1;s:4:\"city\";i:2;s:7:\"address\";}s:23:\"tx_seminars_attendances\";a:2:{i:0;s:5:\"title\";i:1;s:18:\"registration_queue\";}}s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:337:\"O:39:\"TYPO3\\CMS\\Belog\\Domain\\Model\\Constraint\":11:{s:14:\"\0*\0userOrGroup\";s:1:\"0\";s:9:\"\0*\0number\";i:20;s:15:\"\0*\0workspaceUid\";i:-99;s:10:\"\0*\0channel\";s:3:\"php\";s:8:\"\0*\0level\";s:5:\"debug\";s:17:\"\0*\0startTimestamp\";i:0;s:15:\"\0*\0endTimestamp\";i:0;s:18:\"\0*\0manualDateStart\";N;s:17:\"\0*\0manualDateStop\";N;s:9:\"\0*\0pageId\";i:0;s:8:\"\0*\0depth\";i:0;}\";s:12:\"system_dbint\";a:3:{s:8:\"function\";s:8:\"refindex\";s:6:\"search\";s:3:\"raw\";s:22:\"search_query_makeQuery\";s:3:\"all\";}s:13:\"system_config\";a:2:{s:4:\"tree\";s:8:\"confVars\";s:11:\"regexSearch\";b:0;}s:28:\"dashboard/current_dashboard/\";s:40:\"a789be90af62969620339f403de7f74072572aaa\";s:6:\"web_ts\";a:8:{s:8:\"function\";s:88:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateConstantEditorModuleFunctionController\";s:8:\"language\";N;s:19:\"constant_editor_cat\";s:27:\"plugin.tx_seminars.settings\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:23:\"ts_browser_showComments\";s:1:\"1\";s:25:\"tsbrowser_depthKeys_setup\";a:3:{s:6:\"plugin\";i:1;s:18:\"plugin.tx_seminars\";i:1;s:30:\"plugin.tx_seminars.persistence\";i:1;}s:20:\"ts_browser_alphaSort\";s:1:\"1\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1668446726;s:15:\"moduleSessionID\";a:11:{s:10:\"web_layout\";s:40:\"ae3e982ede96b24fca9ca6ca7545f2bc4dd66dfb\";s:8:\"web_list\";s:40:\"f2e0259ede2cfcbce4d6885d48211ebc886122aa\";s:10:\"FormEngine\";s:40:\"dda907315a544e856a68a3e25d91ccf510bcc181\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"dda907315a544e856a68a3e25d91ccf510bcc181\";s:16:\"opendocs::recent\";s:40:\"dda907315a544e856a68a3e25d91ccf510bcc181\";s:16:\"browse_links.php\";s:40:\"ae3e982ede96b24fca9ca6ca7545f2bc4dd66dfb\";s:18:\"list/displayFields\";s:40:\"eb0e160a6fd2499653bebe02465fd4cf7a1fa3fc\";s:47:\"TYPO3\\CMS\\Belog\\Controller\\BackendLogController\";s:40:\"6be72ab34d6d72be6cbf3fb95279ea267d98cec1\";s:12:\"system_dbint\";s:40:\"a8272af325bdfbf71dfc5f9ea5a77f2a4eb728ff\";s:28:\"dashboard/current_dashboard/\";s:40:\"caf54c66d08fb403b77ce515a7c1e7897bf9e63e\";s:6:\"web_ts\";s:40:\"183fe9df0af5487cae4ba2b1a2d061b7ae0d40aa\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:10:{s:3:\"0_2\";s:1:\"1\";s:3:\"0_5\";s:1:\"1\";s:3:\"0_1\";s:1:\"1\";s:4:\"0_16\";s:1:\"1\";s:4:\"0_18\";s:1:\"0\";s:4:\"0_11\";s:1:\"1\";s:4:\"0_20\";s:1:\"1\";s:4:\"0_19\";s:1:\"1\";s:3:\"0_9\";s:1:\"1\";s:4:\"0_36\";s:1:\"0\";}}}}s:10:\"modulemenu\";s:52:\"{\"site\":true,\"file\":true,\"system\":true,\"tools\":true}\";s:11:\"browseTrees\";a:1:{s:11:\"browsePages\";s:34:\"[{\"0\":1,\"1\":1,\"16\":1,\"2\":1,\"5\":1}]\";}s:17:\"systeminformation\";s:45:\"{\"system_BelogLog\":{\"lastAccess\":1780577550}}\";s:11:\"tx_recycler\";a:3:{s:14:\"depthSelection\";i:999;s:14:\"tableSelection\";s:0:\"\";s:11:\"resultLimit\";i:25;}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:11:\"startModule\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:0:\"\";s:18:\"resetConfiguration\";s:0:\"\";s:12:\"mfaProviders\";s:0:\"\";s:18:\"backendTitleFormat\";s:10:\"titleFirst\";}',NULL,NULL,1,NULL,1791370010,0,NULL,'',NULL,'{\"emailMeAtLogin\":0,\"mfaProviders\":\"\",\"startModule\":\"\",\"backendTitleFormat\":\"titleFirst\",\"titleLen\":\"50\",\"edit_docModuleUpload\":1,\"showHiddenFilesAndFolders\":0,\"copyLevels\":\"\"}','');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `subgroup` varchar(255) DEFAULT '',
  `felogin_redirectPid` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
INSERT INTO `fe_groups` VALUES
(1,4,1627917152,1627917152,0,0,'','normal users','',''),
(2,4,1627917165,1627917165,0,0,'','onetimeaccount','',''),
(4,4,1627923245,1627922753,0,0,'','editors','1','');
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` varchar(512) DEFAULT '',
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` longtext DEFAULT NULL,
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `felogin_redirectPid` longtext DEFAULT NULL,
  `felogin_forgotHash` varchar(160) DEFAULT '',
  `mfa` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
INSERT INTO `fe_users` VALUES
(1,4,1670000836,1627917285,0,0,0,0,'','0','attendee','$argon2i$v=19$m=65536,t=16,p=1$ODBXYmZrYkQ2akMwa1lHYg$iWz2uY5XHXAhjqG69uFSQDWvy/y1G931gk/s19sfBxo','1','Anna A. Attendee','Anna','Ariana','Attendee','Bertha-von-Suttner-Platz 1','+29 228 111111','','attendee@example.com','a:1:{s:49:\"tx_seminars_registration_editor_method_of_payment\";s:1:\"1\";}','','53111','Bonn','Germany','','Anna Enterprises',0,1757318006,1757318069,'','',NULL),
(3,4,1627922848,1627922848,0,0,0,0,'','0','editor','$argon2i$v=19$m=65536,t=16,p=1$N3IuWjhQUXBzRlkyUy45Wg$ktEw18UKASsqun0SoZDh8pG8ELNjo+wyrG6mbmoO8bw','1,4','Eddi Editor','Eddi','','Editor','','','','editor@example.com',NULL,'','','','','','',0,1757317982,1757317982,'','',NULL),
(4,4,1628002830,1628002830,0,0,0,0,'','0','attendee1','$argon2i$v=19$m=65536,t=16,p=1$emEybmJQYi91N2NNUUVYcQ$8fJzJXhtMf2S8g0BWWgyT42ARYE25QogTLZFFGmHNRc','1','Joe Attendee','Joe','','Attendee','','','','joe@example.com',NULL,'','','','','','',0,0,0,'','',NULL),
(5,4,1628002865,1628002862,0,0,0,0,'','0','attendee2','$argon2i$v=19$m=65536,t=16,p=1$THlYU0p2NDNseEd5N3RhNQ$eUEKyg2qTgUPr4oWcFacQ/s4J+9u4QQfQYPVQWdR1HM','1','Max Attendee','Max','','Attendee','','','','max@example.com',NULL,'','','','','','',0,0,0,'','',NULL),
(6,4,1670000977,1670000977,0,0,0,0,'','0','admin','$argon2i$v=19$m=65536,t=16,p=1$cjR4ZVR1NXlLMUJIYkZoUQ$7HXMQwbSppGCYiBAYbMuyHOsi1FRWttEBCwQqF/t53U','4,3,1','Anton R. Admin','Anton','R.','Admin','Admin Avenue 4','+49 228 12345678','','admin@example.com',NULL,'','53111','Bonn','Germany','','Admin Inc.',0,1671044482,1671044482,'','',NULL);
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_definition`
--

DROP TABLE IF EXISTS `form_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_definition` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `configuration` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`configuration`)),
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_definition`
--

LOCK TABLES `form_definition` WRITE;
/*!40000 ALTER TABLE `form_definition` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` text DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 1,
  `TSconfig` longtext DEFAULT NULL,
  `is_siteroot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` bigint(20) NOT NULL DEFAULT 0,
  `keywords` longtext DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` bigint(20) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` longtext DEFAULT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` smallint(5) unsigned NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` longtext DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `no_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT 0,
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` longtext DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  `canonical_link` text NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `link` text NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `contentFromPid` (`content_from_pid`),
  KEY `translation_source` (`l10n_source`,`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,0,1627916053,1627915543,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Home','/',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627916053,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(2,1,1683113842,1627915775,0,0,0,0,'0',1536,NULL,0,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Data','/1',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(3,2,1683114315,1627915802,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"hidden\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Tea','/tea-storage',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(4,2,1627916082,1627915808,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,'{\"doktype\":null,\"title\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"hidden\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Users','/users',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'fe_users',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(5,2,1627921950,1627915869,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Event data','/seminars-1',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(6,2,1627915887,1627915882,0,0,0,0,'0',64,NULL,0,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'TypoScript templates','/typoscript-templates',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(7,1,1654167028,1627915894,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Login','/login',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1654167028,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(8,1,1654167028,1627916000,0,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Home','/home',4,NULL,0,0,1,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(9,1,1654167028,1627916163,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Tea','/tea',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1654167028,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(10,9,1627916491,1627916399,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Single','/single',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627916491,NULL,'',0,'','','',1,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(11,5,1627921931,1627921774,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Events','/event-data',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(12,5,1627921975,1627921808,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Registrations','/registrations',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(13,11,1627921957,1627921940,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Topics','/topics',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(14,11,1628001568,1627921966,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,'{\"title\":null}',0,0,0,0,1,0,31,27,0,'Event dates','/events-dates',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(15,5,1627922003,1627921995,0,0,0,0,'0',768,NULL,0,0,0,0,NULL,'{\"hidden\":null}',0,0,0,0,1,0,31,27,0,'Data pool (speaker, sites, …)','/data-pl-speaker-sites',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(16,1,1654167028,1627922127,0,0,0,0,'0',1280,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Seminars','/seminars',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1654167028,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(17,16,1669819115,1627922292,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Details','/seminars/details',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',1,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(18,16,1669819115,1627922292,0,0,0,0,'',512,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Registration','/seminars/registration',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',1,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(19,16,1669819115,1627922292,0,0,0,0,'-2',768,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'My Events','/seminars/my-events',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(21,16,1669819115,1627922292,0,0,0,0,'4',1280,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'FE Editor','/seminars/my-created-events',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(22,18,1627922430,1627922397,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Thank you','/2/thank-you',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1627922430,NULL,'',0,'','','',1,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(26,16,1669819115,1627922886,0,0,0,0,'0',384,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Categories','/seminars/categories',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(27,16,1669819115,1627923323,0,0,0,0,'0',320,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Topics','/seminars/topics',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(29,18,1627923496,1627923479,0,0,0,0,'',512,NULL,0,0,0,0,NULL,'{\"doktype\":null,\"title\":null,\"nav_title\":null,\"subtitle\":null,\"abstract\":null,\"keywords\":null,\"description\":null,\"author\":null,\"author_email\":null,\"lastUpdated\":null,\"layout\":null,\"newUntil\":null,\"backend_layout\":null,\"backend_layout_next_level\":null,\"content_from_pid\":null,\"alias\":null,\"target\":null,\"cache_timeout\":null,\"cache_tags\":null,\"is_siteroot\":null,\"no_search\":null,\"php_tree_stop\":null,\"module\":null,\"media\":null,\"tsconfig_includes\":null,\"TSconfig\":null,\"l18n_cfg\":null,\"hidden\":null,\"nav_hide\":null,\"starttime\":null,\"endtime\":null,\"extendToSubpages\":null,\"fe_group\":null,\"fe_login_mode\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,1,0,31,27,0,'Oh no!','/2/registration/oh-no',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',1,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(30,11,1628003426,1628003426,0,0,0,0,'0',768,'',0,0,0,0,NULL,'',0,0,0,0,1,0,31,27,0,'FE-created','/fe-created',254,'',0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','','',0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(31,0,1631546526,1631546510,0,0,0,0,'',256,NULL,0,1,1,1,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\"}','{\"doktype\":1,\"title\":\"Home\",\"slug\":\"\\/\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":null,\"keywords\":null,\"description\":null,\"hidden\":0,\"categories\":0,\"rowDescription\":null,\"TSconfig\":null,\"php_tree_stop\":0,\"editlock\":0,\"layout\":0,\"fe_group\":\"0\",\"extendToSubpages\":0,\"target\":\"\",\"alias\":\"\",\"cache_timeout\":0,\"cache_tags\":\"\",\"mount_pid\":0,\"is_siteroot\":0,\"mount_pid_ol\":0,\"module\":\"\",\"fe_login_mode\":0,\"l18n_cfg\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null}',0,0,0,0,1,0,31,27,0,'Home','/',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1631546526,NULL,'',0,'','','',0,0,0,0,0,'','','',0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(32,16,1669819115,1631549780,0,0,0,0,'',128,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,1,0,31,27,0,'Alle Spalten','/seminars/alle-spalten',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(33,16,1669819115,1669818665,0,0,0,0,'',1792,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,2,0,31,27,0,'AGB','/seminars/agb',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(34,16,1669819115,1669818687,0,0,0,0,'',2048,NULL,0,0,0,0,NULL,'{\"slug\":null,\"title\":null}',0,0,0,0,2,0,31,27,0,'Reisebedingungen','/seminars/reisebedingungen',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1669819115,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(36,16,1681136052,1681136048,0,0,0,0,'0',640,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,0,31,27,0,'Weitere Infos','/seminars/weitere-infos',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1681136052,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(37,36,1681136157,1681136061,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,0,31,27,0,'Joe Speaker','/seminars/weitere-infos/joe-speaker',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1681136157,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(38,36,1681136157,1681136068,0,0,0,0,'',512,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,0,31,27,0,'TYPO3 Trainer Network','/seminars/typo3-trainer-network',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1681136157,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(39,36,1681136157,1681136085,0,0,0,0,'',768,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,0,31,27,0,'Hostel','/seminars/weitere-infos/hostel',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1681136157,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(40,2,1683114369,1683114297,0,0,0,0,'',256,NULL,0,1,3,3,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\"}','{\"doktype\":\"254\",\"slug\":\"\\/tea-storage\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"title\\\":null}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Tea\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"0\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"fe_login_mode\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Tea','/tea-storage-english',254,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,'','','',0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(41,1,1683114500,1683114445,0,0,0,0,'',512,NULL,0,1,9,9,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\"}','{\"doktype\":\"1\",\"slug\":\"\\/tea\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"slug\\\":null,\\\"title\\\":null}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Tea\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"0\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"fe_login_mode\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Tea','/tea',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1683114500,NULL,'',0,'','','',0,0,0,0,0,'','','',0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(42,9,1683114496,1683114461,0,0,0,0,'',256,NULL,0,1,10,10,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\"}','{\"doktype\":\"1\",\"slug\":\"\\/single\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"doktype\\\":null,\\\"title\\\":null,\\\"nav_title\\\":null,\\\"subtitle\\\":null,\\\"abstract\\\":null,\\\"keywords\\\":null,\\\"description\\\":null,\\\"author\\\":null,\\\"author_email\\\":null,\\\"lastUpdated\\\":null,\\\"layout\\\":null,\\\"newUntil\\\":null,\\\"backend_layout\\\":null,\\\"backend_layout_next_level\\\":null,\\\"content_from_pid\\\":null,\\\"alias\\\":null,\\\"target\\\":null,\\\"cache_timeout\\\":null,\\\"cache_tags\\\":null,\\\"is_siteroot\\\":null,\\\"no_search\\\":null,\\\"php_tree_stop\\\":null,\\\"module\\\":null,\\\"media\\\":null,\\\"tsconfig_includes\\\":null,\\\"TSconfig\\\":null,\\\"l18n_cfg\\\":null,\\\"hidden\\\":null,\\\"nav_hide\\\":null,\\\"starttime\\\":null,\\\"endtime\\\":null,\\\"extendToSubpages\\\":null,\\\"fe_group\\\":null,\\\"fe_login_mode\\\":null,\\\"editlock\\\":null,\\\"categories\\\":null,\\\"rowDescription\\\":null}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Single\",\"nav_hide\":\"1\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"fe_login_mode\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Single','/tea/single',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1683114496,NULL,'',0,'','','',1,0,0,0,0,'','','',0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(43,9,1687429548,1687429526,0,0,0,0,'-2',512,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"description\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,0,31,27,0,'Tea editor','/tea-editor',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1687429548,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'','',0.5,'',0,''),
(44,1,1687701590,1687701584,0,0,0,0,'0',1408,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,0,31,27,0,'Suche','/suche',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1687701590,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,''),
(45,16,1733769367,1733239736,0,0,0,0,'0',64,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,0,31,27,0,'Archiv','/seminars/archiv',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1733769367,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,''),
(46,16,1733769380,1733769375,0,0,0,0,'0',32,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,0,31,27,0,'Ausblick','/seminars/ausblick',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1733769380,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,''),
(47,16,1733843533,1733843422,0,0,0,0,'',96,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,0,31,27,0,'Einzelansicht','/seminars/view',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1733843533,NULL,'',0,'','','',1,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,''),
(48,16,1737120546,1737120537,0,0,0,0,'',2304,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,0,31,27,0,'Speaker-Infos','/seminars/speaker-infos',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1737120546,NULL,'',0,'','','',1,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,''),
(49,16,1757318045,1757318033,0,0,0,0,'-2',896,NULL,0,0,0,0,NULL,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,2,0,31,27,0,'My Registrations','/seminars/my-registrations',1,NULL,0,0,0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1757318045,NULL,'',0,'','','',0,0,0,0,0,'','',NULL,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0,'');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts_group`
--

DROP TABLE IF EXISTS `sys_be_shortcuts_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_be_shortcuts_group` (
  `uuid` char(36) NOT NULL COMMENT '(DC2Type:guid)',
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uuid`),
  KEY `user_groups` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts_group`
--

LOCK TABLES `sys_be_shortcuts_group` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_csp_resolution`
--

DROP TABLE IF EXISTS `sys_csp_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_csp_resolution` (
  `summary` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `scope` varchar(264) NOT NULL,
  `mutation_identifier` text DEFAULT NULL,
  `mutation_collection` mediumtext DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  PRIMARY KEY (`summary`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_csp_resolution`
--

LOCK TABLES `sys_csp_resolution` WRITE;
/*!40000 ALTER TABLE `sys_csp_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_csp_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(5) unsigned NOT NULL DEFAULT 0,
  `storage` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  `metadata` int(10) unsigned NOT NULL DEFAULT 0,
  `identifier` text DEFAULT NULL,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `sha1` varchar(40) NOT NULL DEFAULT '',
  `size` bigint(20) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_identifier` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `file` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `status` varchar(24) DEFAULT '',
  `latitude` decimal(24,14) DEFAULT 0.00000000000000,
  `longitude` decimal(24,14) DEFAULT 0.00000000000000,
  `pages` int(10) unsigned DEFAULT 0,
  `keywords` longtext DEFAULT NULL,
  `caption` longtext DEFAULT NULL,
  `creator_tool` varchar(255) NOT NULL DEFAULT '',
  `download_name` varchar(255) NOT NULL DEFAULT '',
  `creator` varchar(255) NOT NULL DEFAULT '',
  `publisher` varchar(120) NOT NULL DEFAULT '',
  `source` varchar(255) NOT NULL DEFAULT '',
  `copyright` longtext DEFAULT NULL,
  `location_country` varchar(45) NOT NULL DEFAULT '',
  `location_region` varchar(45) NOT NULL DEFAULT '',
  `location_city` varchar(45) NOT NULL DEFAULT '',
  `ranking` int(10) unsigned NOT NULL DEFAULT 0,
  `content_creation_date` bigint(20) NOT NULL DEFAULT 0,
  `content_modification_date` bigint(20) NOT NULL DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `unit` varchar(3) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT 0,
  `color_space` varchar(4) NOT NULL DEFAULT '',
  `language` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `processing_url` text DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES
(1,1682009145,1682009114,1,3,'/_processed_/8/e/preview_Brooding_metropolis_in_autumn_24a6116898.jpg','preview_Brooding_metropolis_in_autumn_24a6116898.jpg','','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','cbc9717a75d4ce1c17c3d6721c5755a8c35e1184','Image.Preview','24a6116898',64,38),
(2,1682009147,1682009146,1,3,'/_processed_/8/e/csm_Brooding_metropolis_in_autumn_aa13887ac8.jpg','csm_Brooding_metropolis_in_autumn_aa13887ac8.jpg','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','cbc9717a75d4ce1c17c3d6721c5755a8c35e1184','Image.CropScaleMask','aa13887ac8',75,45),
(3,1682009191,1682009191,1,3,'/_processed_/8/e/csm_Brooding_metropolis_in_autumn_0b022ce69a.jpg','csm_Brooding_metropolis_in_autumn_0b022ce69a.jpg',NULL,'a:11:{s:5:\"width\";s:4:\"260m\";s:6:\"height\";s:4:\"160m\";s:13:\"fileExtension\";s:0:\"\";s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";s:0:\"\";s:20:\"additionalParameters\";s:0:\"\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','2d6bacc213db9300cf8786c860b59f539241bf80','cbc9717a75d4ce1c17c3d6721c5755a8c35e1184','Image.CropScaleMask','0b022ce69a',260,156),
(4,1682009191,1682009191,1,3,'/_processed_/8/e/csm_Brooding_metropolis_in_autumn_5ad977d39a.jpg','csm_Brooding_metropolis_in_autumn_5ad977d39a.jpg',NULL,'a:11:{s:5:\"width\";s:3:\"70c\";s:6:\"height\";s:3:\"43c\";s:13:\"fileExtension\";s:0:\"\";s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";s:0:\"\";s:20:\"additionalParameters\";s:0:\"\";s:5:\"frame\";i:0;s:4:\"crop\";N;}','e17302c6592245c9f5dbeaf13a5507cfac62a2e1','cbc9717a75d4ce1c17c3d6721c5755a8c35e1184','Image.CropScaleMask','5ad977d39a',70,43);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `link` text NOT NULL DEFAULT '',
  `crop` longtext DEFAULT NULL,
  `autoplay` smallint(5) unsigned NOT NULL DEFAULT 0,
  `showinpreview` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `driver` varchar(255) NOT NULL DEFAULT 'Local',
  `configuration` longtext DEFAULT NULL,
  `is_default` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_browsable` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_online` smallint(5) unsigned NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(5) unsigned NOT NULL DEFAULT 1,
  `processingfolder` tinytext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES
(1,0,1627915757,1627915757,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  `identifier` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_http_report`
--

DROP TABLE IF EXISTS `sys_http_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_http_report` (
  `uuid` varchar(36) NOT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `created` int(10) unsigned NOT NULL,
  `changed` int(10) unsigned NOT NULL,
  `type` varchar(32) NOT NULL,
  `scope` varchar(100) NOT NULL,
  `request_time` bigint(20) unsigned NOT NULL,
  `meta` mediumtext DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `summary` varchar(40) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `type_scope` (`type`,`scope`),
  KEY `created` (`created`),
  KEY `changed` (`changed`),
  KEY `request_time` (`request_time`),
  KEY `summary_created` (`summary`,`created`),
  KEY `all_conditions` (`type`,`status`,`scope`,`summary`,`request_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_http_report`
--

LOCK TABLES `sys_http_report` WRITE;
/*!40000 ALTER TABLE `sys_http_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_http_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_messenger_messages`
--

DROP TABLE IF EXISTS `sys_messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_messenger_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_name` (`queue_name`),
  KEY `available_at` (`available_at`),
  KEY `delivered_at` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_messenger_messages`
--

LOCK TABLES `sys_messenger_messages` WRITE;
/*!40000 ALTER TABLE `sys_messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_preview`
--

DROP TABLE IF EXISTS `sys_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_preview` (
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `config` text DEFAULT NULL,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_preview`
--

LOCK TABLES `sys_preview` WRITE;
/*!40000 ALTER TABLE `sys_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `source_host` varchar(255) NOT NULL DEFAULT '',
  `source_path` text NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `protected` smallint(5) unsigned NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target` text NOT NULL DEFAULT '',
  `target_statuscode` int(10) unsigned NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` bigint(20) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `creation_type` int(10) unsigned NOT NULL DEFAULT 1,
  `integrity_status` varchar(180) NOT NULL DEFAULT 'no_conflict',
  `redirect_type` varchar(100) DEFAULT 'default',
  `createdby` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES
(26,'static_info_tables','last_update_status','s:26:\"static_info_tables:v11.5.3\";'),
(35,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeeditExtractionUpdate','i:1;'),
(36,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TaskcenterExtractionUpdate','i:1;'),
(37,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysActionExtractionUpdate','i:1;'),
(38,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SvgFilesSanitization','i:1;'),
(40,'installUpdateRows','rowUpdatersDone','a:5:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceVersionRecordsMigration\";i:1;s:66:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L18nDiffsourceToJsonMigration\";i:2;s:77:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceMovePlaceholderRemovalMigration\";i:3;s:76:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceNewPlaceholderRemovalMigration\";i:4;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\SysRedirectRootPageMoveMigration\";}'),
(41,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserLanguageMigration','i:1;'),
(42,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogChannel','i:1;'),
(43,'core','sys_refindex_lastUpdate','i:1791369934;'),
(60,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ShortcutRecordsMigration','i:1;'),
(61,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CollectionsExtractionUpdate','i:1;'),
(62,'installUpdate','TYPO3\\CMS\\FrontendLogin\\Updates\\MigrateFeloginPlugins','i:1;'),
(107,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendGroupsExplicitAllowDenyMigration','i:1;'),
(108,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendModulePermissionMigration','i:1;'),
(109,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeLoginModeExtractionUpdate','i:1;'),
(110,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateSiteSettingsConfigUpdate','i:1;'),
(111,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileCollectionIdentifierMigration','i:1;'),
(112,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileMountIdentifierMigration','i:1;'),
(113,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogSerializationUpdate','i:1;'),
(114,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysTemplateNoWorkspaceMigration','i:1;'),
(116,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PasswordPolicyForFrontendUsersUpdate','i:1;'),
(117,'installUpdate','TTN\\Tea\\Upgrades\\ListTypeToCTypeUpdate','i:1;'),
(119,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PagesRecyclerDoktypeMigration','i:1;'),
(120,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SynchronizeColPosAndCTypeWithDefaultLanguage','i:1;'),
(121,'installUpdate','GeorgRinger\\News\\Updates\\NewsSlugUpdater','i:1;'),
(122,'installUpdate','GeorgRinger\\News\\Updates\\PluginPermissionUpdater','i:1;'),
(123,'installUpdate','GeorgRinger\\News\\Updates\\PluginUpdater','i:1;'),
(124,'installUpdate','GeorgRinger\\News\\Updates\\PopulateCategorySlugs','i:1;'),
(125,'installUpdate','GeorgRinger\\News\\Updates\\PopulateTagSlugs','i:1;'),
(126,'installUpdate','GeorgRinger\\News\\Updates\\RelatedLinkIntegerDefault','i:1;'),
(127,'installUpdate','GeorgRinger\\News\\Updates\\TitleFieldDefault','i:1;'),
(128,'installUpdate','TYPO3\\CMS\\Install\\Updates\\IndexedSearchCTypeMigration','i:1;'),
(129,'installUpdate','TYPO3\\CMS\\Core\\Upgrades\\PageDoktypeLinkMigration','i:1;'),
(130,'installUpdate','TYPO3\\CMS\\Core\\Upgrades\\PagesRecyclerDoktypeMigration','i:1;'),
(131,'installUpdate','TYPO3\\CMS\\Core\\Upgrades\\UserPermissionsForRenamedModulesMigration','i:1;'),
(132,'installUpdate','TYPO3\\CMS\\Scheduler\\Migration\\SchedulerDatabaseStorageMigration','i:1;'),
(133,'installUpdate','TYPO3\\CMS\\Backend\\Upgrades\\UserSettingsNormalizationMigration','i:1;'),
(134,'installUpdate','TYPO3\\CMS\\Frontend\\Upgrades\\SynchronizeColPosAndCTypeWithDefaultLanguage','i:1;'),
(135,'installUpdate','TYPO3\\CMS\\Form\\Upgrades\\FileFormsToDatabaseUpgradeWizard','i:1;'),
(136,'installUpdate','TYPO3\\CMS\\IndexedSearch\\Upgrades\\IndexedSearchCTypeMigration','i:1;'),
(137,'installUpdate','TYPO3\\CMS\\Core\\Upgrades\\BackendUserLanguageMigration','i:1;'),
(138,'installUpdate','TYPO3\\CMS\\Core\\Upgrades\\LanguagePackUpdateTimestampMigration','i:1;'),
(139,'extensionDataImport','core:ext_tables_static+adt.sql','s:0:\"\";'),
(140,'extensionDataImport','extbase:ext_tables_static+adt.sql','s:0:\"\";'),
(141,'extensionDataImport','fluid:ext_tables_static+adt.sql','s:0:\"\";'),
(142,'extensionDataImport','install:ext_tables_static+adt.sql','s:0:\"\";'),
(143,'extensionDataImport','recordlist:ext_tables_static+adt.sql','s:0:\"\";'),
(144,'extensionDataImport','backend:ext_tables_static+adt.sql','s:0:\"\";'),
(145,'extensionDataImport','frontend:ext_tables_static+adt.sql','s:0:\"\";'),
(146,'extensionDataImport','adminpanel:ext_tables_static+adt.sql','s:0:\"\";'),
(147,'extensionDataImport','dashboard:ext_tables_static+adt.sql','s:0:\"\";'),
(148,'extensionDataImport','fluid_styled_content:ext_tables_static+adt.sql','s:0:\"\";'),
(149,'extensionDataImport','filelist:ext_tables_static+adt.sql','s:0:\"\";'),
(150,'extensionDataImport','form:ext_tables_static+adt.sql','s:0:\"\";'),
(151,'extensionDataImport','setup:ext_tables_static+adt.sql','s:0:\"\";'),
(152,'extensionDataImport','rte_ckeditor:ext_tables_static+adt.sql','s:0:\"\";'),
(153,'extensionDataImport','belog:ext_tables_static+adt.sql','s:0:\"\";'),
(154,'extensionDataImport','beuser:ext_tables_static+adt.sql','s:0:\"\";'),
(155,'extensionDataImport','extensionmanager:ext_tables_static+adt.sql','s:0:\"\";'),
(156,'extensionDataImport','felogin:ext_tables_static+adt.sql','s:0:\"\";'),
(157,'extensionDataImport','info:ext_tables_static+adt.sql','s:0:\"\";'),
(158,'extensionDataImport','lowlevel:ext_tables_static+adt.sql','s:0:\"\";'),
(159,'extensionDataImport','recycler:ext_tables_static+adt.sql','s:0:\"\";'),
(160,'extensionDataImport','reports:ext_tables_static+adt.sql','s:0:\"\";'),
(161,'extensionDataImport','tstemplate:ext_tables_static+adt.sql','s:0:\"\";'),
(162,'extensionDataImport','viewpage:ext_tables_static+adt.sql','s:0:\"\";'),
(163,'extensionDataImport','static_info_tables:ext_tables_static+adt.sql','s:32:\"424759792edf733151eed6d7c9512657\";'),
(164,'extensionDataImport','oelib:ext_tables_static+adt.sql','s:32:\"50712822725de5ac903340841e0aeca6\";'),
(165,'extensionDataImport','feuserextrafields:ext_tables_static+adt.sql','s:0:\"\";'),
(166,'extensionDataImport','seminars:ext_tables_static+adt.sql','s:0:\"\";'),
(167,'extensionDataImport','onetimeaccount:ext_tables_static+adt.sql','s:0:\"\";'),
(168,'extensionDataImport','autoswitchtolistview:ext_tables_static+adt.sql','s:0:\"\";'),
(169,'extensionDataImport','typo3_console:ext_tables_static+adt.sql','s:0:\"\";'),
(170,'extensionDataImport','tea:ext_tables_static+adt.sql','s:0:\"\";'),
(171,'extensionDataImport','site_dev:ext_tables_static+adt.sql','s:0:\"\";'),
(172,'extensionDataImport','redirects:ext_tables_static+adt.sql','s:0:\"\";'),
(173,'extensionDataImport','seo:ext_tables_static+adt.sql','s:0:\"\";'),
(174,'extensionDataImport','scheduler:ext_tables_static+adt.sql','s:0:\"\";'),
(175,'extensionDataImport','indexed_search:ext_tables_static+adt.sql','s:0:\"\";'),
(176,'installUpdate','TYPO3\\CMS\\Core\\Upgrades\\MigrateExtensionDataImportRegistryKeysUpdate','i:1;'),
(177,'installUpdate','TYPO3\\CMS\\Backend\\Upgrades\\UserSettingsMigration','i:1;'),
(178,'installUpdate','TYPO3\\CMS\\Backend\\Upgrades\\UserSettingsScrubbingMigration','i:1;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` longtext DEFAULT NULL,
  `constants` longtext DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `basedOn` longtext DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES
(1,1,1736253688,1627915562,0,0,0,0,256,NULL,'Root',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:site_dev/Configuration/TypoScript,EXT:static_info_tables/Configuration/TypoScript/Static,EXT:indexed_search/Configuration/TypoScript','','','2,3,5',0,0,0),
(2,6,1627916442,1627916344,0,0,0,0,256,'','tea',0,0,'EXT:tea/Configuration/TypoScript','plugin.tx_tea {\r\n  persistence {\r\n    storagePid = 3\r\n    newRecordStoragePid = 3\r\n  }\r\n\r\n  settings {\r\n    singleViewPageUid = 10\r\n  }\r\n}\r\n','','',0,0,0),
(3,6,1671225952,1627921845,0,0,0,0,128,'','seminars',0,0,'EXT:seminars/Configuration/TypoScript','','plugin.tx_seminars {\r\n  # PID of the sysfolder where event registrations (attendances) will be stored\r\n  attendancesPID = 12\r\n\r\n  # Whether unregistration is possible even when there are no registrations\r\n  # on the waiting list yet.\r\n  allowUnregistrationWithEmptyWaitingList = 1\r\n}\r\n\r\n# localizations for strings in e-mails and some FE parts go here (the example is for German)\r\nplugin.tx_seminars._LOCAL_LANG.de {\r\n}\r\n\r\nplugin.tx_seminars_pi1 {\r\n  # comma-separated list of field names that shouldn\'t be displayed in the detail view, e.g. organizers,price_special\r\n  hideFields =\r\n\r\n  # list of comma-separated names of event fields that should be displayed on the registration page (the order doesn\'t matter)\r\n  eventFieldsOnRegistrationPage = uid, title, price_regular, price_special, vacancies\r\n\r\n  # whether file downloads are limited to attendees only\r\n  limitFileDownloadToAttendees = 0\r\n\r\n  # PID of the sysfolder that contains all the event records (e.g., the starting point)\r\n  pages = 11\r\n\r\n  # number of levels to recurse when accessing the starting point\r\n  recursive = 1\r\n    \r\n  # PID of the FE page that contains the event list\r\n  listPID = 16\r\n\r\n  # PID of the FE page that contains the single view\r\n  detailPID = 17\r\n\r\n  # PID of the FE page that contains the \"my events\" list\r\n  myEventsPID = 19\r\n\r\n  # PID of the FE page that contains the seminar registration plug-in\r\n  registerPID = 18\r\n\r\n  # PID of the FE page that contains the login form or onetimeaccount\r\n  loginPID = 7\r\n\r\n  # PID of the page that contains the registrations list for participants\r\n  registrationsListPID = 23\r\n\r\n  # PID of the page that contains the registrations list for event managers\r\n  registrationsVipListPID = 24\r\n\r\n  # PID of the page that will be displayed after a FE user has unregistered from an event\r\n  pageToShowAfterUnregistrationPID = 29\r\n\r\n  # UID of the FE user group for event managers\r\n  defaultEventVipsFeGroupID = 3\r\n}\r\n\r\n# localizations for FE-only parts go here (the example is for German)\r\nplugin.tx_seminars_pi1._LOCAL_LANG.de {\r\n}\r\n\r\n# here you can change stuff like the number of items per page etc.\r\nplugin.tx_seminars_pi1.listView {\r\n}','',0,0,0),
(4,5,1627921886,1627921886,0,0,0,0,256,'','seminars (for the BE module)',0,0,'','','','3',0,0,0),
(5,6,1714581031,1714581031,0,0,0,0,64,'','onetimeaccount',0,0,'EXT:onetimeaccount/Configuration/TypoScript','','','',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_workspace`
--

DROP TABLE IF EXISTS `sys_workspace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_workspace` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `adminusers` longtext DEFAULT NULL,
  `members` longtext DEFAULT NULL,
  `db_mountpoints` longtext DEFAULT NULL,
  `file_mountpoints` varchar(255) DEFAULT '',
  `publish_time` bigint(20) NOT NULL DEFAULT 0,
  `live_edit` smallint(5) unsigned NOT NULL DEFAULT 0,
  `publish_access` smallint(5) unsigned NOT NULL DEFAULT 0,
  `previewlink_lifetime` int(11) NOT NULL DEFAULT 0,
  `custom_stages` int(10) unsigned NOT NULL DEFAULT 0,
  `stagechg_notification` smallint(5) unsigned NOT NULL DEFAULT 1,
  `edit_notification_defaults` longtext DEFAULT NULL,
  `edit_notification_preselection` smallint(5) unsigned NOT NULL DEFAULT 2,
  `edit_allow_notificaton_settings` smallint(5) unsigned NOT NULL DEFAULT 3,
  `publish_notification_defaults` longtext DEFAULT NULL,
  `publish_notification_preselection` smallint(5) unsigned NOT NULL DEFAULT 1,
  `publish_allow_notificaton_settings` smallint(5) unsigned NOT NULL DEFAULT 3,
  `execute_notification_defaults` longtext DEFAULT NULL,
  `execute_notification_preselection` smallint(5) unsigned NOT NULL DEFAULT 3,
  `execute_allow_notificaton_settings` smallint(5) unsigned NOT NULL DEFAULT 3,
  `color` varchar(255) NOT NULL DEFAULT 'orange',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_workspace`
--

LOCK TABLES `sys_workspace` WRITE;
/*!40000 ALTER TABLE `sys_workspace` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_workspace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_workspace_stage`
--

DROP TABLE IF EXISTS `sys_workspace_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_workspace_stage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(30) NOT NULL DEFAULT '',
  `responsible_persons` longtext DEFAULT NULL,
  `default_mailcomment` longtext DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `notification_defaults` longtext DEFAULT NULL,
  `allow_notificaton_settings` smallint(5) unsigned NOT NULL DEFAULT 3,
  `notification_preselection` smallint(5) unsigned NOT NULL DEFAULT 8,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_workspace_stage`
--

LOCK TABLES `sys_workspace_stage` WRITE;
/*!40000 ALTER TABLE `sys_workspace_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_workspace_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text DEFAULT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `CType` varchar(255) NOT NULL DEFAULT 'text',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `bodytext` longtext DEFAULT NULL,
  `bullets_type` int(10) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` int(10) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned DEFAULT NULL,
  `imageorient` int(10) unsigned NOT NULL DEFAULT 0,
  `imagecols` int(10) unsigned NOT NULL DEFAULT 2,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `records` longtext DEFAULT NULL,
  `pages` longtext DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `header_link` text NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` int(10) unsigned NOT NULL DEFAULT 0,
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 1,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` longtext DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` bigint(20) NOT NULL DEFAULT 0,
  `recursive` int(10) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned DEFAULT NULL,
  `pi_flexform` longtext DEFAULT NULL,
  `selected_categories` longtext DEFAULT NULL,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` int(10) unsigned NOT NULL DEFAULT 124,
  `table_enclosure` int(10) unsigned NOT NULL DEFAULT 0,
  `table_header_position` int(10) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `tx_news_related_news` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language_identifier` (`l18n_parent`,`sys_language_uid`),
  KEY `index_newscontent` (`tx_news_related_news`),
  KEY `translation_source` (`l10n_source`,`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES
(1,'',1,1627915752,1627915752,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'text','Willkommen!','','<p>Dies ist die Startseite.</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(2,'',7,1671467766,1627915935,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'felogin_login','Login form','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.showForgotPassword\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.showPermaLogin\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.showLogoutFormAfterLogin\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.pages\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"settings.recursive\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_redirect\">\n            <language index=\"lDEF\">\n                <field index=\"settings.redirectMode\">\n                    <value index=\"vDEF\">getpost</value>\n                </field>\n                <field index=\"settings.redirectFirstMethod\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"settings.redirectPageLogin\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectPageLoginError\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectPageLogout\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.redirectDisable\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_messages\">\n            <language index=\"lDEF\">\n                <field index=\"settings.welcome_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.welcome_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.success_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.success_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.error_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.error_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.status_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.status_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logout_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.logout_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.forgot_header\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.forgot_reset_message\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(3,'',9,1784981761,1627916259,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'tea_teaindex','Leckere Tees','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"pagesAndFolders\">\n            <language index=\"lDEF\">\n                <field index=\"settings.singleViewPageUid\">\n                    <value index=\"vDEF\">10</value>\n                </field>\n                <field index=\"persistence.storagePid\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n                <field index=\"persistence.recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(4,'',10,1698853976,1627916473,0,0,0,0,'',256,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'tea_teashow','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(5,'',10,1627916562,1627916562,0,0,0,0,'',512,0,0,0,0,NULL,'',0,0,0,0,'text','','','<p><a href=\"t3://page?uid=9\">zurück zur Listenansicht</a></p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(6,'',1,1627916920,1627916914,0,0,0,0,'',512,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"pages\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"accessibility_title\":null,\"accessibility_bypass\":null,\"accessibility_bypass_text\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'menu_subpages','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'1',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(8,'',16,1780577570,1627923276,0,0,0,0,'',256,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">seminar_list</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\">event_type,city,place,organizer,categories,date,age,price,full_text_search</value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToEventTypes\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToPlaces\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToOrganizers\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(9,'',17,1780577570,1627923293,0,0,0,0,'',256,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">single_view</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(10,'',26,1780577570,1627923315,0,0,0,0,'',256,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">category_list</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(11,'',27,1780577570,1627923346,0,0,0,0,'',256,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">topic_list</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(12,'',18,1757317825,1627923371,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"pagesAndFolders\">\n            <language index=\"lDEF\">\n                <field index=\"settings.pageForMissingEvent\">\n                    <value index=\"vDEF\">16</value>\n                </field>\n                <field index=\"settings.loginPage\">\n                    <value index=\"vDEF\">7</value>\n                </field>\n                <field index=\"settings.termsAndConditionsPage\">\n                    <value index=\"vDEF\">33</value>\n                </field>\n                <field index=\"settings.termsAndConditionsLinkTitle\">\n                    <value index=\"vDEF\">AGB</value>\n                </field>\n                <field index=\"settings.additionalTermsPage\">\n                    <value index=\"vDEF\">34</value>\n                </field>\n                <field index=\"settings.additionalTermsLinkTitle\">\n                    <value index=\"vDEF\">Reisebedingungen</value>\n                </field>\n                <field index=\"settings.registrationRecordsStorageFolder\">\n                    <value index=\"vDEF\">12</value>\n                </field>\n                <field index=\"settings.additionalPersonsStorageFolder\">\n                    <value index=\"vDEF\">12</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"personsToRegister\">\n            <language index=\"lDEF\">\n                <field index=\"settings.maximumBookableSeats\">\n                    <value index=\"vDEF\">10</value>\n                </field>\n                <field index=\"settings.registerThemselvesDefault\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n                <field index=\"settings.showEmailFieldForAdditionalAttendees\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"formFields\">\n            <language index=\"lDEF\">\n                <field index=\"settings.fieldsToShow\">\n                    <value index=\"vDEF\">attendanceMode,seats,registeredThemselves,attendeesNames,interests,expectations,backgroundKnowledge,knownFrom,comments,priceCode,orderReference,billingCompany,billingFullName,billingStreetAddress,billingZipCode,billingCity,billingCountry,billingPhoneNumber,billingEmailAddress,personalData,consentedToTermsAndConditions</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(14,'',22,1627923458,1627923458,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'text','Vielen Dank!','','<p>Vielen Dank für Ihre Anmeldung! Wir sehen uns bald!</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(15,'',29,1627923525,1627923525,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'text','Oh no!','','<p>Wir haben Ihre Abmeldung erhalten. Es tut uns Leid, dass Sie doch nicht teilnehmen.</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(16,'',19,1780577570,1627924053,0,0,0,0,'',256,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">my_events</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToEventTypes\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToPlaces\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToOrganizers\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(20,'',21,1757318111,1627924135,0,0,0,0,'',256,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"settings.eventType\">\n                    <value index=\"vDEF\">singleEvents</value>\n                </field>\n                <field index=\"settings.folderForCreatedEvents\">\n                    <value index=\"vDEF\">30</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"displayOptions\">\n            <language index=\"lDEF\">\n                <field index=\"settings.fieldsToShow\">\n                    <value index=\"vDEF\">description,eventType,categories,dateAndTime,earlyBirdDeadline,registrationDeadline,registrationRequired,waitingList,minimumNumberOfRegistrations,maximumNumberOfRegistrations,numberOfOfflineRegistrations,standardPrice,earlyBirdPrice,venues,speakers</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(22,'',1,1631546571,1631546548,0,0,0,0,'',384,0,1,1,1,NULL,'{\"CType\":\"text\",\"colPos\":0,\"header\":\"Willkommen!\",\"header_layout\":\"0\",\"header_position\":\"\",\"date\":0,\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>Dies ist die Startseite.<\\/p>\",\"layout\":0,\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"hidden\":0,\"fe_group\":\"\",\"editlock\":0,\"categories\":0,\"rowDescription\":\"\",\"starttime\":0,\"endtime\":0}',0,0,0,0,'text','Welcome!','','<p>This is the start page.</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','','','',0,'','',0,0,1,0,'',0,'','','',0,0,NULL,NULL,'','','',NULL,124,0,0,0,0,0,0),
(23,'',1,1631546583,1631546548,0,0,0,0,'',448,0,1,6,6,NULL,'{\"CType\":\"menu_subpages\",\"colPos\":0,\"header\":\"\",\"header_layout\":\"0\",\"header_position\":\"\",\"date\":0,\"header_link\":\"\",\"subheader\":\"\",\"pages\":\"1\",\"layout\":0,\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"sys_language_uid\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"editlock\":0,\"categories\":0,\"rowDescription\":\"\",\"l18n_parent\":0}',0,0,0,0,'menu_subpages','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','','','1',0,'','',0,0,1,0,'',0,'','','',0,0,NULL,NULL,'','','',NULL,124,0,0,0,0,0,0),
(24,'',32,1780577570,1631549808,0,0,0,0,'',256,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','','','',0,'','',0,0,1,0,'',0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">seminar_list</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\">event_type,city,place,organizer,categories,date,age,price,full_text_search</value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToEventTypes\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToPlaces\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToOrganizers\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\">list_registrations</value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','','','',NULL,124,0,0,0,0,0,0),
(25,'',22,1780577570,1631550407,0,0,0,0,'',128,0,0,0,0,NULL,'{\"pi_flexform\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"what_to_display\">\n                    <value index=\"vDEF\">event_headline</value>\n                </field>\n                <field index=\"listPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"detailPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"myEventsPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"registerPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"loginPID\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitFileDownloadToAttendees\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"pages\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"recursive\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_listView\">\n            <language index=\"lDEF\">\n                <field index=\"displaySearchFormFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"numberOfYearsInDateFilter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToEventTypes\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToCategories\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToPlaces\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"limitListViewToOrganizers\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showOnlyEventsWithVacancies\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"linkToSingleView\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"s_template_special\">\n            <language index=\"lDEF\">\n                <field index=\"showSingleEvent\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"timeframeInList\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideColumns\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"hideFields\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"showEmptyEntryInOptionLists\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hidePageBrowser\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"hideCanceledEvents\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"sortListViewByCategory\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInList\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"generalPriceInSingle\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSpeakerDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"showSiteDetails\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(26,'',7,1791277727,1654093843,0,1,0,0,'',512,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"general\">\n            <language index=\"lDEF\">\n                <field index=\"settings.fieldsToShow\">\n                    <value index=\"vDEF\">company,department,gender,fullSalutation,name,firstName,lastName,title,address,zip,city,zone,country,email,telephone,www,dateOfBirth,status,vatIn,comments,privacy,termsAcknowledged</value>\n                </field>\n                <field index=\"settings.requiredFields\">\n                    <value index=\"vDEF\">email</value>\n                </field>\n                <field index=\"settings.systemFolderForNewUsers\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n                <field index=\"settings.groupsForNewUsers\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n                <field index=\"settings.termsAndConditionsPage\">\n                    <value index=\"vDEF\"></value>\n                </field>\n                <field index=\"settings.captcha\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(27,'',33,1669818722,1669818705,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'text','Terms & conditions','','<p>Have fun!</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(28,'',34,1669818749,1669818747,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":null,\"colPos\":null,\"header\":null,\"header_layout\":null,\"header_position\":null,\"date\":null,\"header_link\":null,\"subheader\":null,\"bodytext\":null,\"layout\":null,\"frame_class\":null,\"space_before_class\":null,\"space_after_class\":null,\"sectionIndex\":null,\"linkToTop\":null,\"sys_language_uid\":null,\"hidden\":null,\"starttime\":null,\"endtime\":null,\"fe_group\":null,\"editlock\":null,\"categories\":null,\"rowDescription\":null}',0,0,0,0,'text','Traveling terms','','<p>For our sailing trips, you\'ll need to be able to swim.</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(30,'',37,1681136199,1681136199,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'text','Homepage of the speaker \"Joe Speaker\"','','<p>Einer der Besten.</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(31,'',38,1681136226,1681136226,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'text','Homepage: TYPO3 Trainer Network','','<p>Die machen das Training.</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(32,'',39,1681136248,1681136248,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'text','Homepage: Hostel \"Station\"','','<p>Günstig und ruhig übernachen.</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(33,'',43,1791370023,1687429562,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":\"\",\"categories\":\"\",\"colPos\":\"\",\"date\":\"\",\"editlock\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"frame_class\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"header_position\":\"\",\"hidden\":\"\",\"layout\":\"\",\"linkToTop\":\"\",\"pi_flexform\":\"\",\"rowDescription\":\"\",\"sectionIndex\":\"\",\"space_after_class\":\"\",\"space_before_class\":\"\",\"starttime\":\"\",\"subheader\":\"\"}',0,0,0,0,'tea_teafrontendeditor','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"pagesAndFolders\">\n            <language index=\"lDEF\">\n                <field index=\"persistence.storagePid\">\n                    <value index=\"vDEF\">3</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(34,'',44,1687701628,1687701628,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'indexedsearch_pi2','Auf der Website suchen','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(35,'',45,1784980991,1733239769,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','Veranstaltungsarchiv','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"pagesAndFolders\">\n            <language index=\"lDEF\">\n                <field index=\"settings.singleViewPage\">\n                    <value index=\"vDEF\">47</value>\n                </field>\n                <field index=\"persistence.storagePid\">\n                    <value index=\"vDEF\">5</value>\n                </field>\n                <field index=\"persistence.recursive\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"displayOptions\">\n            <language index=\"lDEF\">\n                <field index=\"settings.fieldsToShow\">\n                    <value index=\"vDEF\">date,eventType,topic,organizer,city,venue,eventFormat,categories,speakers,eventUid,singleViewLink</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(36,'',46,1784980982,1733769395,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','Veranstaltungsausblick','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"pagesAndFolders\">\n            <language index=\"lDEF\">\n                <field index=\"settings.singleViewPage\">\n                    <value index=\"vDEF\">47</value>\n                </field>\n                <field index=\"settings.registrationPage\">\n                    <value index=\"vDEF\">18</value>\n                </field>\n                <field index=\"persistence.storagePid\">\n                    <value index=\"vDEF\">5</value>\n                </field>\n                <field index=\"persistence.recursive\">\n                    <value index=\"vDEF\">4</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"displayOptions\">\n            <language index=\"lDEF\">\n                <field index=\"settings.fieldsToShow\">\n                    <value index=\"vDEF\">date,topic,organizer,venue,city,speakers,price,eventType,eventFormat,categories,eventUid,singleViewLink,registration,vacancies</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(37,'',47,1784981002,1733844007,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"pagesAndFolders\">\n            <language index=\"lDEF\">\n                <field index=\"settings.registrationPage\">\n                    <value index=\"vDEF\">18</value>\n                </field>\n            </language>\n        </sheet>\n        <sheet index=\"displayOptions\">\n            <language index=\"lDEF\">\n                <field index=\"settings.fieldsToShow\">\n                    <value index=\"vDEF\">title,eventType,registrationTop,dateAndTime,venue,categories,room,price,targetGroups,vacancies,teaser,description,speakers,registrationBottom</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0),
(39,'',48,1737120565,1737120565,0,0,0,0,'',256,0,0,0,0,NULL,'',0,0,0,0,'text','Speakers','','<p>Hier mehr Details über die Speaker.</p>',0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,NULL,NULL,'','',NULL,124,0,0,0,0,0,0),
(40,'',49,1784981016,1757318059,0,0,0,0,'',256,0,0,0,0,NULL,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,NULL,0,2,0,0,0,'default',0,'','',NULL,'',0,'','',0,0,1,0,NULL,0,'','','',0,0,NULL,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"displayOptions\">\n            <language index=\"lDEF\">\n                <field index=\"settings.columnsToShow\">\n                    <value index=\"vDEF\">date,eventType,topic,organizer,city,venue,attendanceMode,categories,speakers,eventUid,registrationStatus,certificateOfAttendance</value>\n                </field>\n                <field index=\"settings.fieldsToShow\">\n                    <value index=\"vDEF\">topic,eventType,registrationStatus,dateAndTime,venue,categories,room,description,speakers,unregistration,downloads</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',NULL,'','',NULL,124,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `user_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_link`
--

DROP TABLE IF EXISTS `tx_news_domain_model_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_news_domain_model_link` (
  `description` text DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `parent` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `uri` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`,`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_link`
--

LOCK TABLES `tx_news_domain_model_link` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_news_domain_model_news` (
  `notes` text DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `teaser` text DEFAULT NULL,
  `bodytext` mediumtext DEFAULT NULL,
  `datetime` bigint(20) NOT NULL DEFAULT 0,
  `archive` bigint(20) NOT NULL DEFAULT 0,
  `author` tinytext DEFAULT NULL,
  `author_email` tinytext DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  `related` int(11) NOT NULL DEFAULT 0,
  `related_from` int(11) NOT NULL DEFAULT 0,
  `fal_related_files` int(10) unsigned DEFAULT 0,
  `related_links` int(11) NOT NULL DEFAULT 0,
  `type` varchar(100) NOT NULL DEFAULT '0',
  `keywords` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` int(11) NOT NULL DEFAULT 0,
  `fal_media` int(10) unsigned DEFAULT 0,
  `internalurl` text DEFAULT NULL,
  `externalurl` text DEFAULT NULL,
  `istopnews` int(11) NOT NULL DEFAULT 0,
  `content_elements` int(11) NOT NULL DEFAULT 0,
  `path_segment` varchar(2048) DEFAULT NULL,
  `alternative_title` tinytext DEFAULT NULL,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `import_id` varchar(100) NOT NULL DEFAULT '',
  `import_source` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `path_segment` (`path_segment`(185),`uid`),
  KEY `import` (`import_id`,`import_source`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`,`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news`
--

LOCK TABLES `tx_news_domain_model_news` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_related_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_related_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_news_domain_model_news_related_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_related_mm`
--

LOCK TABLES `tx_news_domain_model_news_related_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_related_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_news_tag_mm`
--

DROP TABLE IF EXISTS `tx_news_domain_model_news_tag_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_news_domain_model_news_tag_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_news_tag_mm`
--

LOCK TABLES `tx_news_domain_model_news_tag_mm` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_news_tag_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_news_domain_model_tag`
--

DROP TABLE IF EXISTS `tx_news_domain_model_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_news_domain_model_tag` (
  `notes` text DEFAULT NULL,
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `slug` varchar(2048) DEFAULT NULL,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `seo_description` text DEFAULT NULL,
  `seo_headline` varchar(255) NOT NULL DEFAULT '',
  `seo_text` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`,`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_news_domain_model_tag`
--

LOCK TABLES `tx_news_domain_model_tag` WRITE;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_news_domain_model_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_tea_domain_model_tea`
--

DROP TABLE IF EXISTS `tx_tea_domain_model_tea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_tea_domain_model_tea` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `owner` longtext DEFAULT NULL,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language_identifier` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`,`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_tea_domain_model_tea`
--

LOCK TABLES `tx_tea_domain_model_tea` WRITE;
/*!40000 ALTER TABLE `tx_tea_domain_model_tea` DISABLE KEYS */;
INSERT INTO `tx_tea_domain_model_tea` VALUES
(1,3,1627916201,1627916201,0,'Earl Grey','<p>Fruchtig-duftend.</p>',0,'0',0,0,0,NULL,NULL,'0',0,0,0,0,0,0,0),
(2,3,1687429497,1627916222,0,'Darjeeling','<p>Frisch und zart.</p>',0,'',0,0,0,NULL,'{\"title\":\"\",\"description\":\"\",\"image\":\"\",\"owner\":\"\",\"fe_group\":\"\"}','3',0,0,0,0,0,0,0),
(3,3,1683114389,1683114372,0,'Earl Grey (English)','<p>Fruity and fragrant.</p>',0,'',1,1,1,NULL,'{\"l18n_parent\":\"0\",\"l18n_diffsource\":\"\",\"title\":\"Earl Grey\",\"description\":\"<p>Fruchtig-duftend.<\\/p>\",\"image\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"fe_group\":\"0\"}','0',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tx_tea_domain_model_tea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-07 12:47:27
