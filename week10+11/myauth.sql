/*
Navicat MySQL Data Transfer

Source Server         : alibaba
Source Server Version : 50723
Source Host           : 47.93.30.98:3306
Source Database       : myauth

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-11-08 22:04:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'jackpassword', '2020-11-08 21:05:36.000000', '1', 'jack', 'jack', 'ma', 'jack@163.com', '1', '1', '2020-11-08 21:05:52.000000');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$150000$kgVj27p36sbX$Fz0KWeHx8zUWSxoPTSc/3XgHN/oCz+XuJtYFfRc0RjM=', '2020-11-08 13:58:39.637857', '1', 'blues', '', '', 'blues@163.com', '1', '1', '2020-11-08 13:11:29.932568');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `film_name` varchar(255) DEFAULT NULL COMMENT '电影名称',
  `content` varchar(2000) DEFAULT NULL COMMENT '评论',
  `star` int(4) DEFAULT NULL COMMENT '星级',
  `comment_date` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COMMENT='豆瓣评论';

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '沉默的真相', '非得把事情闹大了，才能被重视。江阳这一辈子啊～', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('2', '沉默的真相', '前两集有些太粗糙了…演员的演技差，口型和配音错位。不过整体来看，故事很有意思。然而某播放台吃相太难看了，剧中强行插入的广告数不胜数，降低了看剧的投入度。恰了那么多的饭，灯光还是暗到看不见，制作也不算精良。唯一动人的就是江阳和朱伟十年如一日对真理的追寻。当然，更动人的是现实生活中真的报道过警察当送水工蛰伏数十年抓捕罪犯的故事。不知道编剧是不是受到该案的启发？ 长夜难明，但也终将明。致敬为追寻正义和真理苦苦追寻的幕后英雄。', '4', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('3', '沉默的真相', '不知道怎么说，我没看完。但是每当看到那些狗x 广告强硬植入就瞬时让我出戏，说真的，我不想吃苍蝇了。', '3', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('4', '沉默的真相', '今年看过的最好的剧，截止目前', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('5', '沉默的真相', '最后到底捧了个臭脚', '4', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('6', '沉默的真相', '个人感觉这部比坏小孩难拍，但完成度完全不输隐秘的角落，甚至更好（不敢相信居然还是老妈安利我的', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('7', '沉默的真相', '江阳真的是光一样的存在啊', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('8', '沉默的真相', '绝对值得十分，虽然有些情节在程序上错误的很离谱，但是瑕不掩瑜，这么拍更有戏剧效果，good', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('9', '沉默的真相', '最后几集看得好抑郁啊！好想哭！江阳真的是一道光！他嫉恶如仇，但是他又很温柔。面对黑暗恶势力，正义显得很苍白无力。但是“哪有什么岁月静好，只不过有人替你负罪前行”，现实中有多少能像江阳这样坚持正义的英雄。结局很现实，选择扩大影响力，引起社会巨大反响的行为还是得正义的人买单，他们都没有错，他们都选择了正义。但现实就是很残酷，即使你没有伤人，但是散播谣言，引起社会巨大反响就要负上法律责任坐牢。为什么他们不能减刑？为什么受害者受到如此残酷的对待？为什么正义者最终要付出自己的一生，家人、亲情甚至是性命。正义真的很难，这就是现实。敬佩像江阳，朱伟一样的英雄，他们的存在就是阳春白雪，就是一束照亮长夜的光，给黑暗中恐惧发抖的人带来希望。respect正义！', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('10', '沉默的真相', '“我们一路向前，不是为了改变世界，而是为了不被世界改变”', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('11', '沉默的真相', '非常棒', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('12', '沉默的真相', '和十年前看的电视剧的感觉一样。。。怎么的？一个近视了三百度的人不戴眼镜都找不到地铁站的口？？', '1', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('13', '沉默的真相', '很感动', '1', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('14', '沉默的真相', '一个财迷心窍，一个精虫上脑', '4', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('15', '沉默的真相', '剧情铺陈和节奏掌控不好，时间线之间的切换过于频繁，导致氛围感被破坏，演员也不出彩，整体观感更像一部中规中矩的八点档主旋律。但结尾的审判场面紧接着一个表彰段落，又隐隐觉得是高级黑。', '3', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('16', '沉默的真相', '永远敬佩那些深陷黑暗但依旧保持正义，勇敢，善良的人。', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('17', '沉默的真相', '《东方快车谋杀案》+《大卫戈尔的一生》，转场很棒，演技也在线，可。', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('18', '沉默的真相', '江阳他人又高又帅，是县里检察院唯一一个研究生', '4', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('19', '沉默的真相', '8.6', '4', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('20', '沉默的真相', '结局太难受了 271广告好多老是跳戏 看完好想吃火锅 虽然我哭到打嗝', '4', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('21', '沉默的真相', '好好的检察官，被社会给糟蹋了', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('22', '沉默的真相', '真好 影帝有电视剧了', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('23', '沉默的真相', '看到最后真的泪崩为啥最后老陈他们几个都坐了那么多年牢，江阳到死也没获得表彰，看见严良他们表彰心里真的有点不平衡…', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('24', '沉默的真相', '三星半。白宇演技拖后腿，摄影技术太稚嫩。', '3', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('25', '沉默的真相', '制作精良，值得表扬！ 可是，不太满意结局，三兄弟均不得善终，两个坐牢一个惨死了都没得到平反！ 实在是看得难受~~', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('26', '沉默的真相', '从故事性，悬疑的角度说，有很多逻辑不清的地方，好的地方是这几个人的真诚、勇敢、友谊。', '3', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('27', '沉默的真相', '原著本身已经很优秀，演员也很不错，只是看的时候总替演员捏把汗，为了证明演技有点用力过度，很难带入剧情当中去。', '3', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('28', '沉默的真相', '想打50颗星星！！！！！震撼无以言表！！！！！！', '5', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('29', '沉默的真相', '对于看高质剧够多的人来说，三集以后就已经没有了悬疑了，拍摄技法也算不上高超，最终胜在演员水平到位，总之是好的方向。感觉白宇是在这个剧里学到了不少东西的，后半程情感愈发自然到位，将来值得期待', '3', '2020-09-28 00:25:02');
INSERT INTO `comment` VALUES ('30', '沉默的真相', '感觉还欠点东西。都太明显了，不够有悬念。', '4', '2020-09-28 00:25:02');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-11-08 12:31:22.950241');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2020-11-08 12:31:23.432865');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2020-11-08 12:31:24.151459');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2020-11-08 12:31:24.301613');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2020-11-08 12:31:24.327852');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2020-11-08 12:31:24.478757');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2020-11-08 12:31:24.559858');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2020-11-08 12:31:24.602116');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2020-11-08 12:31:24.630119');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2020-11-08 12:31:24.737615');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2020-11-08 12:31:24.758542');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2020-11-08 12:31:24.788059');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2020-11-08 12:31:24.869682');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2020-11-08 12:31:24.953600');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2020-11-08 12:31:25.007799');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2020-11-08 12:31:25.064057');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2020-11-08 12:31:25.142251');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('mfo5032s4hp3j717dig1ino5sru7gmvb', 'NWIwZTM3NjZhYTg5ZWVlMmFmNDAxYjZhN2JlYzM3Y2EwZmM2YjkzNDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZDA0ZGRhMzVhMzI0Y2RhZmZmNzcyZDhkMTc5ZDQ2NmJiMTgyN2I4In0=', '2020-11-22 13:58:39.656857');
