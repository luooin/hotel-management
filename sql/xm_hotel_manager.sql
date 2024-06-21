/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : xm_hotel_manager

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 21/06/2024 17:31:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员', '13612345678', 'admin@xm.com', 'http://localhost:9091/files/1718960777006-微信图片_20240617231956.jpg', 'ADMIN');

-- ----------------------------
-- Table structure for checkin
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `hotel_id` int(0) NULL DEFAULT NULL COMMENT '酒店ID',
  `type_id` int(0) NULL DEFAULT NULL COMMENT '房型ID',
  `in_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '入住时间',
  `out_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '退房时间',
  `room_id` int(0) NULL DEFAULT NULL COMMENT '客房ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '入住登记表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES (3, '20231101164806', 8, 2, 2, '2023-11-01', '2023-11-02 16:20:32', 7);
INSERT INTO `checkin` VALUES (4, '20240415195205', 8, 2, 3, '2024-04-17', '2024-04-15 19:57:07', 23);
INSERT INTO `checkin` VALUES (8, '20240511145400', 8, 2, 2, '2024-05-15', '2024-06-21 17:16:38', 7);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(0) NOT NULL COMMENT '用户ID',
  `type_id` int(0) NOT NULL COMMENT '房型ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (5, 8, 8);
INSERT INTO `collect` VALUES (6, 8, 2);
INSERT INTO `collect` VALUES (7, 8, 3);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '评论人ID',
  `type_id` int(0) NULL DEFAULT NULL COMMENT '房型ID',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色表示',
  `parent_id` int(0) NULL DEFAULT NULL COMMENT '父节点ID',
  `hotel_id` int(0) NULL DEFAULT NULL COMMENT '酒店ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (7, '1111', '2024-04-15 16:31:43', 14, 2, 'USER', 2, 2);
INSERT INTO `comment` VALUES (8, 'hhhhhhhhhhhhhhhhhhhh', '2024-05-11 14:55:52', 8, 3, 'USER', 0, 2);

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '酒店账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '酒店名称',
  `price` double(10, 2) NULL DEFAULT 0.00 COMMENT '价格',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '官网',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '介绍',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '酒店图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '酒店信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES (2, 'rujia', '123456', '如家酒店', 130.00, '18877778889', 'rujia@xm.com', 'https://www.hworld.com/', '成立于2010年，华住集团旗下中档酒店品牌。倡导「东方・适度・人文」的生活方式。提升消费者在旅途中的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店', 'HOTEL', '审核通过', 'http://localhost:9091/files/1698306835737-如家酒店.jpg');
INSERT INTO `hotel` VALUES (7, 'weiyena', '123456', '维也纳酒店', 150.00, '18877776666', 'weiyena@xm.com', 'https://www.wyn88.com/index.html', '维也纳酒店品牌始创于1993年，作为国内中端酒店“开山之作”，完美的将音乐、绘画、雕塑等欧陆古典艺术形态与酒店场景结合，以极具竞争力的“高性 价比”核心理念顺应消费升级大趋势，并致力为商务人士诠释艺术典雅的智享 旅居生活，以近30年的高投资回报业绩延续投资热度。维也纳酒店品牌V5全新升级，焕新而至，惊艳面世，传承保留欧式经典元素，延续品牌文化的精髓。', 'HOTEL', '审核通过', 'http://localhost:9091/files/1698306804301-维也纳酒店.jpg');
INSERT INTO `hotel` VALUES (8, 'hanting', '123456', '汉庭酒店', 100.00, '18800009999', 'hanting@xm.com', 'hanting@xm.com', '汉庭酒店创立于2005年，始终坚持为国人打造亲和便利、好而不贵的出行体验，截至2023年8月，已遍布全国1000+城市，拥有3400+门店。高效便捷的自助服务，干净可靠的产品体验，一城一味的特色早餐，亲切友善的社区式服务。汉庭酒店一站式满足国民出行需求，是14亿国民的远亲与近邻。', 'HOTEL', '待审核', 'http://localhost:9091/files/1698392674124-汉庭酒店.jpg');
INSERT INTO `hotel` VALUES (9, 'quanji', '123456', '全季酒店', 100.00, '188844445555', 'quanji@xm.com', 'https://www.hworld.com/hotel/quanji', '成立于2010年，华住集团旗下中档酒店品牌。倡导「东方・适度・人文」的生活方式，提升消费者在旅途中的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店。', 'HOTEL', '待审核', 'http://localhost:9091/files/1698392695016-全季酒店.jpg');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '我是公告，选快捷酒店2', '我是公告，选快捷酒店2', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '我是公告，选如家酒店', '我是公告，选如家酒店1', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '我是一个公告', '我是一个公告', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `hotel_id` int(0) NULL DEFAULT NULL COMMENT '酒店ID',
  `type_id` int(0) NULL DEFAULT NULL COMMENT '房型ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '预订时间',
  `in_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '入住时间',
  `out_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '离开时间',
  `days` bigint(0) NULL DEFAULT NULL COMMENT '入住天数',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '预订信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (2, '20231101164806', 8, 2, 2, '2023-11-01 16:48:06', '2023-11-01', '2023-11-04', 3, 360.00, '已退房');
