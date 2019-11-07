/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : db_studentinfo

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 12/09/2019 15:36:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gradeName` varchar(20) DEFAULT NULL,
  `gradeDesc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
BEGIN;
INSERT INTO `t_grade` VALUES (1, '08计本', '08计算机本科');
INSERT INTO `t_grade` VALUES (2, '09计本', '09计算机本科');
INSERT INTO `t_grade` VALUES (29, '我们的唉', '啊');
COMMIT;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `stuId` int(11) NOT NULL AUTO_INCREMENT,
  `stuNo` varchar(20) DEFAULT NULL,
  `stuName` varchar(10) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gradeId` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `stuDesc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`stuId`),
  KEY `FK_t_student` (`gradeId`),
  CONSTRAINT `FK_t_student` FOREIGN KEY (`gradeId`) REFERENCES `t_grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
BEGIN;
INSERT INTO `t_student` VALUES (2, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (3, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (4, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (5, '080606110', '张三', '女', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (9, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (10, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (11, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (12, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (13, '080606110', '张三', '男', '1988-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (14, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (15, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (16, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (17, '080606110', '张三', '男', '1989-11-03', 1, '31321@qq.com', 'Good');
INSERT INTO `t_student` VALUES (18, '090606119', '王小美', '女', '1990-11-03', 1, '3112121@qq.com', 'Good Girls11');
INSERT INTO `t_student` VALUES (19, '090606119', '王小美', '女', '1990-11-03', 2, '3112121@qq.com', 'Good Girls');
INSERT INTO `t_student` VALUES (20, '090606119', '王小美', '女', '1990-11-03', 1, '3112121@qq.com', 'Good Girls');
INSERT INTO `t_student` VALUES (21, '090606119', '王小美', '女', '1990-11-03', 2, '3112121@qq.com', 'Good Girls23');
INSERT INTO `t_student` VALUES (25, '312', '321', '男', '2013-05-23', 1, '321@11.com', '312');
INSERT INTO `t_student` VALUES (26, '12', '231', '男', '2013-05-07', 1, '321@11.com', '312');
INSERT INTO `t_student` VALUES (27, '213', '312', '男', '2013-05-14', 1, '321@11.com', '31222');
INSERT INTO `t_student` VALUES (28, '111111', '曹小小', '女', '2013-05-30', 1, '111321@11.com', '312111\r\n112232');
INSERT INTO `t_student` VALUES (29, '1111112', '曹小小2', '男', '2013-05-31', 29, '111321@112.com', '312111\r\n1122\r\n122');
INSERT INTO `t_student` VALUES (30, '1', '1', '男', '2013-04-30', 2, '321@11.com', '123');
INSERT INTO `t_student` VALUES (31, '1', '1', '男', '2013-04-30', 2, '321@11.com', '123');
INSERT INTO `t_student` VALUES (32, '1', '1', '男', '2013-04-30', 2, '321@11.com', '123');
INSERT INTO `t_student` VALUES (33, '321', '231', '男', '2013-05-01', 1, '321@11.com', '321');
INSERT INTO `t_student` VALUES (34, '0901101222222', '王靶档22', '女', '2013-05-01', 2, 'wanba@12222.com', '王八222');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'java1234', '123456');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
