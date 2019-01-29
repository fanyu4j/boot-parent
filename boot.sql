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
)

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'fanyu', '30', '北京');