INSERT INTO `orders` VALUES (3, '20231101170152', 9, 2, 5, '2023-11-01 17:01:52', '2023-11-01', '2023-11-03', 2, 400.00, '已退房');
INSERT INTO `orders` VALUES (4, '20240411224119', 8, 2, 5, '2024-04-11 22:41:19', '2024-04-11', '2024-04-12', 1, 200.00, '已退房');
INSERT INTO `orders` VALUES (5, '20240415163125', 14, 2, 3, '2024-04-15 16:31:25', '2024-04-01', '2024-04-02', 1, 100.00, '待入住');
INSERT INTO `orders` VALUES (7, '20240415195156', 8, 2, 3, '2024-04-15 19:51:56', '2024-04-16', '2024-04-17', 1, 100.00, '已入住');
INSERT INTO `orders` VALUES (8, '20240415195205', 8, 2, 3, '2024-04-15 19:52:05', '2024-04-16', '2024-04-19', 3, 300.00, '已退房');
INSERT INTO `orders` VALUES (9, '20240511145400', 8, 2, 2, '2024-05-11 14:54:00', '2024-05-15', '2024-05-16', 1, 120.00, '已退房');
INSERT INTO `orders` VALUES (10, '20240621172246', 8, 2, 2, '2024-06-21 17:22:46', '2024-06-21', '2024-06-25', 4, 480.00, '待入住');
INSERT INTO `orders` VALUES (11, '20240621172332', 8, 2, 3, '2024-06-21 17:23:32', '2024-06-21', '2024-06-24', 3, 300.00, '待入住');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '房间编号',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '房间状态',
  `type_id` int(0) NULL DEFAULT NULL COMMENT '分类ID',
  `hotel_id` int(0) NULL DEFAULT NULL COMMENT '酒店ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '客房信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (7, 'D001', '空闲', 2, 2);
INSERT INTO `room` VALUES (8, 'D002', '空闲', 2, 2);
INSERT INTO `room` VALUES (9, 'B006', '占用', 3, 2);
INSERT INTO `room` VALUES (10, 'S001', '空闲', 4, 2);
INSERT INTO `room` VALUES (11, 'H001', '空闲', 5, 2);
INSERT INTO `room` VALUES (12, 'H002', '空闲', 5, 2);
INSERT INTO `room` VALUES (13, 'H003', '空闲', 5, 2);
INSERT INTO `room` VALUES (14, 'H004', '空闲', 5, 2);
INSERT INTO `room` VALUES (15, 'H005', '空闲', 5, 2);
INSERT INTO `room` VALUES (16, 'D003', '空闲', 2, 2);
INSERT INTO `room` VALUES (17, 'D004', '空闲', 2, 2);
INSERT INTO `room` VALUES (18, 'D005', '空闲', 2, 2);
INSERT INTO `room` VALUES (19, 'S002', '空闲', 4, 2);
INSERT INTO `room` VALUES (20, 'S003', '空闲', 4, 2);
INSERT INTO `room` VALUES (21, 'S004', '空闲', 4, 2);
INSERT INTO `room` VALUES (22, 'S005', '空闲', 4, 2);
INSERT INTO `room` VALUES (23, 'B001', '空闲', 3, 2);
INSERT INTO `room` VALUES (24, 'B002', '空闲', 3, 2);
INSERT INTO `room` VALUES (25, 'B003', '空闲', 3, 2);
INSERT INTO `room` VALUES (26, 'B004', '空闲', 3, 2);
INSERT INTO `room` VALUES (27, 'B005', '空闲', 3, 2);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '房间价格',
  `num` int(0) NULL DEFAULT 0 COMMENT '剩余间数',
  `hotel_id` int(0) NULL DEFAULT NULL COMMENT '酒店ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '房间图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '房间分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (2, '大床房', '这是大床房', 120.00, 5, 2, 'http://localhost:9091/files/1698396014715-如家酒店-大床房.jpg');
