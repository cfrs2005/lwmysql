# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: db-public-2 (MySQL 5.5.31)
# Database: wiki
# Generation Time: 2014-11-27 09:36:47 +0000
# ************************************************************

CREATE DATABASE wiki;
use wiki;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wiki_activation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_activation`;

CREATE TABLE `wiki_activation` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `code` char(32) NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_advertisement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_advertisement`;

CREATE TABLE `wiki_advertisement` (
  `advid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `targets` text NOT NULL,
  `position` tinyint(2) NOT NULL DEFAULT '0',
  `parameters` text NOT NULL,
  `code` text NOT NULL,
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`advid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_attachment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_attachment`;

CREATE TABLE `wiki_attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` char(100) NOT NULL DEFAULT '',
  `description` char(100) NOT NULL DEFAULT '',
  `filetype` char(50) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment` char(100) NOT NULL DEFAULT '',
  `downloads` mediumint(8) NOT NULL DEFAULT '0',
  `coindown` smallint(4) NOT NULL DEFAULT '0',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `focus` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  KEY `uid` (`uid`),
  KEY `time` (`time`),
  KEY `downloads` (`downloads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_attachment` WRITE;
/*!40000 ALTER TABLE `wiki_attachment` DISABLE KEYS */;

INSERT INTO `wiki_attachment` (`id`, `did`, `time`, `filename`, `description`, `filetype`, `filesize`, `attachment`, `downloads`, `coindown`, `isimage`, `uid`, `state`, `focus`)
VALUES
	(1,15,1416207024,'无标题.png','报错Log','png',57487,'uploads/201411/1416207024JDQkmTjU.png',0,0,1,7,0,1);

/*!40000 ALTER TABLE `wiki_attachment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_autosave
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_autosave`;

CREATE TABLE `wiki_autosave` (
  `aid` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(6) unsigned NOT NULL,
  `did` int(8) unsigned NOT NULL,
  `id` int(4) NOT NULL,
  `content` mediumtext NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `uid` (`uid`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_banned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_banned`;

CREATE TABLE `wiki_banned` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ip1` smallint(3) NOT NULL DEFAULT '0',
  `ip2` smallint(3) NOT NULL DEFAULT '0',
  `ip3` smallint(3) NOT NULL DEFAULT '0',
  `ip4` smallint(3) NOT NULL DEFAULT '0',
  `admin` varchar(15) NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `expiration` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_blacklist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_blacklist`;

CREATE TABLE `wiki_blacklist` (
  `uid` mediumint(8) unsigned NOT NULL,
  `blacklist` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_block
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_block`;

CREATE TABLE `wiki_block` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) NOT NULL DEFAULT '',
  `file` varchar(50) NOT NULL DEFAULT '',
  `area` varchar(50) NOT NULL DEFAULT '',
  `areaorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `block` varchar(50) NOT NULL DEFAULT '',
  `fun` varchar(30) NOT NULL DEFAULT '',
  `tpl` varchar(50) DEFAULT NULL,
  `params` longtext,
  `modified` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_block` WRITE;
/*!40000 ALTER TABLE `wiki_block` DISABLE KEYS */;

INSERT INTO `wiki_block` (`id`, `theme`, `file`, `area`, `areaorder`, `block`, `fun`, `tpl`, `params`, `modified`)
VALUES
	(1,'default','index','ctop1',0,'doc','hotdocs','hotdocs.htm','a:2:{s:3:\"num\";s:0:\"\";s:5:\"style\";s:0:\"\";}',NULL),
	(2,'default','index','ctop2',0,'doc','wonderdocs','wonderdocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(3,'default','index','right',0,'user','login','login.htm','',NULL),
	(4,'default','index','right',1,'news','recentnews','recentnews.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(5,'default','index','right',2,'doc','cooperatedocs','cooperatedocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(6,'default','index','cbottoml',0,'doc','recentdocs','recentdocs.htm','a:2:{s:3:\"num\";s:0:\"\";s:5:\"style\";s:0:\"\";}',NULL),
	(7,'default','index','cbottoml',1,'comment','recentcomment','recentcomment.htm','a:1:{s:3:\"num\";s:0:\"\";}',NULL),
	(8,'default','index','cbottomr',0,'pic','recentpics','recentpics.htm','a:1:{s:3:\"num\";s:0:\"\";}',NULL),
	(9,'default','index','cbottomr',1,'doc','commenddocs','commenddocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(10,'default','index','bottom',0,'doc','hottags','hottags.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(11,'default','giftlist','price',0,'gift','giftpricerange','giftpricerange.htm','',NULL),
	(12,'default','giftlist','right',0,'gift','giftnotice','giftnotice.htm','',NULL),
	(13,'default','categorylist','right',0,'doc','hottags','hottags.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(14,'default','categorylist','right',1,'doc','getletterdocs','getletterdocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(15,'default','viewcomment','right',0,'doc','hotcommentdocs','hotcommentdocs.htm','a:1:{s:3:\"num\";s:2:\"10\";}',NULL),
	(16,'default','index','bottom',1,'links','friendlinks','friendlinks.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL),
	(17,'default','index','right',3,'doc','getletterdocs','getletterdocs.htm','a:1:{s:5:\"style\";s:0:\"\";}',NULL);

/*!40000 ALTER TABLE `wiki_block` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_category`;

CREATE TABLE `wiki_category` (
  `cid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `name` char(50) NOT NULL DEFAULT '',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `docs` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `navigation` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_category` WRITE;
/*!40000 ALTER TABLE `wiki_category` DISABLE KEYS */;

INSERT INTO `wiki_category` (`cid`, `pid`, `name`, `displayorder`, `docs`, `image`, `navigation`, `description`)
VALUES
	(1,0,'合作开发',0,19,'','a:1:{i:0;a:2:{s:3:\"cid\";s:1:\"1\";s:4:\"name\";s:12:\"合作开发\";}}',''),
	(2,1,'拼包',0,5,'','a:2:{i:0;a:2:{s:3:\"cid\";s:1:\"1\";s:4:\"name\";s:12:\"合作开发\";}i:1;a:2:{s:3:\"cid\";s:1:\"2\";s:4:\"name\";s:6:\"拼包\";}}',''),
	(3,1,'PatchRom',1,8,'','a:2:{i:0;a:2:{s:3:\"cid\";s:1:\"1\";s:4:\"name\";s:12:\"合作开发\";}i:1;a:2:{s:3:\"cid\";s:1:\"3\";s:4:\"name\";s:8:\"PatchRom\";}}',''),
	(6,0,'平台特有问题',2,3,'','a:1:{i:0;a:2:{s:3:\"cid\";s:1:\"6\";s:4:\"name\";s:18:\"平台特有问题\";}}',''),
	(5,0,'官方开发',1,5,'','a:1:{i:0;a:2:{s:3:\"cid\";s:1:\"5\";s:4:\"name\";s:12:\"官方开发\";}}',''),
	(7,0,'android技术文献',3,7,'','a:1:{i:0;a:2:{s:3:\"cid\";i:7;s:4:\"name\";s:19:\"android技术文献\";}}','');

/*!40000 ALTER TABLE `wiki_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_categorylink
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_categorylink`;

CREATE TABLE `wiki_categorylink` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(8) unsigned NOT NULL DEFAULT '0',
  `cid` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_categorylink` WRITE;
/*!40000 ALTER TABLE `wiki_categorylink` DISABLE KEYS */;

INSERT INTO `wiki_categorylink` (`id`, `did`, `cid`)
VALUES
	(10,7,3),
	(9,7,1),
	(8,6,3),
	(7,6,1),
	(5,5,1),
	(6,5,3),
	(11,8,1),
	(12,8,3),
	(13,9,5),
	(14,10,1),
	(15,11,1),
	(16,11,2),
	(17,12,1),
	(18,12,3),
	(19,13,1),
	(20,13,2),
	(21,14,1),
	(22,14,2),
	(23,14,3),
	(24,14,5),
	(25,15,1),
	(26,15,3),
	(27,16,7),
	(28,17,1),
	(29,17,2),
	(30,18,1),
	(31,18,7),
	(37,22,1),
	(36,21,2),
	(38,23,7),
	(39,24,5),
	(43,26,3),
	(42,26,1),
	(45,28,6),
	(46,29,7),
	(47,30,7),
	(48,30,6),
	(49,30,5),
	(50,31,1),
	(52,33,7),
	(53,34,7),
	(54,35,6),
	(55,36,1),
	(56,36,5);

/*!40000 ALTER TABLE `wiki_categorylink` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_channel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_channel`;

CREATE TABLE `wiki_channel` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '',
  `url` char(200) NOT NULL DEFAULT '',
  `displayorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_channel` WRITE;
/*!40000 ALTER TABLE `wiki_channel` DISABLE KEYS */;

INSERT INTO `wiki_channel` (`id`, `name`, `url`, `displayorder`, `available`, `position`)
VALUES
	(1,'首页','http://wiki.beta.lewaos.com/index.php',0,1,2),
	(2,'百科分类','http://wiki.beta.lewaos.com/index.php?category',1,1,2),
	(3,'排行榜','http://wiki.beta.lewaos.com/index.php?list',2,1,2),
	(4,'图片百科','http://wiki.beta.lewaos.com/index.php?pic-piclist-2',3,1,2),
	(5,'礼品商店','http://wiki.beta.lewaos.com/index.php?gift',4,0,2);

/*!40000 ALTER TABLE `wiki_channel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_comment`;

CREATE TABLE `wiki_comment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment` char(200) NOT NULL DEFAULT '',
  `reply` mediumtext NOT NULL,
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `oppose` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `aegis` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_comment` WRITE;
/*!40000 ALTER TABLE `wiki_comment` DISABLE KEYS */;

INSERT INTO `wiki_comment` (`id`, `did`, `comment`, `reply`, `author`, `authorid`, `oppose`, `aegis`, `time`)
VALUES
	(1,6,'aaaa','','admin',1,0,0,1416809851),
	(2,23,'IP经常变化啊，有什么好办法自己找出速度最快的ip？','','wuxianlin',9,1,1,1416838584),
	(3,9,'bbs<br />\nbbs3-2','','imac',15,2,2,1416906736),
	(4,9,'与 iOS 相比，Android 的用户体验有个相对糟糕的开始。在很长的时间里，界面一直丑小鸭，卡顿也是挥不去的痛。不过，在 Google 的全力推动，以及硬件厂商的响应下，Android 还是跨越各种阻碍，逐渐壮大起来了。<br />\r\n在此过程中，Google 也在经历着重大的变化。它逐渐从一个只重视数据的公司，转变为一个重视设计和用户体验的公司。从 Android 4.0 开始，Androi','','乾坤大挪移',19,1,1,1417058982),
	(5,9,'好','','180.166.124.62',0,0,2,1417059963),
	(6,30,'地方地方','','乾坤大挪移',19,1,6,1417069963),
	(7,30,'第三方地方','','乾坤大挪移',19,1,1,1417070495),
	(8,30,'frf','','乾坤大挪移',19,0,2,1417070590),
	(9,8,'dfasdfasdf','','theme',3,1,1,1417074254),
	(10,30,'fw','','theme',3,0,0,1417074412),
	(11,30,'fsa','','theme',3,0,0,1417074458),
	(12,26,'t67yut6','','SJ伊诺',18,1,1,1417080649);

/*!40000 ALTER TABLE `wiki_comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_creditdetail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_creditdetail`;

CREATE TABLE `wiki_creditdetail` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `operation` varchar(100) NOT NULL DEFAULT '',
  `credit2` smallint(6) NOT NULL DEFAULT '0',
  `credit1` smallint(6) NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_creditdetail` WRITE;
/*!40000 ALTER TABLE `wiki_creditdetail` DISABLE KEYS */;

INSERT INTO `wiki_creditdetail` (`id`, `uid`, `operation`, `credit2`, `credit1`, `time`)
VALUES
	(1,1,'user-register',20,20,1415328806),
	(2,1,'user-login',1,1,1415328828),
	(3,1,'doc-create',5,2,1415328933),
	(4,1,'doc-create',5,2,1415342097),
	(5,1,'user-login',1,1,1415597797),
	(6,1,'doc-create',5,2,1415600210),
	(7,1,'user-login',1,1,1415764581),
	(8,0,'doc-edit',3,1,1415871509),
	(9,4,'user-register',20,20,1415871620),
	(10,0,'doc-create',5,2,1415871648),
	(11,0,'doc-edit',3,1,1415875411),
	(12,7,'doc-create',5,2,1416194295),
	(13,1,'remove_doc',-5,0,1416194340),
	(14,1,'remove_doc',-5,0,1416194340),
	(15,1,'remove_doc',-5,0,1416194340),
	(16,0,'remove_doc',-5,0,1416194340),
	(17,7,'doc-create',5,2,1416194448),
	(18,7,'doc-create',5,2,1416195045),
	(19,7,'doc-create',5,2,1416195503),
	(20,7,'doc-create',5,2,1416195837),
	(21,7,'doc-create',5,2,1416196235),
	(22,8,'doc-create',5,2,1416196434),
	(23,7,'doc-create',5,2,1416196517),
	(24,8,'doc-create',5,2,1416204119),
	(25,7,'doc-create',5,2,1416205823),
	(26,7,'attachment-upload',2,1,1416207024),
	(27,7,'doc-create',5,2,1416207102),
	(28,8,'doc-create',5,2,1416207174),
	(29,11,'doc-create',5,2,1416207669),
	(30,7,'doc-create',5,2,1416207903),
	(31,1,'doc-create',5,2,1416208041),
	(32,1,'remove_doc',-5,0,1416208119),
	(33,7,'doc-create',5,2,1416208355),
	(34,7,'doc-create',5,2,1416208564),
	(35,11,'doc-edit',3,1,1416208671),
	(36,7,'doc-create',5,2,1416208889),
	(37,8,'doc-edit',3,1,1416211999),
	(38,8,'doc-create',5,2,1416213743),
	(39,13,'user-register',20,20,1416536114),
	(40,1,'user-comment',2,1,1416809851),
	(41,14,'user-register',20,20,1416816898),
	(42,9,'user-comment',2,1,1416838584),
	(43,15,'doc-edit',3,1,1416906164),
	(44,15,'user-comment',2,1,1416906736),
	(45,19,'user-pms',1,0,1417055045),
	(46,19,'user-pms',1,0,1417055067),
	(47,19,'user-pms',1,0,1417055085),
	(48,19,'user-pms',1,0,1417055747),
	(49,19,'user-pms',1,0,1417055919),
	(50,19,'user-comment',2,1,1417058982),
	(51,19,'user-comment',2,1,1417059963),
	(52,19,'doc-create',5,2,1417067328),
	(53,18,'user-pms',1,0,1417069463),
	(54,19,'user-comment',2,1,1417069963),
	(55,19,'user-comment',2,1,1417070495),
	(56,19,'user-comment',2,1,1417070590),
	(57,3,'doc-create',5,2,1417073698),
	(58,3,'user-comment',2,1,1417074254),
	(59,3,'user-comment',2,1,1417074412),
	(60,3,'user-comment',2,1,1417074458),
	(61,19,'doc-create',5,2,1417075369),
	(62,19,'doc-edit',3,1,1417075422),
	(63,19,'doc-edit',3,1,1417075454),
	(64,19,'doc-edit',3,1,1417075465),
	(65,18,'doc-create',5,2,1417075542),
	(66,18,'doc-create',5,2,1417075630),
	(67,19,'doc-edit',3,1,1417075656),
	(68,18,'doc-create',5,2,1417078631),
	(69,18,'user-comment',2,1,1417080649),
	(70,18,'doc-edit',3,1,1417080791);

/*!40000 ALTER TABLE `wiki_creditdetail` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_datacall
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_datacall`;

CREATE TABLE `wiki_datacall` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `type` varchar(60) NOT NULL,
  `category` varchar(60) NOT NULL DEFAULT '0',
  `classname` varchar(60) NOT NULL DEFAULT 'sql',
  `function` varchar(60) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `param` text NOT NULL,
  `cachetime` int(10) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_datacall` WRITE;
/*!40000 ALTER TABLE `wiki_datacall` DISABLE KEYS */;

INSERT INTO `wiki_datacall` (`id`, `name`, `type`, `category`, `classname`, `function`, `desc`, `param`, `cachetime`, `available`)
VALUES
	(1,'doc_most_visited','sql','doc','sql','sql','访问最多词条','a:9:{s:7:\"tplcode\";s:175:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]</a></dt><dd>[summary][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd>	</dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:84:\"select did,title,summary from {DB_TABLEPRE}doc where 1 order by views desc limit 10;\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(2,'user_total_num','sql','user','sql','sql','注册会员数','a:9:{s:7:\"tplcode\";s:9:\"[usernum]\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:49:\"SELECT COUNT(*) AS usernum FROM {DB_TABLEPRE}user\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(3,'doc_total_num','sql','doc','sql','sql','网站所有词条数','a:9:{s:7:\"tplcode\";s:20:\"doc total num: [num]\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:0:\"\";s:6:\"select\";s:18:\"count(did) as num \";s:4:\"from\";s:16:\"{DB_TABLEPRE}doc\";s:5:\"where\";s:1:\"1\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:3:\"0,1\";}',1000,1),
	(4,'doc_most_comment','sql','doc','sql','sql','评论最多词条列表','a:9:{s:7:\"tplcode\";s:181:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]([num])</a></dt><dd>[comment][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd></dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:0:\"\";s:6:\"select\";s:44:\"d.did,d.title,c.comment, count(c.did) AS num\";s:4:\"from\";s:68:\"{DB_TABLEPRE}doc AS d LEFT JOIN {DB_TABLEPRE}comment AS c USING(did)\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:14:\"GROUP BY c.did\";s:7:\"orderby\";s:8:\"num desc\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(5,'doc_recommends','sql','doc','sql','sql','推荐词条信息','a:9:{s:7:\"tplcode\";s:175:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]</a></dt><dd>[summary][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd>	</dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:91:\"select did,title,summary from {DB_TABLEPRE}focus where `type`=1 order by did desc limit 10;\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(6,'doc_wonderful','sql','doc','sql','sql','精彩词条','a:9:{s:7:\"tplcode\";s:175:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]</a></dt><dd>[summary][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd>	</dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:91:\"select did,title,summary from {DB_TABLEPRE}focus where `type`=3 order by did desc limit 10;\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(7,'user_new_register','sql','user','sql','sql','最新注册用户','a:9:{s:7:\"tplcode\";s:104:\"<dl class=\"col-dl \"><dt><a href=\"index.php?user-space-[uid]\"> [username]</a></dt><dd>[regtime]</dd></dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:109:\"SELECT uid,username,from_unixtime( regtime ) as regtime  FROM {DB_TABLEPRE}user order by regtime desc limit 1\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(8,'cat_doc','sql','doc','sql','sql','调用某个分类下的词条,不包括子分类；默认是调用分类ID等于10的词条,如需调用其它分类下词条，修改“SQL完整表达式”下面cid=10中10的值','a:9:{s:7:\"tplcode\";s:175:\"<dl class=\"col-dl \"><dt><a title=\"[title]\" href=\"index.php?doc-view-[did]\"> [title]</a></dt><dd>[summary][<a class=\"entry\" href=\"index.php?doc-view-[did]\">view</a>]</dd>	</dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:116:\"select did,title,summary from {DB_TABLEPRE}doc WHERE did IN (select did from {DB_TABLEPRE}categorylink where cid=10)\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1),
	(9,'cat_subcat','sql','category','sql','sql','调用某个分类下子分类,默认是调用分类ID等于3下子分类,如需调用其它分类下子分类，修改“SQL完整表达式”下面pid=3的pid值','a:9:{s:7:\"tplcode\";s:101:\"<dl class=\"col-dl \"><dd><a title=\"[title]\" href=\"index.php?category-view-[cid]\"> [name]</a></dd></dl>\";s:13:\"empty_tplcode\";s:0:\"\";s:3:\"sql\";s:57:\"select  cid, name  from {DB_TABLEPRE}category where pid=3\";s:6:\"select\";s:0:\"\";s:4:\"from\";s:0:\"\";s:5:\"where\";s:0:\"\";s:5:\"other\";s:0:\"\";s:7:\"orderby\";s:0:\"\";s:5:\"limit\";s:4:\"0,10\";}',1000,1);

/*!40000 ALTER TABLE `wiki_datacall` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_doc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_doc`;

CREATE TABLE `wiki_doc` (
  `did` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(6) unsigned NOT NULL,
  `letter` char(1) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL,
  `summary` varchar(250) NOT NULL,
  `content` mediumtext NOT NULL,
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `lastedit` int(10) unsigned NOT NULL DEFAULT '0',
  `lasteditor` char(15) NOT NULL DEFAULT '',
  `lasteditorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `edits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `editions` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `votes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`),
  KEY `title` (`title`),
  KEY `cid` (`cid`),
  KEY `authorid` (`authorid`),
  KEY `letter` (`letter`),
  KEY `lastedit` (`lastedit`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_doc` WRITE;
/*!40000 ALTER TABLE `wiki_doc` DISABLE KEYS */;

INSERT INTO `wiki_doc` (`did`, `cid`, `letter`, `title`, `tag`, `summary`, `content`, `author`, `authorid`, `time`, `lastedit`, `lasteditor`, `lasteditorid`, `views`, `edits`, `editions`, `comments`, `votes`, `visible`, `locked`)
VALUES
	(6,0,'r','如何编译patch rom','','. build/envsetup.sh\r\n\r\nmkdir 机型名\r\n\r\ncd 机型名\r\n\r\nadb reboot recovery\r\n\r\n../tools/releasetools/ota_target','<pre style=\"box-sizing: border-box; overflow: auto; font-family: Consolas, \'Liberation Mono\', Menlo, Courier, monospace; margin-bottom: 16px; line-height: 1.45; padding: 16px; background-color: rgb(247, 247, 247); border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px; word-wrap: normal; color: rgb(51, 51, 51);\"><code style=\"box-sizing: border-box; font-family: Consolas, \'Liberation Mono\', Menlo, Courier, monospace; line-height: inherit; padding: 0px; margin: 0px; background-color: transparent; border-top-left-radius: 3px; border-top-right-radius: 3px; border-bottom-right-radius: 3px; border-bottom-left-radius: 3px; word-break: normal; border: 0px; display: inline; word-wrap: normal;\">. build/envsetup.sh\r\n\r\nmkdir 机型名\r\n\r\ncd <span style=\"font-family: \'Courier New\', Courier, monospace; background-color: transparent; line-height: inherit;\">机型名</span><br />\r\n\r\nadb reboot recovery\r\n\r\n../tools/releasetools/ota_target_from_phone -r (this will generate a stockrom.zip, flash this zip in recovery mode to ensure it works)\r\n\r\ncp ../build/makefile . (change the local-zip-files to stockrom.zip, read the comments in makefile)\r\n\r\nmake workspace\r\n\r\nmake firstpatch (this command will patch the lewa code into framework.jar, services.jar and android.policy.jar, you should resolve the conflict in temp/reject)\r\n\r\nmake fullota</code></pre>','Rom_舜',7,1416194448,1416194448,'Rom_舜',7,25,0,0,1,0,1,0),
	(5,0,'r','如何获取patch代码','','4.1代码获取：repo init -u git://github.com/LeWaCode/patchrom.git -b jellybeanrepo sync4.2代码获取：repo init -u','<p><b style=\"line-height: 1.5;\">4.1代码获取：</b></p><b>repo init -u git://github.com/LeWaCode/patchrom.git -b jellybean</b><div><b>repo sync<br /></b><p><br /></p></div><p><b>4.2代码获取：</b></p><p><b>repo init -u git://github.com/LeWaCode/patchrom.git -b jellybean42</b></p><p><b>repo sync&nbsp;</b></p><p><b><br /></b></p><p><b>4.4代码获取：</b></p><p><b>repo init -u git://github.com/LeWaCode/patchrom.git -b kitkat</b></p><p><b>repo sync</b></p>','Rom_舜',7,1416194295,1416194295,'Rom_舜',7,13,0,0,0,0,1,0),
	(7,0,'t','提取包过程中签名报错的处理','','例如三星等包，非常的大，会导致签名报错而无法提交，遇到此类的情况我们只需要让他最后打包不要签名即可。将tools/releasetools/ota_from_target_files中的common.S','<p>例如三星等包，非常的大，会导致签名报错而无法提交，遇到此类的情况我们只需要让他最后打包不要签名即可。</p><p>将tools/releasetools/ota_from_target_files中的</p><p>common.SignFile(temp_zip_name, output_zip_name, OPTIONS.package_key, pw,<span style=\"line-height: 1.5;\">&nbsp;whole_file=True)</span></p><p>改为</p><p>common.SignFile(temp_zip_name, output_zip_name, OPTIONS.package_key, pw,<span style=\"line-height: 1.5;\">&nbsp;whole_file=False)</span></p><p>即可</p>','Rom_舜',7,1416195045,1416195045,'Rom_舜',7,29,0,0,0,1,1,0),
	(8,0,'p','patch Ｔ9无法使用','','确认一下是否已经使用乐蛙提供的libsqlite.so。如果没有使用adb push libsqlite.so system/lib。','<p>确认一下是否已经使用乐蛙提供的libsqlite.so。如果没有使用adb push libsqlite.so system/lib。</p>','Rom_舜',7,1416195503,1416195503,'Rom_舜',7,34,0,0,1,2,1,0),
	(9,0,'A','ART无法使用','','    为了保证Android4.4平台中 ART模式 的正常运行，在修改Framework 代码时，请注意两个地方：     1. 类的static','<p>&nbsp; &nbsp; 为了保证Android4.4平台中 ART模式 的正常运行，在修改Framework 代码<span style=\"line-height: 1.5;\">时，请注意两个地方：</span></p><p>&nbsp; &nbsp; &nbsp;1. 类的static {} 代码区域内 禁止调用 JNI 的方法</p><p>&nbsp; &nbsp; &nbsp;2. 类的static 变量初始化时，禁止调用JNI的方法</p><p>&nbsp; &nbsp; &nbsp;SystemProperties.get(\"XX\", \"XX\");</p><p>&nbsp; &nbsp; &nbsp;native_XXX();</p><p><br /></p><p>如果ａｒｔ无法使用请确认是否存在如上所述的问题。</p>','Rom_舜',7,1416195837,1416906164,'imac',15,60,1,1,3,4,1,0),
	(30,0,'*','&^','sdgfdggg','dsgsgsgs','<p>edfsdfsf99440j非gjjgjskdm &nbsp;fdgvs;gkjsre000--9-=0-0-0-0-mfkgjskmdg m jnadfjfm08903^**)_)_jgos##%^*)反反复复</p>','乾坤大挪移',19,1417067328,1417075465,'乾坤大挪移',19,26,2,2,5,1,1,0),
	(10,0,'g','官方framework.jar 过大 将部分内容从 framework 移到framework2 的情况','','例如三星机器， framework.jar 中有部分内容被移到framework2中， 这时我们在make firstpatch 时不能够通过命令将移到framework2中的内容正确的patch. 所','<p>例如三星机器， framework.jar 中有部分内容被移到framework2中， 这时我们在make firstpatch 时不能够通过命令将移到framework2中的内容正确的patch. 所以我们在make firstpatch之前需要将这些更改（移走的内容）还原后再执行make firstpatch命令。在make firstpatch之后 需要还原官方的更改，并且在make fullota 之前学要在脚本之中加入移除多patch加入的部分内容。<br /></p>','玛法里奥',8,1416196434,1416196434,'玛法里奥',8,28,0,0,0,1,1,0),
	(11,0,'z','指南针无法使用','','一般遇到指南针无法使用基本都是由于ｓｅｎｓｏｒ造成的问题。可以替换如下几个文件，基本就可以修复ｓｅｎｓｏｒ的问题。system/bin/sensorservice&amp;nbsp;system/bin/mse','<p>一般遇到指南针无法使用基本都是由于ｓｅｎｓｏｒ造成的问题。可以替换如下几个文件，基本就可以修复ｓｅｎｓｏｒ的问题。</p><p>system/bin/sensorservice&nbsp;</p><p>system/bin/msensord</p><p>system/lib/libsensorservice.so</p><div><br /></div>','Rom_舜',7,1416196235,1416196235,'Rom_舜',7,3,0,0,0,0,1,0),
	(12,0,'p','patch 定制apk','','patch有部分应用需要使用官方，有部分需要使用乐蛙的，在脚本中可以进行定制。phoneapps.mk &amp;nbsp;里面可以定制一些需要拷贝官方的ａｐｋmakefile中local-lewa-remov','<p>patch有部分应用需要使用官方，有部分需要使用乐蛙的，在脚本中可以进行定制。</p><p>phoneapps.mk &nbsp;<span style=\"line-height: 1.5;\">里面可以定制一些需要拷贝官方的ａｐｋ</span></p><p>makefile中</p><p>local-lewa-removed-apps字段为需要从包中移除的app&nbsp;</p><p>local-lewa-removed-priv-apps字段为需要从包中移除的 私有app</p>','Rom_舜',7,1416196517,1416196517,'Rom_舜',7,8,0,0,0,1,1,0),
	(13,0,'p','拼包掉基带问题','','拼包后机器启动后可能发现基带丢失问题。这时先将 官方rail 相关的内库替换掉重启查看 是否有基带。没有的话刷回关方包查看是否有基带。如果有 可以更换成官方的boot 查看rild 是否能够启动。如果刷','拼包后机器启动后可能发现基带丢失问题。这时先将 官方rail 相关的内库替换掉重启查看 是否有基带。没有的话刷回关方包查看是否有基带。如果有 可以更换成官方的boot 查看rild 是否能够启动。如果刷回官方基带仍然丢失，请用救砖线包尝试！刷回官方后将我们拼好的包换官方boot 尝试，如果有基带 对比boot 区别！<br />','玛法里奥',8,1416204119,1416204119,'玛法里奥',8,4,0,0,0,0,1,0),
	(14,0,'s','手机读取不到信号问题定位','','手机读取不到信号可以能由于如下几点：1、首先确定是否有基带？如果没有，试试卡刷回官方的ROM。如果依旧没有说明基带丢失了。有可能是boot.img recovery.img 和刷机脚本导致。如果有基带。','<p>手机读取不到信号可以能由于如下几点：</p><p>1、首先确定是否有基带？</p><p>如果没有，试试卡刷回官方的ROM。如果依旧没有说明基带丢失了。有可能是boot.img recovery.img 和刷机脚本导致。</p><p>如果有基带。那说明rom包里面的文件如bin下面有问题。相机可以看丢基带的解决方的词条。</p><p>2、如果有基带，那么adb shell进入手机。ps |grep rild看一下。是否rild的进程已经起来？</p><p>如果没有起来，轻确认boot是否好，还有rild、rild2的库是否使用了官方的库。</p><p>3、如果rild进程起来了，库都用对了，就是没有信号。那么就需要抓取Log来分析。</p><p>需要两个log。adb logcat -b radio -b main&gt;log.txt</p>','Rom_舜',7,1416205823,1416205823,'Rom_舜',7,9,0,0,0,0,1,0),
	(15,0,'k','开机SystemUI出错(锁屏篇)','','很多人遇到了开机以后systemUI进程出错的问题。实际从Log中分析可以看出是由于锁屏的布局加载导致。因为4.4锁屏是跑在systemUI进程中的。后举一个锁屏报错的例子，Log见附件。解决方法就是解','<p>很多人遇到了开机以后systemUI进程出错的问题。实际从Log中分析可以看出是由于锁屏的布局加载导致。</p><p>因为4.4锁屏是跑在systemUI进程中的。</p><p>后举一个锁屏报错的例子，Log见附件。</p><p>解决方法就是解开官方的keyguard应用和乐蛙的keyguard应用对比GlowPadView的布局文件。然后将官方替换到乐蛙。回编译乐蛙的keyguard。push到手机中就可以解决。</p><p><br /><br /><div class=\"img img_l\" style=\"width:300px;\"><a title=\"报错Log\" href=\"uploads/201411/1416207024JDQkmTjU.png\" target=\"_blank\"><img title=\"报错Log\" alt=\"报错Log\" src=\"uploads/201411/1416207024JDQkmTjU_s.png\" /></a><strong>报错Log</strong></div><br /><br /></p>','Rom_舜',7,1416207102,1416207102,'Rom_舜',7,45,0,0,0,2,1,0),
	(16,0,'A','ART和davik区别','','&amp;nbsp;\r\n &amp;nbsp; &amp;nbsp; &amp;nbsp; \r\n我们知道，Dalvik虚拟机实则也算是一个Java虚拟机，只不过它执行的不是class文件，而是dex文件。因此，ART运行时最理想的方式','<p>&nbsp;\r\n &nbsp; &nbsp; &nbsp; \r\n我们知道，Dalvik虚拟机实则也算是一个Java虚拟机，只不过它执行的不是class文件，而是dex文件。因此，ART运行时最理想的方式也是实\r\n现为一个Java虚拟机的形式，这样就可以很容易地将Dalvik虚拟机替换掉。注意，我们这里说实现为Java虚拟机的形式，实际上是指提供一套完全与\r\nJava虚拟机兼容的接口。例如，Dalvik虚拟机在接口上与Java虚拟机是一致的，但是它的内部可以是完全不一样的东西。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;实际上，ART运行时就是真的和Dalvik虚拟机一样，实现了一套完全兼容Java虚拟机的接口。为了方便描述，接下来我们就将ART运行时称为ART虚拟机，它和Dalvik虚拟机、Java虚拟机的关系如图1所示：</p><p style=\"text-align: center;\"><img src=\"http://img.blog.csdn.net/20140111165827656?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvTHVvc2hlbmd5YW5n/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast\" alt=\"\" /><br /></p><p style=\"text-align: center;\">图1 Java虚拟机、Dalvik虚拟机和ART运行时的关系</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 从图1可以知道，Dalvik虚拟机和ART虚拟机都实现了三个用来抽象Java虚拟机的接口：</p><p>&nbsp; &nbsp; &nbsp; &nbsp;1. JNI_GetDefaultJavaVMInitArgs -- 获取虚拟机的默认初始化参数</p><p>&nbsp; &nbsp; &nbsp; &nbsp;2. JNI_CreateJavaVM -- 在进程中创建虚拟机实例</p><p>&nbsp; &nbsp; &nbsp; &nbsp;3. JNI_GetCreatedJavaVMs -- 获取进程中创建的虚拟机实例</p><p>&nbsp;\r\n &nbsp; &nbsp; \r\n&nbsp;在Android系统中，Davik虚拟机实现在libdvm.so中，ART虚拟机实现在libart.so中。也就是说，libdvm.so和\r\nlibart.so导出了JNI_GetDefaultJavaVMInitArgs、JNI_CreateJavaVM和\r\nJNI_GetCreatedJavaVMs这三个接口，供外界调用。</p><p>&nbsp; &nbsp; &nbsp; \r\n&nbsp;此外，Android系统还提供了一个系统属性persist.sys.dalvik.vm.lib，它的值要么等于libdvm.so，要么等于\r\nlibart.so。当等于libdvm.so时，就表示当前用的是Dalvik虚拟机，而当等于libart.so时，就表示当前用的是ART虚拟机。</p><p>&nbsp;\r\n &nbsp; &nbsp; \r\n&nbsp;以上描述的Dalvik虚拟机和ART虚拟机的共同之处，当然它们之间最显著还是不同之处。不同的地方就在于，Dalvik虚拟机执行的是dex字节\r\n码，ART虚拟机执行的是本地机器码。这意味着Dalvik虚拟机包含有一个解释器，用来执行dex字节码，具体可以参考<a target=\"_blank\" href=\"http://blog.csdn.net/luoshengyang/article/details/8852432\">Dalvik虚拟机简要介绍和学习计划</a>这\r\n个系列的文章。当然，Android从2.2开始，也包含有JIT（Just-In-Time），用来在运行时动态地将执行频率很高的dex字节码翻译成\r\n本地机器码，然后再执行。通过JIT，就可以有效地提高Dalvik虚拟机的执行效率。但是，将dex字节码翻译成本地机器码是发生在应用程序的运行过程\r\n中的，并且应用程序每一次重新运行的时候，都要做重做这个翻译工作的。因此，即使用采用了JIT，Dalvik虚拟机的总体性能还是不能与直接执行本地机\r\n器码的ART虚拟机相比。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; \r\n那么，ART虚拟机执行的本地机器码是从哪里来的呢？Android的运行时从Dalvik虚拟机替换成ART虚拟机，并不要求开发者要将重新将自己的应\r\n用直接编译成目标机器码。也就是说，开发者开发出的应用程序经过编译和打包之后，仍然是一个包含dex字节码的APK文件。既然应用程序包含的仍然是\r\ndex字节码，而ART虚拟机需要的是本地机器码，这就必然要有一个翻译的过程。这个翻译的过程当然不能发生应用程序运行的时候，否则的话就和\r\nDalvik虚拟机的JIT一样了。在计算机的世界里，与JIT相对的是AOT。AOT进Ahead-Of-Time的简称，它发生在程序运行之前。我们\r\n用静态语言（例如C/C++）来开发应用程序的时候，编译器直接就把它们翻译成目标机器码。这种静态语言的编译方式也是AOT的一种。但是前面我们提\r\n到，ART虚拟机并不要求开发者将自己的应用直接编译成目标机器码。这样，将应用的dex字节码翻译成本地机器码的最恰当AOT时机就发生在应用安装的时\r\n候。</p><p>&nbsp; &nbsp; &nbsp; \r\n&nbsp;我们知道，没有ART虚拟机之前，应用在安装的过程，其实也会执行一次“翻译”的过程。只不过这个“翻译”的过程是将dex字节码进行优化，也就是由\r\ndex文件生成odex文件。这个过程由安装服务PackageManagerService请求守护进程installd来执行的。从这个角度来说，在\r\n应用安装的过程中将dex字节码翻译成本地机器码对原来的应用安装流程基本上就不会产生什么影响。</p><p><br /></p><p>详情参见：http://blog.csdn.net/luoshengyang/article/details/18006645 <br /></p>','玛法里奥',8,1416207174,1416207174,'玛法里奥',8,6,0,0,0,0,1,0),
	(17,0,'j','基带问题','','bug：进入系统后发现基带丢失解决方法：找到system/bin/gsm0710muxdmd2  gsm0710muxd 和 vold文件（替换官方的即可）','<p><b>bug：进入系统后发现基带丢失</b></p><p><b><br /></b></p><p>解决方法：找到system/bin/gsm0710muxdmd2 &nbsp;gsm0710muxd 和 vold文件（替换官方的即可） &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>','shenanan101',11,1416207669,1417080791,'SJ伊诺',18,10,1,1,0,0,1,0),
	(18,0,'y','源码aosp/cm编译问题','','最近有合作开发想要自己编译源码。这里介绍一下编译的相关命令全编代码：. build/envsetup.shlunch 机型make -j4如果在未全编的项目下，你像很快的编译出来一个模块例如framew','<p>最近有合作开发想要自己编译源码。这里介绍一下编译的相关命令</p><p>全编代码：</p><p>. build/envsetup.sh</p><p>lunch 机型</p><p>make -j4</p><p><br /></p><p>如果在未全编的项目下，你像很快的编译出来一个模块例如framework.jar，你可以这样做：</p><p>. build/envsetup.sh</p><p>lunch 机型</p><p>make <font color=\"#ff0000\">framework &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;//这里的framework对应的是你要编译的模块名，而非路径</font></p><p><font color=\"#ff0000\"><br /></font></p><p><br /></p><p>如果你已经全变过代码，或者你需要的编译的模块已经单独make过了。那么你只需要</p><p style=\"font-size: 13.63636302948px; line-height: 19.0909080505371px;\">. build/envsetup.sh</p><p style=\"font-size: 13.63636302948px; line-height: 19.0909080505371px;\">lunch 机型</p><p>mmm frameworks/base/</p>','Rom_舜',7,1416207903,1416207903,'Rom_舜',7,6,0,0,0,1,1,0),
	(21,0,'','手机卡在第一第一屏','','&amp;nbsp; &amp;nbsp; libmali.so存在差异（需要更换为官方的libmali.so库）','<p>&nbsp; &nbsp; libmali.so存在差异（需要更换为官方的libmali.so库）</p>','shenanan101',11,1416208157,1416208671,'shenanan101',11,14,1,1,0,0,1,0),
	(22,0,'4','4.4 boot.img里面哪里添加lewa-framework','','4.4如何添加lewa-framework.jar到启动。以前大家都是在init.rc里面添加。现在4.4有一个专门的文件用于添加。init.environ.rc 文件可以用于添加。','<p>4.4如何添加lewa-framework.jar到启动。以前大家都是在init.rc里面添加。现在4.4有一个专门的文件用于添加。init.environ.rc 文件可以用于添加。</p>','Rom_舜',7,1416208355,1416208355,'Rom_舜',7,2,0,0,0,0,1,0),
	(23,0,'t','同步5.0代码的问题','','目前很多在同步5.0代码的时候会出现非常慢，无法同步的情况。因此我们需要在host中加入如下两条，这样就可以顺利的同步谷歌的代码啦如果同步代码总是有问题，请修改下host,与代码同步有关的站点就两个74','<p>目前很多在同步5.0代码的时候会出现非常慢，无法同步的情况。因此我们需要在host中加入如下两条，这样就可以顺利的同步谷歌的代码啦</p><p><span style=\"font-family: 微软雅黑, Tahoma; font-size: large; line-height: normal;\">如果同步代码总是有问题，请修改下host,与代码同步有关的站点就两个</span><br style=\"font-family: 微软雅黑, Tahoma; font-size: large; line-height: normal;\"><span style=\"font-family: 微软雅黑, Tahoma; font-size: large; line-height: normal;\">74.125.21.98&nbsp;&nbsp;&nbsp; android.googlesource.com</span><br style=\"font-family: 微软雅黑, Tahoma; font-size: large; line-height: normal;\"><span style=\"font-family: 微软雅黑, Tahoma; font-size: large; line-height: normal;\">74.125.21.98&nbsp;&nbsp;&nbsp; gerrit.googlesource.com</span></p>','Rom_舜',7,1416208564,1416208564,'Rom_舜',7,8,0,0,1,0,1,0),
	(24,0,'I','Input事件传递','','主要有两个功能点1.Native 层，将Native 的MotionEvent 对象传送到java 层&amp;nbsp; aosp 的代码中 默认是没有将 Native层 的 MotionEvent 的对象传','<p><span class=\"pun\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">主要有两个功能点<br />1.Native 层，将Native 的MotionEvent 对象传送到java 层<br />&nbsp; aosp 的代码中 默认是没有将 Native层 的 MotionEvent 的对象传送到Java层的（Native层 的 KeyEvent 都是传送到Java层的） 。我们需要 修改 input 中的代码 将 Native 的 MotionEvent 传送到<br />Java 层。具体做法实在 InputDispatch.h 中 添加 接口&nbsp;</span><br style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\"><span class=\"pun\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\"><span class=\"kwd\">virtual</span><span class=\"pln\">&nbsp;</span><span class=\"kwd\">void</span><span class=\"pln\">&nbsp;interceptMotionBeforeQueueing</span><span class=\"pun\">(</span><span class=\"kwd\">const</span><span class=\"pln\">&nbsp;</span><span class=\"typ\">MotionEvent</span><span class=\"pun\">*</span><span class=\"pln\">&nbsp;motionEvent</span><span class=\"pun\">,</span><span class=\"typ\">nsecs_t</span><span class=\"pln\">&nbsp;</span><span class=\"kwd\">when</span><span class=\"pun\">,</span><span class=\"pln\">&nbsp;</span><span class=\"typ\">uint32_t</span><span class=\"pun\">&amp;</span><span class=\"pln\">&nbsp;policyFlags</span><span class=\"pun\">)</span><span class=\"pln\">&nbsp;</span><span class=\"pun\">=</span><span class=\"pln\">&nbsp;</span><span class=\"lit\">0</span><span class=\"pun\">;<br />以及 在 触摸事件分发的过程中 将这个 native 的对象 传送到 Java 层进行处理。<br /></span><font size=\"+1\">2</font></span><font size=\"+1\" style=\"font-family: 微软雅黑, Tahoma; line-height: normal;\">.java层，处理 native 层传送过来的MotionEvent对象<br />&nbsp; 在 WindowManagerPolicy（android.view.WindowManagerPolicy) 中添加接口</font><br style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\"><span class=\"kwd\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">&nbsp; public</span><span class=\"pln\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">&nbsp;</span><span class=\"kwd\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">int</span><span class=\"pln\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">&nbsp;interceptMotionBeforeQueueing</span><span class=\"pun\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">(</span><span class=\"typ\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">MotionEvent</span><span class=\"pln\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">&nbsp;event</span><span class=\"pun\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">,</span><span class=\"pln\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">&nbsp;</span><span class=\"kwd\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">int</span><span class=\"pln\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">&nbsp;policyFlags</span><span class=\"pun\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">,</span><span class=\"pln\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">&nbsp;</span><span class=\"kwd\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">boolean</span><span class=\"pln\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">&nbsp;isScreenOn</span><span class=\"pun\" style=\"font-family: 微软雅黑, Tahoma; font-size: 14px; line-height: normal;\">)<br />&nbsp; 所有 与&nbsp;</span><font size=\"+1\" style=\"font-family: 微软雅黑, Tahoma; line-height: normal;\">WindowManagerPolicy 相关的 类 如 InputManagerService.java,InputMonitor.java,PhoneWindowManager 都要实现这个接口。<br />&nbsp; 我们可以在 PhoneWindowManager 或者 LewaPhoneWindowManager 中实现上述接口，在触摸事件分发到应用窗口之前进行处理。<br />具体代码的修改&nbsp;</font></p><p><font size=\"+1\" style=\"font-family: 微软雅黑, Tahoma; line-height: normal;\">请查看gerrit 提交记录(mtk6592_kitkat)<a class=\"moz-txt-link-freetext\" href=\"http://review.lewatek.com/gerrit/#/c/58686/\" style=\"text-decoration: none !important;\">http://review.lewatek.com/gerrit/#/c/58686/</a><br /><br /></font></p>','Rom_舜',7,1416208889,1416208889,'Rom_舜',7,5,0,0,0,0,1,0),
	(26,0,'','4.4刷机脚本变化','','4.4 update-binary 学要在 customize_target_files.sh 中加入 cp -f other/updater out/target_files/OTA/bin/ oth','<p>4.4 update-binary 学要在 customize_target_files.sh 中加入 cp -f other/updater out/target_files/OTA/bin/ other 中的 updater 由底包中考出。二 updater-script 为 make fullota的过程中生成， 而后的set_metadata 相关函数可以通过 脚本最后的写入添加进去来确保 编译出的包可以刷机<br />&nbsp;<br /></p>','玛法里奥',8,1416210203,1416211999,'玛法里奥',8,21,1,1,1,0,1,0),
	(28,0,'','Wiki1111','','','','theme',3,1416210899,1416210899,'theme',3,20,0,0,0,1,1,0),
	(29,0,'a','android sensor 架构','','1、Android sensor架构Android4.0系统内置对传感器的支持达13种，它们分别是：加速度传感器(accelerometer)、磁力\r\n传感器(magnetic \r\nfield)、方向传','<p class=\"grey\"><strong>1、Android sensor架构</strong></p><p class=\"grey\">Android4.0系统内置对传感器的支持达13种，它们分别是：加速度传感器(accelerometer)、磁力\r\n传感器(magnetic \r\nfield)、方向传感器(orientation)、陀螺仪(gyroscope)、环境光照传感器(light)、压力传感器(pressure)、\r\n温度传感器(temperature)和距离传感器(proximity)等。</p><p class=\"grey\">Android实现传感器系统包括以下几个部分：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-1.jpg\" alt=\"\" height=\"300\" width=\"561\" /></p><p class=\"grey\" align=\"center\">各部分之间架构图如下：<br /><img src=\"http://www.embedu.org/Column/images/Column605-2.jpg\" alt=\"\" height=\"370\" width=\"580\" /></p><p class=\"grey\"><strong>2、Sensor HAL层接口</strong></p><p class=\"grey\">Google为Sensor提供了统一的HAL接口，不同的硬件厂商需要根据该接口来实现并完成具体的硬件抽象层，Android中Sensor的HAL接口定义在：hardware/libhardware/include/hardware/sensors.h</p><p class=\"grey\">对传感器类型的定义：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-3.jpg\" alt=\"\" height=\"240\" width=\"477\" /></p><p class=\"grey\">传感器模块的定义结构体如下：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-4.jpg\" alt=\"\" height=\"141\" width=\"580\" /></p><p class=\"grey\">该接口的定义实际上是对标准的硬件模块hw_module_t的一个扩展，增加了一个get_sensors_list函数，用于获取传感器的列表。</p><p class=\"grey\">对任意一个sensor设备都会有一个sensor_t结构体，其定义如下：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-5.jpg\" alt=\"\" height=\"416\" width=\"580\" /></p><p class=\"grey\">每个传感器的数据由sensors_event_t结构体表示，定义如下：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-6.jpg\" alt=\"\" height=\"497\" width=\"580\" /></p><p class=\"grey\">其中，sensor为传感器的标志符，而不同的传感器则采用union方式来表示，sensors_vec_t结构体用来表示不同传感器的数据，sensors_vec_t定义如下：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-7.jpg\" alt=\"\" height=\"241\" width=\"412\" /></p><p class=\"grey\">Sensor设备结构体sensors_poll_device_t，对标准硬件设备hw_device_t结构体的扩\r\n展，主要完成读取底层数据，并将数据存储在struct \r\nsensors_poll_device_t结构体中，poll函数用来获取底层数据，调用时将被阻塞定义如下：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-8.jpg\" alt=\"\" height=\"206\" width=\"580\" /></p><p class=\"grey\">控制设备打开/关闭结构体定义如下：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-9.jpg\" alt=\"\" height=\"136\" width=\"580\" /></p><p class=\"grey\"><strong>3、Sensor HAL实现(以LM75温度传感器为例子)</strong></p><p class=\"grey\">（1）打开设备流程图</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-10.jpg\" alt=\"\" height=\"694\" width=\"653\" /></p><p class=\"grey\">（2）实现代码分析</p><p class=\"grey\">在代码中含有两个传感器ADC电位器和LM75温度传感器，所以在sensor.c中，首先需要定义传感器数组device_sensor_list[]，其实就是初始化struct sensor_t结构体，初始化如下：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-11.jpg\" alt=\"\" height=\"400\" width=\"580\" /></p><p class=\"grey\">定义open_sensors函数，来打开Sensor模块，代码如下：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-12.jpg\" alt=\"\" height=\"338\" width=\"591\" /></p><p class=\"grey\">在这个方法中，首先需要为hw_device_t分配内存空间，并对其初始化，设置重要方法的实现。</p><p class=\"grey\">control_open_data_source()打开传感器并使能设备：</p><p align=\"center\"><img src=\"http://www.embedu.org/Column/images/Column605-13.jpg\" alt=\"\" height=\"254\" width=\"615\" /></p><p class=\"grey\">调用sensor__data_poll方法读取数据：</p>\r\n/*轮询读取数据*/<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;static int sensors__data_poll(struct sensors_data_context_t *dev, sensors_data_t * values)<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int n;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int mag;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;float temp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;char buf[10];<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (1) {<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(count % 3 == 2) // 读取ＡＤＣ值<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if( read(dev-&gt;event_fd[0], &amp;mag, sizeof(mag)) &lt; 0)<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGE(\"read adc error\");<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{ <br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev-&gt;sensors[ID_MAGNETIC_FIELD].magnetic.v[0] =(float)mag; <br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGE(\"read adc %f\\n\",(float)mag);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*values = dev-&gt;sensors[ID_MAGNETIC_FIELD];<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;values-&gt;sensor = ID_MAGNETIC_FIELD;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count++;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usleep(500000);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ID_MAGNETIC_FIELD;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if(count%3 == 1) //读取温度传感器值<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;memset(buf, 0 ,sizeof(buf));<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if((n = read(dev-&gt;event_fd[1], buf, 10)) &lt; 0)<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGE(\"read temp error\");<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;buf[n - 1] = \'\\0\';<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;temp =(float) (atoi(buf) / 1000);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev-&gt;sensors[ID_TEMPERATURE].temperature = temp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGE(\"read temp %f\\n\",temp);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*values = dev-&gt;sensors[ID_TEMPERATURE];<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;values-&gt;sensor = ID_TEMPERATURE;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count++;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;close(dev-&gt;event_fd[1]);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev-&gt;event_fd[1]= open(\"/sys/bus/i2c/devices/0-0048/temp1_input\", O_RDONLY);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usleep(500000);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ID_TEMPERATURE;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if(count%3 == 0) //读取方向传感器模拟值<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOGI(\"read orientation\\n\");<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* fill up data of orientation */<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev-&gt;sensors[ID_ORIENTATION].orientation.azimuth = x + 5;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev-&gt;sensors[ID_ORIENTATION].orientation.pitch = y + 5;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev-&gt;sensors[ID_ORIENTATION].orientation.roll = z + 5;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*values = dev-&gt;sensors[ID_ORIENTATION];<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;values-&gt;sensor = ID_ORIENTATION;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;count++;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;x += 0.0001; y += 0.0001; z += 0.0001;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;usleep (500000);<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ID_ORIENTATION;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}','玛法里奥',8,1416213743,1416213743,'玛法里奥',8,23,0,0,0,1,1,0),
	(31,0,'c','测试','','测试测试','<p>测试测试</p>','theme',3,1417073698,1417073698,'theme',3,4,0,0,0,0,1,0),
	(33,0,'d','地方','ff','放放风','<p>放放风法规法规</p>','乾坤大挪移',19,1417075369,1417075422,'乾坤大挪移',19,3,1,1,0,0,1,0),
	(34,0,'d','dfd','','tyhythyh','<p>tyhythyh <br /></p>','SJ伊诺',18,1417075542,1417075542,'SJ伊诺',18,2,0,0,0,0,1,0),
	(35,0,'d','dd','','erfrrfdfgfrrg','<p>erfrrfdfgfrrg方刚刚噶<br /></p>','SJ伊诺',18,1417075630,1417075656,'乾坤大挪移',19,6,1,1,0,0,1,0),
	(36,0,'s','sdfd','','dfdf','<p>dfdf<br /></p>','SJ伊诺',18,1417078631,1417078631,'SJ伊诺',18,8,0,0,0,0,1,0);

/*!40000 ALTER TABLE `wiki_doc` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_docfavorite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_docfavorite`;

CREATE TABLE `wiki_docfavorite` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL,
  `did` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_docreference
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_docreference`;

CREATE TABLE `wiki_docreference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_edition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_edition`;

CREATE TABLE `wiki_edition` (
  `eid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(15) NOT NULL DEFAULT '',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL,
  `summary` varchar(250) NOT NULL,
  `content` mediumtext NOT NULL,
  `words` int(10) unsigned NOT NULL DEFAULT '0',
  `images` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `judge` tinyint(1) NOT NULL DEFAULT '0',
  `excellent` tinyint(1) NOT NULL DEFAULT '0',
  `big` tinyint(1) NOT NULL DEFAULT '0',
  `reason` varchar(250) NOT NULL DEFAULT '',
  `coins` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`),
  KEY `cid` (`cid`),
  KEY `authorid` (`authorid`),
  KEY `time` (`time`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_edition` WRITE;
/*!40000 ALTER TABLE `wiki_edition` DISABLE KEYS */;

INSERT INTO `wiki_edition` (`eid`, `cid`, `did`, `author`, `authorid`, `time`, `ip`, `title`, `tag`, `summary`, `content`, `words`, `images`, `type`, `judge`, `excellent`, `big`, `reason`, `coins`)
VALUES
	(4,0,26,'玛法里奥',8,1416210203,'180.166.124.62','4.4刷机脚本变化','','','',0,0,1,0,0,0,'全文编辑',0),
	(5,0,9,'imac',15,1416195837,'180.166.124.62','ART无法使用','','&amp;nbsp; &amp;nbsp; 为了保证Android4.4平台中 ART模式 的正常运行，在修改Framework 代码时，请注意两个地方：&amp;nbsp; &amp;nbsp; &amp;nbsp;1. 类的static','<p>&nbsp; &nbsp; 为了保证Android4.4平台中 ART模式 的正常运行，在修改Framework 代码<span style=\"line-height: 1.5;\">时，请注意两个地方：</span></p><p>&nbsp; &nbsp; &nbsp;1. 类的static {} 代码区域内 禁止调用 JNI 的方法</p><p>&nbsp; &nbsp; &nbsp;2. 类的static 变量初始化时，禁止调用JNI的方法</p><p>&nbsp; &nbsp; &nbsp;SystemProperties.get(\"XX\", \"XX\");</p><p>&nbsp; &nbsp; &nbsp;native_XXX();</p><p><br /></p><p>如果ａｒｔ无法使用请确认是否存在如上所述的问题。</p>',366,0,1,0,0,0,'测试测试',0),
	(3,0,21,'shenanan101',11,1416208157,'180.166.124.62','手机卡在第一第一屏','','','',0,0,1,0,0,0,'新增内容',0),
	(6,0,33,'乾坤大挪移',19,1417075369,'180.166.124.62','地方','','放放风','<p>放放风</p>',10,0,1,0,0,0,'全文编辑,新增内容',0),
	(7,0,30,'乾坤大挪移',19,1417067328,'180.166.124.62','&^','','dsgsgsgs','<p>edfsdfsf99440jgjjgjskdm &nbsp;fdgvs;gkjsre000--9-=0-0-0-0-mfkgjskmdg m jnadfjfm08903^**)_)_jgos##%^*)</p>',72,0,1,0,0,0,'全文编辑,修正错误',0),
	(8,0,30,'乾坤大挪移',19,1417075454,'180.166.124.62','&^','','dsgsgsgs','<p>edfsdfsf99440jgjjgjskdm &nbsp;fdgvs;gkjsre000--9-=0-0-0-0-mfkgjskmdg m jnadfjfm08903^**)_)_jgos##%^*)反反复复</p>',80,0,1,0,0,0,'全文编辑',0),
	(9,0,35,'乾坤大挪移',19,1417075630,'180.166.124.62','dd','','erfrrfdfgfrrg','<p>erfrrfdfgfrrg<br /></p>',17,0,1,0,0,0,'全文编辑',0),
	(10,0,17,'SJ伊诺',18,1416207669,'180.166.124.62','基带问题','','bug：进入系统后发现基带丢失解决方法：找到system/bin/gsm0710muxdmd2 &amp;nbsp;gsm0710muxd 和 vold文件（替换官方的即可）','<p><b>bug：进入系统后发现基带丢失</b></p><p><b><br /></b></p><p>解决方法：找到system/bin/gsm0710muxdmd2 &nbsp;gsm0710muxd 和 vold文件（替换官方的即可）</p>',124,0,1,0,0,0,'新增内容',0);

/*!40000 ALTER TABLE `wiki_edition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_focus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_focus`;

CREATE TABLE `wiki_focus` (
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  `summary` varchar(250) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_focus` WRITE;
/*!40000 ALTER TABLE `wiki_focus` DISABLE KEYS */;

INSERT INTO `wiki_focus` (`did`, `title`, `tag`, `summary`, `image`, `time`, `displayorder`, `type`)
VALUES
	(15,'开机SystemUI出错(锁屏篇)','','很多人遇到了开机以后systemUI进程出错的问题。实际从Log中分析可以看出是由于锁屏的布局加载导致。因为4.4锁屏是跑在systemUI进程中的。后举一个锁屏报错的例子，Log见附件。解决方法就是解','uploads/201411/s_f_1416207024JDQkmTjU_s.png',1416384024,0,1),
	(7,'提取包过程中签名报错的处理','','例如三星等包，非常的大，会导致签名报错而无法提交，遇到此类的情','',1416381594,0,2),
	(11,'指南针无法使用','','一般遇到指南针无法使用基本都是由于ｓｅｎｓｏｒ造成的问题。可以替换如下几个文件，基本就可以修复ｓｅｎｓｏｒ的问题。system/bin/sensorservice&nbsp;system/bin/mse','',1416203711,0,1),
	(13,'拼包掉基带问题','','','',1416203711,0,1),
	(9,'ART无法使用','','&nbsp; &nbsp; 为了保证Android4.4平台中','',1416206264,0,2),
	(10,'官方framework.jar 过大 将部分内容从 framework 移到framework2 的情况','','例如三星机器， framework.jar 中有部分内容被移到','',1416206264,0,2),
	(12,'patch 定制apk','','patch有部分应用需要使用官方，有部分需要使用乐蛙的，在脚本','',1416206264,0,2),
	(6,'如何编译patch rom','','. build/envsetup.sh\r\n\r\nmkdir 机型名\r\n\r\ncd 机型名\r\n\r\nadb reboot recovery\r\n\r\n../tools/releasetools/ota_target','',1416384024,0,1),
	(8,'patch Ｔ9无法使用','','确认一下是否已经使用乐蛙提供的libsqlite.so。如果没有使用adb push libsqlite.so system/lib。','',1416384038,0,3);

/*!40000 ALTER TABLE `wiki_focus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_friendlink
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_friendlink`;

CREATE TABLE `wiki_friendlink` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `displayorder` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_gift
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_gift`;

CREATE TABLE `wiki_gift` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `credit` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_giftlog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_giftlog`;

CREATE TABLE `wiki_giftlog` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(6) unsigned NOT NULL,
  `gid` smallint(6) NOT NULL,
  `extra` text NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_innerlinkcache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_innerlinkcache`;

CREATE TABLE `wiki_innerlinkcache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `titleid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `did` (`did`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_language
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_language`;

CREATE TABLE `wiki_language` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(100) NOT NULL,
  `copyright` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_language` WRITE;
/*!40000 ALTER TABLE `wiki_language` DISABLE KEYS */;

INSERT INTO `wiki_language` (`id`, `name`, `available`, `path`, `copyright`)
VALUES
	(1,'简体中文',1,'zh','baike.com');

/*!40000 ALTER TABLE `wiki_language` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_lock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_lock`;

CREATE TABLE `wiki_lock` (
  `did` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_lock` WRITE;
/*!40000 ALTER TABLE `wiki_lock` DISABLE KEYS */;

INSERT INTO `wiki_lock` (`did`, `uid`, `time`)
VALUES
	(3,6,1415960086),
	(2,1,1415344053),
	(4,6,1415959852),
	(1,6,1415960021),
	(10,19,1417058632),
	(14,10,1416206209),
	(18,3,1416381325),
	(21,7,1416209032),
	(26,19,1417056838),
	(28,3,1416210899),
	(15,3,1416213507),
	(29,19,1417067165),
	(7,1,1416382185),
	(8,19,1417059826),
	(33,19,1417075559),
	(31,19,1417075337),
	(36,18,1417080953);

/*!40000 ALTER TABLE `wiki_lock` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_mailqueue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_mailqueue`;

CREATE TABLE `wiki_mailqueue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) NOT NULL DEFAULT '0',
  `tomail` varchar(100) NOT NULL,
  `frommail` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '1',
  `time` int(10) unsigned NOT NULL,
  `failures` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_nav
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_nav`;

CREATE TABLE `wiki_nav` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(15) NOT NULL,
  `code` text NOT NULL,
  `position` tinyint(1) DEFAULT NULL,
  `time` int(10) NOT NULL,
  `lastedit` int(10) NOT NULL,
  `lasteditor` char(15) NOT NULL,
  `lasteditorid` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `AK_name` (`name`),
  KEY `AK_lastedit` (`lastedit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_navlink
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_navlink`;

CREATE TABLE `wiki_navlink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `navid` varchar(15) DEFAULT NULL,
  `did` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navid` (`navid`,`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_navmodel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_navmodel`;

CREATE TABLE `wiki_navmodel` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `code` text NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_navmodel` WRITE;
/*!40000 ALTER TABLE `wiki_navmodel` DISABLE KEYS */;

INSERT INTO `wiki_navmodel` (`id`, `name`, `code`, `status`)
VALUES
	(1,'简语+链接集合','<p class=\"bor-ccc bg_g\">与“物质文化”相对，人类在社会历史实践过程中所创造的各种精神文化。本任务即盘点我国民间的舞蹈。</p><table class=\"table\">	<tr>		<td>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%9C%9D%E9%98%B3%E6%B0%91%E9%97%B4%E7%A7%A7%E6%AD%8C\"  target=\"_blank\" title=\"朝阳民间秧歌\">		朝阳民间秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%A4%A7%E6%A0%85%E6%A0%8F%E4%BA%94%E6%96%97%E6%96%8B%E9%AB%98%E8%B7%B7%E7%A7%A7%E6%AD%8C\"  target=\"_blank\"title=\"大栅栏五斗斋高跷秧歌\">		大栅栏五斗斋高跷秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%BA%AC%E8%A5%BF%E5%A4%AA%E5%B9%B3%E9%BC%93\" target=\"_blank\" title=\"京西太平鼓\">		京西太平鼓</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%89%93%E9%94%A3%E9%95%B2\" target=\"_blank\" title=\"打锣镲\">		打锣镲</a> <br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%9C%AC%E6%BA%AA%E7%A4%BE%E7%81%AB\" target=\"_blank\" title=\"本溪社火\">		本溪社火</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%82%A3%E6%97%8F%E7%99%BD%E8%B1%A1%E8%88%9E\" target=\"_blank\" title=\"傣族白象舞\">		傣族白象舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%AF%86%E4%BA%91%E8%9D%B4%E8%9D%B6%E4%BC%9A\" target=\"_blank\" title=\"密云蝴蝶会\">		密云蝴蝶会</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%BB%B6%E5%BA%86%E6%97%B1%E8%88%B9\" target=\"_blank\" title=\"延庆旱船\">		延庆旱船</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%80%9A%E5%B7%9E%E8%BF%90%E6%B2%B3%E9%BE%99%E7%81%AF\" target=\"_blank\" title=\"通州运河龙灯\">		通州运河龙灯</a> <br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%9D%BF%E5%87%B3%E9%BE%99\" target=\"_blank\" title=\"板凳龙\">		板凳龙</a> </td>		<td>		<p>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%87%91%E5%B7%9E%E9%BE%99%E8%88%9E\" target=\"_blank\" title=\"金州龙舞\">		金州龙舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%9D%92%E9%BE%99%E5%9C%AA%E6%A0%8F%E6%A3%92\" target=\"_blank\" title=\"青龙圪栏棒\">		青龙圪栏棒</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%9B%96%E5%B7%9E%E9%AB%98%E8%B7%B7%E7%A7%A7%E6%AD%8C\" target=\"_blank\" title=\"盖州高跷秧歌\">		盖州高跷秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B8%8A%E5%8F%A3%E5%AD%90%E9%AB%98%E8%B7%B7%E7%A7%A7%E6%AD%8C\" target=\"_blank\" title=\"上口子高跷秧歌\">		上口子高跷秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%AE%89%E5%BA%B7%E5%B0%8F%E5%9C%BA%E5%AD%90\" target=\"_blank\" title=\"安康小场子\">		安康小场子</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%80%9A%E5%9F%8E%E6%8B%8D%E6%89%93\" target=\"_blank\" title=\"通城拍打\">		通城拍打</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%99%BD%E7%BA%B8%E5%9D%8A%E5%A4%AA%E7%8B%AE\" target=\"_blank\" title=\"白纸坊太狮\">		白纸坊太狮</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B8%9C%E5%82%A8%E5%8F%8C%E9%BE%99%E4%BC%9A\" target=\"_blank\" title=\"东储双龙会\">		东储双龙会</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%92%B5%E8%8A%B1\" target=\"_blank\" title=\"撵花\">		撵花</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%98%93%E5%8E%BF%E6%91%86%E5%AD%97%E9%BE%99%E7%81%AF\" target=\"_blank\" title=\"易县摆字龙灯\">		易县摆字龙灯</a></p>		</td>		<td>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%9E%91%E5%AD%90%E7%A7%A7%E6%AD%8C\" target=\"_blank\" title=\"鞑子秧歌\">		鞑子秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%B5%AB%E5%93%B2%E6%97%8F%E8%90%A8%E6%BB%A1%E8%88%9E\" target=\"_blank\" title=\"赫哲族萨满舞\">		赫哲族萨满舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%B1%B3%E7%B2%AE%E5%B1%AF%E9%AB%98%E8%B7%B7\" target=\"_blank\" title=\"米粮屯高跷\">		米粮屯高跷</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%81%AB%E7%BB%AB%E5%AD%90%E4%BC%9E%E8%88%9E\" target=\"_blank\" title=\"火绫子伞舞\">		火绫子伞舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%85%AB%E9%97%BD%E5%8D%83%E5%A7%BF%E8%88%9E\" target=\"_blank\" title=\"八闽千姿舞\">		八闽千姿舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%BE%B7%E5%AE%89%E6%BD%98%E5%85%AC%E6%88%8F\" target=\"_blank\" title=\"德安潘公戏\">		德安潘公戏</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B9%8C%E6%8B%89%E6%BB%A1%E6%97%8F%E7%A7%A7%E6%AD%8C\" target=\"_blank\" title=\"乌拉满族秧歌\">		乌拉满族秧歌</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%98%8C%E5%B9%B3%E5%90%8E%E7%89%9B%E5%9D%8A%E6%9D%91%E8%8A%B1%E9%92%B9%E5%A4%A7%E9%BC%93\" target=\"_blank\" title=\"昌平后牛坊村花钹大鼓\">		昌平后牛坊村花钹大鼓</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%B5%9E%E7%9A%87%E9%93%81%E9%BE%99%E7%81%AF\" target=\"_blank\" title=\"赞皇铁龙灯\">		赞皇铁龙灯</a>		</td>		<td>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%86%89%E9%BE%99%E8%88%9E\" target=\"_blank\" title=\"醉龙舞\">醉龙舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%9A%86%E5%B0%A7%E6%8B%9B%E5%AD%90%E9%BC%93\" target=\"_blank\" title=\"隆尧招子鼓\">		隆尧招子鼓</a> <br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%99%8B%E5%B7%9E%E5%AE%98%E4%BC%9E\" target=\"_blank\" title=\"晋州官伞\">		晋州官伞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E9%A9%AC%E9%B9%BF%E8%88%9E\" target=\"_blank\" title=\"马鹿舞\">		马鹿舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B8%B0%E5%AE%81%E8%9D%B4%E8%9D%B6%E8%88%9E\" target=\"_blank\" title=\"丰宁蝴蝶舞\">		丰宁蝴蝶舞</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%B4%87%E4%BB%81%E8%B7%B3%E5%85%AB%E4%BB%99\" target=\"_blank\" title=\"崇仁跳八仙\">		崇仁跳八仙</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E4%B8%89%E8%8A%82%E9%BE%99%C2%B7%E8%B7%B3%E9%BC%93\" target=\"_blank\" title=\"三节龙·跳鼓\">		三节龙·跳鼓</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%B5%B7%E6%B7%80%E6%89%91%E8%9D%B4%E8%9D%B6\" target=\"_blank\" title=\"海淀扑蝴蝶\">		海淀扑蝴蝶</a><br/>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%B4%AF%E6%BA%AA%E6%9D%91%E5%9C%B0%E5%9B%B4%E5%AD%90\" target=\"_blank\" title=\"贯溪村地围子\">		贯溪村地围子</a>		</td>	</tr></table>',1),
	(2,'两列表格','<table class=\"table\">	<tr>		<td class=\"w-70\">网络红人</td>		<td>红人简介</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%AB%A0%E6%B3%BD%E5%A4%A9\" target=\"_blank\" title=\"章泽天\">章泽天</a></td>		<td>女，江苏南京人，南京外国语学校学生。2009年12月在网络走红，被网友称为奶茶美眉。2011年1月4日，清华大学证实，南外高三学生章泽天的确被清华大学认定为文科保送生。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%8D%96%E8%8F%9C%E5%93%A5\" target=\"_blank\" title=\"卖菜哥\">卖菜哥</a>		</td>		<td>寒冬时节，两名穿着厚棉服的小伙子在乌鲁木齐一个居民小区户外，出售仅比批发价高出几毛钱的各类蔬菜，所到之处往往人头攒动，被老百姓亲切地称为“卖菜哥”。 		<br />		</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%8B%8F%E7%B4%AB%E7%B4%AB\" target=\"_blank\" title=\"苏紫紫\">		苏紫紫</a></td>		<td>女，湖北省宜昌市人，中国人民大学艺术系二年级学生，也是一名人体模特。2010年12月，她在学校里办了个人体艺术私拍展，引发学校老师同学的议论，遭受白眼。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%8A%80%E6%9C%AF%E5%A5%B3\" target=\"_blank\" title=\"技术女\">		技术女</a></td>		<td>某技术女与一位名叫jack weppler 的男友分手之后，制作了N张男友的PS照片（主要是PS文字），然后上传到网上，并通过SEO，让Google 		图片搜索jack weppler 之后会出现这些照片。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%B5%87%E6%B0%B4%E5%93%A5\" target=\"_blank\" title=\"浇水哥\">浇水哥</a></td>		<td>情侣吵架纵火烧房，淡定&quot;浇水哥&quot;楼顶救火走红，上班后不久，“浇水哥”的照片被人发上了网，他淡定的动作和众网友搞笑的跟帖，一下子使他在单位“火”了。</td>	</tr></table>',1),
	(3,'免责声明','<P class=\"bor-ccc bg_g\">本站声明：该内容为网友协作，并不代表本站观点。由此产生的后果，于本站无关。</P>',1),
	(4,'两列表格_有标题','<table class=\"table\">	<tr>		<td class=\"bold\" colspan=\"2\"><strong>2010年年度十大网络红人</strong></td>	</tr>	<tr>		<td class=\"w-70\">网络红人 </td>		<td>红人简介</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E7%AB%A0%E6%B3%BD%E5%A4%A9\" target=\"_blank\" title=\"章泽天\">章泽天</a></td>		<td>女，江苏南京人，南京外国语学校学生。2009年12月在网络走红，被网友称为奶茶美眉。2011年1月4日，清华大学证实，南外高三学生章泽天的确被清华大学认定为文科保送生。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%8D%96%E8%8F%9C%E5%93%A5\" target=\"_blank\" title=\"卖菜哥\">卖菜哥</a>		</td>		<td>寒冬时节，两名穿着厚棉服的小伙子在乌鲁木齐一个居民小区户外，出售仅比批发价高出几毛钱的各类蔬菜，所到之处往往人头攒动，被老百姓亲切地称为“卖菜哥”。 		</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E8%8B%8F%E7%B4%AB%E7%B4%AB\" target=\"_blank\" title=\"苏紫紫\">		苏紫紫</a></td>		<td>女，湖北省宜昌市人，中国人民大学艺术系二年级学生，也是一名人体模特。2010年12月，她在学校里办了个人体艺术私拍展，引发学校老师同学的议论，遭受白眼。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%8A%80%E6%9C%AF%E5%A5%B3\" target=\"_blank\" title=\"技术女\">		技术女</a></td>		<td>某技术女与一位名叫jack weppler 的男友分手之后，制作了N张男友的PS照片（主要是PS文字），然后上传到网上，并通过SEO，让Google 		图片搜索jack weppler 之后会出现这些照片。</td>	</tr>	<tr>		<td><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%B5%87%E6%B0%B4%E5%93%A5\" target=\"_blank\" title=\"浇水哥\">浇水哥</a></td>		<td>情侣吵架纵火烧房，淡定&quot;浇水哥&quot;楼顶救火走红，上班后不久，“浇水哥”的照片被人发上了网，他淡定的动作和众网友搞笑的跟帖，一下子使他在单位“火”了。</td>	</tr></table>',1),
	(5,'图文混排','<table class=\"table\" vertical-align=\"top\">	<tr>		<td rowspan=\"2\">		<div class=\"img img_l\" style=\"WIDTH: 140px\">			<a href=\"style/default/zt.jpg\" target=\"_blank\" title=\"主题图片\">			<img alt=\"主题图片\" src=\"style/default/zt.jpg\" title=\"主题图片\"/></a><br />			<strong>主题图片</strong></div>		</td>		<td class=\"bold\">模块标题</td>	</tr>	<tr>		<td class=\"p_a_m\">		<p>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">		内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E5%86%85%E5%AE%B9%E8%AF%8D%E6%9D%A1\" target=\"_blank\" title=\"内容词条\">内容词条</a><a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a>		<a class=\"innerlink\" href=\"index.php?doc-innerlink-%E6%A8%A1%E5%9D%97%E6%A0%87%E9%A2%98\" target=\"_blank\" title=\"模块标题\">		模块标题</a> </p>		</td>	</tr></table>',1);

/*!40000 ALTER TABLE `wiki_navmodel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_plugin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_plugin`;

CREATE TABLE `wiki_plugin` (
  `pluginid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(40) NOT NULL DEFAULT '',
  `identifier` varchar(40) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `datatables` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `homepage` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(100) NOT NULL DEFAULT 'v1.0',
  `suit` varchar(100) NOT NULL DEFAULT '',
  `modules` text,
  PRIMARY KEY (`pluginid`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_pluginhook
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_pluginhook`;

CREATE TABLE `wiki_pluginhook` (
  `pluginhookid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pluginid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  PRIMARY KEY (`pluginhookid`),
  KEY `pluginid` (`pluginid`),
  KEY `available` (`available`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_pluginvar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_pluginvar`;

CREATE TABLE `wiki_pluginvar` (
  `pluginvarid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pluginid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `variable` varchar(40) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT 'text',
  `value` text NOT NULL,
  `extra` text NOT NULL,
  PRIMARY KEY (`pluginvarid`),
  KEY `pluginid` (`pluginid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_pms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_pms`;

CREATE TABLE `wiki_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(15) NOT NULL,
  `fromid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to` varchar(15) NOT NULL,
  `drafts` tinyint(1) NOT NULL DEFAULT '0',
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `subject` varchar(75) NOT NULL,
  `message` text NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `delstatus` tinyint(1) NOT NULL DEFAULT '0',
  `og` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `toid` (`toid`,`drafts`,`time`),
  KEY `fromid` (`fromid`,`drafts`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_pms` WRITE;
/*!40000 ALTER TABLE `wiki_pms` DISABLE KEYS */;

INSERT INTO `wiki_pms` (`id`, `from`, `fromid`, `toid`, `to`, `drafts`, `new`, `subject`, `message`, `time`, `delstatus`, `og`)
VALUES
	(1,'乾坤大挪移',19,18,'SJ伊诺',0,0,'哈哈哈','作者】 何钦铭； 陆汉权； 冯博琴；\r\n\r\n【机构】 浙江大学信息学部； 浙江大学计算机学院； 浙江大学计算机学院计算机基础教学与继续教育中心； 西安交通大学计算机教学实验中心； 教育部高等学校计算机基础课程教学指导委员会；\r\n\r\n【摘要】 大学计算机基础教学是高校通识教育的重要组成部分,在学生综合素质、创新能力培养等方面发挥着重要作用。如何正确认识和准确定位计算机基础教学,如何改革计算机基础教学内容以适应形势发展的需要,一直是计算机基础教学目前面临的重要挑战。《九校联盟(C9)计算机基础教学发展战略联合声明》旗帜鲜明地把&quot;计算思维能力的培养&quot;作为计算机基础教学的核心任务。本文是从作者所理解的角度,来',1417055045,1,0),
	(2,'乾坤大挪移',19,18,'SJ伊诺',0,0,'哈哈哈','作者】 何钦铭； 陆汉权； 冯博琴；\r\n\r\n【机构】 浙江大学信息学部； 浙江大学计算机学院； 浙江大学计算机学院计算机基础教学与继续教育中心； 西安交通大学计算机教学实验中心； 教育部高等学校计算机基础课程教学指导委员会；\r\n\r\n【摘要】 大学计算机基础教学是高校通识教育的重要组成部分,在学生综合素质、创新能力培养等方面发挥着重要作用。如何正确认识和准确定位计算机基础教学,如何改革计算机基础教学内容以适应形势发展的需要,一直是计算机基础教学目前面临的重要挑战。《九校联盟(C9)计算机基础教学发展战略联合声明》旗帜鲜明地把&quot;计算思维能力的培养&quot;作为计算机基础教学的核心任务。本文是从作者所理解的角度,来',1417055067,1,0),
	(3,'乾坤大挪移',19,18,'SJ伊诺',1,1,'哈哈哈','作者】 何钦铭； 陆汉权； 冯博琴；\r\n\r\n【机构】 浙江大学信息学部； 浙江大学计算机学院； 浙江大学计算机学院计算机基础教学与继续教育中心； 西安交通大学计算机教学实验中心； 教育部高等学校计算机基础课程教学指导委员会；\r\n\r\n【摘要】 大学计算机基础教学是高校通识教育的重要组成部分,在学生综合素质、创新能力培养等方面发挥着重要作用。如何正确认识和准确定位计算机基础教学,如何改革计算机基础教学内容以适应形势发展的需要,一直是计算机基础教学目前面临的重要挑战。《九校联盟(C9)计算机基础教学发展战略联合声明》旗帜鲜明地把&quot;计算思维能力的培养&quot;作为计算机基础教学的核心任务。本文是从作者所理解的角度,来',1417055085,0,0),
	(4,'乾坤大挪移',19,18,'SJ伊诺',0,0,'ddd','dd                                                                  dddddddd           \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nf                                                                                                                                          dddddddddddddddddddddddddddddddddddddddddddddddddd',1417055747,1,0),
	(5,'乾坤大挪移',19,18,'SJ伊诺',0,0,'rfrg','rgtregtrgrtgt',1417055919,0,0),
	(6,'乾坤大挪移',19,1,'admin',0,0,'评论举报专用','评论作者：乾坤大挪移<br/>评论时间：11-27 11:29<br/>评论ID：4<br/>评论词条名：ART无法使用<br/>评论内容：与 iOS 相比，Android 的用户体验有个相对糟糕的开始。在很长的时间里，界面一直丑小鸭，卡顿也是挥不去的痛。不过，在 Google 的全力推动，以及硬件厂商的响应下，Android 还是跨越各种阻碍，逐渐壮大起来了。<br />\r\n在此过程中，Google 也在经历着重大的变化。它逐渐从一个只重视数据的公司，转变为一个重视设计和用户体验的公司。从 Android 4.0 开始，Androi<br/>举报原因评论',1417059038,0,0),
	(7,'SJ伊诺',18,19,'乾坤大挪移',0,0,'Re:哈哈哈','作者】 何钦铭； 陆汉权； 冯博琴；\r\n\r\n【机构】 浙江大学信息学部； 浙江大学计算机学院； 浙江大学计算机学院计算机基础教学与继续教育中心； 西安交通大学计算机教学实验中心； 教育部高等学校计算机基础课程教学指导委员会；\r\n\r\n【摘要】 大学计算机基础教学是高校通识教育的重要组成部分,在学生综合素质、创新能力培养等方面发挥着重要作用。如何正确认识和准确定位计算机基础教学,如何改革计算机基础教学内容以适应形势发展的需要,一直是计算机基础教学目前面临的重要挑战。《九校联盟(C9)计算机基础教学发展战略联合声明》旗帜鲜明地把&quot;计算思维能力的培养&quot;作为计算机基础教学的核心任务。本文是从作者所理解的角度,来',1417069463,0,0);

/*!40000 ALTER TABLE `wiki_pms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_privatetitle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_privatetitle`;

CREATE TABLE `wiki_privatetitle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_recycle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_recycle`;

CREATE TABLE `wiki_recycle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(30) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `content` mediumtext NOT NULL,
  `file` text NOT NULL,
  `adminid` int(11) NOT NULL,
  `admin` char(30) NOT NULL,
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`),
  KEY `type` (`type`),
  KEY `adminid` (`adminid`),
  KEY `admin` (`admin`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_recycle` WRITE;
/*!40000 ALTER TABLE `wiki_recycle` DISABLE KEYS */;

INSERT INTO `wiki_recycle` (`id`, `type`, `keyword`, `content`, `file`, `adminid`, `admin`, `dateline`)
VALUES
	(1,'doc','aagfafa','a:3:{s:3:\"doc\";a:1:{i:0;a:20:{s:3:\"did\";s:1:\"4\";s:3:\"cid\";s:1:\"0\";s:6:\"letter\";s:1:\"a\";s:5:\"title\";s:7:\"aagfafa\";s:3:\"tag\";s:0:\"\";s:7:\"summary\";s:6:\"fasfaf\";s:7:\"content\";s:19:\"<p>fasfaf<br /></p>\";s:6:\"author\";s:0:\"\";s:8:\"authorid\";s:1:\"0\";s:4:\"time\";s:10:\"1415871648\";s:8:\"lastedit\";s:10:\"1415875411\";s:10:\"lasteditor\";s:0:\"\";s:12:\"lasteditorid\";s:1:\"0\";s:5:\"views\";s:1:\"8\";s:5:\"edits\";s:1:\"1\";s:8:\"editions\";s:1:\"1\";s:8:\"comments\";s:1:\"0\";s:5:\"votes\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";}}s:12:\"categorylink\";a:1:{i:0;a:3:{s:2:\"id\";s:1:\"4\";s:3:\"did\";s:1:\"4\";s:3:\"cid\";s:1:\"1\";}}s:7:\"edition\";a:1:{i:0;a:19:{s:3:\"eid\";s:1:\"2\";s:3:\"cid\";s:1:\"0\";s:3:\"did\";s:1:\"4\";s:6:\"author\";s:0:\"\";s:8:\"authorid\";s:1:\"0\";s:4:\"time\";s:10:\"1415871648\";s:2:\"ip\";s:14:\"180.166.124.62\";s:5:\"title\";s:7:\"aagfafa\";s:3:\"tag\";s:0:\"\";s:7:\"summary\";s:6:\"fasfaf\";s:7:\"content\";s:19:\"<p>fasfaf<br /></p>\";s:5:\"words\";s:2:\"12\";s:6:\"images\";s:1:\"0\";s:4:\"type\";s:1:\"1\";s:5:\"judge\";s:1:\"0\";s:9:\"excellent\";s:1:\"0\";s:3:\"big\";s:1:\"0\";s:6:\"reason\";s:2:\"fa\";s:5:\"coins\";s:1:\"0\";}}}','N;',1,'admin',1416194340),
	(2,'doc','LishunTest','a:3:{s:3:\"doc\";a:1:{i:0;a:20:{s:3:\"did\";s:1:\"3\";s:3:\"cid\";s:1:\"0\";s:6:\"letter\";s:1:\"L\";s:5:\"title\";s:10:\"LishunTest\";s:3:\"tag\";s:0:\"\";s:7:\"summary\";s:51:\" Test wiki !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\";s:7:\"content\";s:66:\"<p>&nbsp;Test wiki !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1111</p>\";s:6:\"author\";s:5:\"admin\";s:8:\"authorid\";s:1:\"1\";s:4:\"time\";s:10:\"1415600210\";s:8:\"lastedit\";s:10:\"1415871509\";s:10:\"lasteditor\";s:0:\"\";s:12:\"lasteditorid\";s:1:\"0\";s:5:\"views\";s:2:\"16\";s:5:\"edits\";s:1:\"1\";s:8:\"editions\";s:1:\"1\";s:8:\"comments\";s:1:\"0\";s:5:\"votes\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";}}s:12:\"categorylink\";a:1:{i:0;a:3:{s:2:\"id\";s:1:\"3\";s:3:\"did\";s:1:\"3\";s:3:\"cid\";s:1:\"1\";}}s:7:\"edition\";a:1:{i:0;a:19:{s:3:\"eid\";s:1:\"1\";s:3:\"cid\";s:1:\"0\";s:3:\"did\";s:1:\"3\";s:6:\"author\";s:0:\"\";s:8:\"authorid\";s:1:\"0\";s:4:\"time\";s:10:\"1415600210\";s:2:\"ip\";s:14:\"180.166.124.62\";s:5:\"title\";s:10:\"LishunTest\";s:3:\"tag\";s:0:\"\";s:7:\"summary\";s:59:\"&amp;nbsp;Test wiki !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\";s:7:\"content\";s:62:\"<p>&nbsp;Test wiki !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>\";s:5:\"words\";s:2:\"41\";s:6:\"images\";s:1:\"0\";s:4:\"type\";s:1:\"1\";s:5:\"judge\";s:1:\"0\";s:9:\"excellent\";s:1:\"0\";s:3:\"big\";s:1:\"0\";s:6:\"reason\";s:3:\"aaa\";s:5:\"coins\";s:1:\"0\";}}}','N;',1,'admin',1416194340),
	(3,'doc','aa','a:2:{s:3:\"doc\";a:1:{i:0;a:20:{s:3:\"did\";s:1:\"2\";s:3:\"cid\";s:1:\"0\";s:6:\"letter\";s:1:\"a\";s:5:\"title\";s:2:\"aa\";s:3:\"tag\";s:4:\"fasf\";s:7:\"summary\";s:7:\"afasfaf\";s:7:\"content\";s:14:\"<p>afasfaf</p>\";s:6:\"author\";s:5:\"admin\";s:8:\"authorid\";s:1:\"1\";s:4:\"time\";s:10:\"1415342097\";s:8:\"lastedit\";s:10:\"1415342097\";s:10:\"lasteditor\";s:5:\"admin\";s:12:\"lasteditorid\";s:1:\"1\";s:5:\"views\";s:1:\"5\";s:5:\"edits\";s:1:\"0\";s:8:\"editions\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:5:\"votes\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";}}s:12:\"categorylink\";a:1:{i:0;a:3:{s:2:\"id\";s:1:\"2\";s:3:\"did\";s:1:\"2\";s:3:\"cid\";s:1:\"1\";}}}','N;',1,'admin',1416194340),
	(4,'doc','aaa','a:2:{s:3:\"doc\";a:1:{i:0;a:20:{s:3:\"did\";s:1:\"1\";s:3:\"cid\";s:1:\"0\";s:6:\"letter\";s:1:\"a\";s:5:\"title\";s:3:\"aaa\";s:3:\"tag\";s:2:\"aa\";s:7:\"summary\";s:4:\"dada\";s:7:\"content\";s:21:\"<p>dadddada<br /></p>\";s:6:\"author\";s:5:\"admin\";s:8:\"authorid\";s:1:\"1\";s:4:\"time\";s:10:\"1415328933\";s:8:\"lastedit\";s:10:\"1415328933\";s:10:\"lasteditor\";s:5:\"admin\";s:12:\"lasteditorid\";s:1:\"1\";s:5:\"views\";s:2:\"35\";s:5:\"edits\";s:1:\"0\";s:8:\"editions\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:5:\"votes\";s:1:\"1\";s:7:\"visible\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";}}s:12:\"categorylink\";a:1:{i:0;a:3:{s:2:\"id\";s:1:\"1\";s:3:\"did\";s:1:\"1\";s:3:\"cid\";s:1:\"1\";}}}','N;',1,'admin',1416194340),
	(5,'category','官方开发;','a:1:{s:8:\"category\";a:1:{i:0;a:8:{s:3:\"cid\";s:1:\"4\";s:3:\"pid\";s:1:\"1\";s:4:\"name\";s:12:\"官方开发\";s:12:\"displayorder\";s:1:\"2\";s:4:\"docs\";s:1:\"0\";s:5:\"image\";s:0:\"\";s:10:\"navigation\";s:124:\"a:2:{i:0;a:2:{s:3:\"cid\";s:1:\"1\";s:4:\"name\";s:12:\"合作开发\";}i:1;a:2:{s:3:\"cid\";s:1:\"4\";s:4:\"name\";s:12:\"官方开发\";}}\";s:11:\"description\";s:0:\"\";}}}','N;',1,'admin',1416195240),
	(6,'doc','AOSP/CM代码编译','a:2:{s:3:\"doc\";a:1:{i:0;a:20:{s:3:\"did\";s:2:\"20\";s:3:\"cid\";s:1:\"0\";s:6:\"letter\";s:1:\"A\";s:5:\"title\";s:19:\"AOSP/CM代码编译\";s:3:\"tag\";s:0:\"\";s:7:\"summary\";s:225:\"最近有合作开发想要自己编译源码。这里介绍一下编译的相关命令全编代码：. build/envsetup.shlunch 机型make -j4如果在未全编的项目下，你像很快的编译出来一个模块例如framew\";s:7:\"content\";s:6228:\"<p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">最近有合作开发想要自己编译源码。这里介绍一下编译的相关命令</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">全编代码：</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">. build/envsetup.sh</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">lunch 机型</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">make -j4</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\"><br /></p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">如果在未全编的项目下，你像很快的编译出来一个模块例如framework.jar，你可以这样做：</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">. build/envsetup.sh</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">lunch 机型</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">make<span class=\"Apple-converted-space\">&nbsp;</span><font color=#ff0000>framework &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;//这里的framework对应的是你要编译的模块名，而非路径</font></p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\"><font color=#ff0000><br /></font></p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\"><br /></p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">如果你已经全变过代码，或者你需要的编译的模块已经单独make过了。那么你只需要</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">. build/envsetup.sh</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">lunch 机型</p><p style=\"WHITE-SPACE: normal; TEXT-TRANSFORM: none; WORD-SPACING: 0px; COLOR: rgb(0,0,0); PADDING-BOTTOM: 0px; PADDING-TOP: 0px; FONT: 13.63px/19.09px \'sans serif\', tahoma, verdana, helvetica; PADDING-LEFT: 0px; MARGIN: 10px 0px; DISPLAY: block; LETTER-SPACING: normal; PADDING-RIGHT: 0px; TEXT-INDENT: 0px; -webkit-text-stroke-width: 0px\">mmm frameworks/base/</p>\";s:6:\"author\";s:5:\"admin\";s:8:\"authorid\";s:1:\"1\";s:4:\"time\";s:10:\"1416208041\";s:8:\"lastedit\";s:10:\"1416208041\";s:10:\"lasteditor\";s:5:\"admin\";s:12:\"lasteditorid\";s:1:\"1\";s:5:\"views\";s:1:\"1\";s:5:\"edits\";s:1:\"0\";s:8:\"editions\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:5:\"votes\";s:1:\"0\";s:7:\"visible\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";}}s:12:\"categorylink\";a:2:{i:0;a:3:{s:2:\"id\";s:2:\"35\";s:3:\"did\";s:2:\"20\";s:3:\"cid\";s:1:\"7\";}i:1;a:3:{s:2:\"id\";s:2:\"34\";s:3:\"did\";s:2:\"20\";s:3:\"cid\";s:1:\"1\";}}}','N;',1,'admin',1416208119),
	(7,'user','test111','a:31:{s:3:\"uid\";s:1:\"4\";s:8:\"username\";s:7:\"test111\";s:8:\"password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:5:\"email\";s:19:\"lewatek@lewatek.com\";s:6:\"gender\";s:1:\"0\";s:7:\"credit2\";s:2:\"20\";s:7:\"credit1\";s:2:\"20\";s:8:\"birthday\";s:1:\"0\";s:5:\"image\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:8:\"location\";s:0:\"\";s:5:\"regip\";s:14:\"180.166.124.62\";s:7:\"regtime\";s:10:\"1415871620\";s:6:\"lastip\";s:0:\"\";s:8:\"lasttime\";s:1:\"0\";s:7:\"groupid\";s:1:\"2\";s:10:\"timeoffset\";s:1:\"8\";s:5:\"style\";s:7:\"default\";s:8:\"language\";s:2:\"zh\";s:9:\"signature\";s:0:\"\";s:8:\"truename\";s:0:\"\";s:9:\"telephone\";s:0:\"\";s:2:\"qq\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:7:\"authstr\";s:0:\"\";s:7:\"creates\";s:1:\"0\";s:5:\"edits\";s:1:\"0\";s:5:\"views\";s:1:\"8\";s:7:\"checkup\";s:1:\"1\";s:7:\"newdocs\";s:2:\"-1\";s:15:\"account_user_id\";s:1:\"0\";}','N;',0,'',1416815074);

/*!40000 ALTER TABLE `wiki_recycle` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_regular
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_regular`;

CREATE TABLE `wiki_regular` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `regular` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `regulargroupid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_regular` WRITE;
/*!40000 ALTER TABLE `wiki_regular` DISABLE KEYS */;

INSERT INTO `wiki_regular` (`id`, `name`, `regular`, `type`, `regulargroupid`)
VALUES
	(1,'首页','index-default',0,18),
	(2,'更改风格','index-settheme',0,18),
	(3,'图片上传','attachment-uploadimg',0,20),
	(4,'附件下载（附件）','attachment-download',0,18),
	(5,'删除附件（附件）','attachment-remove',0,20),
	(6,'浏览分类','category-default|category-ajax',0,18),
	(7,'浏览具体分类','category-view',0,18),
	(8,'分类下字母顺序浏览','category-letter',0,18),
	(9,'按字母顺序浏览（排行榜）','list-letter',0,18),
	(10,'最近更新词条（排行榜）','list-default|list-recentchange',0,18),
	(13,'用户人气词条列表(排行榜)','list-popularity',0,18),
	(14,'推荐词条列表(排行榜)','list-focus',0,18),
	(15,'浏览词条','doc-view',0,18),
	(16,'创建词条','doc-create',0,20),
	(17,'验证词条是否存在','doc-verify',0,20),
	(18,'编辑词条','doc-edit',0,20),
	(19,'分段编辑词条','doc-editsection',0,20),
	(20,'刷新编辑锁','doc-refresheditlock',0,20),
	(21,'取消编辑锁','doc-unseteditlock',0,20),
	(22,'浏览词条内链','doc-innerlink',0,18),
	(23,'浏览词条摘要','doc-summary',0,18),
	(24,'浏览词条贡献者','doc-editor',0,18),
	(25,'沙盒','doc-sandbox',0,20),
	(26,'设置推荐词条（前台词条管理）','doc-setfocus',0,20),
	(27,'移动词条分类（前台词条管理）','doc-getcategroytree|doc-changecategory',0,20),
	(28,'更改词条名（前台词条管理）','doc-changename',0,20),
	(29,'锁定词条（前台词条管理）','doc-lock',0,20),
	(30,'解除词条锁定（前台词条管理）','doc-unlock',0,20),
	(31,'审核词条（前台词条管理）','doc-audit',0,20),
	(32,'删除词条（前台词条管理）','doc-remove',0,20),
	(33,'查看评论','comment-view|comment-report|comment-oppose|comment-aegis',0,18),
	(34,'删除评论（前台评论管理）','comment-remove',0,20),
	(35,'添加评论（前台评论管理）','comment-add',0,20),
	(36,'编辑评论（前台评论管理）','comment-edit',0,20),
	(37,'版本列表（历史版本）','edition-list',0,18),
	(38,'浏览版本（历史版本）','edition-view',0,18),
	(39,'版本对比（历史版本）','edition-compare',0,18),
	(40,'删除版本（历史版本）','edition-remove',0,20),
	(41,'优秀版本（历史版本）','edition-excellent',0,20),
	(42,'取消优秀（历史版本）','edition-unexcellent',0,20),
	(43,'复制版本（历史版本）','edition-copy',0,20),
	(44,'进入词条（搜索）','search-default',0,18),
	(45,'全文搜索（搜索）','search-fulltext|search-kw',0,18),
	(46,'TAG搜索（搜索）','search-tag',0,18),
	(47,'用户注册（用户）','user-register',0,19),
	(48,'用户登录（用户）','user-login',0,19),
	(49,'检测用户（用户）','user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail',0,19),
	(50,'用户注销（用户）','user-logout',0,19),
	(51,'个人信息（用户）','user-profile',0,19),
	(52,'个人信息设置（用户）','user-editprofile',0,19),
	(53,'修改密码（用户）','user-editpass',0,19),
	(54,'修改头像（用户）','user-editimage|user-editimageifeam|user-cutimage',0,19),
	(55,'找回密码（用户）','user-getpass',0,19),
	(56,'显示验证码（用户）','user-code',0,19),
	(57,'个人空间（用户）','user-space',0,19),
	(58,'清除cookies（用户）','user-clearcookies',0,19),
	(59,'IP禁止','admin_banned-default',1,21),
	(60,'分类管理列表（分类管理）','admin_category-default|admin_category-list',1,25),
	(61,'添加分类（分类管理）','admin_category-add',1,25),
	(62,'编辑分类（分类管理）','admin_category-edit',1,25),
	(63,'删除分类（分类管理）','admin_category-remove',1,25),
	(64,'分类排序（分类管理）','admin_category-reorder',1,25),
	(65,'分类合并（分类管理）','admin_category-merge',1,25),
	(66,'数据库备份（数据库管理）','admin_db-backup',1,27),
	(67,'数据库还原（数据库管理）','admin_db-import',1,27),
	(68,'删除数据文件（数据库管理）','admin_db-remove',1,27),
	(69,'数据库列表（数据库管理）','admin_db-tablelist',1,27),
	(70,'数据库优化（数据库管理）','admin_db-optimize',1,27),
	(71,'数据库修复（数据库管理）','admin_db-repair',1,27),
	(72,'下载数据文件（数据库管理）','admin_db-downloadfile',1,27),
	(73,'词条列表（管理词条）','admin_doc-default',1,23),
	(74,'搜索词条（管理词条）','admin_doc-search',1,23),
	(75,'审核词条（管理词条）','admin_doc-audit',1,23),
	(76,'推荐词条（管理词条）','admin_doc-recommend',1,23),
	(77,'锁定词条（管理词条）','admin_doc-lock',1,23),
	(78,'解锁词条（管理词条）','admin_doc-unlock',1,23),
	(79,'删除词条（管理词条）','admin_doc-remove',1,23),
	(80,'移动词条（管理词条）','admin_doc-move',1,23),
	(81,'重命名词条（管理词条）','admin_doc-rename',1,23),
	(82,'搜索评论（后台管理评论）','admin_comment-default|admin_comment-search',1,23),
	(83,'删除评论（后台管理评论）','admin_comment-delete',1,23),
	(84,'搜索附件（后台管理附件）','admin_attachment-default|admin_attachment-search',1,23),
	(85,'删除附件（后台管理附件）','admin_attachment-remove',1,23),
	(86,'下载附件（后台管理附件）','admin_attachment-download',1,23),
	(87,'推荐词条列表（推荐词条）','admin_focus-focuslist',1,23),
	(88,'删除推荐词条（推荐词条）','admin_focus-remove',1,23),
	(89,'更改推荐词条顺序（推荐词条）','admin_focus-reorder',1,23),
	(90,'编辑推荐词条（推荐词条）','admin_focus-edit',1,23),
	(91,'更新图片（推荐词条）','admin_focus-updateimg',1,23),
	(92,'词条显示数量设置（推荐词条）','admin_focus-numset',1,23),
	(93,'友情链接列表（友情链接）','admin_friendlink-default',1,21),
	(94,'添加友情链接（友情链接）','admin_friendlink-add',1,21),
	(95,'编辑友情链接（友情链接）','admin_friendlink-edit',1,21),
	(96,'删除友情链接（友情链接）','admin_friendlink-remove',1,21),
	(97,'更新友情链接顺序（友情链接）','admin_friendlink-updateorder',1,21),
	(98,'语言列表（语言）','admin_language-default',1,26),
	(99,'添加语言（语言）','admin_language-addlang',1,26),
	(100,'编辑语言（语言）','admin_language-editlang',1,26),
	(101,'更新语言（语言）','admin_language-updatelanguage',1,26),
	(102,'设置默认语言（语言）','admin_language-setdefaultlanguage',1,26),
	(103,'管理员登录（后台登录）','admin_main-login|admin_main-default',1,21),
	(104,'管理员退出（后台登录）','admin_main-logout',1,21),
	(105,'后台框架（后台登录）','admin_main-mainframe',1,21),
	(106,'后台新版本提示（后台登录）','admin_main-update',1,21),
	(107,'插件列表（插件管理）','admin_plugin-list|admin_plugin-default|admin_plugin-manage|admin_plugin-will|admin_plugin-find|admin_plugin-share',1,22),
	(108,'安装插件（插件管理）','admin_plugin-install',1,22),
	(109,'卸载插件（插件管理）','admin_plugin-uninstall',1,22),
	(110,'启用插件（插件管理）','admin_plugin-start',1,22),
	(111,'停用插件（插件管理）','admin_plugin-stop',1,22),
	(112,'插件变量（插件管理）','admin_plugin-setvar',1,22),
	(113,'插件钩子（插件管理）','admin_plugin-hook',1,22),
	(114,'规则列表(管理权限)','admin_regular-list|admin_regular-default',1,24),
	(115,'添加规则(管理权限)','admin_regular-add',1,24),
	(116,'编辑规则(管理权限)','admin_regular-edit',1,24),
	(117,'删除规则(管理权限)','admin_regular-remove',1,24),
	(118,'基本设置(网站管理)','admin_setting-base',1,21),
	(119,'上传logo(网站管理)','admin_setting-logo',1,21),
	(120,'经验设置(网站管理)','admin_setting-credit',1,21),
	(121,'seo设置(网站管理)','admin_setting-seo',1,21),
	(122,'缓存页面(网站管理)','admin_setting-cache',1,21),
	(123,'更新缓存设置(网站管理)','admin_setting-renewcache',1,21),
	(124,'清除缓存(网站管理)','admin_setting-removecache',1,21),
	(125,'附件设置(网站管理)','admin_setting-attachment',1,21),
	(126,'邮件设置(网站管理)','admin_setting-mail',1,21),
	(127,'风格列表（风格）','admin_style-default',1,26),
	(128,'创建模版风格页面（风格）','admin_style-create',1,26),
	(129,'删除风格（风格）','admin_style-removestyle',1,26),
	(131,'设置默认风格（风格）','admin_style-setdefaultstyle',1,26),
	(132,'热门标签设置（热门标签）','admin_tag-hottag',1,23),
	(133,'列表|添加|删除（定时任务）','admin_task-default',1,21),
	(134,'启用|停用（定时任务）','admin_task-taskstatus',1,21),
	(135,'编辑定时任务（定时任务）','admin_task-edittask',1,21),
	(136,'执行定时任务（定时任务）','admin_task-run',1,21),
	(137,'用户列表（管理用户）','admin_user-default|admin_user-list',1,24),
	(138,'添加用户（管理用户）','admin_user-add',1,24),
	(139,'编辑用户（管理用户）','admin_user-edit',1,24),
	(140,'删除用户（管理用户）','admin_user-remove',1,24),
	(141,'用户组列表（管理用户组）','admin_usergroup-default|admin_usergroup-list',1,24),
	(142,'添加用户组（管理用户组）','admin_usergroup-add',1,24),
	(143,'编辑用户组（管理用户组）','admin_usergroup-edit',1,24),
	(144,'删除用户组（管理用户组）','admin_usergroup-remove',1,24),
	(145,'关键词过滤(词语过滤)','admin_word-default',1,23),
	(146,'裁剪图片','user-cutoutimage',0,19),
	(147,'上周贡献榜','list-weekuserlist',0,18),
	(148,'总贡献榜','list-allcredit',0,18),
	(149,'修改用户组(管理用户组)','admin_usergroup-change',1,24),
	(150,'Rss订阅','list-rss',0,18),
	(151,'后台操作记录(网站管理)','admin_log-default',1,21),
	(152,'查收短消息','pms-default|pms-box|pms-setread',0,19),
	(153,'删除短消息','pms-remove',0,19),
	(154,'发送短消息','pms-sendmessage|pms-checkrecipient',0,19),
	(155,'忽略列表','pms-blacklist',0,19),
	(156,'站内公告(网站管理)','admin_setting-notice',1,21),
	(157,'删除同义词(前台同义词管理)','synonym-removesynonym',0,20),
	(158,'查看同义词(前台同义词管理)','synonym-view',0,20),
	(159,'编辑同义词(前台同义词管理)','synonym-savesynonym',0,20),
	(160,'同义词列表(后台同义词管理)','admin_synonym-default',1,23),
	(161,'搜索同义词(后台同义词管理)','admin_synonym-search',1,23),
	(162,'删除同义词(后台同义词管理)','admin_synonym-delete',1,23),
	(163,'编辑同义词(后台同义词管理)','admin_synonym-save',1,23),
	(164,'基本概况统计(后台统计)','admin_statistics-stand',1,28),
	(165,'分类排行榜(后台统计)','admin_statistics-cat_toplist',1,28),
	(166,'词条排行榜(后台统计)','admin_statistics-doc_toplist',1,28),
	(167,'编辑排行榜(后台统计)','admin_statistics-edit_toplist',1,28),
	(168,'经验排行榜(后台统计)','admin_statistics-credit_toplist',1,28),
	(169,'管理团队(后台统计)','admin_statistics-admin_team',1,28),
	(170,'UC经验兑换','exchange-default',2,19),
	(174,'词条免检','doc-immunity',0,20),
	(176,'编辑模版文件（风格）','admin_style-editxml',1,26),
	(177,'编辑模版描述文件（风格）','admin_style-edit',1,26),
	(178,'读取模版文件（风格）','admin_style-readfile',1,26),
	(179,'保存模版文件（风格）','admin_style-savefile',1,26),
	(181,'卸载模版（风格）','admin_style-removestyle',1,26),
	(183,'可安装模版列表（风格）','admin_style-list',1,26),
	(184,'安装模版（风格）','admin_style-install',1,26),
	(185,'显示广告列表','admin_adv-default',0,21),
	(186,'设置广告加载方式','admin_adv-config',0,21),
	(187,'搜索广告(后台)','admin_adv-search',0,21),
	(188,'添加广告','admin_adv-add',0,21),
	(189,'编辑广告','admin_adv-edit',0,21),
	(190,'删除广告','admin_adv-remove',0,21),
	(191,'审核用户','admin_user-checkup',1,24),
	(192,'待审核用户列表','admin_user-uncheckeduser',1,24),
	(193,'注册控制','admin_setting-baseregister',0,21),
	(201,'随便看看','doc-random',0,18),
	(202,'此词条对我有用','doc-vote',0,18),
	(203,'创建新风格页面','admin_style-add',0,26),
	(204,'创建新风格','admin_style-createstyle',0,26),
	(206,'频道列表（频道）','admin_channel-default',1,21),
	(207,'添加频道（频道）','admin_channel-add',1,21),
	(208,'编辑频道（频道）','admin_channel-edit',1,21),
	(209,'删除频道（频道）','admin_channel-remove',1,21),
	(210,'修改频道显示顺序（频道）','admin_channel-updateorder',1,21),
	(211,'添加修改参考资料','reference-add',0,20),
	(212,'删除参考资料','reference-remove',0,20),
	(213,'上传附件','attachment-upload',0,20),
	(214,'取消焦点词条','doc-removefocus',0,20),
	(215,'自动保存','doc-autosave',0,20),
	(216,'删除自动保存的词条','doc-delsave',0,24),
	(217,'自动保存管理','doc-managesave',0,24),
	(218,'通行证权限','passport_client-login|passport_client-logout',0,21),
	(219,'取消推荐词条（管理词条）','admin_doc-cancelrecommend',0,23),
	(220,'相关词条权限','doc-getrelateddoc|doc-addrelatedoc',0,20),
	(251,'回收站管理','admin_recycle-default|admin_recycle-search|admin_recycle-remove|admin_recycle-recover|admin_recycle-clear',1,23),
	(252,'SQL查询窗口（数据库管理）','admin_db-sqlwindow',1,27),
	(253,'服务器信息','admin_log-phpinfo',1,21),
	(254,'模版高级编辑','admin_style-advancededit',1,26),
	(255,'待完善词条','admin_cooperate-default',1,23),
	(256,'热门搜索','admin_hotsearch-default',1,23),
	(257,'图片百科','admin_image-default|admin_image-editimage|admin_image-remove',1,23),
	(258,'相关词条','admin_relation-default',1,23),
	(259,'前台相关词条','doc-cooperate',0,18),
	(260,'版本评审','admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_edition-remove',1,23),
	(261,'添加金币(管理用户)','admin_user-addcoins',1,24),
	(262,'礼品商店','admin_gift-default|admin_gift-view|admin_gift-search|admin_gift-add|admin_gift-edit|admin_gift-remove|admin_gift-available|admin_gift-price|admin_gift-notice|admin_gift-log|admin_gift-verify',1,23),
	(263,'礼品商店','gift-default|gift-view|gift-search|gift-apply',0,18),
	(264,'通行证设置','admin_setting-passport',1,21),
	(265,'图片百科','pic-piclist|pic-view|pic-ajax|pic-search',0,18),
	(266,'群发短消息','pms-publicmessage',0,19),
	(267,'防采集设置','admin_setting-anticopy',1,21),
	(268,'图片水印','admin_setting-watermark|admin_setting-preview',1,21),
	(269,'后台列表显示','admin_setting-listdisplay',1,21),
	(270,'防灌水设置','admin_setting-sec',1,21),
	(271,'验证码设置','admin_setting-code',0,21),
	(272,'时间设置','admin_setting-time',0,21),
	(273,'COOKIE设置','admin_setting-cookie',0,21),
	(274,'词条设置','admin_setting-docset',0,21),
	(275,'首页设置','admin_setting-index',0,21),
	(276,'搜索设置','admin_setting-search',0,21),
	(277,'数据JS调用','datacall-js',2,18),
	(278,'收藏词条','user-addfavorite',2,20),
	(279,'删除词条收藏','user-removefavorite|user-exchange',2,20),
	(280,'添加编辑分类（分类管理）','admin_category-batchedit',1,25),
	(281,'云搜索-词条列表','archiver-default|archiver-list|archiver-view',2,20),
	(282,'邀请注册','user-invite',0,19),
	(283,'邮件提醒设置(网站管理)','admin_setting-noticemail',1,21),
	(284,'Sitemap管理','admin_sitemap-default|admin_sitemap-setting|admin_sitemap-createdoc|admin_sitemap-updatedoc|admin_sitemap-submit|admin_sitemap-baiduxml',1,21),
	(285,'云搜索中介页面','search-agent',2,18),
	(286,'百科联盟','admin_hdapi-set|admin_hdapi-nosynset|admin_hdapi-down|admin_hdapi-info|admin_hdapi-default|admin_hdapi-siteuserinfo|admin_hdapi-titles|admin_hdapi-import|admin_hdapi-rolldocs|admin_hdapi-registercheck|admin_hdapi-login|admin_hdapi-privatedoc',1,21),
	(287,'数据库大小','admin_main-datasize',2,27),
	(288,'后台快捷菜单','admin_setting-shortcut',2,21),
	(289,'数据库存储设置','admin_db-storage|admin_db-convert',2,27),
	(290,'设置词条首字母','doc-editletter',0,20),
	(291,'分享词条','admin_share-default|admin_share-search|admin_share-share|admin_share-set',2,23),
	(292,'模板编辑','admin_theme-default|admin_theme-editxml|admin_theme-add|admin_theme-create|admin_theme-createstyle|admin_theme-edit|admin_theme-codeedit|admin_theme-delbak|admin_theme-baseedit|admin_theme-advancededit|admin_theme-readfile|admin_theme-savefile|admin_theme',0,21),
	(293,'数据调用相关操作','admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacal',2,23),
	(294,'后台菜单搜索','admin_actions-default',1,20),
	(295,'木马扫描','admin_filecheck-docreate|admin_safe-default|admin_safe-setting|admin_safe-scanfile|admin_safe-validate|admin_safe-scanfuns|admin_safe-list|admin_safe-editcode|admin_safe-del',2,21),
	(296,'自动升级','admin_upgrade-default|admin_upgrade-check|admin_upgrade-initpage|admin_upgrade-install',1,21),
	(297,'Map','admin_actions-map',1,20),
	(298,'导航模块','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-de',1,21);

/*!40000 ALTER TABLE `wiki_regular` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_regular_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_regular_relation`;

CREATE TABLE `wiki_regular_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idleft` int(11) NOT NULL DEFAULT '0',
  `idright` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_regular_relation` WRITE;
/*!40000 ALTER TABLE `wiki_regular_relation` DISABLE KEYS */;

INSERT INTO `wiki_regular_relation` (`id`, `idleft`, `idright`)
VALUES
	(1,5,3),
	(2,5,18),
	(3,19,18),
	(4,21,20),
	(5,30,29),
	(6,34,36),
	(7,40,43),
	(8,40,41),
	(9,40,42),
	(10,48,50),
	(11,52,51),
	(12,53,51),
	(13,54,51),
	(14,62,60),
	(15,63,64),
	(16,63,65),
	(17,63,60),
	(18,63,61),
	(19,63,62),
	(20,65,64),
	(21,67,70),
	(22,67,69),
	(23,67,71),
	(24,67,72),
	(25,67,68),
	(26,67,66),
	(27,68,72),
	(28,68,71),
	(29,68,70),
	(30,68,69),
	(31,68,66),
	(32,71,69),
	(33,79,162),
	(34,79,83),
	(35,79,80),
	(36,79,78),
	(37,79,77),
	(38,79,75),
	(39,79,85),
	(40,79,81),
	(41,79,73),
	(42,88,87),
	(43,88,89),
	(44,88,90),
	(45,88,92),
	(46,88,91),
	(47,96,95),
	(48,96,93),
	(49,96,94),
	(50,96,97),
	(51,100,98),
	(52,100,99),
	(53,100,101),
	(54,100,102),
	(55,102,101),
	(56,109,108),
	(57,109,113),
	(58,109,112),
	(59,109,111),
	(60,109,110),
	(61,109,107),
	(62,117,114),
	(63,117,116),
	(64,117,115),
	(65,129,127),
	(66,129,131),
	(67,129,130),
	(68,129,128),
	(69,131,130),
	(70,140,137),
	(71,140,138),
	(72,140,139),
	(73,144,143),
	(74,144,142),
	(75,144,141),
	(76,152,51),
	(77,153,51),
	(78,153,154),
	(79,153,155),
	(80,153,152),
	(81,154,51),
	(82,155,51),
	(83,157,159),
	(84,157,158),
	(85,162,161),
	(86,162,160),
	(87,162,163);

/*!40000 ALTER TABLE `wiki_regular_relation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_regulargroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_regulargroup`;

CREATE TABLE `wiki_regulargroup` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_regulargroup` WRITE;
/*!40000 ALTER TABLE `wiki_regulargroup` DISABLE KEYS */;

INSERT INTO `wiki_regulargroup` (`id`, `title`, `size`, `type`)
VALUES
	(18,'页面浏览',0,0),
	(19,'用户操作',0,0),
	(20,'词条管理',0,0),
	(21,'网站管理',0,1),
	(22,'插件管理',0,1),
	(23,'内容管理',0,1),
	(24,'用户管理',0,1),
	(25,'分类管理',0,1),
	(26,'语言/风格',0,1),
	(27,'数据库管理',0,1),
	(28,'站内统计',0,1);

/*!40000 ALTER TABLE `wiki_regulargroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_relation`;

CREATE TABLE `wiki_relation` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `did` mediumint(8) NOT NULL,
  `title` varchar(80) NOT NULL,
  `relatedtitle` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `did` (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_session`;

CREATE TABLE `wiki_session` (
  `sid` char(6) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(15) NOT NULL DEFAULT '',
  `code` char(4) NOT NULL DEFAULT '',
  `islogin` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `referer` varchar(150) DEFAULT NULL,
  UNIQUE KEY `sid` (`sid`),
  KEY `uid` (`uid`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_session` WRITE;
/*!40000 ALTER TABLE `wiki_session` DISABLE KEYS */;

INSERT INTO `wiki_session` (`sid`, `uid`, `username`, `code`, `islogin`, `time`, `referer`)
VALUES
	('JFabmL',19,'乾坤大挪移','',1,0,NULL),
	('Cv3qLx',18,'SJ伊诺','',1,0,NULL),
	('vFcAFl',3,'theme','',1,0,NULL),
	('',3,'theme','',2,1417080445,'');

/*!40000 ALTER TABLE `wiki_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_setting`;

CREATE TABLE `wiki_setting` (
  `variable` varchar(32) NOT NULL,
  `value` text,
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_setting` WRITE;
/*!40000 ALTER TABLE `wiki_setting` DISABLE KEYS */;

INSERT INTO `wiki_setting` (`variable`, `value`)
VALUES
	('site_name','乐蛙ROM wiki知识库'),
	('site_icp','2011-2014 乐蛙科技（上海）有限公司 沪ICP证B2-20140079  沪ICP备11020470号'),
	('cookie_domain',''),
	('cookie_pre','lw_'),
	('app_url','http://kaiyuan.hudong.com'),
	('auth_key','5J2t1o0A355Z7j7cda7vaA98bK260e4idUeOeN4Aa75n9oag5Der184g8scfcI6K'),
	('verify_doc','0'),
	('cat_intro_set','0'),
	('time_offset','8'),
	('time_diff','0'),
	('time_format',''),
	('date_format','m-d'),
	('style_user_select','1'),
	('credit_create','5'),
	('credit_edit','3'),
	('credit_upload','2'),
	('credit_register','20'),
	('credit_login','1'),
	('credit_pms','1'),
	('credit_comment','2'),
	('list_prepage','20'),
	('list_focus','10'),
	('list_recentupdate','10'),
	('list_weekuser','10'),
	('list_allcredit','10'),
	('list_popularity','10'),
	('list_letter','10'),
	('login_show','2'),
	('category_view','10'),
	('category_letter','10'),
	('index_commend','15'),
	('index_recentupdate','6'),
	('index_recentcomment','5'),
	('index_hotdoc','3'),
	('index_wonderdoc','6'),
	('index_picture','9'),
	('index_cooperate','20'),
	('seo_prefix','index.php?'),
	('seo_separator','-'),
	('seo_suffix',''),
	('seo_title',''),
	('seo_keywords',''),
	('seo_description',''),
	('seo_headers',''),
	('seo_type','0'),
	('seo_type_doc','0'),
	('attachment_size','2048'),
	('attachment_open','0'),
	('attachment_type','jpg|jpeg|bmp|gif|png|gz|bz2|zip|rar|doc|ppt|mp3|xls|txt|swf|flv|php|pdf'),
	('index_cache_time','300'),
	('list_cache_time','300'),
	('doc_cache_time','300'),
	('tpl_name','default'),
	('theme_name','default'),
	('lang_name','zh'),
	('auto_picture','0'),
	('checkcode','3'),
	('sandbox_id',''),
	('logowidth','220px'),
	('site_notice','本站是由<span style=\"color:#FF0000\">1</span>位网民共同撰写的百科全书，目前已收录词条<span style=\"color:#FF0000\"> 0</span>个'),
	('search_time','1'),
	('search_tip_switch','1'),
	('search_num','10000'),
	('close_register_reason','对不起，网站暂停注册！给您带来的不便还请谅解。'),
	('error_names','管理员'),
	('register_check','0'),
	('name_min_length','3'),
	('name_max_length','15'),
	('register_least_minute','30'),
	('reg_status','3'),
	('inviter_credit','5'),
	('invitee_credit','0'),
	('invite_subject','您收到_USERNAME_的邀请了！'),
	('invite_content','你好，我是_USERNAME_，在_SITENAME_上注册了会员，里面有很多有用的知识，邀请你也加入进来。\r\n\r\n邀请附言：\r\n\r\n_PS_\r\n\r\n请你点击以下链接，接受好友邀请：_LINK_\r\n\r\n_SITENAME_ 敬上'),
	('welcome_subject','_USERNAME_，您好，欢迎您的加入^_^'),
	('welcome_content','尊敬的_USERNAME_，\r\n\r\n您好！您已成功注册为_SITENAME_的会员，欢迎您与大家积极分享知识。\r\n\r\n_SITENAME_ 敬上\r\n_TIME_'),
	('send_welcome','0'),
	('close_website','0'),
	('forbidden_edit_time','0'),
	('comments','1'),
	('base_toplist','0'),
	('base_createdoc','0'),
	('doc_verification_edit_code','0'),
	('doc_verification_create_code','0'),
	('relateddoc',''),
	('isrelate','0'),
	('close_website_reason','网站暂时关闭，马上就会恢复，请稍候关注，谢谢。'),
	('coin_register','20'),
	('coin_login','1'),
	('coin_create','2'),
	('coin_edit','1'),
	('coin_upload','1'),
	('coin_pms','0'),
	('coin_comment','1'),
	('credit_exchangeRate','5'),
	('coin_exchangeRate','1'),
	('credit_exchange','0'),
	('coin_exchange','0'),
	('credit_download','0'),
	('coin_download','10'),
	('img_width_big','300'),
	('img_height_big','300'),
	('img_width_small','140'),
	('img_height_small','140'),
	('cloud_search','0'),
	('cloud_search_close_time','30'),
	('cloud_search_timeout','5'),
	('cloud_search_cache','300'),
	('gift_range','a:4:{i:0;s:2:\"50\";i:50;s:3:\"100\";i:100;s:3:\"200\";i:200;s:3:\"500\";}'),
	('watermark','a:8:{s:8:\"imagelib\";s:1:\"0\";s:11:\"imageimpath\";s:0:\"\";s:15:\"watermarkstatus\";s:1:\"0\";s:17:\"watermarkminwidth\";s:3:\"180\";s:18:\"watermarkminheight\";s:3:\"180\";s:13:\"watermarktype\";s:1:\"0\";s:14:\"watermarktrans\";s:2:\"60\";s:16:\"watermarkquality\";s:3:\"100\";}'),
	('coin_unit',''),
	('mail_config','a:10:{s:11:\"maildefault\";s:18:\"hgfang@lewatek.com\";s:8:\"mailsend\";s:1:\"1\";s:10:\"mailserver\";s:0:\"\";s:8:\"mailport\";s:2:\"25\";s:8:\"mailauth\";s:1:\"0\";s:8:\"mailfrom\";s:0:\"\";s:17:\"mailauth_username\";s:0:\"\";s:17:\"mailauth_password\";s:0:\"\";s:13:\"maildelimiter\";s:1:\"0\";s:12:\"mailusername\";s:1:\"1\";}'),
	('sitemap_config','a:5:{s:8:\"use_gzip\";s:1:\"1\";s:14:\"idx_changefreq\";s:5:\"daily\";s:14:\"doc_changefreq\";s:7:\"monthly\";s:10:\"textcolumn\";s:7:\"summary\";s:10:\"updateperi\";s:2:\"30\";}'),
	('auto_baiduxml','0'),
	('random_open','0'),
	('random_text',''),
	('check_useragent','0'),
	('ua_allow_first','1'),
	('allow_ua_both','1'),
	('ua_whitelist',''),
	('ua_blacklist',''),
	('check_visitrate','0'),
	('visitrate','a:3:{s:8:\"duration\";i:60;s:5:\"pages\";i:30;s:8:\"ban_time\";i:1;}'),
	('compatible','1'),
	('hdapi_bklm','1'),
	('hdapi_sharetosns','1'),
	('hdapi_autoshare_edit','0'),
	('hdapi_autoshare_create','0'),
	('hdapi_autoshare_comment','0'),
	('hdapi_autoshare_ding','0'),
	('base_isreferences','1'),
	('doc_verification_reference_code','0'),
	('noticemailtpl','a:3:{s:10:\"doc_create\";a:2:{s:7:\"subject\";s:38:\"_USERNAME_ 分享了“ _DOCTITLE_ ”\";s:4:\"body\";s:793:\"<style>cite, .build {background:none repeat scroll 0 0 #FFFFCC;border:1px solid #F39700;display:block;margin-bottom:8px;padding:10px;}table { font-size: 13px; }.firstimg { padding: 5px; border: 1px solid #EFEFEF; margin-right: 16px; }h4{ font-size: 16px; margin: 0; padding: 0; }hr { width: 100px; }div.sig { font-size: 12px; font-family: \"Arial\"  }.time { color: #CCCCCF; }.uns { color: green; }</style><table border=\"0\"><tr><td valign=\"top\">_FIRSTIMG_</td><td valign=\"top\"><strong>_DOCTITLE_</strong><br /><a href=\"_URL_\" target=\"_blank\">_URL_</a><br /><br />创建时间：_TIME_<br /><br />摘要：_SUMMARY_<br /><br /><a href=\"_URL_\" target=\"_blank\">查看详情</a></td></tr></table><br /><br /><div class=\"sig\"><span class=\"time\">_TIME_ </span><hr align=\"left\" />_SITENAME_<br /></div>\";}s:8:\"doc_edit\";a:2:{s:7:\"subject\";s:38:\"_USERNAME_ 编辑了“ _DOCTITLE_ ”\";s:4:\"body\";s:798:\"<style>cite, .build {background:none repeat scroll 0 0 #FFFFCC;border:1px solid #F39700;display:block;margin-bottom:8px;padding:10px;}table { font-size: 13px; }.firstimg { padding: 5px; border: 1px solid #EFEFEF; margin-right: 16px; }h4{ font-size: 16px; margin: 0; padding: 0; }hr { width: 100px; }div.sig { font-size: 12px; font-family: \"Arial\"  }.time { color: #CCCCCF; }.uns { color: green; }</style><table border=\"0\"><tr><td valign=\"top\">_FIRSTIMG_</td><td valign=\"top\"><strong>_DOCTITLE_</strong><br /><a href=\"_URL_\" target=\"_blank\">_URL_</a><br /><br />编辑时间：_TIME_<br /><br />编辑原因：_REASON_<br /><br /><a href=\"_URL_\" target=\"_blank\">查看详情</a></td></tr></table><br /><br /><div class=\"sig\"><span class=\"time\">_TIME_ </span><hr align=\"left\" />_SITENAME_<br /></div>\";}s:11:\"comment_add\";a:2:{s:7:\"subject\";s:38:\"_USERNAME_评论了 “ _DOCTITLE_ ”\";s:4:\"body\";s:782:\"<style>cite, .build {background:none repeat scroll 0 0 #FFFFCC;border:1px solid #F39700;display:block;margin-bottom:8px;padding:10px;}table { font-size: 13px; }.firstimg { padding: 5px; border: 1px solid #EFEFEF; margin-right: 16px; }h4{ font-size: 16px; margin: 0; padding: 0; }hr { width: 100px; }div.sig { font-size: 12px; font-family: \"Arial\"  }.time { color: #CCCCCF; }.uns { color: green; }</style><table border=\"0\"><tr><td valign=\"top\">_FIRSTIMG_</td><td valign=\"top\"><strong>_DOCTITLE_</strong><br /><a href=\"_URL_\" target=\"_blank\">_URL_</a><br /><br /><div >_REPLY_</div><br /><br />_COMMENT_<br /><br /><a href=\"_URL_\" target=\"_blank\">查看详情</a></td></tr></table><br /><br /><div class=\"sig\"><span class=\"time\">_TIME_ </span><hr align=\"left\" />_SITENAME_<br /></div>\";}}'),
	('noticemail','a:3:{s:10:\"doc-create\";s:1:\"4\";s:8:\"doc-edit\";s:0:\"\";s:11:\"comment_add\";s:0:\"\";}'),
	('visitrate_ip_exception','127.0.0.*'),
	('statcode','');

/*!40000 ALTER TABLE `wiki_setting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_synonym
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_synonym`;

CREATE TABLE `wiki_synonym` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `srctitle` varchar(80) NOT NULL,
  `destdid` int(10) NOT NULL,
  `desttitle` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `srctitle` (`srctitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_task`;

CREATE TABLE `wiki_task` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `lastrun` int(10) unsigned NOT NULL DEFAULT '0',
  `nextrun` int(10) unsigned NOT NULL DEFAULT '0',
  `weekday` tinyint(1) NOT NULL,
  `day` tinyint(1) NOT NULL,
  `hour` tinyint(2) NOT NULL,
  `minute` tinyint(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_theme
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_theme`;

CREATE TABLE `wiki_theme` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(100) NOT NULL,
  `copyright` varchar(100) NOT NULL,
  `css` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_theme` WRITE;
/*!40000 ALTER TABLE `wiki_theme` DISABLE KEYS */;

INSERT INTO `wiki_theme` (`id`, `name`, `available`, `path`, `copyright`, `css`)
VALUES
	(1,'默认风格',1,'default','baike.com','a:18:{s:8:\"bg_color\";s:11:\"transparent\";s:14:\"left_framcolor\";s:7:\"#e6e6e6\";s:16:\"leftitle_bgcolor\";s:7:\"#f7f7f8\";s:18:\"leftitle_framcolor\";s:7:\"#efefef\";s:16:\"middle_framcolor\";s:7:\"#eaf1f6\";s:19:\"middletitle_bgcolor\";s:7:\"#eaf6fd\";s:21:\"middletitle_framcolor\";s:7:\"#c4d2db\";s:15:\"right_framcolor\";s:7:\"#cef2e0\";s:17:\"rightitle_bgcolor\";s:7:\"#cef2e0\";s:19:\"rightitle_framcolor\";s:7:\"#a3bfb1\";s:13:\"nav_framcolor\";s:7:\"#e1e1e1\";s:11:\"nav_bgcolor\";s:7:\"#aaaeb1\";s:13:\"nav_linkcolor\";s:4:\"#fff\";s:13:\"nav_overcolor\";s:4:\"#ff0\";s:8:\"nav_size\";s:4:\"14px\";s:10:\"bg_imgname\";s:11:\"html_bg.jpg\";s:13:\"titbg_imgname\";s:10:\"col_bg.jpg\";s:4:\"path\";s:7:\"default\";}');

/*!40000 ALTER TABLE `wiki_theme` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_uniontitle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_uniontitle`;

CREATE TABLE `wiki_uniontitle` (
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `docdeclaration` text NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_user`;

CREATE TABLE `wiki_user` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `credit2` int(10) NOT NULL DEFAULT '0',
  `credit1` int(10) NOT NULL DEFAULT '0',
  `birthday` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `postcode` varchar(30) NOT NULL DEFAULT '',
  `location` varchar(30) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` char(15) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `groupid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `timeoffset` varchar(20) NOT NULL DEFAULT '8',
  `style` varchar(20) NOT NULL DEFAULT 'default',
  `language` varchar(20) NOT NULL DEFAULT 'zh',
  `signature` text NOT NULL,
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `msn` varchar(100) NOT NULL DEFAULT '',
  `authstr` varchar(20) NOT NULL DEFAULT '',
  `creates` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `edits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `checkup` int(10) unsigned NOT NULL DEFAULT '1',
  `newdocs` smallint(6) NOT NULL DEFAULT '-1',
  `account_user_id` int(11) DEFAULT '0' COMMENT '账号中心userid',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `credit2` (`credit2`),
  KEY `views` (`views`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_user` WRITE;
/*!40000 ALTER TABLE `wiki_user` DISABLE KEYS */;

INSERT INTO `wiki_user` (`uid`, `username`, `password`, `email`, `gender`, `credit2`, `credit1`, `birthday`, `image`, `postcode`, `location`, `regip`, `regtime`, `lastip`, `lasttime`, `groupid`, `timeoffset`, `style`, `language`, `signature`, `truename`, `telephone`, `qq`, `msn`, `authstr`, `creates`, `edits`, `views`, `checkup`, `newdocs`, `account_user_id`)
VALUES
	(1,'admin','7fef6171469e80d32c0559f88b377245','hgfang@lewatek.com',0,25,32,0,'','','','',1415328806,'180.166.124.62',1415856961,4,'8','default','zh','','','','','','',32,0,18,1,-1,0),
	(2,'hgfang','7fef6171469e80d32c0559f88b377245','',0,0,0,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,0,7,1,-1,629031),
	(3,'theme','7fef6171469e80d32c0559f88b377245','',0,11,5,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',2,0,145,1,-1,307449),
	(14,'test1111','51ce84a6db96daaa7081869fd38c517a','test1111@lewatek.com',0,20,20,0,'','','','180.166.124.62',1416816898,'',0,2,'8','default','zh','','','','','','',0,0,6,1,-1,0),
	(5,'test_yang','7fef6171469e80d32c0559f88b377245','',0,0,0,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,0,0,1,-1,1177641),
	(6,'ypyang','7fef6171469e80d32c0559f88b377245','',0,0,0,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,0,1,1,-1,487920),
	(7,'Rom_舜','7fef6171469e80d32c0559f88b377245','',0,67,27,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',13,0,10,1,-1,596507),
	(8,'玛法里奥','7fef6171469e80d32c0559f88b377245','',0,23,9,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',4,1,14,1,-1,586365),
	(9,'wuxianlin','7fef6171469e80d32c0559f88b377245','',1,2,1,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,0,0,1,-1,324013),
	(10,'游子','7fef6171469e80d32c0559f88b377245','',0,0,0,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,0,1,1,-1,606709),
	(11,'shenanan101','7fef6171469e80d32c0559f88b377245','',0,8,3,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',1,1,14,1,-1,604099),
	(12,'蛙叔','7fef6171469e80d32c0559f88b377245','',0,0,0,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,0,0,1,-1,3772),
	(13,'jmrp1563','6c29bc7af503244f10a1f9ca3ca06eb6','sfsdfdsf@163.com',0,20,20,0,'','','','222.244.94.201',1416536114,'',0,2,'8','default','zh','','','','','','',0,0,6,1,-1,0),
	(15,'imac','7fef6171469e80d32c0559f88b377245','',0,5,2,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,1,25,1,-1,809403),
	(16,'Mean.Z','7fef6171469e80d32c0559f88b377245','',0,0,0,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,0,0,1,-1,607329),
	(17,'test_yang1','7fef6171469e80d32c0559f88b377245','',0,0,0,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',0,0,2,1,-1,1177664),
	(18,'SJ伊诺','7fef6171469e80d32c0559f88b377245','',0,21,8,0,'','','','',0,'',0,2,'8','default','zh','','','','','','',3,1,27,1,-1,578773),
	(19,'乾坤大挪移','7fef6171469e80d32c0559f88b377245','',1,37,13,1417017600,'uploads/userface/9/19.jpg','','中国','',0,'',0,2,'8','default','zh','一个弥陀模样，和气生财的胖和尚哈哈儿。本来是少林和尚，因被师妹叫一声肥猪而杀掉同门及师父，后逃入恶人谷开黑店客栈。向来以笑作武器，从小教小鱼儿陪着他笑。最擅长和人谈笑自若，解除对方警戒时，却暗暗掏刀子杀人。他从来不说真话，在白开心差不多杀尽十大恶人时骗倒白开心，用暗器杀死他，却被姘头屠娇娇咬死，临死前奋起全身力量压死屠娇娇。\n哈哈儿是古龙笔下《绝代双骄》中的“十大恶人”之一。\n笑里藏刀”哈哈儿 无论是古代社会还是现如今，最可怕的不是明眼的恶人，而是明里笑脸相迎暗地里磨刀霍霍的笑面虎。十大恶人之一的「笑里藏刀小弥陀」，因师妹叫他一声胖猪而将满门师兄弟杀死。','','','','','',2,4,26,1,-1,1177640);

/*!40000 ALTER TABLE `wiki_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_usergroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_usergroup`;

CREATE TABLE `wiki_usergroup` (
  `groupid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `grouptitle` char(30) NOT NULL DEFAULT '',
  `regulars` text NOT NULL,
  `default` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `creditslower` int(10) NOT NULL DEFAULT '0',
  `creditshigher` int(10) NOT NULL DEFAULT '0',
  `stars` tinyint(3) NOT NULL DEFAULT '0',
  `color` char(7) NOT NULL DEFAULT '',
  `groupavatar` char(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupid`),
  KEY `creditsrange` (`creditslower`,`creditshigher`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `wiki_usergroup` WRITE;
/*!40000 ALTER TABLE `wiki_usergroup` DISABLE KEYS */;

INSERT INTO `wiki_usergroup` (`groupid`, `grouptitle`, `regulars`, `default`, `type`, `creditslower`, `creditshigher`, `stars`, `color`, `groupavatar`)
VALUES
	(1,'匿名用户','index-default|index-settheme|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-getpass|user-code|user-space|user-clearcookies|synonym-view|passport_client-login|passport_client-logout|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|search-agent','index-default|index-settheme|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-getpass|user-code|user-space|user-clearcookies|synonym-view|passport_client-login|passport_client-logout|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|search-agent',1,0,0,0,'',''),
	(3,'词条管理员','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-del|admin_navmodel-status|admin_actions-map|index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|doc-remove|comment-remove|comment-add|comment-edit|edition-remove|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|admin_doc-cancelrecommend|doc-delsave|doc-managesave|admin_main-login|admin_main-default|admin_main-logout|admin_main-mainframe|admin_main-update|admin_doc-default|admin_doc-search|admin_doc-audit|admin_doc-recommend|admin_doc-lock|admin_doc-unlock|admin_doc-remove|admin_doc-move|admin_doc-rename|admin_comment-default|admin_comment-search|admin_comment-delete|admin_attachment-default|admin_attachment-search|admin_attachment-remove|admin_attachment-download|admin_focus-focuslist|admin_focus-remove|admin_focus-reorder|admin_focus-edit|admin_focus-updateimg|admin_focus-numset|admin_tag-hottag|admin_word-default|admin_synonym-default|admin_synonym-search|admin_synonym-delete|admin_synonym-save|admin_cooperate-default|admin_hotsearch-default|admin_image-default|admin_image-editimage|admin_image-remove|admin_relation-default|admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_editi|exchange-default|admin_share-default|admin_share-search|admin_share-share|admin_main-datasize|doc-editletter','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-del|admin_navmodel-status|admin_actions-map|index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|doc-remove|comment-remove|comment-add|comment-edit|edition-remove|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|admin_doc-cancelrecommend|doc-delsave|doc-managesave|admin_main-login|admin_main-default|admin_main-logout|admin_main-mainframe|admin_main-update|admin_doc-default|admin_doc-search|admin_doc-audit|admin_doc-recommend|admin_doc-lock|admin_doc-unlock|admin_doc-remove|admin_doc-move|admin_doc-rename|admin_comment-default|admin_comment-search|admin_comment-delete|admin_attachment-default|admin_attachment-search|admin_attachment-remove|admin_attachment-download|admin_focus-focuslist|admin_focus-remove|admin_focus-reorder|admin_focus-edit|admin_focus-updateimg|admin_focus-numset|admin_tag-hottag|admin_word-default|admin_synonym-default|admin_synonym-search|admin_synonym-delete|admin_synonym-save|admin_cooperate-default|admin_hotsearch-default|admin_image-default|admin_image-editimage|admin_image-remove|admin_relation-default|admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_editi|exchange-default|admin_share-default|admin_share-search|admin_share-share|admin_main-datasize|doc-editletter',1,0,0,2,'',''),
	(4,'超级管理员','','',1,0,0,3,'',''),
	(5,'白丁','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|doc-edit|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-view|synonym-savesynonym|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|doc-edit|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-view|synonym-savesynonym|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,-999999,0,0,'',''),
	(2,'书童','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,0,100,1,'',''),
	(6,'秀才','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,100,300,4,'',''),
	(7,'举人','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,300,600,5,'',''),
	(8,'进士','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,600,1000,8,'',''),
	(9,'状元','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,1000,1500,16,'',''),
	(10,'翰林','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|comment-add|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,1500,2100,18,'',''),
	(11,'太傅','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,2100,2800,24,'',''),
	(12,'圣贤','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',2,2800,999999999,33,'',''),
	(13,'荣誉宰相','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter','index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-changename|doc-lock|doc-unlock|doc-audit|comment-remove|comment-add|comment-edit|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|doc-delsave|doc-managesave|exchange-default|doc-editletter',0,0,0,5,'',''),
	(14,'管理员','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-del|admin_navmodel-status|admin_actions-map|index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|doc-remove|comment-remove|comment-add|comment-edit|edition-remove|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|admin_doc-cancelrecommend|doc-delsave|doc-managesave|admin_banned-default|admin_friendlink-default|admin_friendlink-add|admin_friendlink-edit|admin_friendlink-remove|admin_friendlink-updateorder|admin_main-login|admin_main-default|admin_main-logout|admin_main-mainframe|admin_main-update|admin_setting-base|admin_setting-code|admin_setting-time|admin_setting-cookie|admin_setting-logo|admin_setting-credit|admin_setting-seo|admin_setting-cache|admin_setting-renewcache|admin_setting-removecache|admin_setting-attachment|admin_setting-mail|admin_setting-noticemail|admin_task-default|admin_task-taskstatus|admin_task-edittask|admin_task-run|admin_log-default|admin_setting-notice|admin_setting-anticopy|admin_setting-listdisplay|admin_setting-sec|admin_setting-index|admin_setting-docset|admin_setting-search|admin_plugin-list|admin_plugin-default|admin_plugin-manage|admin_plugin-will|admin_plugin-find|admin|admin_plugin-install|admin_plugin-uninstall|admin_plugin-start|admin_plugin-stop|admin_plugin-setvar|admin_plugin-hook|admin_doc-default|admin_doc-search|admin_doc-audit|admin_doc-recommend|admin_doc-lock|admin_doc-unlock|admin_doc-remove|admin_doc-move|admin_doc-rename|admin_comment-default|admin_comment-search|admin_comment-delete|admin_attachment-default|admin_attachment-search|admin_attachment-remove|admin_attachment-download|admin_focus-focuslist|admin_focus-remove|admin_focus-reorder|admin_focus-edit|admin_focus-updateimg|admin_focus-numset|admin_tag-hottag|admin_word-default|admin_synonym-default|admin_synonym-search|admin_synonym-delete|admin_synonym-save|admin_recycle-default|admin_recycle-search|admin_recycle-remove|admin_recycle-recover|admin_recycle-|admin_cooperate-default|admin_hotsearch-default|admin_image-default|admin_image-editimage|admin_image-remove|admin_relation-default|admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_editi|admin_gift-default|admin_gift-view|admin_gift-search|admin_gift-add|admin_gift-edit|admin_gift-remove|admin_user-default|admin_user-list|admin_user-add|admin_user-edit|admin_usergroup-default|admin_usergroup-list|admin_category-default|admin_category-list|admin_category-add|admin_category-batchedit|admin_category-edit|admin_category-reorder|admin_statistics-stand|admin_statistics-cat_toplist|admin_statistics-doc_toplist|admin_statistics-edit_toplist|admin_statistics-credit_toplist|admin_statistics-admin_team|exchange-default|admin_share-default|admin_share-search|admin_share-share|doc-editletter|admin_sitemap-default|admin_sitemap-setting|admin_sitemap-createdoc|admin_sitemap-updatedoc|admin_sitemap-submit|admin_sitemap-baiduxml|admin_filecheck-docreate|admin_safe-default|admin_safe-setting|admin_safe-scanfile|admin_safe-validate|admin_safe-scanfuns|admin_safe-list|admin_safe-editcode|admin_safe-del','admin_nav-default|admin_nav-search|admin_nav-add|admin_nav-hotdocs|admin_nav-searchdocs|admin_nav-catedoc|admin_nav-check|admin_nav-del|admin_nav-editdoc|admin_nav-editnav|admin_navmodel-default|admin_navmodel-add|admin_navmodel-getmodel|admin_navmodel-del|admin_navmodel-status|admin_actions-map|index-default|index-settheme|attachment-download|user-removefavorite|user-exchange|user-addfavorite|archiver-default|archiver-list|archiver-view|datacall-js|search-agent|category-default|category-ajax|category-view|category-letter|list-letter|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-login|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-logout|user-profile|user-editprofile|user-editpass|user-editimage|user-editimageifeam|user-cutimage|admin_datacall-default|admin_datacall-list|admin_datacall-search|admin_datacall-view|admin_datacall-operate|admin_datacall-remove|admin_datacall-addsql|admin_datacall-editsql|user-getpass|user-code|user-space|user-clearcookies|user-cutoutimage|user-invite|pms-default|pms-box|pms-setread|pms-remove|pms-sendmessage|pms-checkrecipient|pms-blacklist|pms-publicmessage|attachment-uploadimg|attachment-remove|doc-create|doc-verify|doc-edit|doc-editsection|doc-refresheditlock|doc-unseteditlock|doc-sandbox|doc-setfocus|doc-getcategroytree|doc-changecategory|doc-changename|doc-lock|doc-unlock|doc-audit|doc-remove|comment-remove|comment-add|comment-edit|edition-remove|edition-excellent|edition-unexcellent|edition-copy|synonym-removesynonym|synonym-view|synonym-savesynonym|doc-immunity|reference-add|reference-remove|attachment-upload|doc-removefocus|doc-autosave|doc-getrelateddoc|doc-addrelatedoc|passport_client-login|passport_client-logout|admin_doc-cancelrecommend|doc-delsave|doc-managesave|admin_banned-default|admin_friendlink-default|admin_friendlink-add|admin_friendlink-edit|admin_friendlink-remove|admin_friendlink-updateorder|admin_main-login|admin_main-default|admin_main-logout|admin_main-mainframe|admin_main-update|admin_setting-base|admin_setting-code|admin_setting-time|admin_setting-cookie|admin_setting-logo|admin_setting-credit|admin_setting-seo|admin_setting-cache|admin_setting-renewcache|admin_setting-removecache|admin_setting-attachment|admin_setting-mail|admin_setting-noticemail|admin_task-default|admin_task-taskstatus|admin_task-edittask|admin_task-run|admin_log-default|admin_setting-notice|admin_setting-anticopy|admin_setting-listdisplay|admin_setting-sec|admin_setting-index|admin_setting-docset|admin_setting-search|admin_plugin-list|admin_plugin-default|admin_plugin-manage|admin_plugin-will|admin_plugin-find|admin|admin_plugin-install|admin_plugin-uninstall|admin_plugin-start|admin_plugin-stop|admin_plugin-setvar|admin_plugin-hook|admin_doc-default|admin_doc-search|admin_doc-audit|admin_doc-recommend|admin_doc-lock|admin_doc-unlock|admin_doc-remove|admin_doc-move|admin_doc-rename|admin_comment-default|admin_comment-search|admin_comment-delete|admin_attachment-default|admin_attachment-search|admin_attachment-remove|admin_attachment-download|admin_focus-focuslist|admin_focus-remove|admin_focus-reorder|admin_focus-edit|admin_focus-updateimg|admin_focus-numset|admin_tag-hottag|admin_word-default|admin_synonym-default|admin_synonym-search|admin_synonym-delete|admin_synonym-save|admin_recycle-default|admin_recycle-search|admin_recycle-remove|admin_recycle-recover|admin_recycle-|admin_cooperate-default|admin_hotsearch-default|admin_image-default|admin_image-editimage|admin_image-remove|admin_relation-default|admin_edition-default|admin_edition-search|admin_edition-addcoin|admin_edition-excellent|admin_editi|admin_gift-default|admin_gift-view|admin_gift-search|admin_gift-add|admin_gift-edit|admin_gift-remove|admin_user-default|admin_user-list|admin_user-add|admin_user-edit|admin_usergroup-default|admin_usergroup-list|admin_category-default|admin_category-list|admin_category-add|admin_category-batchedit|admin_category-edit|admin_category-reorder|admin_statistics-stand|admin_statistics-cat_toplist|admin_statistics-doc_toplist|admin_statistics-edit_toplist|admin_statistics-credit_toplist|admin_statistics-admin_team|exchange-default|admin_share-default|admin_share-search|admin_share-share|doc-editletter|admin_sitemap-default|admin_sitemap-setting|admin_sitemap-createdoc|admin_sitemap-updatedoc|admin_sitemap-submit|admin_sitemap-baiduxml|admin_filecheck-docreate|admin_safe-default|admin_safe-setting|admin_safe-scanfile|admin_safe-validate|admin_safe-scanfuns|admin_safe-list|admin_safe-editcode|admin_safe-del',1,0,0,2,'',''),
	(15,'被冻结','index-default|index-settheme|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-profile|user-editpass|user-getpass|user-code|user-space|user-clearcookies|pms-blacklist|synonym-view|doc-editletter','index-default|index-settheme|category-default|category-ajax|category-view|category-letter|list-letter|list-default|list-recentchange|list-popularity|list-focus|doc-view|doc-innerlink|doc-summary|doc-editor|comment-view|comment-report|comment-oppose|comment-aegis|edition-list|edition-view|edition-compare|search-default|search-fulltext|search-kw|search-tag|list-weekuserlist|list-allcredit|list-rss|doc-random|doc-vote|doc-cooperate|gift-default|gift-view|gift-search|gift-apply|pic-piclist|pic-view|pic-ajax|pic-search|user-register|user-check|user-checkusername|user-checkcode|user-checkpassword|user-checkoldpass|user-checkemail|user-profile|user-editpass|user-getpass|user-code|user-space|user-clearcookies|pms-blacklist|synonym-view|doc-editletter',1,0,0,1,'','');

/*!40000 ALTER TABLE `wiki_usergroup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wiki_visitlist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_visitlist`;

CREATE TABLE `wiki_visitlist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `useragent` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table wiki_word
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wiki_word`;

CREATE TABLE `wiki_word` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `admin` varchar(15) NOT NULL DEFAULT '',
  `find` varchar(255) NOT NULL DEFAULT '',
  `replacement` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
