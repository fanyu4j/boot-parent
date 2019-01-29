-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `money` DOUBLE ,
  `receiverAddress` VARCHAR(255) ,
  `receiverName` VARCHAR(20) ,
  `receiverPhone` VARCHAR(20) ,
  `paystate` INT(11) ,
  `ordertime` TIMESTAMP ,
  `user_id` INT(11) ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(40) ,
  `price` DOUBLE ,
  `category` VARCHAR(40) ,
  `pnum` INT(11) ,
  `imgurl` VARCHAR(100) ,
  `description` VARCHAR(255) ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE bookshop
(
  id                 bigint(20) NOT NULL AUTO_INCREMENT comment '图书ID',
  b_name               varchar(100) not null comment '图书名',
  b_cover              varchar(100) not null comment '封面图片（存储图片的文件路径）',
  b_introduction       varchar(1200) not null comment '图书简介',
  b_author             varchar(30) not null comment '作者',
  b_press              varchar(100) not null comment '出版社',
  b_type               int,
  b_pressTime          date not null comment '出版时间',
  b_price              decimal(10,2) not null comment '价格',
  b_save               int not null comment '库存',
  primary key (id)
)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE shopcar
(
  id  bigint(20) NOT NULL AUTO_INCREMENT ,
  u_id                 int not null comment '用户ID',
  b_id                 int not null comment '图书ID',
  s_num                int not null comment '购买数量',
  s_time               datetime not null comment '采购时间',
  primary key (id)
)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'fanyu', '30', '北京');