INSERT INTO `type` VALUES (3, '标准间', '这是标准间', 100.00, 5, 2, 'http://localhost:9091/files/1698396757530-如家酒店-标准间.jpg');
INSERT INTO `type` VALUES (4, '双人床', '这是双人床', 120.00, 5, 2, 'http://localhost:9091/files/1698396801645-如家酒店-双人床.jpg');
INSERT INTO `type` VALUES (5, '豪华间', '这是豪华间', 200.00, 5, 2, 'http://localhost:9091/files/1698396813533-如家酒店-豪华间.jpg');
INSERT INTO `type` VALUES (6, '标准间', '这是标准间', 120.00, 0, 8, 'http://localhost:9091/files/1698397114105-汉庭酒店-标准间.jpg');
INSERT INTO `type` VALUES (7, '双人间', '这是双人间', 120.00, 0, 8, 'http://localhost:9091/files/1698397153744-汉庭酒店-双人间.jpg');
INSERT INTO `type` VALUES (8, '大床房', '这是大床房', 120.00, 0, 8, 'http://localhost:9091/files/1698397174977-汉庭酒店-大床房.jpg');
INSERT INTO `type` VALUES (9, '豪华间', '这是豪华间', 200.00, 0, 8, 'http://localhost:9091/files/1698397191401-汉庭酒店-豪华间.jpg');
INSERT INTO `type` VALUES (10, '标准间', '这是标准间', 180.00, 0, 7, 'http://localhost:9091/files/1698397244139-维也纳酒店-标准间.jpg');
INSERT INTO `type` VALUES (11, '双人间', '这是双人间', 180.00, 0, 7, 'http://localhost:9091/files/1698397290398-维也纳酒店-双人间.jpg');
INSERT INTO `type` VALUES (12, '大床房', '这是大床房', 200.00, 0, 7, 'http://localhost:9091/files/1698397313773-维也纳酒店-大床房.jpg');
INSERT INTO `type` VALUES (13, '豪华间', '这是豪华间', 299.00, 0, 7, 'http://localhost:9091/files/1698397337708-维也纳酒店-豪华间.jpg');
INSERT INTO `type` VALUES (14, '标准间', '这是标准间', 120.00, 0, 9, 'http://localhost:9091/files/1698397408639-全季酒店-标准间.jpg');
INSERT INTO `type` VALUES (15, '双人间', '这是双人间', 180.00, 0, 9, 'http://localhost:9091/files/1698397469587-全季酒店-双人间.jpg');
INSERT INTO `type` VALUES (16, '大床房', '这是大床房', 150.00, 0, 9, 'http://localhost:9091/files/1698397500771-全季酒店-大床房.jpg');
INSERT INTO `type` VALUES (17, '豪华间', '这是豪华间', 260.00, 0, 9, 'http://localhost:9091/files/1718960726712-微信图片_20240617231956.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (8, 'zhangsan', '123456', '张三', '188877776666', 'zhangsan@xm.com', 'USER', 'http://localhost:9091/files/1697438073596-avatar.png');
INSERT INTO `user` VALUES (9, 'lisi', '123456', '李四', '18899990000', 'lis@xm.com', 'USER', 'http://localhost:9091/files/1697438073596-avatar.png');
INSERT INTO `user` VALUES (13, 'wangwu', '123456', '王五', '18899996666', 'wangwu@xm.com', 'USER', 'http://localhost:9091/files/1698310493050-柯基.jpeg');
INSERT INTO `user` VALUES (14, 'lzy1', '123456', 'lzy', '360726219', '11111111@qq.com', 'USER', 'http://localhost:9091/files/1712833650328-微信图片_20210313105822.jpg');
INSERT INTO `user` VALUES (15, 'lzy', '111111', NULL, NULL, NULL, 'USER', 'http://localhost:9091/files/1697438073596-avatar.png');

SET FOREIGN_KEY_CHECKS = 1;
