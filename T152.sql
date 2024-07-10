/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t152`;
CREATE DATABASE IF NOT EXISTS `t152` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t152`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/zhihuitushu/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/zhihuitushu/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/zhihuitushu/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-22 13:48:51'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-22 13:48:51'),
	(3, 'duzhe_types', '读者类型', 1, '读者类型1', NULL, NULL, '2022-02-22 13:48:51'),
	(4, 'duzhe_types', '读者类型', 2, '读者类型2', NULL, NULL, '2022-02-22 13:48:51'),
	(5, 'duzhe_types', '读者类型', 3, '读者类型3', NULL, NULL, '2022-02-22 13:48:51'),
	(6, 'duzhe_types', '读者类型', 4, '读者类型4', NULL, NULL, '2022-02-22 13:48:51'),
	(7, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-02-22 13:48:51'),
	(8, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-02-22 13:48:51'),
	(9, 'tushu_types', '图书类型', 1, '图书类型1', NULL, NULL, '2022-02-22 13:48:51'),
	(10, 'tushu_types', '图书类型', 2, '图书类型2', NULL, NULL, '2022-02-22 13:48:51'),
	(11, 'tushu_types', '图书类型', 3, '图书类型3', NULL, NULL, '2022-02-22 13:48:51'),
	(12, 'tushu_types', '图书类型', 4, '图书类型4', NULL, NULL, '2022-02-22 13:48:51'),
	(13, 'shujia_types', '书架', 1, '书架1', NULL, NULL, '2022-02-22 13:48:51'),
	(14, 'shujia_types', '书架', 2, '书架2', NULL, NULL, '2022-02-22 13:48:51'),
	(15, 'shujia_types', '书架', 3, '书架3', NULL, NULL, '2022-02-22 13:48:52'),
	(16, 'shujia_types', '书架', 4, '书架4', NULL, NULL, '2022-02-22 13:48:52'),
	(17, 'tushu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-02-22 13:48:52'),
	(18, 'tushu_order_types', '状态', 1, '已借阅', NULL, NULL, '2022-02-22 13:48:52'),
	(19, 'tushu_order_types', '状态', 2, '已还书', NULL, NULL, '2022-02-22 13:48:52'),
	(20, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2022-02-22 13:48:52'),
	(21, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2022-02-22 13:48:52'),
	(22, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2022-02-22 13:48:52'),
	(23, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-02-22 13:48:52'),
	(24, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-02-22 13:48:52'),
	(25, 'tushu_types', '图书类型', 5, '图书类型55', NULL, '', '2022-02-23 02:23:32');

DROP TABLE IF EXISTS `duzhe`;
CREATE TABLE IF NOT EXISTS `duzhe` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `duzhe_uuid_number` varchar(200) DEFAULT NULL COMMENT '读者编号 Search111 ',
  `duzhe_name` varchar(200) DEFAULT NULL COMMENT '读者姓名 Search111 ',
  `duzhe_phone` varchar(200) DEFAULT NULL COMMENT '读者手机号',
  `duzhe_id_number` varchar(200) DEFAULT NULL COMMENT '读者身份证号',
  `duzhe_photo` varchar(200) DEFAULT NULL COMMENT '读者头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `duzhe_types` int DEFAULT NULL COMMENT '读者类型',
  `duzhe_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='读者';

DELETE FROM `duzhe`;
INSERT INTO `duzhe` (`id`, `username`, `password`, `duzhe_uuid_number`, `duzhe_name`, `duzhe_phone`, `duzhe_id_number`, `duzhe_photo`, `sex_types`, `duzhe_types`, `duzhe_email`, `create_time`) VALUES
	(1, '读者1', '123456', '164553773779318', '读者姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/zhihuitushu/upload/duzhe1.jpg', 1, 4, '1@qq.com', '2022-02-22 13:48:57'),
	(2, '读者2', '123456', '164553773779316', '读者姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/zhihuitushu/upload/duzhe2.jpg', 1, 3, '2@qq.com', '2022-02-22 13:48:57'),
	(3, '读者3', '123456', '16455377377933', '读者姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/zhihuitushu/upload/duzhe3.jpg', 1, 2, '3@qq.com', '2022-02-22 13:48:57');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `duzhe_id` int DEFAULT NULL COMMENT '读者',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `duzhe_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, '发布内容1', NULL, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(2, '帖子标题2', 1, NULL, '发布内容2', NULL, 2, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(3, '帖子标题3', 1, NULL, '发布内容3', NULL, 1, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(4, '帖子标题4', 1, NULL, '发布内容4', NULL, 1, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(5, '帖子标题5', 2, NULL, '发布内容5', NULL, 1, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(6, '帖子标题6', 1, NULL, '发布内容6', NULL, 1, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(7, '帖子标题7', 3, NULL, '发布内容7', NULL, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(8, '帖子标题8', 3, NULL, '发布内容8', NULL, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(9, '帖子标题9', 3, NULL, '发布内容9', NULL, 2, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(10, '帖子标题10', 2, NULL, '发布内容10', NULL, 2, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(11, '帖子标题11', 2, NULL, '发布内容11', NULL, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(12, NULL, 2, NULL, 'enen ', 11, NULL, 2, '2022-02-23 02:21:37', NULL, '2022-02-23 02:21:37'),
	(13, NULL, 2, NULL, 'enen 11', 11, NULL, 2, '2022-02-23 02:21:40', NULL, '2022-02-23 02:21:40'),
	(14, NULL, 2, NULL, 'www', 11, NULL, 2, '2022-02-23 02:22:35', NULL, '2022-02-23 02:22:35');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', '2eybjbnhzvi6q7jln0o0u82eh9skoial', '2022-02-22 13:54:10', '2024-04-27 11:43:34'),
	(2, 1, 'a1', 'duzhe', '读者', 'o5dqiak6ilmon4yv8kw0h20yaa10ued8', '2022-02-23 01:09:46', '2024-04-27 11:45:09'),
	(3, 2, 'a2', 'duzhe', '读者', 'khrs1w2fck5nnwlogsvacn9c9qz8qf7e', '2022-02-23 02:21:01', '2022-02-23 03:22:22');

DROP TABLE IF EXISTS `tushu`;
CREATE TABLE IF NOT EXISTS `tushu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `tushu_uuid_number` varchar(200) DEFAULT NULL COMMENT '图书编号 Search111 ',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书名称  Search111 ',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书照片',
  `shujia_types` int DEFAULT NULL COMMENT '书架 Search111',
  `tushu_types` int DEFAULT NULL COMMENT '图书类型 Search111',
  `tushu_zuozhe` varchar(200) DEFAULT NULL COMMENT '图书作者  Search111',
  `tushu_chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社 Search111',
  `tushu_kucun_number` int DEFAULT NULL COMMENT '图书库存',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `tushu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `tushu_content` text COMMENT '图书介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='图书';

DELETE FROM `tushu`;
INSERT INTO `tushu` (`id`, `tushu_uuid_number`, `tushu_name`, `tushu_photo`, `shujia_types`, `tushu_types`, `tushu_zuozhe`, `tushu_chubanshe`, `tushu_kucun_number`, `shangxia_types`, `tushu_delete`, `tushu_content`, `create_time`) VALUES
	(1, '16455377378028', '图书名称1', 'http://localhost:8080/zhihuitushu/upload/tushu1.jpg', 2, 1, '图书作者1', '出版社1', 10001, 1, 1, '图书介绍1', '2022-02-22 13:48:57'),
	(2, '16455377378020', '图书名称2', 'http://localhost:8080/zhihuitushu/upload/tushu2.jpg', 1, 4, '图书作者2', '出版社2', 10002, 1, 1, '图书介绍2', '2022-02-22 13:48:57'),
	(3, '164553773780216', '图书名称3', 'http://localhost:8080/zhihuitushu/upload/tushu3.jpg', 4, 2, '图书作者3', '出版社3', 10003, 1, 1, '图书介绍3', '2022-02-22 13:48:57'),
	(4, '16455377378027', '图书名称4', 'http://localhost:8080/zhihuitushu/upload/tushu4.jpg', 3, 2, '图书作者4', '出版社4', 10004, 1, 1, '图书介绍4', '2022-02-22 13:48:57'),
	(5, '164553773780219', '图书名称5', 'http://localhost:8080/zhihuitushu/upload/tushu5.jpg', 3, 3, '图书作者5', '出版社5', 10005, 1, 1, '图书介绍5', '2022-02-22 13:48:57'),
	(6, '16455377378024', '图书名称6', 'http://localhost:8080/zhihuitushu/upload/tushu6.jpg', 3, 1, '图书作者6', '出版社6', 10006, 1, 1, '图书介绍6', '2022-02-22 13:48:57'),
	(7, '164553773780212', '图书名称7', 'http://localhost:8080/zhihuitushu/upload/tushu7.jpg', 3, 4, '图书作者7', '出版社7', 10007, 1, 1, '图书介绍7', '2022-02-22 13:48:57'),
	(8, '16455377378023', '图书名称8', 'http://localhost:8080/zhihuitushu/upload/tushu8.jpg', 2, 3, '图书作者8', '出版社8', 10008, 1, 1, '图书介绍8', '2022-02-22 13:48:57'),
	(9, '16455377378028', '图书名称9', 'http://localhost:8080/zhihuitushu/upload/tushu9.jpg', 3, 2, '图书作者9', '出版社9', 10009, 1, 1, '图书介绍9', '2022-02-22 13:48:57'),
	(10, '164553773780219', '图书名称10', 'http://localhost:8080/zhihuitushu/upload/tushu10.jpg', 1, 1, '图书作者10', '出版社10', 100008, 1, 1, '图书介绍10', '2022-02-22 13:48:57'),
	(11, '164553773780217', '图书名称11', 'http://localhost:8080/zhihuitushu/upload/tushu11.jpg', 2, 2, '图书作者11', '出版社11', 100010, 1, 1, '图书介绍11', '2022-02-22 13:48:57');

DROP TABLE IF EXISTS `tushu_collection`;
CREATE TABLE IF NOT EXISTS `tushu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `duzhe_id` int DEFAULT NULL COMMENT '读者',
  `tushu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='图书收藏';

DELETE FROM `tushu_collection`;
INSERT INTO `tushu_collection` (`id`, `tushu_id`, `duzhe_id`, `tushu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(2, 2, 2, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(3, 3, 2, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(4, 4, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(5, 5, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(6, 6, 1, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(7, 7, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(8, 8, 2, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(9, 9, 1, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(10, 10, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(11, 11, 3, 1, '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(12, 8, 1, 1, '2024-04-27 10:45:31', '2024-04-27 10:45:31');

DROP TABLE IF EXISTS `tushu_liuyan`;
CREATE TABLE IF NOT EXISTS `tushu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `duzhe_id` int DEFAULT NULL COMMENT '读者',
  `tushu_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='图书留言';

DELETE FROM `tushu_liuyan`;
INSERT INTO `tushu_liuyan` (`id`, `tushu_id`, `duzhe_id`, `tushu_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '回复信息1', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(2, 2, 3, '留言内容2', '回复信息2', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(3, 3, 3, '留言内容3', '回复信息3', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(4, 4, 2, '留言内容4', '回复信息4', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(5, 5, 1, '留言内容5', '回复信息5', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(6, 6, 3, '留言内容6', '回复信息6', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(7, 7, 2, '留言内容7', '回复信息7', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(8, 8, 1, '留言内容8', '回复信息8', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(9, 9, 1, '留言内容9', '回复信息9', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(10, 10, 2, '留言内容10', '回复信息10', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57'),
	(11, 11, 3, '留言内容11', '回复信息11', '2022-02-22 13:48:57', '2022-02-22 13:48:57', '2022-02-22 13:48:57');

DROP TABLE IF EXISTS `tushu_order`;
CREATE TABLE IF NOT EXISTS `tushu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '借阅编号 Search111 ',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `duzhe_id` int DEFAULT NULL COMMENT '读者',
  `jieyue_time` date DEFAULT NULL COMMENT '借阅日期',
  `huanshu_time` date DEFAULT NULL COMMENT '还书日期',
  `tushu_order_types` int DEFAULT NULL COMMENT '状态 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='图书借阅';

DELETE FROM `tushu_order`;
INSERT INTO `tushu_order` (`id`, `tushu_order_uuid_number`, `tushu_id`, `duzhe_id`, `jieyue_time`, `huanshu_time`, `tushu_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1645579637162', 10, 1, '2022-02-23', '2022-04-23', 1, '2022-02-23 01:29:06', '2022-02-23 01:29:06'),
	(2, '1645580004527', 11, 1, '2022-02-25', '2022-03-25', 2, '2022-02-23 01:33:28', '2022-02-23 01:33:28'),
	(3, '16455796371623', 9, 2, '2022-02-23', '2022-04-23', 1, '2022-02-23 01:29:06', '2022-02-23 01:29:06'),
	(4, '16455800045274', 8, 2, '2022-02-25', '2022-03-25', 2, '2022-02-23 01:33:28', '2022-02-23 01:33:28'),
	(5, '16455796371625', 5, 2, '2022-02-23', '2022-04-23', 1, '2022-02-23 01:29:06', '2022-02-23 01:29:06'),
	(6, '16455796371626', 6, 3, '2022-02-23', '2022-04-23', 1, '2022-02-23 01:29:06', '2022-02-23 01:29:06'),
	(7, '16455800045277', 3, 3, '2022-02-25', '2022-03-25', 2, '2022-02-23 01:33:28', '2022-02-23 01:33:28'),
	(8, '16455800045274', 8, 2, '2022-01-25', '2022-03-25', 2, '2022-01-23 01:33:28', '2022-01-23 01:33:28'),
	(9, '16455796371625', 5, 3, '2022-01-23', '2022-04-23', 1, '2022-01-23 01:33:28', '2022-01-23 01:33:28'),
	(10, '16455796371626', 6, 3, '2022-01-23', '2022-04-23', 1, '2022-01-23 01:33:28', '2022-01-23 01:33:28'),
	(11, '16455800045277', 3, 3, '2022-01-25', '2022-03-25', 2, '2022-01-23 01:33:28', '2022-01-23 01:33:28'),
	(12, '1645582867922', 10, 2, '2022-02-24', '2022-03-24', 1, '2022-02-23 02:21:18', '2022-02-23 02:21:18'),
	(13, '1645582907794', 11, 2, '2022-02-24', '2022-04-24', 2, '2022-02-23 02:21:51', '2022-02-23 02:21:51');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
