-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmpm9e7
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-05-14 09:11:25',1,1,'提问1','回复1',1),(62,'2021-05-14 09:11:25',2,2,'提问2','回复2',2),(63,'2021-05-14 09:11:25',3,3,'提问3','回复3',3),(64,'2021-05-14 09:11:25',4,4,'提问4','回复4',4),(65,'2021-05-14 09:11:25',5,5,'提问5','回复5',5),(66,'2021-05-14 09:11:25',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmpm9e7/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmpm9e7/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmpm9e7/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daoyou`
--

DROP TABLE IF EXISTS `daoyou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daoyou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `daoyouzhenghao` varchar(200) DEFAULT NULL COMMENT '导游证号',
  `daoyouxingming` varchar(200) DEFAULT NULL COMMENT '导游姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `daoyoudengji` varchar(200) DEFAULT NULL COMMENT '导游等级',
  `daoyouyuzhong` varchar(200) DEFAULT NULL COMMENT '导游语种',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lvxingshe` varchar(200) DEFAULT NULL COMMENT '旅行社',
  PRIMARY KEY (`id`),
  UNIQUE KEY `daoyouzhenghao` (`daoyouzhenghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='导游';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daoyou`
--

LOCK TABLES `daoyou` WRITE;
/*!40000 ALTER TABLE `daoyou` DISABLE KEYS */;
INSERT INTO `daoyou` VALUES (11,'2021-05-14 09:11:25','导游1','导游姓名1','123456','男',1,'初级','导游语种1','http://localhost:8080/ssmpm9e7/upload/daoyou_zhaopian1.jpg','旅行社1'),(12,'2021-05-14 09:11:25','导游2','导游姓名2','123456','男',2,'初级','导游语种2','http://localhost:8080/ssmpm9e7/upload/daoyou_zhaopian2.jpg','旅行社2'),(13,'2021-05-14 09:11:25','导游3','导游姓名3','123456','男',3,'初级','导游语种3','http://localhost:8080/ssmpm9e7/upload/daoyou_zhaopian3.jpg','旅行社3'),(14,'2021-05-14 09:11:25','导游4','导游姓名4','123456','男',4,'初级','导游语种4','http://localhost:8080/ssmpm9e7/upload/daoyou_zhaopian4.jpg','旅行社4'),(15,'2021-05-14 09:11:25','导游5','导游姓名5','123456','男',5,'初级','导游语种5','http://localhost:8080/ssmpm9e7/upload/daoyou_zhaopian5.jpg','旅行社5'),(16,'2021-05-14 09:11:25','导游6','导游姓名6','123456','男',6,'初级','导游语种6','http://localhost:8080/ssmpm9e7/upload/daoyou_zhaopian6.jpg','旅行社6');
/*!40000 ALTER TABLE `daoyou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
INSERT INTO `discussjingdianxinxi` VALUES (101,'2021-05-14 09:11:25',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-05-14 09:11:25',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-05-14 09:11:25',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-05-14 09:11:25',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-05-14 09:11:25',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-05-14 09:11:25',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslvyouxianlu`
--

DROP TABLE IF EXISTS `discusslvyouxianlu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslvyouxianlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='旅游线路评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslvyouxianlu`
--

LOCK TABLES `discusslvyouxianlu` WRITE;
/*!40000 ALTER TABLE `discusslvyouxianlu` DISABLE KEYS */;
INSERT INTO `discusslvyouxianlu` VALUES (111,'2021-05-14 09:11:25',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-05-14 09:11:25',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-05-14 09:11:25',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-05-14 09:11:25',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-05-14 09:11:25',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-05-14 09:11:25',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusslvyouxianlu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-05-14 09:11:25','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-05-14 09:11:25','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-05-14 09:11:25','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-05-14 09:11:25','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-05-14 09:11:25','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-05-14 09:11:25','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goupiaoxinxi`
--

DROP TABLE IF EXISTS `goupiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goupiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `kaituanfeiyong` float DEFAULT NULL COMMENT '开团费用',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `daoyouzhenghao` varchar(200) DEFAULT NULL COMMENT '导游证号',
  `lvxingshe` varchar(200) DEFAULT NULL COMMENT '旅行社',
  `goupiaoriqi` datetime DEFAULT NULL COMMENT '购票日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='购票信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goupiaoxinxi`
--

LOCK TABLES `goupiaoxinxi` WRITE;
/*!40000 ALTER TABLE `goupiaoxinxi` DISABLE KEYS */;
INSERT INTO `goupiaoxinxi` VALUES (41,'2021-05-14 09:11:25','订单编号1','景点名称1',1,1,1,'用户账号1','用户姓名1','联系电话1','导游证号1','旅行社1','2021-05-14 17:11:25','未支付'),(42,'2021-05-14 09:11:25','订单编号2','景点名称2',2,2,2,'用户账号2','用户姓名2','联系电话2','导游证号2','旅行社2','2021-05-14 17:11:25','未支付'),(43,'2021-05-14 09:11:25','订单编号3','景点名称3',3,3,3,'用户账号3','用户姓名3','联系电话3','导游证号3','旅行社3','2021-05-14 17:11:25','未支付'),(44,'2021-05-14 09:11:25','订单编号4','景点名称4',4,4,4,'用户账号4','用户姓名4','联系电话4','导游证号4','旅行社4','2021-05-14 17:11:25','未支付'),(45,'2021-05-14 09:11:25','订单编号5','景点名称5',5,5,5,'用户账号5','用户姓名5','联系电话5','导游证号5','旅行社5','2021-05-14 17:11:25','未支付'),(46,'2021-05-14 09:11:25','订单编号6','景点名称6',6,6,6,'用户账号6','用户姓名6','联系电话6','导游证号6','旅行社6','2021-05-14 17:11:25','未支付');
/*!40000 ALTER TABLE `goupiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdiandengji` varchar(200) DEFAULT NULL COMMENT '景点等级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `menpiaojiage` float DEFAULT NULL COMMENT '门票价格',
  `kaituanfeiyong` float DEFAULT NULL COMMENT '开团费用',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `lvxingshe` varchar(200) DEFAULT NULL COMMENT '旅行社',
  `daoyouzhenghao` varchar(200) DEFAULT NULL COMMENT '导游证号',
  `daoyouxingming` varchar(200) DEFAULT NULL COMMENT '导游姓名',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (31,'2021-05-14 09:11:25','景点名称1','http://localhost:8080/ssmpm9e7/upload/jingdianxinxi_jingdiantupian1.jpg','A','景点地址1',1,1,1,'开放时间1','旅行社1','导游证号1','导游姓名1','注意事项1','景点介绍1','2021-05-14 17:11:25',1),(32,'2021-05-14 09:11:25','景点名称2','http://localhost:8080/ssmpm9e7/upload/jingdianxinxi_jingdiantupian2.jpg','A','景点地址2',2,2,2,'开放时间2','旅行社2','导游证号2','导游姓名2','注意事项2','景点介绍2','2021-05-14 17:11:25',2),(33,'2021-05-14 09:11:25','景点名称3','http://localhost:8080/ssmpm9e7/upload/jingdianxinxi_jingdiantupian3.jpg','A','景点地址3',3,3,3,'开放时间3','旅行社3','导游证号3','导游姓名3','注意事项3','景点介绍3','2021-05-14 17:11:25',3),(34,'2021-05-14 09:11:25','景点名称4','http://localhost:8080/ssmpm9e7/upload/jingdianxinxi_jingdiantupian4.jpg','A','景点地址4',4,4,4,'开放时间4','旅行社4','导游证号4','导游姓名4','注意事项4','景点介绍4','2021-05-14 17:11:25',4),(35,'2021-05-14 09:11:25','景点名称5','http://localhost:8080/ssmpm9e7/upload/jingdianxinxi_jingdiantupian5.jpg','A','景点地址5',5,5,5,'开放时间5','旅行社5','导游证号5','导游姓名5','注意事项5','景点介绍5','2021-05-14 17:11:25',5),(36,'2021-05-14 09:11:25','景点名称6','http://localhost:8080/ssmpm9e7/upload/jingdianxinxi_jingdiantupian6.jpg','A','景点地址6',6,6,6,'开放时间6','旅行社6','导游证号6','导游姓名6','注意事项6','景点介绍6','2021-05-14 17:11:25',6);
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyouxianlu`
--

DROP TABLE IF EXISTS `lvyouxianlu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyouxianlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) NOT NULL COMMENT '线路名称',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `xianlutupian` varchar(200) DEFAULT NULL COMMENT '线路图片',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `tujingluduan` longtext COMMENT '途径路段',
  `jiaotongfangshi` varchar(200) DEFAULT NULL COMMENT '交通方式',
  `daoyouzhenghao` varchar(200) DEFAULT NULL COMMENT '导游证号',
  `lvxingshe` varchar(200) DEFAULT NULL COMMENT '旅行社',
  `xianluxiangqing` longtext COMMENT '线路详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='旅游线路';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyouxianlu`
--

LOCK TABLES `lvyouxianlu` WRITE;
/*!40000 ALTER TABLE `lvyouxianlu` DISABLE KEYS */;
INSERT INTO `lvyouxianlu` VALUES (51,'2021-05-14 09:11:25','线路名称1','景点名称1','景点地址1','http://localhost:8080/ssmpm9e7/upload/lvyouxianlu_xianlutupian1.jpg','起点1','终点1','途径路段1','交通方式1','导游证号1','旅行社1','线路详情1'),(52,'2021-05-14 09:11:25','线路名称2','景点名称2','景点地址2','http://localhost:8080/ssmpm9e7/upload/lvyouxianlu_xianlutupian2.jpg','起点2','终点2','途径路段2','交通方式2','导游证号2','旅行社2','线路详情2'),(53,'2021-05-14 09:11:25','线路名称3','景点名称3','景点地址3','http://localhost:8080/ssmpm9e7/upload/lvyouxianlu_xianlutupian3.jpg','起点3','终点3','途径路段3','交通方式3','导游证号3','旅行社3','线路详情3'),(54,'2021-05-14 09:11:25','线路名称4','景点名称4','景点地址4','http://localhost:8080/ssmpm9e7/upload/lvyouxianlu_xianlutupian4.jpg','起点4','终点4','途径路段4','交通方式4','导游证号4','旅行社4','线路详情4'),(55,'2021-05-14 09:11:25','线路名称5','景点名称5','景点地址5','http://localhost:8080/ssmpm9e7/upload/lvyouxianlu_xianlutupian5.jpg','起点5','终点5','途径路段5','交通方式5','导游证号5','旅行社5','线路详情5'),(56,'2021-05-14 09:11:25','线路名称6','景点名称6','景点地址6','http://localhost:8080/ssmpm9e7/upload/lvyouxianlu_xianlutupian6.jpg','起点6','终点6','途径路段6','交通方式6','导游证号6','旅行社6','线路详情6');
/*!40000 ALTER TABLE `lvyouxianlu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='旅游资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-05-14 09:11:25','标题1','简介1','http://localhost:8080/ssmpm9e7/upload/news_picture1.jpg','内容1'),(92,'2021-05-14 09:11:25','标题2','简介2','http://localhost:8080/ssmpm9e7/upload/news_picture2.jpg','内容2'),(93,'2021-05-14 09:11:25','标题3','简介3','http://localhost:8080/ssmpm9e7/upload/news_picture3.jpg','内容3'),(94,'2021-05-14 09:11:25','标题4','简介4','http://localhost:8080/ssmpm9e7/upload/news_picture4.jpg','内容4'),(95,'2021-05-14 09:11:25','标题5','简介5','http://localhost:8080/ssmpm9e7/upload/news_picture5.jpg','内容5'),(96,'2021-05-14 09:11:25','标题6','简介6','http://localhost:8080/ssmpm9e7/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-05-14 09:11:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2021-05-14 09:11:25','用户1','用户姓名1','123456','男',1,'13823888881','773890001@qq.com'),(22,'2021-05-14 09:11:25','用户2','用户姓名2','123456','男',2,'13823888882','773890002@qq.com'),(23,'2021-05-14 09:11:25','用户3','用户姓名3','123456','男',3,'13823888883','773890003@qq.com'),(24,'2021-05-14 09:11:25','用户4','用户姓名4','123456','男',4,'13823888884','773890004@qq.com'),(25,'2021-05-14 09:11:25','用户5','用户姓名5','123456','男',5,'13823888885','773890005@qq.com'),(26,'2021-05-14 09:11:25','用户6','用户姓名6','123456','男',6,'13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15 17:32:57
