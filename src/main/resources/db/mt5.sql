/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80040
Source Host           : localhost:3306
Source Database       : mt5

Target Server Type    : MYSQL
Target Server Version : 80040
File Encoding         : 65001

Date: 2025-01-10 14:49:36
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `id` varchar(10) DEFAULT NULL,
  `pw` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '1234');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `text` mediumtext,
  `lang` varchar(10) DEFAULT NULL,
  `ndate` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '공지사항 등록 ', '<p>공지사항 등록&nbsp;</p><p><img src=\"/filePath/mt5/editor/c6a6d56de8114a9895a37764d1a8860d.png\" title=\"c6a6d56de8114a9895a37764d1a8860d.png\"><br style=\"clear:both;\">&nbsp;</p>', 'ko', '2025-01-10 14:46:10');
INSERT INTO `notice` VALUES ('2', 'notice insert  test', '<p>notice insert&nbsp;</p><p>&nbsp;test</p><p><img src=\"/filePath/mt5/editor/64420a3cb4cd468695d9543d87dba92c.png\" title=\"64420a3cb4cd468695d9543d87dba92c.png\"><br style=\"clear:both;\">&nbsp;</p>', 'en', '2025-01-10 14:46:31');
