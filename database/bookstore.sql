/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.5.27 : Database - bookstore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bookstore`;

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL DEFAULT '',
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `buynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

insert  into `orderitem`(`order_id`,`product_id`,`buynum`) values ('04bc48b5-d107-461d-b3b5-454a96f0d120','25',1),('0c0656ee-3c42-4ce7-86b4-51f5003cc395','1',1),('0c0656ee-3c42-4ce7-86b4-51f5003cc395','25',1),('0c0656ee-3c42-4ce7-86b4-51f5003cc395','5',1),('0c0656ee-3c42-4ce7-86b4-51f5003cc395','8',1),('1b4f3d68-aa12-49c6-afd8-ae230c6004a1','11',1),('1b4f3d68-aa12-49c6-afd8-ae230c6004a1','16',1),('25c3205d-e0f6-4fdf-a716-a8fc03f112e3','11',1),('25c3205d-e0f6-4fdf-a716-a8fc03f112e3','16',1),('25c3205d-e0f6-4fdf-a716-a8fc03f112e3','3',1),('2fc2986c-ceba-494b-b743-dbac76c44f41','1',1),('2fc2986c-ceba-494b-b743-dbac76c44f41','25',2),('2fc2986c-ceba-494b-b743-dbac76c44f41','5',1),('2fc2986c-ceba-494b-b743-dbac76c44f41','8',1),('3fef2d39-7f2d-43e9-af12-bc8cea2af8bf','10',1),('5e845ccc-3f81-4272-92b5-e0e8f9402aa5','25',1),('5e8a41d1-03d3-43c7-866b-c6226218fddc','16',1),('61350730-9d4f-423f-87c3-d88b5ee781c5','11',1),('61350730-9d4f-423f-87c3-d88b5ee781c5','16',1),('728a9ddb-c291-4380-bcee-d4d4df94fdf7','25',1),('74c1209c-b1be-452d-aa9f-8e6d484450a7','15',1),('74c1209c-b1be-452d-aa9f-8e6d484450a7','25',1),('74c1209c-b1be-452d-aa9f-8e6d484450a7','27',1),('74c1209c-b1be-452d-aa9f-8e6d484450a7','5',1),('7d111df9-c233-4b84-b1e0-c2a69be6e51c','11',1),('7d111df9-c233-4b84-b1e0-c2a69be6e51c','16',1),('7d111df9-c233-4b84-b1e0-c2a69be6e51c','17',1),('7d111df9-c233-4b84-b1e0-c2a69be6e51c','24',1),('7d111df9-c233-4b84-b1e0-c2a69be6e51c','26',1),('8ea18792-2e64-4f72-8e0a-c23dce09b765','11',1),('a36cd1c8-a5cf-4966-8bb9-1122199db051','1',1),('a36cd1c8-a5cf-4966-8bb9-1122199db051','25',1),('a42c23fd-55f0-4a88-90f9-fa33a8867cac','25',1),('a42c23fd-55f0-4a88-90f9-fa33a8867cac','27',1),('a655f8df-6b9b-4b83-a014-01e42c7b11f3','29',1),('a975a61e-f9a4-433c-b3b7-84f82e045727','1',1),('a975a61e-f9a4-433c-b3b7-84f82e045727','25',2),('a975a61e-f9a4-433c-b3b7-84f82e045727','5',1),('a975a61e-f9a4-433c-b3b7-84f82e045727','8',1),('b5de750b-bf41-4275-83dc-8187aede51fe','16',1),('ba060168-00b2-440e-8ee6-8ec25ab23917','1',1),('ba060168-00b2-440e-8ee6-8ec25ab23917','25',1),('ba060168-00b2-440e-8ee6-8ec25ab23917','5',1),('c0708f1b-b3cb-4b30-a279-6f58b6a2a54e','14',1),('c721fa56-f3e4-4295-b8ca-2675db3f2e5b','25',1),('cfa86306-896d-44fe-b4c5-d711c54587cb','16',1),('cfa86306-896d-44fe-b4c5-d711c54587cb','7',1),('d55a82c3-5ed9-43c6-928c-ba6dd6ffd7a0','3',1),('d87cfcc9-264c-411f-ac47-5daf9b5a68c2','25',1),('d87cfcc9-264c-411f-ac47-5daf9b5a68c2','27',1),('d87cfcc9-264c-411f-ac47-5daf9b5a68c2','5',1),('f5bc2ffd-b2f4-45cc-99c9-2c9850e5fb6b','1',1),('f5bc2ffd-b2f4-45cc-99c9-2c9850e5fb6b','34',1),('fa0c9a1b-7558-4a18-96ba-e061b684c6b3','14',1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) DEFAULT NULL,
  `receiverName` varchar(20) DEFAULT NULL,
  `receiverPhone` varchar(20) DEFAULT NULL,
  `paystate` int(11) DEFAULT NULL,
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`money`,`receiverAddress`,`receiverName`,`receiverPhone`,`paystate`,`ordertime`,`user_id`) values ('04bc48b5-d107-461d-b3b5-454a96f0d120',14,'广州市','taki','45444444444',0,'2017-06-10 15:09:26',5),('0c0656ee-3c42-4ce7-86b4-51f5003cc395',360,'xxx','xxx','xxx',0,'2017-06-14 16:43:45',5),('1b4f3d68-aa12-49c6-afd8-ae230c6004a1',210,'222','22','222',0,'2017-06-14 14:55:05',6),('25c3205d-e0f6-4fdf-a716-a8fc03f112e3',280,'xxx','xxx','xxx',0,'2017-06-14 14:56:27',5),('2fc2986c-ceba-494b-b743-dbac76c44f41',374,'666','666','666',0,'2017-06-14 16:54:52',5),('3fef2d39-7f2d-43e9-af12-bc8cea2af8bf',111,'111','11','111',0,'2017-06-14 14:29:04',5),('5e845ccc-3f81-4272-92b5-e0e8f9402aa5',14,'广州市','taki','45444444444',0,'2017-06-10 15:02:23',5),('5e8a41d1-03d3-43c7-866b-c6226218fddc',55,'singapore','1','1122222222',0,'2017-06-14 14:26:32',5),('61350730-9d4f-423f-87c3-d88b5ee781c5',210,'xxx','xxx','xxx',0,'2017-06-14 14:54:58',6),('728a9ddb-c291-4380-bcee-d4d4df94fdf7',14,'111','222','222',0,'2017-06-14 16:34:26',5),('74c1209c-b1be-452d-aa9f-8e6d484450a7',267,'厦门市','taki','111242342',0,'2017-06-10 15:44:21',5),('7d111df9-c233-4b84-b1e0-c2a69be6e51c',328,'北京','taki','14444444444',0,'2017-06-10 14:55:55',5),('8ea18792-2e64-4f72-8e0a-c23dce09b765',155,'xxx','xxx','xxx',0,'2017-06-14 14:53:27',6),('a36cd1c8-a5cf-4966-8bb9-1122199db051',114,'333','333','333',0,'2017-06-14 16:36:01',5),('a42c23fd-55f0-4a88-90f9-fa33a8867cac',69,'汕尾市','taki','13818888888',0,'2017-06-10 15:11:17',5),('a655f8df-6b9b-4b83-a014-01e42c7b11f3',45,'xxx','xxx','xxx',0,'2017-06-15 22:02:12',5),('a975a61e-f9a4-433c-b3b7-84f82e045727',374,'666','666','666',0,'2017-06-14 16:55:09',5),('b5de750b-bf41-4275-83dc-8187aede51fe',55,'555','555','555',0,'2017-06-14 16:55:27',5),('ba060168-00b2-440e-8ee6-8ec25ab23917',147,'444','444','444',0,'2017-06-14 16:40:58',5),('c0708f1b-b3cb-4b30-a279-6f58b6a2a54e',200,'xxx','xxx','xxx',0,'2017-06-14 14:26:34',5),('c721fa56-f3e4-4295-b8ca-2675db3f2e5b',14,'广州市','taki','45444444444',0,'2017-06-10 15:09:42',5),('cfa86306-896d-44fe-b4c5-d711c54587cb',99,'888','888','888',0,'2017-06-14 16:56:05',5),('d55a82c3-5ed9-43c6-928c-ba6dd6ffd7a0',70,'singapore','taki','13133333333',0,'2017-06-14 13:50:37',5),('d87cfcc9-264c-411f-ac47-5daf9b5a68c2',102,'汕头市','taki','44411111111',0,'2017-06-10 15:22:04',5),('f5bc2ffd-b2f4-45cc-99c9-2c9850e5fb6b',122,'汕头市','YING','13333333333',0,'2017-06-13 21:16:47',6),('fa0c9a1b-7558-4a18-96ba-e061b684c6b3',200,'xxx','xxx','xxx',0,'2017-06-14 14:26:34',5);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`category`,`pnum`,`img_url`,`description`) values ('1','时空穿行',100,'科技',9,'101.jpg','good book'),('10','大勇和小花浪漫的事',111,'生活百科',43,'dayongxiaohua.jpg','good book'),('11','杜拉拉升职记',155,'文学',37,'dulala.jpg','good book'),('12','欧洲',66,'生活百科',33,'euro.jpg','good book'),('13','鱼的意大利旅行',15,'文学',33,'fish.jpg','good book'),('14','java2',200,'计算机',1,'java2.jpg','good book'),('15','中国国家地理',165,'学术',2,'ngcn.jpg','good book'),('16','one planet',55,'社科',7,'oneplant.jpg','good book'),('17','摄影教材',88,'学术',3,'photog.jpg','good book'),('18','搭地铁玩上海',99,'生活百科',66,'subwayinshanghai.jpg','good book'),('19','沉思录',88,'学术',33,'think.jpg','good book'),('2','感悟',150,'文学',55,'102.jpg','good book'),('20','travel book',133,'生活百科',44,'travelbook.jpg','good book'),('21','中国自助游',77,'生活百科',33,'tripcn.jpg','good book'),('22','.NET设计规范',33,'计算机',33,'TS1.jpg','good book'),('23','深入浅出Oracle',300,'计算机',22,'TS2.jpg','good book'),('24','Don\'t make me think',8,'考试',76,'TS3.jpg','good book'),('25','平面',14,'原版',30,'TS5.jpg','good book'),('26','设计模式解析',22,'计算机',21,'TS4.jpg','good book'),('27','经济解析上',55,'经营',19,'TS6.jpg','good book'),('28','经济解析下',55,'经营',22,'TS7.jpg','good book'),('29','网管员必备宝典',45,'艺术',32,'TS8.jpg','good book'),('3','赢在影响力',70,'少儿',64,'103.jpg','good book'),('30','系统分析师教程',33,'计算机',44,'TS9.jpg','good book'),('31','数据库原理',122,'计算机',2,'TS10.jpg','good book'),('32','数据结构',233,'计算机',1,'TS11.jpg','good book'),('33','计算机组装',222,'计算机',2,'TS12.jpg','good book'),('34','网管员宝典高级',22,'外语',43,'TS13.jpg','good book'),('35','Linux',22,'计算机',33,'TS14.jpg','good book'),('4','谁动了我的奶酪',88,'文学',77,'104.jpg','good book'),('5','培育男孩',33,'生活',39,'105.jpg','good book'),('6','别做正常的傻瓜',88,'文学',88,'106.jpg','good book'),('7','学会宽容',44,'励志',87,'107.jpg','good book'),('8','大勇和小花的欧洲日记',213,'励志',87,'bookcover.jpg','good book'),('9','code green',122,'计算机',123,'code.jpg','good book');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `activeCode` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `role` varchar(10) DEFAULT '普通用户',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`PASSWORD`,`gender`,`email`,`telephone`,`introduce`,`activeCode`,`state`,`role`,`registTime`) values (1,'tom','698d51a19d8a121ce581499d7b701668','男','363357098@qq.com','13813813812','111','0ae52e3a-1022-4e48-824c-8ad4dd63089c',1,'admin','2017-06-16 15:41:22'),(5,'taki','310dcbbf4cce62f762a2aaa148d556bd','男','363357098@qq.com','11111111111','333','0ae52e3a-1022-4e48-824c-8ad4dd63089c',1,'普通用户','2017-06-16 15:41:56'),(6,'miki','fae0b27c451c728867a567e8c1bb4e53','女','miki@qq.com','15555555554','jieying 666','8a0c377e-d407-407a-8197-e027e2de1ec5',1,'普通用户','2017-06-16 15:41:56'),(9,'jansen','f1c1592588411002af34','男','289345654@qq.com','44444444','good','b5317bca-3229-4f2f-b3ea-ee6ef28cfe12',0,'普通用户','2017-06-16 15:16:08'),(10,'jerry','b706835de79a2b4e80506f582af3676a','女','yzzsjc1234@163.com','13333333333','pretty girl','bac2a70b-0e5d-4ade-bab6-c4c3f701ac04',1,'普通用户','2017-06-16 15:40:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
