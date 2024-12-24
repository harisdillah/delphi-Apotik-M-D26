/*
 Navicat Premium Data Transfer

 Source Server         : Koneksi-Local
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : db_medika

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 24/12/2024 17:43:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for setting_tanggal
-- ----------------------------
DROP TABLE IF EXISTS `setting_tanggal`;
CREATE TABLE `setting_tanggal`  (
  `no_gudang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tgl_awal` date NULL DEFAULT NULL,
  `tgl_akhir` date NULL DEFAULT NULL,
  `gudang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ket` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `catatan` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tgl_create` datetime NULL DEFAULT NULL,
  `aktif` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`no_gudang`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting_tanggal
-- ----------------------------
INSERT INTO `setting_tanggal` VALUES ('10', '2024-10-30', NULL, NULL, 'OPname', NULL, '2024-05-30 07:39:29', b'1');

SET FOREIGN_KEY_CHECKS = 1;
