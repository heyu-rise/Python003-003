/*
Navicat MySQL Data Transfer

Source Server         : alibaba
Source Server Version : 50723
Source Host           : 47.93.30.98:3306
Source Database       : smzdm

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-11-16 01:51:08
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `auth_permission` VALUES ('25', 'Can add crontab', '7', 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES ('26', 'Can change crontab', '7', 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete crontab', '7', 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES ('28', 'Can view crontab', '7', 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES ('29', 'Can add interval', '8', 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES ('30', 'Can change interval', '8', 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete interval', '8', 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES ('32', 'Can view interval', '8', 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES ('33', 'Can add periodic task', '9', 'add_periodictask');
INSERT INTO `auth_permission` VALUES ('34', 'Can change periodic task', '9', 'change_periodictask');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete periodic task', '9', 'delete_periodictask');
INSERT INTO `auth_permission` VALUES ('36', 'Can view periodic task', '9', 'view_periodictask');
INSERT INTO `auth_permission` VALUES ('37', 'Can add periodic tasks', '10', 'add_periodictasks');
INSERT INTO `auth_permission` VALUES ('38', 'Can change periodic tasks', '10', 'change_periodictasks');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete periodic tasks', '10', 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES ('40', 'Can view periodic tasks', '10', 'view_periodictasks');
INSERT INTO `auth_permission` VALUES ('41', 'Can add task state', '11', 'add_taskmeta');
INSERT INTO `auth_permission` VALUES ('42', 'Can change task state', '11', 'change_taskmeta');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete task state', '11', 'delete_taskmeta');
INSERT INTO `auth_permission` VALUES ('44', 'Can view task state', '11', 'view_taskmeta');
INSERT INTO `auth_permission` VALUES ('45', 'Can add saved group result', '12', 'add_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('46', 'Can change saved group result', '12', 'change_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete saved group result', '12', 'delete_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('48', 'Can view saved group result', '12', 'view_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('49', 'Can add task', '13', 'add_taskstate');
INSERT INTO `auth_permission` VALUES ('50', 'Can change task', '13', 'change_taskstate');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete task', '13', 'delete_taskstate');
INSERT INTO `auth_permission` VALUES ('52', 'Can view task', '13', 'view_taskstate');
INSERT INTO `auth_permission` VALUES ('53', 'Can add worker', '14', 'add_workerstate');
INSERT INTO `auth_permission` VALUES ('54', 'Can change worker', '14', 'change_workerstate');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete worker', '14', 'delete_workerstate');
INSERT INTO `auth_permission` VALUES ('56', 'Can view worker', '14', 'view_workerstate');

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
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$150000$FsXEtl9u2yeg$RCsQRYKAIKcnHOR1gY2KzSZul/fOrdFxDLq6TM+vv7A=', '2020-11-15 16:19:46.577924', '1', 'heyu', '', '', 'heyu@163.com', '1', '1', '2020-11-15 16:18:58.629580');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$150000$p0IzLiw4p78u$wosX28pfpjIJcdWHB1YUEJN/hSyUa4CEV9KCGiT1LZI=', '2020-11-15 17:30:04.932608', '1', 'root', '', '', 'root@163.com', '1', '1', '2020-11-15 17:21:07.284363');

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
-- Table structure for celery_taskmeta
-- ----------------------------
DROP TABLE IF EXISTS `celery_taskmeta`;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_hidden_23fd02dc` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of celery_taskmeta
-- ----------------------------

-- ----------------------------
-- Table structure for celery_tasksetmeta
-- ----------------------------
DROP TABLE IF EXISTS `celery_tasksetmeta`;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_hidden_593cfc24` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of celery_tasksetmeta
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2020-11-15 16:20:05.642630', '2', '0 23 * * * (m/h/d/dM/MY)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2020-11-15 16:20:08.986992', '3', '* * * * * (m/h/d/dM/MY)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2020-11-15 16:20:11.089688', '4', '* * * * * (m/h/d/dM/MY)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2020-11-15 16:20:22.359009', '4', '* * * * * (m/h/d/dM/MY)', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2020-11-15 16:20:22.367505', '3', '* * * * * (m/h/d/dM/MY)', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2020-11-15 16:20:22.376502', '1', '0 4 * * * (m/h/d/dM/MY)', '3', '', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2020-11-15 16:21:06.332192', '5', '1 * * * * (m/h/d/dM/MY)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2020-11-15 16:23:27.986390', '2', 'test2: 1 * * * * (m/h/d/dM/MY)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2020-11-15 16:26:58.934825', '6', '*/1 * * * * (m/h/d/dM/MY)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2020-11-15 16:27:01.379388', '2', 'test2: */1 * * * * (m/h/d/dM/MY)', '2', '[{\"changed\": {\"fields\": [\"crontab\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2020-11-15 16:28:44.345400', '2', 'test2: */1 * * * * (m/h/d/dM/MY)', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2020-11-15 17:30:47.121203', '3', 'scrapy: 0 23 * * * (m/h/d/dM/MY)', '1', '[{\"added\": {}}]', '9', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'djcelery', 'crontabschedule');
INSERT INTO `django_content_type` VALUES ('8', 'djcelery', 'intervalschedule');
INSERT INTO `django_content_type` VALUES ('9', 'djcelery', 'periodictask');
INSERT INTO `django_content_type` VALUES ('10', 'djcelery', 'periodictasks');
INSERT INTO `django_content_type` VALUES ('11', 'djcelery', 'taskmeta');
INSERT INTO `django_content_type` VALUES ('12', 'djcelery', 'tasksetmeta');
INSERT INTO `django_content_type` VALUES ('13', 'djcelery', 'taskstate');
INSERT INTO `django_content_type` VALUES ('14', 'djcelery', 'workerstate');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-11-15 16:03:08.032306');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2020-11-15 16:03:08.734296');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2020-11-15 16:03:09.519342');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2020-11-15 16:03:09.671988');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2020-11-15 16:03:09.695416');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2020-11-15 16:03:09.852315');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2020-11-15 16:03:09.936087');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2020-11-15 16:03:09.997833');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2020-11-15 16:03:10.024169');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2020-11-15 16:03:10.109714');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2020-11-15 16:03:10.130386');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2020-11-15 16:03:10.159595');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2020-11-15 16:03:10.235038');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2020-11-15 16:03:10.322120');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2020-11-15 16:03:10.363753');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2020-11-15 16:03:10.415036');
INSERT INTO `django_migrations` VALUES ('17', 'djcelery', '0001_initial', '2020-11-15 16:03:11.315730');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2020-11-15 16:03:11.763163');

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
INSERT INTO `django_session` VALUES ('2ruyhq7phgvc57qw0afdddeuhviq9n2c', 'YjE1MTk3NzkyNjMwOGVmYjg2ZjVlNWFkMGVkODE4YmM1NzdiNzk2Yjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMjM5ZGRlZDY0MjhlMTg1NTZmODU5ODQ5N2EwMzk5YjQ5Nzk1OTk3In0=', '2020-11-29 17:30:04.945609');

-- ----------------------------
-- Table structure for djcelery_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_crontabschedule`;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of djcelery_crontabschedule
-- ----------------------------
INSERT INTO `djcelery_crontabschedule` VALUES ('2', '0', '23', '*', '*', '*');
INSERT INTO `djcelery_crontabschedule` VALUES ('5', '1', '*', '*', '*', '*');
INSERT INTO `djcelery_crontabschedule` VALUES ('6', '*/1', '*', '*', '*', '*');

-- ----------------------------
-- Table structure for djcelery_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_intervalschedule`;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of djcelery_intervalschedule
-- ----------------------------

-- ----------------------------
-- Table structure for djcelery_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictask`;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` (`crontab_id`),
  KEY `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` (`interval_id`),
  CONSTRAINT `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`),
  CONSTRAINT `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of djcelery_periodictask
-- ----------------------------
INSERT INTO `djcelery_periodictask` VALUES ('3', 'scrapy', 'djcron.tasks.run_scrapy', '[]', '{}', null, null, null, null, '1', null, '0', '2020-11-15 17:30:47.107017', '', '2', null);

-- ----------------------------
-- Table structure for djcelery_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictasks`;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of djcelery_periodictasks
-- ----------------------------
INSERT INTO `djcelery_periodictasks` VALUES ('1', '2020-11-15 17:30:47.091099');

-- ----------------------------
-- Table structure for djcelery_taskstate
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_taskstate`;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime(6) NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime(6) DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_state_53543be4` (`state`),
  KEY `djcelery_taskstate_name_8af9eded` (`name`),
  KEY `djcelery_taskstate_tstamp_4c3f93a1` (`tstamp`),
  KEY `djcelery_taskstate_hidden_c3905e57` (`hidden`),
  KEY `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` (`worker_id`),
  CONSTRAINT `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of djcelery_taskstate
-- ----------------------------

-- ----------------------------
-- Table structure for djcelery_workerstate
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_workerstate`;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_last_heartbeat_4539b544` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of djcelery_workerstate
-- ----------------------------

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `desc` varchar(2000) DEFAULT NULL COMMENT '描述',
  `favorable_rate` varchar(50) DEFAULT NULL COMMENT '好评率',
  `top_word` varchar(2000) DEFAULT NULL COMMENT '10个最长出现的词汇',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('27061666', '\n                17日10:08、88VIP：                                HUAWEI 华为 Mate 40 RS 保时捷设计 5G智能手机 12GB 256GB             ', '保时捷设计麒麟9000芯片，超感知徕卡电影五摄。', '40.00%', '[(\'用户\', 1.0), (\'美国\', 0.7298599715501557), (\'认为\', 0.6948586896625631), (\'手机\', 0.6288527195870591), (\'劳动\', 0.5605606064261549)]');
INSERT INTO `good` VALUES ('27063637', '\n                                微信多开神机 小辣椒 K30 6GB+128GB 5000mAh大电池 后置三摄 6.53英寸水滴屏 微信8开 全网通5G 双卡双待             ', '无', '43.16%', '[(\'小米\', 1.0), (\'价格\', 0.8058049850686902), (\'手机\', 0.7762201331442843), (\'微信\', 0.7752205167834013), (\'用户\', 0.7283275857540398)]');
INSERT INTO `good` VALUES ('27064588', '\n                北京消费券：                                SAMSUNG 三星 Galaxy Note20 Ultra 5G智能手机 12GB+256GB             ', 'SPen升级、120Hz屏幕。', '35.56%', '[(\'耳机\', 1.0), (\'手机\', 0.8984817361892586), (\'北京\', 0.6175823035525224), (\'上海\', 0.5658796424718723), (\'叠加\', 0.5085232261552761)]');
INSERT INTO `good` VALUES ('27069764', '\n                限地区：                                SAMSUNG 三星 Galaxy S20 智能手机 12GB 128GB             ', '骁龙865，120Hz超感屏。', '37.99%', '[(\'价格\', 1.0), (\'没有\', 0.8516097534037034), (\'地区\', 0.839042800649688), (\'不了\', 0.8094702021649924), (\'北京\', 0.5840450525151386)]');
INSERT INTO `good` VALUES ('27071891', '\n                                K-TOUCH 天语 智能手机 6GB 128GB 夜华黑             ', '无', '44.74%', '[(\'手机\', 1.0), (\'用户\', 0.6835586285388365), (\'牌子\', 0.5954529213796257), (\'记得\', 0.565921209979815), (\'认为\', 0.5062818379409025)]');
INSERT INTO `good` VALUES ('27073838', '\n                                HUAWEI 华为 P40 Pro+ 5G智能手机 8GB+512GB             ', '无', '38.46%', '[(\'用户\', 1.0), (\'价格\', 0.5637811126370851), (\'认为\', 0.5081152560989255), (\'太值\', 0.3621386404701103), (\'冲冲\', 0.25840659327904936)]');
INSERT INTO `good` VALUES ('27077361', '\n                                锤子 坚果R1 6GB+128GB 全网通版 壳膜套餐             ', '无', '53.21%', '[(\'用户\', 1.0), (\'锤子\', 0.9970724384259769), (\'认为\', 0.9193821491496847), (\'手机\', 0.843041964128364), (\'价格\', 0.721495544959169)]');
INSERT INTO `good` VALUES ('27080104', '\n                                HONOR 荣耀 9X Pro 智能手机 6GB+64GB             ', '无', '27.12%', '[(\'消息\', 1.0), (\'支持\', 0.88105686032338), (\'没有\', 0.8766382499842359), (\'备份\', 0.7990330248458716), (\'屏幕\', 0.7884504885379102)]');
INSERT INTO `good` VALUES ('27080631', '\n                                锤子 坚果pro2 特别版 6GB+64GB 全网通版 全面屏手机 标配             ', '无', '51.95%', '[(\'锤子\', 1.0), (\'认为\', 0.6938602017769946), (\'用户\', 0.6274946527246997), (\'库存\', 0.4610100258779574), (\'钥匙\', 0.4567407909010084)]');
INSERT INTO `good` VALUES ('27085327', '\n                                苹果（Apple）iPhone 11 128GB             ', '无', '53.33%', '[(\'抢到\', 1.0), (\'感谢\', 0.49619943836137287), (\'爆料\', 0.494140888715157), (\'用户\', 0.22266550279459543), (\'起来\', 0.17979014557268677)]');

-- ----------------------------
-- Table structure for good_comment
-- ----------------------------
DROP TABLE IF EXISTS `good_comment`;
CREATE TABLE `good_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL COMMENT '商品id',
  `comment` varchar(2000) DEFAULT NULL COMMENT '评论',
  `positive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否好评',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3666 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of good_comment
-- ----------------------------
INSERT INTO `good_comment` VALUES ('2610', '27073838', '这个就是原价呀', '1', '2020-11-16 00:25:58');
INSERT INTO `good_comment` VALUES ('2611', '27073838', '此用户认为【8888元】价格值', '1', '2020-11-16 00:25:58');
INSERT INTO `good_comment` VALUES ('2612', '27073838', '88888才符合这手机的身份', '1', '2020-11-16 00:25:58');
INSERT INTO `good_comment` VALUES ('2613', '27073838', '我现在用的p40pro+ 8+512g回复，大家有没有觉得不一样', '1', '2020-11-16 00:25:58');
INSERT INTO `good_comment` VALUES ('2614', '27073838', '12G或16G运存很难么？', '1', '2020-11-15 23:25:58');
INSERT INTO `good_comment` VALUES ('2615', '27073838', '怎么也得8848才买', '1', '2020-11-15 23:25:58');
INSERT INTO `good_comment` VALUES ('2616', '27073838', '我一看以为是m40p+，想着狗东发善心竟然降价了而且还有免息，差点就冲冲冲……', '1', '2020-11-15 23:25:58');
INSERT INTO `good_comment` VALUES ('2617', '27073838', '这个是512g的', '1', '2020-11-15 23:25:58');
INSERT INTO `good_comment` VALUES ('2618', '27073838', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 23:25:58');
INSERT INTO `good_comment` VALUES ('2619', '27073838', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 23:25:58');
INSERT INTO `good_comment` VALUES ('2620', '27073838', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 22:25:58');
INSERT INTO `good_comment` VALUES ('2621', '27073838', '这价格也推，是黑华为的吗？', '1', '2020-11-15 22:25:58');
INSERT INTO `good_comment` VALUES ('2622', '27073838', '我虽然不是华为的黑子', '1', '2020-11-15 22:25:58');
INSERT INTO `good_comment` VALUES ('2623', '27073838', '太值了，赶紧人手一个啊', '1', '2020-11-15 22:25:58');
INSERT INTO `good_comment` VALUES ('2624', '27073838', '此用户认为【8888元】价格值', '1', '2020-11-15 22:25:58');
INSERT INTO `good_comment` VALUES ('2625', '27073838', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 21:25:58');
INSERT INTO `good_comment` VALUES ('2626', '27073838', '此用户认为【8888元】价格值', '1', '2020-11-15 21:25:58');
INSERT INTO `good_comment` VALUES ('2627', '27073838', '这个价格好，千万别降价，年终必大火', '0', '2020-11-15 21:25:58');
INSERT INTO `good_comment` VALUES ('2628', '27073838', '京东自营也是6400多吧', '1', '2020-11-15 20:25:58');
INSERT INTO `good_comment` VALUES ('2629', '27073838', '冲冲冲冲冲', '1', '2020-11-15 20:25:58');
INSERT INTO `good_comment` VALUES ('2630', '27073838', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 20:25:58');
INSERT INTO `good_comment` VALUES ('2631', '27073838', '这价格我爱不起啊', '0', '2020-11-15 20:25:58');
INSERT INTO `good_comment` VALUES ('2632', '27073838', '楼上多多6000这是哪里来的勇气？。。。', '0', '2020-11-15 20:25:58');
INSERT INTO `good_comment` VALUES ('2633', '27073838', '太便宜了 我忍不住入手了', '0', '2020-11-15 19:25:58');
INSERT INTO `good_comment` VALUES ('2634', '27073838', '有货就快上吧，线下都没货', '1', '2020-11-15 19:25:58');
INSERT INTO `good_comment` VALUES ('2635', '27073838', '好吉利的数字，留个念！', '0', '2020-11-15 19:25:58');
INSERT INTO `good_comment` VALUES ('2636', '27073838', '此用户认为【8888元】价格值', '1', '2020-11-15 19:25:58');
INSERT INTO `good_comment` VALUES ('2637', '27073838', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 19:25:58');
INSERT INTO `good_comment` VALUES ('2638', '27073838', '此用户认为【8888元】价格值', '1', '2020-11-15 19:25:58');
INSERT INTO `good_comment` VALUES ('2639', '27073838', '无', '0', '2020-11-15 19:25:58');
INSERT INTO `good_comment` VALUES ('2640', '27073838', '什么价格都敢发了', '0', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2641', '27073838', '我很佩服华为。。。。。。', '0', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2642', '27073838', '这价推是来黑华为的吧，11.11 pro+拼爹爹只要6000+', '0', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2643', '27073838', '传家宝，赶紧买了吧。', '0', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2644', '27073838', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2645', '27073838', '此用户认为【8888元】价格值', '1', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2646', '27073838', '国货之光，支持华为，兄弟们赶紧上，尽量家里人手一台。本人家境贫寒，准备卖房进货了', '1', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2647', '27073838', '此用户认为【8888元】价格值', '1', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2648', '27073838', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 18:26:37');
INSERT INTO `good_comment` VALUES ('2649', '27073838', '这价格能不能就别推了呀', '1', '2020-11-15 17:26:37');
INSERT INTO `good_comment` VALUES ('2650', '27080104', '买给父母用够吗，农村，基本用不上5G', '0', '2020-11-16 01:25:02');
INSERT INTO `good_comment` VALUES ('2651', '27080104', '去年双十一好像是不带pro的464这个价', '1', '2020-11-16 01:24:02');
INSERT INTO `good_comment` VALUES ('2652', '27080104', '这种过时手机，六百块我就买一个当老人机', '1', '2020-11-16 01:05:02');
INSERT INTO `good_comment` VALUES ('2653', '27080104', '去年双11就是这玩意这价吧，感觉穿越了', '1', '2020-11-16 00:36:02');
INSERT INTO `good_comment` VALUES ('2654', '27080104', '还有砍单，所以一直卖不完。有了人气，挂其他高价的，可以割韭菜了。', '1', '2020-11-16 00:32:02');
INSERT INTO `good_comment` VALUES ('2655', '27080104', '因为前几天便宜所以。。。', '0', '2020-11-16 00:26:02');
INSERT INTO `good_comment` VALUES ('2656', '27080104', '这个是市面上最差屏幕了吧。。  虽说lcd  但是这档次的高蓝光更伤眼，  市场上最低亮度的屏幕。', '0', '2020-11-16 00:26:02');
INSERT INTO `good_comment` VALUES ('2657', '27080104', '我怎么感觉穿越到了去年双11？有pro没pro有什么区别', '1', '2020-11-16 00:26:02');
INSERT INTO `good_comment` VALUES ('2658', '27080104', '贵了几十块嘛', '1', '2020-11-16 00:26:02');
INSERT INTO `good_comment` VALUES ('2659', '27080104', '我来说一句，今天发布的消息说这款手机支持，华为马上要发布的鸿蒙系统', '1', '2020-11-16 00:26:02');
INSERT INTO `good_comment` VALUES ('2660', '27080104', '砍单，我被砍了3次', '1', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2661', '27080104', '此用户认为【HONOR 荣耀 9...】性价比高', '0', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2662', '27080104', '砍多多   哈哈哈', '0', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2663', '27080104', '这家店有问题 翻新', '1', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2664', '27080104', '过几天应该会更新保修时间的', '1', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2665', '27080104', '去年双11没pro 就着价，', '1', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2666', '27080104', '非常好没有砍单，话说从来没有在拼多多买东西被砍单，包括身边的人也没有遇到过被砍单。不明白那么多被砍单的都是什么原因。这个机器非常好，到手是原封，电池耐用，使用几天以后激活日期就正常了。6月生产的。蛮好。810够用了。屏幕也不错。值', '1', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2667', '27080104', '挺好，11.10上的959的车。已收货。没翻车', '1', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2668', '27080104', '被他家砍单四次，一次也没买到过', '1', '2020-11-15 23:26:02');
INSERT INTO `good_comment` VALUES ('2669', '27080104', '此用户认为【HONOR 荣耀 9...】商品好', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2670', '27080104', '我用了90hz以上发现有点回不去了 手持k30Pro和iqoo z1', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2671', '27080104', '看见集电无脑不值就对了', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2672', '27080104', '嗯，965已买，6+64的。', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2673', '27080104', '二手店，点个值', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2674', '27080104', '现在软件不能安内存卡上？我记得从安卓2.2就可以', '0', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2675', '27080104', '对对对对对', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2676', '27080104', 'q2唯一让我下不了叉就是 对于过度依赖米家和儿童手表确实难以接纳 因为没有消息推送', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2677', '27080104', '不知道他什么神操作', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2678', '27080104', '充其量tf卡只能备份照片 关键是百度云APP不支持TF卡备份', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2679', '27080104', '也就摄像头好点……', '1', '2020-11-15 22:26:02');
INSERT INTO `good_comment` VALUES ('2680', '27080104', '也就摄像头好点……', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2681', '27080104', '感觉4g手机到现在该淘汰了，加100可以买个配置不差的5g手机了', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2682', '27080104', '那你点不值', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2683', '27080104', '说一句，续航神机', '0', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2684', '27080104', '1卢快充??', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2685', '27080104', '为啥 没研究过多多', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2686', '27080104', '发货地址有意思，头天买第二天早上就送到，原封，很好，我爸的去年首发买的，这一次买给我妈，很适合老人用，不卡很流畅。 前几天还便宜几十块。', '0', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2687', '27080104', '听说这家砍单频繁', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2688', '27080104', '这个“集电”店，见一次不值一次', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2689', '27080104', '799入个当备用机', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2690', '27080104', '前两天不是959么', '1', '2020-11-15 22:26:41');
INSERT INTO `good_comment` VALUES ('2691', '27080104', '前几天959都没上车，为什么要买999的，64实在不够用', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2692', '27080104', '还是这家店。', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2693', '27080104', 'realme q2多多1099 6+128', '0', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2694', '27080104', '又是恶臭的集电店，还贵了几十', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2695', '27080104', '这机器激活后你的服务里保修期是不是只到明年9月', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2696', '27080104', 'Q2是啥机器', '0', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2697', '27080104', '这是pro', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2698', '27080104', '不如上Q2', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2699', '27080104', '适合没有5G覆盖未来两年也不会有的地区', '0', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2700', '27080104', '又不能内存卡安软件', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2701', '27080104', '隔壁q2不吊打这货？', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2702', '27080104', '已经用上，全面屏强迫症首选，810老是老了点，但是真的挺给力，唯一遗憾是64比较鸡肋，要是128就香了，还有LCD，60的刷新率，不过老实说，我还真看不出来和那种1、200刷新率的有啥本质区别，也许?不敏感吧', '0', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2703', '27080104', '这个价一年多了吧？现在不如765G和820了啊', '0', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2704', '27080104', '据说这是支持tf的机子', '0', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2705', '27080104', '已经过时了，我建议加100上q2', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2706', '27080104', '双卡备用机挺合适的', '0', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2707', '27080104', '鸡肋，，，', '1', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2708', '27080104', '64不够用了', '0', '2020-11-15 21:26:41');
INSERT INTO `good_comment` VALUES ('2709', '27080631', '可以标9999，大胆点', '0', '2020-11-16 01:13:07');
INSERT INTO `good_comment` VALUES ('2710', '27080631', '连660都不是，上636？', '1', '2020-11-16 00:56:07');
INSERT INTO `good_comment` VALUES ('2711', '27080631', '小米8 845 550－650 不比这个香多了', '0', '2020-11-16 00:31:07');
INSERT INTO `good_comment` VALUES ('2712', '27080631', '超过499就不要推了', '1', '2020-11-16 00:30:07');
INSERT INTO `good_comment` VALUES ('2713', '27080631', '罗太君是怎么回事？', '0', '2020-11-16 00:26:07');
INSERT INTO `good_comment` VALUES ('2714', '27080631', '回光返照？？？？', '0', '2020-11-16 00:26:07');
INSERT INTO `good_comment` VALUES ('2715', '27080631', '过时的不要不要的了，还推最主要这价钱我也是醉了。', '0', '2020-11-16 00:26:07');
INSERT INTO `good_comment` VALUES ('2716', '27080631', '差点就信你了 看标题 特别版 636', '1', '2020-11-16 00:26:07');
INSERT INTO `good_comment` VALUES ('2717', '27080631', '599清库存可以，这个价还是继续库存吧', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2718', '27080631', '18年初花1450买的用了1年转手给上学的的妹妹用至今还在服役，我觉得我赚了。', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2719', '27080631', '特别版是636吧', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2720', '27080631', '此用户认为【锤子 坚果pro2 ...】商品好', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2721', '27080631', '此用户认为【锤子 坚果pro2 ...】性价比高', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2722', '27080631', '注意，是660', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2723', '27080631', '要交朋友也得降到660呀', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2724', '27080631', '我不是锤黑 ，但是用过两代坚果 一次半年 一次两个多月 ，它是真的差劲啊。无故掉电，手机发热厉害，系统卡顿，自带输入法（说是合作的，感觉跟智障一样）自己体会，摄像头画质渣，完全就不是一手机，还不如当年诺基亚', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2725', '27080631', '锤子滞销了，帮帮老罗吧', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2726', '27080631', '那是小米自己作死', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2727', '27080631', '老罗会记得你这个好朋友的……', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2728', '27080631', '此用户认为【1089元】价格值', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2729', '27080631', '当年一两年没关注数码新闻，pro2出来前一个月买了pro特别版，气晕了', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2730', '27080631', '买过3个Pro2的路过...', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2731', '27080631', '599还能买回来当个备用机，这价红米10x不起飞嘛', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2732', '27080631', '副机是这个，还能用，不过二手卖也就两三百了', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2733', '27080631', '这个可以有', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2734', '27080631', '这个鬼居然还在卖？', '1', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2735', '27080631', '小米max3就是折在636处理器上的', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2736', '27080631', '我记得当年pro2s好价是一千两百多？', '0', '2020-11-15 23:26:07');
INSERT INTO `good_comment` VALUES ('2737', '27080631', '终于有机会和罗老师交朋友了，实在是太高兴了！', '0', '2020-11-15 22:26:07');
INSERT INTO `good_comment` VALUES ('2738', '27080631', '此用户认为【1089元】价格值', '1', '2020-11-15 22:26:07');
INSERT INTO `good_comment` VALUES ('2739', '27080631', '骁龙636是什么年代出的？？', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2740', '27080631', '值，真值，今年不拆封明年卖2000', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2741', '27080631', '样子是真好看，处理器是真差', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2742', '27080631', '特别版？我的999买的2s 好歹710。。。。这啥情况。。？', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2743', '27080631', '再过一个半月就2021了', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2744', '27080631', '2年前1355买的，真保值', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2745', '27080631', '我一年前699京东下的单，我觉得我买的好值', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2746', '27080631', '此用户认为【锤子 坚果pro2 ...】商品好', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2747', '27080631', '情怀有何用？有这钱去洗浴中心它不香吗，反正我的Pro2s是刚过一年主板就烧了', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2748', '27080631', '库房钥匙找到了？', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2749', '27080631', '交朋友，799', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2750', '27080631', '500包邮解君愁', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2751', '27080631', '？？？帮我找找有没有库存的iphone4我愿意出20元购买', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2752', '27080631', '这分明是穿越了', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2753', '27080631', '89交个朋友', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2754', '27080631', '2年前 这个价就可以买', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2755', '27080631', '怎么还涨价了………我去年618买才花了900', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2756', '27080631', '家里有台白色，是真的漂亮', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2757', '27080631', '上古产品，zsbd', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2758', '27080631', '大清亡了……', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2759', '27080631', '刚淘汰，换了8t', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2760', '27080631', '唯品会仓库里到底还有多少，有没有T1', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2761', '27080631', 'pro2s还在用', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2762', '27080631', '手机，千万别再买了', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2763', '27080631', '1000这个价格还是不错的-3年前', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2764', '27080631', '660cpu手机二手还能卖400以上不', '1', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2765', '27080631', '这个手机过时这么久，还涨价了', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2766', '27080631', '这价格是清库存吗？这是买情怀！', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2767', '27080631', '什么时候pro3的库房钥匙找到了来个好价或许会支持下', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2768', '27080631', '高通636还在卖1000多，顶?', '0', '2020-11-15 22:26:45');
INSERT INTO `good_comment` VALUES ('2769', '27080631', '没有老罗的锤子还买个锤子', '1', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2770', '27080631', '开始轮到唯品会搞电子', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2771', '27080631', '599帮清理个库存', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2772', '27080631', '99交个朋友', '1', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2773', '27080631', '此用户认为【锤子 坚果pro2 ...】性价比高', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2774', '27080631', '库房钥匙找到了系列，哈哈哈', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2775', '27080631', '老罗这货怎么不带这货', '1', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2776', '27080631', '550的二手6+128都用了一年了', '1', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2777', '27080631', 'PRO2真的不够用了，还不如隔壁9x呢', '1', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2778', '27080631', '过时了，去年上半年的产品了。', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2779', '27080631', '2020了cpu还顶？', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2780', '27080631', '买个锤，，子', '1', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2781', '27080631', '不重要你卖个锤子', '1', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2782', '27080631', '库存还没有清完？紫薯布丁', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2783', '27080631', '此用户认为【锤子 坚果pro2 ...】性价比高', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2784', '27080631', '没人交朋友，自从老罗走了以后，连评论都是无人问津。当年好歹黑红两道口诛笔伐好不热闹。', '0', '2020-11-15 22:27:16');
INSERT INTO `good_comment` VALUES ('2785', '27080631', '2020年了', '0', '2020-11-15 21:27:16');
INSERT INTO `good_comment` VALUES ('2786', '27071891', '应该是打消', '1', '2020-11-16 00:26:15');
INSERT INTO `good_comment` VALUES ('2787', '27071891', '应该是大笑吧', '0', '2020-11-16 00:26:15');
INSERT INTO `good_comment` VALUES ('2788', '27071891', '天宇w621', '1', '2020-11-16 00:26:15');
INSERT INTO `good_comment` VALUES ('2789', '27071891', 'W806，我清晰的记得这个型号，刷机无数次，信号太', '1', '2020-11-16 00:26:15');
INSERT INTO `good_comment` VALUES ('2790', '27071891', '分辨率多少？？？？', '1', '2020-11-16 00:26:15');
INSERT INTO `good_comment` VALUES ('2791', '27071891', '我的小黄蜂到现在还没用过。。。', '1', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2792', '27071891', '还是个弹出式摄像头', '1', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2793', '27071891', '国家收购了', '0', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2794', '27071891', '一直都有卖啊，你没关注而已', '0', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2795', '27071891', '大小改成发现', '1', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2796', '27071891', '曾经的天语就是性价比最真实的代表，比现在的小米实在多了，天语的伸缩摄像头手机可以看做手机和相机的初级结合，如果它当时能像小米一样做营销早就火了', '0', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2797', '27071891', '哈哈哈，顶你上去', '0', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2798', '27071891', '这个牌子品控不如其它几个国产大品牌的手机，拆机内部看到做工粗糙 ，用料相比其他大牌手机要差一些，毕竟一分钱一分货，589能买到6+128GB，5000毫安大电池的手机，期望值不能大高了，能用就行了。', '0', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2799', '27071891', '环保处理应该倒贴钱', '1', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2800', '27071891', '此用户认为【K-TOUCH 天语...】性价比高', '0', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2801', '27071891', '我也买的大黄蜂，然后刷了一个论坛比赛的包，陪伴我度过了两三年', '0', '2020-11-15 23:26:15');
INSERT INTO `good_comment` VALUES ('2802', '27071891', '天语这牌子居然还活着？', '1', '2020-11-15 22:26:15');
INSERT INTO `good_comment` VALUES ('2803', '27071891', '回想十年前上大学的时候，没有抖音没有各种小视频，宿舍里用天语手机看电视，简直太幸福了', '0', '2020-11-15 22:26:15');
INSERT INTO `good_comment` VALUES ('2804', '27071891', '肯定不如红米。。。万一挂了去哪修都是个问题', '1', '2020-11-15 22:26:15');
INSERT INTO `good_comment` VALUES ('2805', '27071891', '。。。。。', '1', '2020-11-15 22:26:15');
INSERT INTO `good_comment` VALUES ('2806', '27071891', '爷青回。紫薯', '1', '2020-11-15 22:26:15');
INSERT INTO `good_comment` VALUES ('2807', '27071891', '重新组织一下你的语言，读的我尴尬症都犯了', '0', '2020-11-15 22:26:15');
INSERT INTO `good_comment` VALUES ('2808', '27071891', '这个打王者荣耀卡吗？不卡我不要', '0', '2020-11-15 22:26:15');
INSERT INTO `good_comment` VALUES ('2809', '27071891', '此用户认为【589元】价格值', '1', '2020-11-15 22:26:15');
INSERT INTO `good_comment` VALUES ('2810', '27071891', '山寨机的好牌子？', '1', '2020-11-15 21:26:15');
INSERT INTO `good_comment` VALUES ('2811', '27071891', 'mtk老祖。。复活了。。', '0', '2020-11-15 21:26:15');
INSERT INTO `good_comment` VALUES ('2812', '27071891', '，别买', '0', '2020-11-15 21:26:15');
INSERT INTO `good_comment` VALUES ('2813', '27071891', '我? 这牌子还活着吗', '0', '2020-11-15 21:26:15');
INSERT INTO `good_comment` VALUES ('2814', '27071891', '此用户认为【K-TOUCH 天语...】性价比高', '0', '2020-11-15 21:26:15');
INSERT INTO `good_comment` VALUES ('2815', '27071891', '不如加点钱买小米了', '1', '2020-11-15 21:26:15');
INSERT INTO `good_comment` VALUES ('2816', '27071891', '都不行 手机都卡卡卡', '1', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2817', '27071891', '刷个米柚它不香么？', '1', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2818', '27071891', '此用户认为【K-TOUCH 天语...】性价比高', '0', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2819', '27071891', '好有情怀的机子', '0', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2820', '27071891', '此用户认为【K-TOUCH 天语...】性价比高', '0', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2821', '27071891', '此用户认为【589元】价格值', '1', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2822', '27071891', '那你看最近iphone8的爆料，还要卖将近四千呢，总有上当的不是', '1', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2823', '27071891', '华强北买个牌子自己做', '0', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2824', '27071891', '这是把牌子卖给别人了吧', '1', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2825', '27071891', '我去，这牌子7-8年以前开电信卡老送', '1', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2826', '27071891', '这牌子还活着啊', '0', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2827', '27071891', '这个牌子被华强北某商家买去了吧？', '1', '2020-11-15 20:26:53');
INSERT INTO `good_comment` VALUES ('2828', '27071891', '怀旧传奇品牌，必须点值。', '0', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2829', '27071891', '天语还活着？即便是复活，又有啥意义？', '0', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2830', '27071891', '同京东追评劝退', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2831', '27071891', '做工，设计，还有参数体现不出的用料区别', '0', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2832', '27071891', '看了几个评论好搞笑，3天坏的客服说摔的不保修，到手屏幕还能掉下来的，而且普遍性掉屏幕，这是啥品控啊，比当年360还次', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2833', '27071891', '酷派.天语哪个好', '0', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2834', '27071891', '居然还活着？', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2835', '27071891', '此用户认为【589元】价格值', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2836', '27071891', '本来续航就不咋地，库存机就更不行了，想换电池还不好找', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2837', '27071891', '估计是把牌子卖了', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2838', '27071891', 'MTK  228g TF屏 一样都不能接受', '0', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2839', '27071891', '天语300都不要！用的最', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2840', '27071891', '6+128看见的最低价了。。', '0', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2841', '27071891', '竟然还是真全面屏', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2842', '27071891', '我记得当时代言是  志玲   每天路过手机店就是志玲的声音', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2843', '27071891', '毕竟是水机', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2844', '27071891', '此用户认为【589元】价格值', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2845', '27071891', '这居然还是升降？', '1', '2020-11-15 19:26:53');
INSERT INTO `good_comment` VALUES ('2846', '27071891', '最近好多老牌子都复活了。是不是有企业收购了再最低端试水？', '1', '2020-11-15 19:27:23');
INSERT INTO `good_comment` VALUES ('2847', '27071891', '谁能给我解解惑…从参数看有的2000多的机子跟4000多的机子基本差不多…甚至某些配置还更好…为啥差价能差这么多…', '1', '2020-11-15 19:27:23');
INSERT INTO `good_comment` VALUES ('2848', '27071891', '天语不是倒闭了吗？买过几个天语，很喜欢', '0', '2020-11-15 19:27:23');
INSERT INTO `good_comment` VALUES ('2849', '27071891', '此用户认为【K-TOUCH 天语...】性价比高', '0', '2020-11-15 19:27:23');
INSERT INTO `good_comment` VALUES ('2850', '27071891', '我记得当年塞班时代的时候。有这个牌子的手机好多好多年了', '0', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2851', '27071891', '现在竟然还有这个牌子？', '1', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2852', '27071891', '居然还活着', '1', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2853', '27071891', '京东追评劝退', '1', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2854', '27071891', 'lg g7不香吗', '1', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2855', '27071891', '好久没听说过了', '1', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2856', '27071891', '曾经买过天语大黄蜂', '0', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2857', '27071891', '诈尸了？又活了？', '0', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2858', '27071891', '处理器差点，否则想买个当备用机', '1', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2859', '27071891', '天语还在做呢', '0', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2860', '27071891', '记得我的第一部智能机是天语U1', '0', '2020-11-15 18:27:23');
INSERT INTO `good_comment` VALUES ('2861', '27071891', '拿到你们就会大小这个和华为荣耀2千多的手机一模一样', '0', '2020-11-15 17:27:23');
INSERT INTO `good_comment` VALUES ('2862', '27085327', '半夜起来捡漏了，放了好多货，哈哈哈', '1', '2020-11-16 01:24:29');
INSERT INTO `good_comment` VALUES ('2863', '27085327', '这个是每斤的价格吗？有点贵了吧', '1', '2020-11-16 01:15:29');
INSERT INTO `good_comment` VALUES ('2864', '27085327', '猴楼live？', '1', '2020-11-16 01:12:29');
INSERT INTO `good_comment` VALUES ('2865', '27085327', '苏宁:聪明的人  跟着我的节奏  动起来  (耍猴）', '0', '2020-11-16 01:12:29');
INSERT INTO `good_comment` VALUES ('2866', '27085327', '草，你们太过分了，抢那么多干嘛？当黄牛吗？我只抢了八台', '1', '2020-11-16 01:11:29');
INSERT INTO `good_comment` VALUES ('2867', '27085327', '苏宁童叟无欺，我真的抢到了！！！用我爷爷的诺基亚1100+移动2G网络，抢不到的诸位，我要不客气的说在座的都是', '0', '2020-11-16 01:10:29');
INSERT INTO `good_comment` VALUES ('2868', '27085327', '无货宁，抢到都是内部人', '1', '2020-11-16 00:58:29');
INSERT INTO `good_comment` VALUES ('2869', '27085327', '啊，大家难道都跟我一样懂得了穿越之道？还以为就我一个人抢到了呢。', '0', '2020-11-16 00:54:29');
INSERT INTO `good_comment` VALUES ('2870', '27085327', '感谢 抢到两台', '0', '2020-11-16 00:51:29');
INSERT INTO `good_comment` VALUES ('2871', '27085327', '昨天家里又寄了点苹果，有人需要么？掏个运费就寄过去', '1', '2020-11-16 00:50:29');
INSERT INTO `good_comment` VALUES ('2872', '27085327', '这么多人抢到了？我错过了，这活动真实太值了，祝贺抢到的兄弟们！', '0', '2020-11-16 00:48:29');
INSERT INTO `good_comment` VALUES ('2873', '27085327', '家里苹果太多，让给你们了', '0', '2020-11-16 00:44:29');
INSERT INTO `good_comment` VALUES ('2874', '27085327', '用了无敌券，苏宁还退了我10.1，前面花钱买的数学怎么学的？', '0', '2020-11-16 00:44:29');
INSERT INTO `good_comment` VALUES ('2875', '27085327', '没兴趣，来瓶9.9的茅台', '1', '2020-11-16 00:40:29');
INSERT INTO `good_comment` VALUES ('2876', '27085327', '黑色啊，那就算了', '0', '2020-11-16 00:39:29');
INSERT INTO `good_comment` VALUES ('2877', '27085327', '此用户认为【9.9元】价格值', '1', '2020-11-16 00:35:29');
INSERT INTO `good_comment` VALUES ('2878', '27085327', '都让开！我没有糖尿病，我来尿，不会让他们吃到一点甜头', '1', '2020-11-16 00:31:29');
INSERT INTO `good_comment` VALUES ('2879', '27085327', '很好抢啊，两个号都抢到了', '0', '2020-11-16 00:30:29');
INSERT INTO `good_comment` VALUES ('2880', '27085327', '此用户认为【9.9元】价格值', '1', '2020-11-16 00:29:29');
INSERT INTO `good_comment` VALUES ('2881', '27085327', '怎么这么容易，一次下了五台', '1', '2020-11-16 00:28:29');
INSERT INTO `good_comment` VALUES ('2882', '27085327', '直不需要理由', '1', '2020-11-16 00:27:29');
INSERT INTO `good_comment` VALUES ('2883', '27085327', '我靠，感谢爆料，', '0', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2884', '27085327', '终于抢到了，谢谢爆料，可是我记得只有一台，我抢到了两台，不管了，总之超值！', '0', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2885', '27085327', '抢到了，感谢爆料', '0', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2886', '27085327', '抢到10台 已经转手给朋友了 8台', '1', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2887', '27085327', '血赚！大家赶紧抢！', '1', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2888', '27085327', '借了几个亲戚的号，抢到了9台，但是都不喜欢ios，他们自己取消订单了，问就是爱国', '1', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2889', '27085327', '抢到了，谁帮我付一下9.9', '0', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2890', '27085327', '抢到了，叠加无敌券苏宁还给了我10块', '0', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2891', '27085327', '此用户认为【9.9元】价格值', '1', '2020-11-16 00:26:29');
INSERT INTO `good_comment` VALUES ('2892', '27085327', '此用户认为【9.9元】价格值', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2893', '27085327', '年度第一爆料就是这贴，大家有没有意见？', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2894', '27085327', '总共三台，我竟然抢到4台，是bug吗？', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2895', '27085327', '抢了一箱，孩子说很好吃', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2896', '27085327', '用了满5-2的优惠券，到手7.9值哭了！', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2897', '27085327', '批发价，感谢感谢！', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2898', '27085327', '抢到了，，感谢张大妈，，抢到了，，感谢张大妈，，抢到了，，感谢张大妈，，', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2899', '27085327', '抢到了不包邮又取消了', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2900', '27085327', '没抢，期待发货', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2901', '27085327', '谢谢爆料，抢到啦', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2902', '27085327', '抢到了18台，批发给了楼下手机店，太值了', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2903', '27085327', '抢到五个 感谢爆料', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2904', '27085327', '哇欧，提前抢到了，赶紧上！！', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2905', '27085327', '这个太容易，提现不出我手速的实力，哈呵哈！', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2906', '27085327', '?苏宁，就是棒', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2907', '27085327', '感谢平台，抢不到茅台，抢个11也可以。', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2908', '27085327', '抢到了现在去还有', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2909', '27085327', '收到货了 超值', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2910', '27085327', '我要有这实力还用抢这个？', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2911', '27085327', '洗洗睡了，明天还有几车砖要搬，起晚了馒头都买不起了。', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2912', '27085327', '我尿贼黄，嘘嘘嘘', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2913', '27085327', '此用户认为【9.9元】价格值', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2914', '27085327', '抢到了，很划算', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2915', '27085327', '想什么啊，你们。谁尿黄？？？', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2916', '27085327', '抢了一卡车 谢谢爆料', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2917', '27085327', '抢到好几台了，苏宁老总说让我帮他抢一台就给我他的位置，我收拾收拾在路上了', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2918', '27085327', '包了会员，很快就抢到了', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2919', '27085327', '总共三台，我抢完了，你们都休息吧', '1', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2920', '27085327', '给家里人一人抢了一台', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2921', '27085327', '抢到了，加上银行优惠0.01到手', '0', '2020-11-16 00:27:07');
INSERT INTO `good_comment` VALUES ('2922', '27085327', '我也爆料！张大妈抽奖iphone12,不要钱连银子都不要！9.9太贵了，亏！', '1', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2923', '27085327', '# 同价位还有其他推荐么 #  值这个价格', '0', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2924', '27085327', '谢谢爆料，这次活动抢到了很多，库克都来我这里进货。', '0', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2925', '27085327', '此用户认为【9.9元】价格值', '1', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2926', '27085327', '我开挂进去的，苏宁说太拥挤', '1', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2927', '27085327', '抢到了一亿台 感谢爆料', '0', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2928', '27085327', '抢了好多台', '0', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2929', '27085327', '太好抢了，你们都觉得耍?，居然没人抢', '1', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2930', '27085327', '抢到一箱，已挂闲鱼，辞职回家', '1', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2931', '27085327', '哈哈哈哈，我真的抢到了啦！', '0', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2932', '27085327', '抢到了10台，感谢爆料', '0', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2933', '27085327', '刚好把狗东的4199退回去', '1', '2020-11-16 00:27:37');
INSERT INTO `good_comment` VALUES ('2934', '27085327', '别这样，难道怀疑自己手速能抢得过软件？我连有些优惠券都抢不到，更不会去参与这类的活动', '1', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2935', '27085327', '哇塞   抢到了', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2936', '27085327', '感谢爆料，抢到一台512G的5G版', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2937', '27085327', '抢到了8台 谢谢啊', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2938', '27085327', '抢到一台，果粉表示很划算！', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2939', '27085327', '9.9怎么能买到，没有能买到的吧', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2940', '27085327', '已定好闹钟抢，大家都歇着吧，我都买好手机壳了', '1', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2941', '27085327', '楼上四只?，楼下五只?，请问还有几个?', '1', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2942', '27085327', '抢到了，艺术布丁', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2943', '27085327', '肯定能抢到', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2944', '27085327', '抢到了三台，感谢爆料', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2945', '27085327', '你也抢到了，感谢爆料！', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2946', '27085327', '抢到了，感谢爆料，下次别爆了', '1', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2947', '27085327', '我刚刚试了15号八点的，，根本没机会', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2948', '27085327', '哈？zsbd', '1', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2949', '27085327', '此用户认为【苹果（Apple）i...】性价比高', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2950', '27085327', '抢到了，感谢爆料！', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2951', '27085327', '一台', '0', '2020-11-15 23:27:37');
INSERT INTO `good_comment` VALUES ('2952', '27063637', '我还以为就是小米', '0', '2020-11-16 01:05:11');
INSERT INTO `good_comment` VALUES ('2953', '27063637', '此用户认为【微信多开神机 小辣椒...】性价比高', '0', '2020-11-16 00:52:11');
INSERT INTO `good_comment` VALUES ('2954', '27063637', '我想问一下，wx多开不是有很多APP都可以支持的吗？这也作为卖点？', '1', '2020-11-16 00:26:11');
INSERT INTO `good_comment` VALUES ('2955', '27063637', '此用户认为【929元（需用券）】价格值', '0', '2020-11-16 00:26:11');
INSERT INTO `good_comment` VALUES ('2956', '27063637', '紫光展讯虎贲T7510，很不错的5g芯片，日常用，吃鸡，王者都能流畅玩没问题。', '0', '2020-11-15 21:26:11');
INSERT INTO `good_comment` VALUES ('2957', '27063637', '我也买过！！！！居然还活着！！！', '1', '2020-11-15 19:26:11');
INSERT INTO `good_comment` VALUES ('2958', '27063637', '6加64九百多', '0', '2020-11-15 19:26:11');
INSERT INTO `good_comment` VALUES ('2959', '27063637', '无', '0', '2020-11-15 19:26:11');
INSERT INTO `good_comment` VALUES ('2960', '27063637', '此用户认为【929元（需用券）】价格值', '0', '2020-11-15 18:26:11');
INSERT INTO `good_comment` VALUES ('2961', '27063637', '软件级多开和系统级多开是两码事', '1', '2020-11-15 18:26:11');
INSERT INTO `good_comment` VALUES ('2962', '27063637', '此用户认为【929元（需用券）】价格值', '0', '2020-11-15 18:26:11');
INSERT INTO `good_comment` VALUES ('2963', '27063637', '备用机也不买他呀', '1', '2020-11-15 18:26:11');
INSERT INTO `good_comment` VALUES ('2964', '27063637', '买一个，支持国产芯片。', '0', '2020-11-15 17:26:11');
INSERT INTO `good_comment` VALUES ('2965', '27063637', '跑20万，很不错了', '0', '2020-11-15 17:26:11');
INSERT INTO `good_comment` VALUES ('2966', '27063637', '还有个大可乐好像。都是**名字', '1', '2020-11-15 16:26:11');
INSERT INTO `good_comment` VALUES ('2967', '27063637', '当年的北斗手机网出的北斗小辣椒q1.四核处理器只要999。我抢到了一台。', '0', '2020-11-15 16:26:11');
INSERT INTO `good_comment` VALUES ('2968', '27063637', '因为用过，所以值', '0', '2020-11-15 16:26:11');
INSERT INTO `good_comment` VALUES ('2969', '27063637', '小图以为pixel 5', '1', '2020-11-15 16:26:11');
INSERT INTO `good_comment` VALUES ('2970', '27063637', 'n年前买过小辣椒，系统稀烂，1年后开不起来了，扔了', '1', '2020-11-15 16:26:11');
INSERT INTO `good_comment` VALUES ('2971', '27063637', '微商利器的说', '0', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2972', '27063637', '精神1分裂者专用手机。', '1', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2973', '27063637', '在京东买的第一部手机竟是红辣椒?️红辣椒?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️?️', '0', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2974', '27063637', '标题6+128，截图6+64', '1', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2975', '27063637', '啥u，多开不会卡吗？', '1', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2976', '27063637', '芯片官网说6nm工艺', '1', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2977', '27063637', '还不如几年前的n6的配置，当时买了N6以后，只能开四个微信，一年多现在随着微信更新，卡的动都不动，太', '1', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2978', '27063637', '是不是忘记我360的n5了？微信无限开', '0', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2979', '27063637', '众筹坑了多少人啊', '1', '2020-11-15 15:26:11');
INSERT INTO `good_comment` VALUES ('2980', '27063637', '质感不好 和山寨一样容易裂', '1', '2020-11-15 14:26:11');
INSERT INTO `good_comment` VALUES ('2981', '27063637', '多开容易，不封号难', '1', '2020-11-15 14:26:11');
INSERT INTO `good_comment` VALUES ('2982', '27063637', '此用户认为【929元（需用券）】价格值', '0', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2983', '27063637', '第一代好用的一比', '0', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2984', '27063637', '那得看OPPO爸爸啦', '0', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2985', '27063637', '还以为是去找三大运营商的采购去喝茶了', '1', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2986', '27063637', '不到1000realme不香吗', '1', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2987', '27063637', '劝值友且行且珍惜，开的太多容易被封号', '0', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2988', '27063637', '小米是复仇者联盟，各系败退下来全收，难搞呀，雷员长在还好', '1', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2989', '27063637', '真的能开八个微信吗', '0', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2990', '27063637', '多开软件多的很，这也算卖点？', '1', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2991', '27063637', '当年第一个智能手机就是小', '0', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2992', '27063637', '没发现充电是OPPO的VOOC协议嘛', '1', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2993', '27063637', '落魄就落魄呗，用两年也差不多了，况且还是o家的。就连中兴的努比亚都还活得好好的呢', '0', '2020-11-15 14:26:49');
INSERT INTO `good_comment` VALUES ('2994', '27063637', '还不如红米9   699', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('2995', '27063637', '什么时候出个小黄瓜', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('2996', '27063637', '我以为怎么也得是骁龙6系吧？结果一看是展讯的，那这价格就不好评论了。', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('2997', '27063637', '多来不是个软件问题', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('2998', '27063637', '山寨机买了就会拍大腿', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('2999', '27063637', '然后soc是展讯', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3000', '27063637', '没人发现型号叫k30吗？', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3001', '27063637', '没用过安卓机的问一下，不是说微信多开会封号么？', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3002', '27063637', '当年耍猴耍的比我米还厉害，无货卖机他最能，不知道找的什么破作坊，备货一两万，卖了几十万台，一天就能出货两三千台，发货到猴年马月', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3003', '27063637', 'realme q2也干到1099了。相比这个还性价比真不高', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3004', '27063637', '打不过就加入666', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3005', '27063637', '求路子啊  胸dei', '0', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3006', '27063637', '你以为抢到就有了吗？发货发了好几个月。。。我都没撑到发货就退了', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3007', '27063637', '安卓手机下个比翼多开，微信100开都可以。，没必要非买这个吧', '0', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3008', '27063637', '我去，我服这个牌子！小米1的时候这玩意儿就在，到现在居然还在，坚挺啊！', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3009', '27063637', '牛批      4个公司都被你说哭了', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3010', '27063637', '羊毛 当 专用 半个月回本', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3011', '27063637', '我只用大可乐手机', '1', '2020-11-15 13:26:49');
INSERT INTO `good_comment` VALUES ('3012', '27063637', '不会不知道是oppo全资控股吧...跟小辣椒两码事啊', '1', '2020-11-15 13:27:20');
INSERT INTO `good_comment` VALUES ('3013', '27063637', '微信一百开都没意义', '0', '2020-11-15 13:27:20');
INSERT INTO `good_comment` VALUES ('3014', '27063637', '开那么多会黑号的吧', '1', '2020-11-15 13:27:20');
INSERT INTO `good_comment` VALUES ('3015', '27063637', '这个品牌创始人就是学小米的。。后来还加入了小米，十周年还出镜了', '0', '2020-11-15 13:27:20');
INSERT INTO `good_comment` VALUES ('3016', '27063637', '刚买了realme q2当备机，不知道这种小众牌子会不会过两年也落魄了', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3017', '27063637', '当时耍猴玩的很溜，抢了几次没抢到就放弃了', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3018', '27063637', '蹭热度滴神', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3019', '27063637', '这些点值得不知道什么居心！还是说全是水军？', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3020', '27063637', 'quan券。。', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3021', '27063637', '小辣椒的型号永远是与时俱进的', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3022', '27063637', '老总都跑小米去了手机还在呢…', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3023', '27063637', '作为备用机的功能够了', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3024', '27063637', '小米碰别人还少么…', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3025', '27063637', '多开加群控，', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3026', '27063637', '6GB能支持开8个不？我4+64G的手机，就开个微信，就显示运存用了一半多了', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3027', '27063637', '同时聊8个女朋友，互不干扰？？？', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3028', '27063637', '微信8开是认真的吗', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3029', '27063637', '功能？这是个功能机？', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3030', '27063637', '又一个k30，是前生的宿命，还是今生的缘分；是生活所迫，还是财迷心窍。', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3031', '27063637', '海王必备神器', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3032', '27063637', '主要是看中微信多开了', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3033', '27063637', '作备用机还是8错的', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3034', '27063637', '卧槽，这个品牌还在啊', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3035', '27063637', '惊不惊喜意不意外', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3036', '27063637', '用过小辣椒M1', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3037', '27063637', '不好用，卡的一笔', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3038', '27063637', '小辣椒CEO已经进小米了', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3039', '27063637', '这买个800的红米cpu也比它好', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3040', '27063637', '现在的小辣椒只能靠套娃生存了，自己没啥核心技术', '0', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3041', '27063637', '终于，也轮到我米被碰瓷了。以前都是我米碰瓷别个', '1', '2020-11-15 12:27:20');
INSERT INTO `good_comment` VALUES ('3042', '27063637', '好用吗ZSBD', '0', '2020-11-15 12:27:45');
INSERT INTO `good_comment` VALUES ('3043', '27063637', '哈哈哈哈哈哈哈', '0', '2020-11-15 12:27:45');
INSERT INTO `good_comment` VALUES ('3044', '27063637', '碰瓷啊。万物皆可k30?', '1', '2020-11-15 12:27:45');
INSERT INTO `good_comment` VALUES ('3045', '27063637', '我还买过小辣椒一代，好多年了，简直就是性价比的代称。', '0', '2020-11-15 12:27:45');
INSERT INTO `good_comment` VALUES ('3046', '27063637', '此用户认为【微信多开神机 小辣椒...】性价比高', '0', '2020-11-15 12:27:45');
INSERT INTO `good_comment` VALUES ('3047', '27063637', '这牌子竟然还在！', '1', '2020-11-15 12:27:45');
INSERT INTO `good_comment` VALUES ('3048', '27077361', '835是真的好用，不过是同期对比', '0', '2020-11-16 01:26:18');
INSERT INTO `good_comment` VALUES ('3049', '27077361', '支持无线充电耶', '1', '2020-11-16 01:26:18');
INSERT INTO `good_comment` VALUES ('3050', '27077361', '8+128的话还凑活了', '0', '2020-11-16 01:02:18');
INSERT INTO `good_comment` VALUES ('3051', '27077361', '可能是断了的手指长出来了。', '0', '2020-11-16 00:53:18');
INSERT INTO `good_comment` VALUES ('3052', '27077361', '老罗现在还在用', '0', '2020-11-16 00:46:18');
INSERT INTO `good_comment` VALUES ('3053', '27077361', '900买了个二手 当玩具还可以', '1', '2020-11-16 00:41:18');
INSERT INTO `good_comment` VALUES ('3054', '27077361', '去年入的1699……这都一年多了，还涨价了？', '0', '2020-11-16 00:26:18');
INSERT INTO `good_comment` VALUES ('3055', '27077361', '此用户认为【锤子 坚果R1 6G...】商品好', '1', '2020-11-16 00:26:18');
INSERT INTO `good_comment` VALUES ('3056', '27077361', '原来买过白阿姨，印象最深的是有个版本的续航特别顶，待机一晚上一格电都没掉，用一天那是绰绰有余的', '0', '2020-11-16 00:26:18');
INSERT INTO `good_comment` VALUES ('3057', '27077361', '此用户认为【锤子 坚果R1 6G...】性价比高', '0', '2020-11-16 00:26:18');
INSERT INTO `good_comment` VALUES ('3058', '27077361', '此用户认为【1999元】价格值', '1', '2020-11-16 00:26:18');
INSERT INTO `good_comment` VALUES ('3059', '27077361', '真是非常保值啊', '0', '2020-11-16 00:26:18');
INSERT INTO `good_comment` VALUES ('3060', '27077361', '也就值1299', '0', '2020-11-16 00:26:18');
INSERT INTO `good_comment` VALUES ('3061', '27077361', '为啥不是5+256？', '1', '2020-11-16 00:26:18');
INSERT INTO `good_comment` VALUES ('3062', '27077361', '白色的话，还是可以整台放着', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3063', '27077361', 'pro2s用户很负责任的表示。坚果已死。他们已经深陷自己的世界无法自拔。', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3064', '27077361', '兄台你太逗了', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3065', '27077361', '看成16+128了…想了半天这个配置的问题…', '0', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3066', '27077361', '一年又7个月，当时1959买的，。。。。', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3067', '27077361', '845的CPU，和我的16P一样，18年中的产品', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3068', '27077361', '10x才1200，这个也就值1000', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3069', '27077361', '同期1799买的mx2s，感觉比r1好', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3070', '27077361', '此用户认为【锤子 坚果R1 6G...】商品好', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3071', '27077361', '6.6.5.4.3在介里', '1', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3072', '27077361', '845是小米8，小米6是835', '0', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3073', '27077361', '4g的？真舍不得', '0', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3074', '27077361', '好不好999', '0', '2020-11-15 23:26:18');
INSERT INTO `good_comment` VALUES ('3075', '27077361', '那啥neo3都是865了', '1', '2020-11-15 22:26:18');
INSERT INTO `good_comment` VALUES ('3076', '27077361', '845的cpu还值1999？？', '0', '2020-11-15 22:26:18');
INSERT INTO `good_comment` VALUES ('3077', '27077361', '只能说我用两年多没任何问题，但现在不建议入手当主力机了，毕竟电子产品', '1', '2020-11-15 22:26:18');
INSERT INTO `good_comment` VALUES ('3078', '27077361', '关键是价格是短板啊', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3079', '27077361', '唯品会真tn的是个人才', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3080', '27077361', '锤子的手机膜用的真是舒服', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3081', '27077361', '我的还停留在6.7.3.2', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3082', '27077361', '屏幕总成非常容易坏，而且坏了更换价格非常高，淘宝都找不到货源，我只能说这么多了', '1', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3083', '27077361', '一年前的618时1899买的。不限量，不抢购。所以这个1999', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3084', '27077361', '降到1200我就买一台', '1', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3085', '27077361', 'Smartisan os7.2手机的r1还没停更新', '1', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3086', '27077361', '电池估计都亏电了', '1', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3087', '27077361', '尾品会，还有一堆锤子手机', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3088', '27077361', '唯品会为什么老是有锤子的库存机，上次还有谁爆料了PRO2特别版……', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3089', '27077361', '此用户认为【1999元】价格值', '1', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3090', '27077361', '1500真收藏了', '1', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3091', '27077361', '1499  8＋128来一台', '1', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3092', '27077361', '我这用了两年的手机还这么坚挺?', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3093', '27077361', 'r1 1999 脑子抽了才买', '0', '2020-11-15 22:26:56');
INSERT INTO `good_comment` VALUES ('3094', '27077361', '不是吧！！！', '1', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3095', '27077361', '很多人都说835比845好用', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3096', '27077361', '999买个支持支持', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3097', '27077361', 'R1还有卖? pro3这个价就买了', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3098', '27077361', '马上2021年了845的手机卖2000', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3099', '27077361', '此用户认为【锤子 坚果R1 6G...】商品好', '1', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3100', '27077361', '此用户认为【锤子 坚果R1 6G...】商品好', '1', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3101', '27077361', '999立刻入手', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3102', '27077361', '865都2000了，谁给你的勇气', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3103', '27077361', '好想买，再便宜一点点', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3104', '27077361', '对999可以考虑玩玩tnt', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3105', '27077361', '我有一台，白色8加128。好看。', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3106', '27077361', '收藏也肯定买白R1啊', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3107', '27077361', '845性能还是挺强的，很多人还在用小米6呢', '0', '2020-11-15 21:26:56');
INSERT INTO `good_comment` VALUES ('3108', '27077361', '这个这么保值吗？几年前京东618买的1499', '0', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3109', '27077361', '不，这个手机很好用，我觉得很实在。光视频不抖就很多机比不上。', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3110', '27077361', '998交个朋友', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3111', '27077361', '太值了！现在换个R1屏都要1k了', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3112', '27077361', '手机不赚钱 做朋友重要', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3113', '27077361', '现在的人都变坏了', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3114', '27077361', '只要和华为', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3115', '27077361', '此用户认为【1999元】价格值', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3116', '27077361', '999差不多，没有售后', '0', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3117', '27077361', '唯品会仓库钥匙找到系统', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3118', '27077361', '这手机绝对可以，没有短板', '0', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3119', '27077361', '我去，这时候还有新机了？', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3120', '27077361', '现在还有锤子？', '0', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3121', '27077361', '1999去买个845吗？', '0', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3122', '27077361', '这个品控好不好，买过坚果pro，那品控用了想砸手机', '0', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3123', '27077361', '下一步一定支持', '0', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3124', '27077361', '此用户认为1299是合理价格', '1', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3125', '27077361', '手持r1，平时都带着壳，偶尔取下来看， 造型真是打爆一溜板砖机。', '0', '2020-11-15 21:27:26');
INSERT INTO `good_comment` VALUES ('3126', '27077361', '2000块买个过时的4g手机干嘛呀', '1', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3127', '27077361', '999交个朋友', '0', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3128', '27077361', '我感觉本来就是为了来嘲讽的！', '1', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3129', '27077361', '此用户认为【锤子 坚果R1 6G...】商品好', '1', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3130', '27077361', '超值，买它', '0', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3131', '27077361', '小米8都升级到MIUI12了，你是锤子几', '0', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3132', '27077361', '1999便宜了，价格应该是子公司旗舰两倍', '0', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3133', '27077361', '膜机套餐，情怀值', '0', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3134', '27077361', '999我立马入一台，r1真的超好用', '1', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3135', '27077361', '系统是老的就入了，8.0后的系统一坨屎。', '1', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3136', '27077361', 'R1用户评价，手机还可以,一年多以前1799买的，现在咋还1999了', '0', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3137', '27077361', '999入一台做主力机', '0', '2020-11-15 20:27:26');
INSERT INTO `good_comment` VALUES ('3138', '27077361', 'r1这个价了？', '0', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3139', '27077361', '1299', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3140', '27077361', '可能是想自嘲', '0', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3141', '27077361', '哈哈哈！！', '0', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3142', '27077361', '此用户认为【1999元】价格值', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3143', '27077361', '坚挺啊，必须点值', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3144', '27077361', '仓库钥匙找到了？', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3145', '27077361', '999可以买个玩玩', '0', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3146', '27077361', '你作为作者，这样嘲讽自己推荐的东西？', '0', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3147', '27077361', '半年前950卖了一台用了一年多的', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3148', '27077361', '两年多以前的机器现在还值钱呢？', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3149', '27077361', '两年前的库存？', '0', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3150', '27077361', '1499立刻充两台坚果老用户。', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3151', '27077361', '家里正好缺个刮皮刀，买了', '0', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3152', '27077361', '这的赶紧买，随时都有可能买不到了', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3153', '27077361', '收藏？？！！', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3154', '27077361', '价格要实在点，我还真想入一台', '1', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3155', '27077361', '诈尸了吗？', '0', '2020-11-15 20:27:47');
INSERT INTO `good_comment` VALUES ('3156', '27077361', '真——尾品会了', '0', '2020-11-15 19:27:47');
INSERT INTO `good_comment` VALUES ('3157', '27064588', '深圳要社保', '1', '2020-11-16 00:56:21');
INSERT INTO `good_comment` VALUES ('3158', '27064588', '哒哒哒的声音是摄像模组防抖镜头在晃，S9+的屏幕跟N20U没得比，哪个手机用微信相机都一个样，其他的没什么说的', '1', '2020-11-16 00:34:21');
INSERT INTO `good_comment` VALUES ('3159', '27064588', '此用户认为【SAMSUNG 三星...】性价比高', '0', '2020-11-16 00:34:21');
INSERT INTO `good_comment` VALUES ('3160', '27064588', '我', '0', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3161', '27064588', '这手机是曲面的吗？不想要曲面，打游戏不舒服，苹果跟这个都是平面的吗？要不买个他们的手机打游戏？可是王者荣耀充好多少了', '0', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3162', '27064588', '我想买华为，可是没货，我是全系列，m40又等不到，我开始动摇了，要不要换三星苹果', '1', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3163', '27064588', '我入的首发，8.29号收到，然后现在可以很明显听到手机里面有零件脱落了，摇晃手机可以听到搭啦搭啦的敲击声音，找售后，只能答应给维修，怎么说呢。不是我出现这个问题再来说这个手机不好，因为我最开始的手机是S3然后每年都换S系列的一直到今年第一次换N系列的，首先说明我不是黑三星，是确实存在的几个问题：1.这个屏幕虽然各个评测霸榜，但实际显示效果比不上之前S9+,画面纯净度和通透度都没的比，原因是10系列之后默认加强了防蓝光，如果冲着这屏幕去的，可以先去实体体验下再决定；2.相机拍风景很棒，拍月亮也成，但用微信拍近景，就只有', '1', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3164', '27064588', '已经上车了8599', '0', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3165', '27064588', '我还有北京券，没法转运呀', '1', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3166', '27064588', '这个价格好像尿崩了尤其二手机市场', '1', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3167', '27064588', '买了手机之后出耳机的同学，请联系我', '1', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3168', '27064588', '我也想知道', '0', '2020-11-16 00:26:21');
INSERT INTO `good_comment` VALUES ('3169', '27064588', '深圳券怎么领？', '1', '2020-11-15 23:26:21');
INSERT INTO `good_comment` VALUES ('3170', '27064588', '只有25w慢充，其他方面都比m40p香', '0', '2020-11-15 23:26:21');
INSERT INTO `good_comment` VALUES ('3171', '27064588', '有个下单-500的优惠，现在还有', '1', '2020-11-15 23:26:21');
INSERT INTO `good_comment` VALUES ('3172', '27064588', '早8199送耳机就不买华为了。告辞！', '1', '2020-11-15 23:26:21');
INSERT INTO `good_comment` VALUES ('3173', '27064588', '上海北京卷是大妈上领嘛', '1', '2020-11-15 23:26:21');
INSERT INTO `good_comment` VALUES ('3174', '27064588', '我的等19号二次确认', '1', '2020-11-15 23:26:21');
INSERT INTO `good_comment` VALUES ('3175', '27064588', '想知道这些-500的券是怎么发现找到的？', '0', '2020-11-15 22:26:21');
INSERT INTO `good_comment` VALUES ('3176', '27064588', '再领一个是运气好的吧？？？', '1', '2020-11-15 22:26:21');
INSERT INTO `good_comment` VALUES ('3177', '27064588', '双11，逛三星天猫店居然送了张－1000的卷，结算下来7400多，送耳机有分期，可惜我没有钱。。。。', '1', '2020-11-15 22:26:21');
INSERT INTO `good_comment` VALUES ('3178', '27064588', '用这手机的人大多收入不低，对价格并不敏感好吧', '0', '2020-11-15 22:26:21');
INSERT INTO `good_comment` VALUES ('3179', '27064588', '深圳那一家苏宁可以7799送耳机啊？我这边前几天问7799不送耳机。', '1', '2020-11-15 22:26:21');
INSERT INTO `good_comment` VALUES ('3180', '27064588', '平时就微信支付宝和导航，打打电话，其他功能基本上没啥用的。刘海屏也没啥感觉了', '1', '2020-11-15 22:26:21');
INSERT INTO `good_comment` VALUES ('3181', '27064588', '手机很值，但三星不配', '0', '2020-11-15 22:26:21');
INSERT INTO `good_comment` VALUES ('3182', '27064588', '广州券能叠加，是爆料价', '0', '2020-11-15 21:26:21');
INSERT INTO `good_comment` VALUES ('3183', '27064588', '9199-500-70-400=8229（广州券优惠10%,但最高400），这7K多价是怎么来的？', '1', '2020-11-15 21:26:21');
INSERT INTO `good_comment` VALUES ('3184', '27064588', '心头好啊！奈何价格超预算。', '0', '2020-11-15 21:26:21');
INSERT INTO `good_comment` VALUES ('3185', '27064588', '苏宁易购。。', '0', '2020-11-15 21:26:21');
INSERT INTO `good_comment` VALUES ('3186', '27064588', '可以的  当年我就是水果转三丧，三丧有个s换机助手 自带的  挺好用', '0', '2020-11-15 21:26:21');
INSERT INTO `good_comment` VALUES ('3187', '27064588', '那我还是贵了100，我都不知道哪里贵出来100的', '1', '2020-11-15 21:26:59');
INSERT INTO `good_comment` VALUES ('3188', '27064588', '此用户认为【7799元包邮（12...】价格值', '1', '2020-11-15 21:26:59');
INSERT INTO `good_comment` VALUES ('3189', '27064588', '是7529，我还叠加了信用卡的100，是7429', '1', '2020-11-15 21:26:59');
INSERT INTO `good_comment` VALUES ('3190', '27064588', '没注意，我是前几天领的，你在张大妈搜下上海券，有链接和领取方法。好像是分批次发放的', '1', '2020-11-15 21:26:59');
INSERT INTO `good_comment` VALUES ('3191', '27064588', '赠品选了三件下单了，再下不给选了', '1', '2020-11-15 20:26:59');
INSERT INTO `good_comment` VALUES ('3192', '27064588', '电视照样是六折', '1', '2020-11-15 20:26:59');
INSERT INTO `good_comment` VALUES ('3193', '27064588', '这里的话题就是这两个比，人家就在这两个里面选啊，有什么问题？什么叫总？', '0', '2020-11-15 20:26:59');
INSERT INTO `good_comment` VALUES ('3194', '27064588', '哏都表示完全不敢吱声', '1', '2020-11-15 20:26:59');
INSERT INTO `good_comment` VALUES ('3195', '27064588', '总拿小米和三星比。。。呵呵呵呵', '0', '2020-11-15 20:26:59');
INSERT INTO `good_comment` VALUES ('3196', '27064588', '买手机送手雷及售后三等--体验卷一张', '1', '2020-11-15 20:26:59');
INSERT INTO `good_comment` VALUES ('3197', '27064588', '确定还可以在领取一个耳机？', '1', '2020-11-15 20:26:59');
INSERT INTO `good_comment` VALUES ('3198', '27064588', '确定可以再领一个吗', '1', '2020-11-15 20:26:59');
INSERT INTO `good_comment` VALUES ('3199', '27064588', '免费送更好！', '0', '2020-11-15 19:26:59');
INSERT INTO `good_comment` VALUES ('3200', '27064588', '广州券怎么领。。。', '1', '2020-11-15 19:26:59');
INSERT INTO `good_comment` VALUES ('3201', '27064588', '广东怎么没', '1', '2020-11-15 19:26:59');
INSERT INTO `good_comment` VALUES ('3202', '27064588', '大法的电视这么没排面么', '1', '2020-11-15 19:26:59');
INSERT INTO `good_comment` VALUES ('3203', '27064588', '没见500券呢', '1', '2020-11-15 19:26:59');
INSERT INTO `good_comment` VALUES ('3204', '27064588', '线下是顺电么？', '0', '2020-11-15 18:26:59');
INSERT INTO `good_comment` VALUES ('3205', '27064588', '你双11买到了吗？为啥我的是7629', '1', '2020-11-15 18:26:59');
INSERT INTO `good_comment` VALUES ('3206', '27064588', '有人能拿到两buds life，羡慕', '0', '2020-11-15 18:26:59');
INSERT INTO `good_comment` VALUES ('3207', '27064588', '不懂就问，iphone上的数据可以移到安卓上嘛，行的话可以换台安卓机用用', '0', '2020-11-15 18:26:59');
INSERT INTO `good_comment` VALUES ('3208', '27064588', '讲真？10%是什么鬼', '0', '2020-11-15 18:26:59');
INSERT INTO `good_comment` VALUES ('3209', '27064588', '充电还好吧，虽说不能算快，但也凑合吧，我看人测试25w不到一小时充满5000mah。当然跟120w那俩没法比', '1', '2020-11-15 18:26:59');
INSERT INTO `good_comment` VALUES ('3210', '27064588', '这个价不要note10+了', '0', '2020-11-15 17:26:59');
INSERT INTO `good_comment` VALUES ('3211', '27064588', '双十一当天7539', '1', '2020-11-15 17:26:59');
INSERT INTO `good_comment` VALUES ('3212', '27064588', '深圳更便宜，线下7799 叠加深圳10%补贴，到手7020，还送buds 耳机', '1', '2020-11-15 17:26:59');
INSERT INTO `good_comment` VALUES ('3213', '27064588', '在北京去领', '1', '2020-11-15 17:26:59');
INSERT INTO `good_comment` VALUES ('3214', '27064588', '还是下单了s20+手感更好', '0', '2020-11-15 16:26:59');
INSERT INTO `good_comment` VALUES ('3215', '27064588', '广东的好象也能7799', '1', '2020-11-15 16:26:59');
INSERT INTO `good_comment` VALUES ('3216', '27064588', '此用户认为【SAMSUNG 三星...】商品好', '1', '2020-11-15 16:26:59');
INSERT INTO `good_comment` VALUES ('3217', '27064588', '我有上海券要过期了，杭州地区的值友有需要下单的吗', '0', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3218', '27064588', '小米的屏幕不知道咋回事，感觉看着刺眼，字也小。反正各种用着感觉怪怪的，可能我习惯了三星的系统逻辑了。一下子不适应。', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3219', '27064588', '我看到怎么是8229', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3220', '27064588', '京东上耳机颜色可选:将手机加入购物车，然后在购物车里改耳机颜色。', '0', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3221', '27064588', '索尼除了相机，其它音频、手机半价警告', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3222', '27064588', '京东是随手机一起发货', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3223', '27064588', '用了这么多年全面屏还受得了刘海吗？', '0', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3224', '27064588', '没办法了，只能去专卖店拉横幅维权了', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3225', '27064588', '有送耳机吗？', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3226', '27064588', '感觉耳机木有800e卡香，也不知道耳机能卖多少', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3227', '27064588', '说实话，能上至尊就别上这个了，不可否认，三星屏幕确实最好，除了这个，还有个防水，这就这两个优点了，系统，续航，充电啥的，能和至尊比？', '0', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3228', '27064588', '无', '0', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3229', '27064588', '国行系统除了没有推送，其他挑不出毛病。', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3230', '27064588', '这要看买的人怎么定位啦，三星这个是安卓机皇', '0', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3231', '27064588', '兄弟你都米10至尊版了为了个屏幕买这个大可不必，我S8换过来显示效果肉眼看不出提升。屏幕大了反而觉得没有原来的小8细腻', '1', '2020-11-15 16:27:30');
INSERT INTO `good_comment` VALUES ('3232', '27064588', '我今天下的单，准备出掉耳机', '1', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3233', '27064588', '这掉价掉的', '1', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3234', '27064588', '用了六年的三星，每年买个旗舰机，今年转苹果去了', '0', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3235', '27064588', '如果有买的值友不需要buds可以让给我', '0', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3236', '27064588', '9.15先坑者入的……笔基本不用，除了拿来下棋抢装备很好用', '0', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3237', '27064588', '手小的慎重 手挺长的表示单手操作压力很大 从s20+换的n20u...推荐蹲好价的s20+', '0', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3238', '27064588', '还有这种操作？', '1', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3239', '27064588', '果然首发先坑者，去年的s10到今年的s20，买首发的哭了', '1', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3240', '27064588', '比华为还贵', '0', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3241', '27064588', '?362431', '1', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3242', '27064588', '估计这个价格要等明年清仓了', '0', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3243', '27064588', '这个和iphone12比谁厉害', '1', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3244', '27064588', '广州券也可以用，送耳机，激活后还可以再领一个', '1', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3245', '27064588', '等一波双十二', '0', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3246', '27064588', '我跟你一样。本来下手小米10至尊，唉，其他都好，但是屏幕太差了，顶部红，屏幕刺眼，退了。但凡三星充电能上65w，我都毫不犹疑上三星了。', '1', '2020-11-15 15:27:30');
INSERT INTO `good_comment` VALUES ('3247', '27064588', '有券还是厉害', '1', '2020-11-15 15:27:51');
INSERT INTO `good_comment` VALUES ('3248', '27064588', '上海或北京总有朋友吧，嘿嘿', '0', '2020-11-15 15:27:51');
INSERT INTO `good_comment` VALUES ('3249', '27064588', '原来还有张优惠券', '1', '2020-11-15 15:27:51');
INSERT INTO `good_comment` VALUES ('3250', '27064588', '6999送耳机立马上车', '1', '2020-11-15 15:27:51');
INSERT INTO `good_comment` VALUES ('3251', '27064588', '照理说，今天京东送耳机，货到后是不是还可以去三星助手再领一个耳机？', '1', '2020-11-15 15:27:51');
INSERT INTO `good_comment` VALUES ('3252', '27064588', '广州人也不敢说话呀', '1', '2020-11-15 15:27:51');
INSERT INTO `good_comment` VALUES ('3253', '27064588', '为什么用了上海券是8229？', '1', '2020-11-15 15:27:51');
INSERT INTO `good_comment` VALUES ('3254', '27064588', '那一波没有赶上啊', '0', '2020-11-15 15:27:51');
INSERT INTO `good_comment` VALUES ('3255', '27064588', '是不是京东索尼手机旗舰店买的？', '1', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3256', '27064588', '比华威mate40香多了', '0', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3257', '27064588', '跳水冠军名不虚传', '0', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3258', '27064588', '系统用得惯么', '1', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3259', '27064588', '你是有E卡或者京豆吧？', '1', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3260', '27064588', '港版6500了，还有更香的谷歌全套服务', '0', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3261', '27064588', '三星审美什么时候这么拉胯了？这突兀凸起的三饼摄像模组属实难看', '1', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3262', '27064588', '这个价格值吗，不是特别着急，现在手机也不卡，就是内存小点。对这手机充电速度有点不满。但是满意屏幕', '0', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3263', '27064588', '叠加上海优惠券也可以7799', '1', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3264', '27064588', '现在没了吗，领不了', '1', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3265', '27064588', '要虚拟定位一下，如果你的收货地址不是上海和北京，那么你领了券也不能用', '1', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3266', '27064588', '双117499', '0', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3267', '27064588', '我怎么是7599？', '1', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3268', '27064588', '光速贬值，这速度平均一个月跌一千', '0', '2020-11-15 14:27:51');
INSERT INTO `good_comment` VALUES ('3269', '27064588', '7000JD买的XPERIA1马克兔 24期免息相当于白嫖。', '0', '2020-11-15 13:27:51');
INSERT INTO `good_comment` VALUES ('3270', '27064588', '此用户认为【SAMSUNG 三星...】性价比高', '0', '2020-11-15 13:27:51');
INSERT INTO `good_comment` VALUES ('3271', '27064588', '6999指日可待 还买啥mate40', '0', '2020-11-15 13:27:51');
INSERT INTO `good_comment` VALUES ('3272', '27064588', '双11  75xx免息12期没下', '1', '2020-11-15 13:27:51');
INSERT INTO `good_comment` VALUES ('3273', '27064588', '不在北京，外地狗再见', '1', '2020-11-15 13:27:51');
INSERT INTO `good_comment` VALUES ('3274', '27064588', '比诺基亚还贵', '0', '2020-11-15 13:27:51');
INSERT INTO `good_comment` VALUES ('3275', '27064588', '此用户认为【7799元（需用券）】价格值', '0', '2020-11-15 13:27:51');
INSERT INTO `good_comment` VALUES ('3276', '27064588', '不是北上广都不敢发言', '1', '2020-11-15 13:27:51');
INSERT INTO `good_comment` VALUES ('3277', '27064588', '双11叠加消费券可以到7529送耳机和12期免息，所以等等党可以再等等', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3278', '27064588', '消费卷需要定位领，耳机随货到，可以在购物车里选耳机颜色', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3279', '27064588', '7999返800卡，送无线充，感觉差不多。', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3280', '27064588', '下单时就显示有，上海券就在优惠券里领的，要定位在上海吧，', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3281', '27064588', '看我的订单截图', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3282', '27064588', '北京券和山海券还能领么？？', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3283', '27064588', 'buds live是自己领还是随货送到？', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3284', '27064588', '9199送600耳机卷 12分期… 哎…', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3285', '27064588', '上海券下单后订单中显示有赠品耳机么？还是到货后自己领？', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3286', '27064588', '上海券在哪领', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3287', '27064588', '6799送耳机差不多', '1', '2020-11-15 13:28:03');
INSERT INTO `good_comment` VALUES ('3288', '27064588', '刚试了下，可以叠加上海券，一样的价格，12期免息加耳机', '1', '2020-11-15 12:28:03');
INSERT INTO `good_comment` VALUES ('3289', '27064588', '北京券无条件叠加的 7799 buds可以卖800', '1', '2020-11-15 12:28:03');
INSERT INTO `good_comment` VALUES ('3290', '27064588', '确定能叠加吗？上个图看看', '0', '2020-11-15 12:28:03');
INSERT INTO `good_comment` VALUES ('3291', '27064588', '北京券在哪里领', '1', '2020-11-15 12:28:03');
INSERT INTO `good_comment` VALUES ('3292', '27064588', '送buds live', '1', '2020-11-15 12:28:03');
INSERT INTO `good_comment` VALUES ('3293', '27069764', '此用户认为【SAMSUNG 三星...】性价比高', '0', '2020-11-16 01:19:25');
INSERT INTO `good_comment` VALUES ('3294', '27069764', '噢，那我这边没有12免息，直接两个能叠加', '0', '2020-11-16 00:29:25');
INSERT INTO `good_comment` VALUES ('3295', '27069764', '?夏日静和', '0', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3296', '27069764', '如果你选择12期免息那么减500的券和北上广400券只能二选一。', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3297', '27069764', '4399我都没买，等双12，3699就买了', '0', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3298', '27069764', '三星旗舰机能下探到这个价格不错了，屏幕性能几乎没有短板，难道不必某米和某为香吗？', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3299', '27069764', '这么便宜了吗', '0', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3300', '27069764', '你怎么不想想两个机子分别多少钱买的？', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3301', '27069764', '什么渠道？', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3302', '27069764', '确实，京东之前出了个规定，严禁小哥私下转寄，贵重物品一定要面交再转寄。北京实在是找不到人的话还是双地址吧，有一定概率通过，9号那天抢了台vv，双地址西安发货顺利到手。', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3303', '27069764', '韩版在哪里买', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3304', '27069764', '难道这还有差异？多个12期免息不好吗？', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3305', '27069764', '没有地方券，泪目', '0', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3306', '27069764', '如果不是曲面屏，说不定我还真的想试试安卓到底好不好玩', '0', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3307', '27069764', '还是买个便宜点的手机吧', '0', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3308', '27069764', '直接韩版S20＋ 4200还是256G的版本', '0', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3309', '27069764', '没办法呀，其他厂家不出小屏旗舰，只有三星和苹果还有', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3310', '27069764', '你的P30Pro卖了吗？', '1', '2020-11-16 00:26:25');
INSERT INTO `good_comment` VALUES ('3311', '27069764', '我评论有我咸?，联系我，hxd', '1', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3312', '27069764', '4899的s20+到现在还在采购中', '1', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3313', '27069764', '怎么现在三星还有人用的吗', '0', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3314', '27069764', '北京地区用不了啊，求解', '0', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3315', '27069764', '128g不够用啊，老推这种没意思', '1', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3316', '27069764', '三星重视中国手机市场了。', '0', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3317', '27069764', '我都不想要了，还买来干什么？我肯定都是以咸鱼卖价来对比啊。S10、P30pro跌得好惨，我17年12月入的果X，港行64g，居然还能卖和我在用P30pro一样价钱。我当时看鱼塘其他P30pro卖价，而且我的还是8加256的高配，真的是郁闷死了。。。。', '1', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3318', '27069764', '晚了，券过期了，我手机也买了', '1', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3319', '27069764', '我在17年的果X的64g，和19年的P30pro而且还是8加256的配置对比，居然在小黄鱼卖到一样价钱，真的是气死我了。老婆换果12后，她的果8p（256g）给她老妈了，我的备用机果X居然能卖了个好价。现在准备把P30pro卖了换S20。。。等双12或者元旦跳水吧，价钱低于4K3可以入。。。', '1', '2020-11-15 23:26:25');
INSERT INTO `good_comment` VALUES ('3320', '27069764', '我就犹豫了一下，错过了', '0', '2020-11-15 22:26:25');
INSERT INTO `good_comment` VALUES ('3321', '27069764', '你卖1800，你买个试试多少钱', '1', '2020-11-15 22:26:25');
INSERT INTO `good_comment` VALUES ('3322', '27069764', '此用户认为【SAMSUNG 三星...】商品好', '1', '2020-11-15 22:26:25');
INSERT INTO `good_comment` VALUES ('3323', '27069764', '同样顶配情况下，刚去黄鱼看了下，的确S10比P30pro贵一些啊', '1', '2020-11-15 22:27:04');
INSERT INTO `good_comment` VALUES ('3324', '27069764', '跳水王你好，以后不会再搞你了', '1', '2020-11-15 22:27:04');
INSERT INTO `good_comment` VALUES ('3325', '27069764', '500的券只能用在12期免息这个选项', '1', '2020-11-15 22:27:04');
INSERT INTO `good_comment` VALUES ('3326', '27069764', '?又到读书时0 出一台', '1', '2020-11-15 22:27:04');
INSERT INTO `good_comment` VALUES ('3327', '27069764', '现在可以用啊', '0', '2020-11-15 22:27:04');
INSERT INTO `good_comment` VALUES ('3328', '27069764', '只有满减，其他的啥也没有。', '0', '2020-11-15 22:27:04');
INSERT INTO `good_comment` VALUES ('3329', '27069764', '坐标上海，券不给用...', '1', '2020-11-15 22:27:04');
INSERT INTO `good_comment` VALUES ('3330', '27069764', '不划算，现在补贴太少！', '1', '2020-11-15 22:27:04');
INSERT INTO `good_comment` VALUES ('3331', '27069764', '抢到券了，但是无货', '1', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3332', '27069764', '不加价 别人买了你又不要了怎么办  我可以帮忙买', '1', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3333', '27069764', '等个S20+  都忘了S20有啥不同之处了  就记得S20+是这代最佳选择 哈哈', '0', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3334', '27069764', 'S10还是很保值的，华为才是跳水王', '0', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3335', '27069764', '是发到路上京东小哥打电话说寄送不了，，，也不给转寄。给钱发红包都不行。', '1', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3336', '27069764', '下单了，接近理想心理价位', '0', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3337', '27069764', '之前广州券不让用', '1', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3338', '27069764', '用不了500的，可以领', '1', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3339', '27069764', '有券的地区无货，有货的地区无券', '1', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3340', '27069764', '昨天下单了，想想还是算了，没什么意思', '1', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3341', '27069764', '都是预计17号发货，可惜没用24分期还能再减去100', '1', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3342', '27069764', '北京5029哈，值吗？还是华为系列啊', '0', '2020-11-15 21:27:04');
INSERT INTO `good_comment` VALUES ('3343', '27069764', '我也用不了，真的', '1', '2020-11-15 20:27:04');
INSERT INTO `good_comment` VALUES ('3344', '27069764', '看到这么多人点不值，，老夫就放心了', '0', '2020-11-15 20:27:04');
INSERT INTO `good_comment` VALUES ('3345', '27069764', '等双十二就在这个跟mini之间选了，想我转安卓三星要给力了哦', '0', '2020-11-15 20:27:04');
INSERT INTO `good_comment` VALUES ('3346', '27069764', '这一款3999还是不错的要是再来个12期免息和800积分那香到爆', '1', '2020-11-15 20:27:04');
INSERT INTO `good_comment` VALUES ('3347', '27069764', '嗯，苹果生态太粘人了.', '0', '2020-11-15 19:27:04');
INSERT INTO `good_comment` VALUES ('3348', '27069764', '18点47进去还是4599啊，没有无线充送了', '1', '2020-11-15 19:27:04');
INSERT INTO `good_comment` VALUES ('3349', '27069764', 'S20+呢，不要这个要20+', '1', '2020-11-15 19:27:04');
INSERT INTO `good_comment` VALUES ('3350', '27069764', '广州券现在还能领吗', '1', '2020-11-15 19:27:04');
INSERT INTO `good_comment` VALUES ('3351', '27069764', '补贴1000是在5999基础上，补贴完了4999，不是4999补贴1000', '1', '2020-11-15 19:27:04');
INSERT INTO `good_comment` VALUES ('3352', '27069764', '这个价不错啊', '0', '2020-11-15 18:27:04');
INSERT INTO `good_comment` VALUES ('3353', '27069764', '这个看个人了，媳妇用了三年了，到现在确实有点卡了', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3354', '27069764', '不说是4300多吗，双十一', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3355', '27069764', '双11下的4329还特么没发货。。。', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3356', '27069764', '生态离不开那就没办法了 ... 我是昨天路过直营店，看了觉得不错就买了，保护壳明天才能到，期望能改善一些手感吧哈哈哈', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3357', '27069764', '耍猴玩意，就一个颜色能用-500券，还是没货状态。换个颜色有货却不能用券', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3358', '27069764', '我想要个3999', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3359', '27069764', 'fe算是比较良心的了，活动价的性价比吊打国内众品牌，所以销量也还好。', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3360', '27069764', '来晚了，现在点进去5499', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3361', '27069764', '除了北上广，全都是眼泪。', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3362', '27069764', '你是对的，我也在坐等16号凌晨，来个5399-600，叠加地区券，980-70券，4329到手价，就可以退掉现在的4599单了，无线充电器不值200，', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3363', '27069764', 's10+还能再战到s30', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3364', '27069764', '和s20一样的，长焦还更好，超广角缩水一点没有8k就这样', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3365', '27069764', '你说的很对，价格过高，却没有苹果的品牌实力，不过今年双十一，三星京东店还是靠fe卖出两个亿的销售额，不得不说fe真的是粉丝版，上市短短一个月，国内售出数十万台了吧。', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3366', '27069764', '经济越好的地方东西越便宜！真是特色', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3367', '27069764', '没有看到啊', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3368', '27069764', '怎么填两个地址？', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3369', '27069764', '来了，zsbd', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3370', '27069764', '在16年以前，苹果三星拍照谁都服气，基本没有异议，从17年开始，华为、OV、MI等国产均声称将苹果三星踩在脚下，并且拿出各种榜单成绩，大众也慢慢得接受了这种观点，事实与否，在此环境下不能说。', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3371', '27069764', '不应该这么看的吧，s系列一直都是s和s+，无论是s10e还是s20u都是衍生出来的，下一代有没有还说不准。只不过针对标准版根据市场需要出个加强点或削弱版本而已。', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3372', '27069764', '确实硌手，我提前买的壳，安上手感好多了！好看是好看。但是不如以前圆的设计手感好。估计啊，过不了两三年，苹果还得改回来，又可以吹一波新设计了。s20我也挺喜欢。但是手里全是苹果生态的设备。有点离不开...', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3373', '27069764', '我居然可以。。。', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3374', '27069764', '看完之前的坚果那个，看三星都觉得便宜了', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3375', '27069764', '4000左右入手', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3376', '27069764', 'FE得屏幕', '1', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3377', '27069764', '可以啊，我就是昨天才领的，但是估计也只有北上广能用吧', '0', '2020-11-15 18:27:33');
INSERT INTO `good_comment` VALUES ('3378', '27069764', '500的券是真用不了。。', '1', '2020-11-15 17:27:33');
INSERT INTO `good_comment` VALUES ('3379', '27069764', '能用此时此刻还能用', '0', '2020-11-15 17:27:33');
INSERT INTO `good_comment` VALUES ('3380', '27069764', '去摸摸真机再来说吧 fe手感 颜值就是', '0', '2020-11-15 17:27:33');
INSERT INTO `good_comment` VALUES ('3381', '27069764', '时光能倒流吗？', '0', '2020-11-15 17:27:33');
INSERT INTO `good_comment` VALUES ('3382', '27069764', '别急，盲猜今晚有一波降价', '0', '2020-11-15 17:27:33');
INSERT INTO `good_comment` VALUES ('3383', '27069764', '就是关心，fe的拍照是什么水平，不是都说三星的录像吊打华为小米吗。如果录像好就买一个', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3384', '27069764', '所有严格控制价格的举措在销售压力面前都是苍白的。三星旗舰机最大的缺点就是太贵', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3385', '27069764', '极有可能！note20就是这样！', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3386', '27069764', '能用券，但是价格变成了5999', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3387', '27069764', '严格来说的话今年s20只能跟s10e相提并论。跟s10对比已经是错位了', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3388', '27069764', '能买啊，蓝色现在还可以，显示采购也是能买的', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3389', '27069764', '你这样还不如去多多，人家转给你不加价200以上吗？4800多多基本拿到了啊。', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3390', '27069764', '无', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3391', '27069764', '几个月之前送积分不香么', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3392', '27069764', '今年三星严格把控统一各大平台价格，狮子和狗只能通过地区券降低价格。', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3393', '27069764', '完全没有可比性。不同的系统。一个大屏一个小屏。而且相差两代的产品', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3394', '27069764', 'fe确实性价比高，三星这款粉丝版很成功，但是话说回来，fe终究是丐版，与xr、11、12mini定位差不多，都是门槛机，体验与s20三兄弟还是有差距的。', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3395', '27069764', '看我的鱼，未拆封的，值友拍的话4650包邮，id是magic0313，赚一波免息算了', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3396', '27069764', '帝都人民真幸福！啥时候给边区的也有点福利呢？', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3397', '27069764', '用不了优惠券', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3398', '27069764', '已经买小米10的感觉有点后悔', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3399', '27069764', '你要618入S21，说到底还不是等大半年啊，所以现在入S20还是香的，明年也不会有消费卷了。这个时间，这个地点（张大妈），看S20价格的人，在座的诸位是土豪的几率小于1%', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3400', '27069764', '4299合约机能买吗？2年', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3401', '27069764', 's10首发价是5999的，s20的价格是6999的。所以去年和今年双十一都是降了2500。', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3402', '27069764', '电子数码快消产品都不怎么保值，除了苹果机出二手稍微保值外', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3403', '27069764', '三星和华为的旗舰跳水都快，我去年的P30pro，8加256，5888，现在拿去当二手卖买，1800', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3404', '27069764', 'note8在手，还能再战3年', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3405', '27069764', '这个和苹果xsmax哪个好', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3406', '27069764', '不行，买不了。紫薯布丁', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3407', '27069764', '現在還能領北京券么。。', '0', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3408', '27069764', '用不了500券', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3409', '27069764', '?362431', '1', '2020-11-15 17:27:55');
INSERT INTO `good_comment` VALUES ('3410', '27069764', '确实用不了了，广东中山地区', '0', '2020-11-15 16:27:55');
INSERT INTO `good_comment` VALUES ('3411', '27069764', '但是觉得有点硌手啊，我以前是S10+，刚换成mini，现在在想要不要换成S20了 ...', '1', '2020-11-15 16:27:55');
INSERT INTO `good_comment` VALUES ('3412', '27069764', '选灰色和白色用不了减500的券啊老铁', '0', '2020-11-15 16:27:55');
INSERT INTO `good_comment` VALUES ('3413', '27069764', '三星不适合首发入，当然土豪除外。可以在明年618入', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3414', '27069764', '此用户认为【SAMSUNG 三星...】性价比高', '0', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3415', '27069764', '此用户认为【4599元包邮（双重...】价格值', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3416', '27069764', '快递刚送来，比今年的se都小，确实很好看。', '0', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3417', '27069764', '灰色和白色，顺义区', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3418', '27069764', '三星没落了，', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3419', '27069764', '收货地址也要北上广', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3420', '27069764', '12mini大小真的很好', '0', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3421', '27069764', '500券用不了', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3422', '27069764', '确实好价…不过我没有消费券……不在消费券地区额也可以使用么？', '0', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3423', '27069764', '5399直接减600叠加消费劵和plus劵。我是0点4529入的，2点就减600。NXP还不给我价保', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3424', '27069764', '我写了客户的地址，实在不行让客户帮我转寄，我是有后路的', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3425', '27069764', '双十一，不叠加个地区消费券4469吧。半夜锁了一单，后来取消了...怕用不习惯...还是入了12mini。', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3426', '27069764', '可能我人品太差', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3427', '27069764', '双十一24期免息4300没买', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3428', '27069764', '显示无货啊，', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3429', '27069764', 'note20 8+256多多才3999，为毛还买s20', '0', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3430', '27069764', '一天到晚限地区', '0', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3431', '27069764', '没货了 能用优惠券的订单', '1', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3432', '27069764', 's21据说是1080p把2k阉割了', '0', '2020-11-15 16:28:06');
INSERT INTO `good_comment` VALUES ('3433', '27069764', '这个可以的吗？同苏州啊', '1', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3434', '27069764', '这是券的链接问题，这价格加上银行活动，去小黄鱼上换点e卡什么的，还是能做到低价的', '1', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3435', '27069764', '会炸 真的会炸', '0', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3436', '27069764', '的确不能用', '1', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3437', '27069764', '哪个颜色?哪个区', '1', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3438', '27069764', '现在用不了了', '1', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3439', '27069764', '真用不了。。。', '1', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3440', '27069764', '我在苏州，随便写个上海的地址，快递到的时候让快递小哥转寄过来', '1', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3441', '27069764', '看见消费券就反手点个不值', '1', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3442', '27069764', '500的券是配合12期免息的。不支持叠加北上广9折最多减400的券', '0', '2020-11-15 15:28:06');
INSERT INTO `good_comment` VALUES ('3443', '27069764', '500卷用不了', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3444', '27069764', '没货没货，zsbd', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3445', '27069764', '去年双11狮子家s10 3699还十二期免息', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3446', '27069764', '不是这个价格的恐怕不是优惠券问题，而是地区优惠的券，不在优惠地区', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3447', '27069764', '买买买不多说', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3448', '27069764', '双十一20+蓝色4900', '0', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3449', '27069764', '有不要的兄弟吗？求好心人', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3450', '27069764', '估计这个价格只有砍单多能放出来。。给个百把台的量。然后接万八千个订单。随机抽取幸运顾客。其他的直接宰了。', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3451', '27069764', '你这话说的。。。让我不用领消费券这个价格买这个手机我还真就愿意了。花钱买自己喜欢的怎么就成了啥啥了呢？我乐意不行？我喜欢啊。三星的手机好看呀。', '0', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3452', '27069764', '怎么做到的？', '0', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3453', '27069764', '同问，是定位还是收货地址', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3454', '27069764', '没有消费券………', '0', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3455', '27069764', '一天到晚的限地区限地区。。。', '0', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3456', '27069764', '手机定位在北京就能领的券，收货在北京找找朋友或者其他什么方法应该不难吧', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3457', '27069764', '刚进去点了一下确实4599啊', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3458', '27069764', '什么个情况，是付完钱不给发货了？', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3459', '27069764', '2个月之后的S21，又是要7K，你会买吗？', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3460', '27069764', '优惠券能用的链接都无货了，现在这个链接不能用减500的优惠券', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3461', '27069764', '我会说双十一4329入的？', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3462', '27069764', '又是7000的价格，然后又等了一年', '0', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3463', '27069764', '离3799还有800块的距离', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3464', '27069764', '算了，再等S21吧！就两个月左右发布', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3465', '27069764', '叠加北京劵订单被京东小哥说不能转发。。。。。。', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3466', '27069764', '买这个不如fe', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3467', '27069764', '上海也可以', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3468', '27069764', '感觉都是叠加北京消费券，难道非北京区域也能拐弯享受到这个福利吗？求指导', '0', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3469', '27069764', '能用啊，现在还是4599', '0', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3470', '27069764', '这算94年入国军吗，打醒我', '1', '2020-11-15 15:28:12');
INSERT INTO `good_comment` VALUES ('3471', '27069764', '优惠卷怎么用不了', '1', '2020-11-15 14:28:12');
INSERT INTO `good_comment` VALUES ('3472', '27069764', '500的券用不了', '1', '2020-11-15 14:28:12');
INSERT INTO `good_comment` VALUES ('3473', '27061666', '不冲突 你一?️不也说中文', '1', '2020-11-16 00:57:55');
INSERT INTO `good_comment` VALUES ('3474', '27061666', '安卓没有优化，没有统一审核，这是近两年卡顿的一个重要原因。', '0', '2020-11-16 00:25:55');
INSERT INTO `good_comment` VALUES ('3475', '27061666', '草，到底多少货，有就一次卖完行不行，虽然我买了好几台华为，你踏马老这样我可就不买了啊！', '1', '2020-11-16 00:25:55');
INSERT INTO `good_comment` VALUES ('3476', '27061666', '外国月亮不太园灯塔国也不亮。你给宝贵意见呗，不能光喷，得给解决问题的方法对吧，说风凉话谁不会啊', '1', '2020-11-16 00:25:55');
INSERT INTO `good_comment` VALUES ('3477', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-16 00:25:55');
INSERT INTO `good_comment` VALUES ('3478', '27061666', '买。。。。。。', '1', '2020-11-16 00:25:55');
INSERT INTO `good_comment` VALUES ('3479', '27061666', '那你真是悲剧。网络上随便一搜，吹华为的占90%，吹三星的看有5%没有。。你非要相信那5%你怪谁。', '1', '2020-11-15 23:25:55');
INSERT INTO `good_comment` VALUES ('3480', '27061666', '这是应该小学还是初中教过的内容？', '0', '2020-11-15 23:25:55');
INSERT INTO `good_comment` VALUES ('3481', '27061666', '若不是华为的爱国营销引起大众的反感，华为其实是一个很好的企业', '0', '2020-11-15 23:25:55');
INSERT INTO `good_comment` VALUES ('3482', '27061666', '敢问阁下贵姓？', '1', '2020-11-15 22:25:55');
INSERT INTO `good_comment` VALUES ('3483', '27061666', '就是这种人把华为的名声搞臭了。', '1', '2020-11-15 22:25:55');
INSERT INTO `good_comment` VALUES ('3484', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 22:25:55');
INSERT INTO `good_comment` VALUES ('3485', '27061666', '小白求解答：88会员是不是还可以打折？？', '1', '2020-11-15 22:25:55');
INSERT INTO `good_comment` VALUES ('3486', '27061666', '很好抢吧！嗯', '0', '2020-11-15 21:25:55');
INSERT INTO `good_comment` VALUES ('3487', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 21:25:55');
INSERT INTO `good_comment` VALUES ('3488', '27061666', '比亚迪汉的定制被吃了？', '0', '2020-11-15 21:25:55');
INSERT INTO `good_comment` VALUES ('3489', '27061666', '8848的高度', '1', '2020-11-15 20:25:55');
INSERT INTO `good_comment` VALUES ('3490', '27061666', '保时捷设计设计设计再设计叫这个名字是不是要每个设计再加一个零呢', '0', '2020-11-15 20:25:55');
INSERT INTO `good_comment` VALUES ('3491', '27061666', '估计是看不起国产byd吧', '0', '2020-11-15 20:25:55');
INSERT INTO `good_comment` VALUES ('3492', '27061666', '不好意思，少看了一个9', '1', '2020-11-15 20:25:55');
INSERT INTO `good_comment` VALUES ('3493', '27061666', '只有12+256有抢吗？想买12+512的说，哪怕是典藏版也可以！', '0', '2020-11-15 20:25:55');
INSERT INTO `good_comment` VALUES ('3494', '27061666', '是的，boom7 那是相当记忆犹新，后来有人搞诉讼，好像也没消息了。这种暴打外国企业，法院不是应该支持吗？一直想不通这点，', '1', '2020-11-15 20:25:55');
INSERT INTO `good_comment` VALUES ('3495', '27061666', 'pro+拥有者在此漂过', '0', '2020-11-15 20:25:55');
INSERT INTO `good_comment` VALUES ('3496', '27061666', '不都是?抢的吗', '1', '2020-11-15 19:25:55');
INSERT INTO `good_comment` VALUES ('3497', '27061666', '帮我买一个好么', '0', '2020-11-15 19:25:55');
INSERT INTO `good_comment` VALUES ('3498', '27061666', '信仰 必须支持', '0', '2020-11-15 18:25:55');
INSERT INTO `good_comment` VALUES ('3499', '27061666', '买我米吧，联合研发黑科技', '0', '2020-11-15 18:25:55');
INSERT INTO `good_comment` VALUES ('3500', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 18:25:55');
INSERT INTO `good_comment` VALUES ('3501', '27061666', '傻批在华为下面讲这些', '1', '2020-11-15 18:25:55');
INSERT INTO `good_comment` VALUES ('3502', '27061666', '一边拆一点——保加迪。都满意了啊！别闹了啊！', '0', '2020-11-15 17:25:55');
INSERT INTO `good_comment` VALUES ('3503', '27061666', '某些人就喜欢选择性遗忘，我也喜欢选择性拆台', '0', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3504', '27061666', '我用差不多2年的p30pro，首发就买用到现在，怎么一点都不卡，容量256G还剩下不足8G，软件70+。是不是你装了那些企鹅管家杀毒软件之类的东西', '1', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3505', '27061666', '比亚迪溢价低啊', '0', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3506', '27061666', '目前只能在相机上做文章了', '1', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3507', '27061666', '这不才用了一年嘛，第一次用华为，非常满意', '0', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3508', '27061666', '我老婆的p30pro也没卡，我们还都是重度使用用户', '1', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3509', '27061666', '厉害了，看样子多少黄牛抢去了', '1', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3510', '27061666', '大小姐还没回归 还需要大家来集资', '0', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3511', '27061666', '无', '0', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3512', '27061666', '国产就某为敢把价格定这么高', '1', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3513', '27061666', '2000好像', '0', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3514', '27061666', '就问这个抢到可以加多少卖', '1', '2020-11-15 17:26:33');
INSERT INTO `good_comment` VALUES ('3515', '27061666', 'zdm的手机评论区的有些人，就跟手机厂商', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3516', '27061666', '差评，徕卡电影五摄，电影用手机拍？', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3517', '27061666', '娱乐圈八卦，哈哈哈', '0', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3518', '27061666', '明明是电池爆炸不处理作死的，跟营销有什么关系', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3519', '27061666', '随便呀，不看全球出货量？？？', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3520', '27061666', '三星是某些不可抗力打压。谁呢？当然是国货之光了', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3521', '27061666', '这个机器本地市场溢价2000，只是不确定是否好卖。', '0', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3522', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3523', '27061666', '那三星差不多全部零配件都能自己研发 生产的呢？', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3524', '27061666', '一直在推这个，pro+比这个还难买。感觉这个的配置跟pro+应该是一样的？而且，相同配置，这个要厚一丢丢，达到了10mm？', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3525', '27061666', '买到就赚几千，为啥点不值？', '1', '2020-11-15 16:26:33');
INSERT INTO `good_comment` VALUES ('3526', '27061666', '谁点的不值。。。这么老实的人混不下去的', '1', '2020-11-15 15:26:33');
INSERT INTO `good_comment` VALUES ('3527', '27061666', '还有**以为华为只是个卖手机的吗', '1', '2020-11-15 15:26:33');
INSERT INTO `good_comment` VALUES ('3528', '27061666', '抵我几年工资不重要，重要的是你嘲讽这些研发人员没能力，而事实上别人有高薪做背书，', '0', '2020-11-15 15:26:33');
INSERT INTO `good_comment` VALUES ('3529', '27061666', '这个没办法的，自然界就是这样，现在我们也一样被指责向非洲高价销售廉价产品，低价收购原材料。', '1', '2020-11-15 15:26:33');
INSERT INTO `good_comment` VALUES ('3530', '27061666', '你这种外国月亮圆挺没意思的，我们应该更多地思考为什么，你轻飘飘的一句去美国工作呗，去美国工作就能改变我们两国人民劳动价值不对等的事实吗？', '0', '2020-11-15 15:26:33');
INSERT INTO `good_comment` VALUES ('3531', '27061666', '又来了...', '1', '2020-11-15 15:26:33');
INSERT INTO `good_comment` VALUES ('3532', '27061666', '你的例子很形象，我想更多的不是抱怨，是感觉劳动被窃取的疑惑。我们就像一个怪圈，老板剥削我们，', '0', '2020-11-15 15:26:33');
INSERT INTO `good_comment` VALUES ('3533', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 15:27:12');
INSERT INTO `good_comment` VALUES ('3534', '27061666', '奇怪了，你的p30不卡，怎么我的p30pro感觉很多时候软件卡顿。', '0', '2020-11-15 15:27:12');
INSERT INTO `good_comment` VALUES ('3535', '27061666', '破玩意儿，不买', '1', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3536', '27061666', 'wow awesome，水军真是不够多呢', '1', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3537', '27061666', '谁知道研发了啥才能让美国这么跳脚的针对他，也许美国就是怕这种爱国企业吧哈哈哈哈', '0', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3538', '27061666', '感觉是黑子', '0', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3539', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3540', '27061666', '其实这是简单，你去美国工作不就解决了', '0', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3541', '27061666', '宝马在美国才几万美元，7系顶配差不多10万，所以照你这个想法国产车得卖5千8千的1万', '0', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3542', '27061666', '推这些抢不到的东西有毛线意义？？？', '1', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3543', '27061666', '友情点赞…我为华为省芯片…', '0', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3544', '27061666', '之前三丧可是安卓旗帜，太平洋战争真遇到，还不知道谁是海上霸主。', '0', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3545', '27061666', '在什么值得买看，都是各种吹s20/+多好多好，我信了，京东买的s20+没两天就坏了', '1', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3546', '27061666', '海军和', '0', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3547', '27061666', '华为的价格我真是服了，消费国人情怀？', '0', '2020-11-15 14:27:12');
INSERT INTO `good_comment` VALUES ('3548', '27061666', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3549', '27061666', '网上“这么多”吹三星索尼的？请问你这个“这么多”这个比例是在哪看的？', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3550', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3551', '27061666', '销量好说明不了产品好', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3552', '27061666', '想买没钱，还是用我的经济适用机', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3553', '27061666', '您不是88VIP，所以无法购买', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3554', '27061666', '下回说小米，提红米掉华为身价。', '0', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3555', '27061666', '像你这种玩意儿纯粹就是反串黑，我用的红米手机，也没必要到处黑华为吧', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3556', '27061666', '华为在丑的路上越走越远～～～', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3557', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3558', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3559', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3560', '27061666', '难道不也是抵你十年工资', '0', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3561', '27061666', '举个例子，抗战的时候，我们几条人命才能换会回一杆枪，子弹也要省着打，但美国教官说：使劲打，我们美国的生产线上的妇女7分钟就能生产一杆枪。当经济生产力落后的时候，我们的几条人命都不如美国妇女的7分钟。当然现在进步已经很大了，差距已经缩小很多了。不要只会抱怨，你100元的劳动有时候还不如老美1美元。', '0', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3562', '27061666', '神逻辑666', '0', '2020-11-15 13:27:12');
INSERT INTO `good_comment` VALUES ('3563', '27061666', '同机，感觉有点卡了，转给家里老人继续发光了，蹭着双十一上了多多的苹果11大船，除了信号烂，其他都还行', '1', '2020-11-15 13:27:41');
INSERT INTO `good_comment` VALUES ('3564', '27061666', '昨天去实体店体验了一下，屏幕还是很不错的，但没惊艳感觉，拿在手里非常重，板砖警告', '0', '2020-11-15 13:27:41');
INSERT INTO `good_comment` VALUES ('3565', '27061666', '华为研发工资一年顶你搬十年砖，就问你气不气。', '1', '2020-11-15 13:27:41');
INSERT INTO `good_comment` VALUES ('3566', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 13:27:41');
INSERT INTO `good_comment` VALUES ('3567', '27061666', '1%的体量却却发出了30%的声音', '1', '2020-11-15 13:27:41');
INSERT INTO `good_comment` VALUES ('3568', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3569', '27061666', '我觉得越南人挣2000越南盾，和我们挣2000人民币付出的时间和劳动肯定不能划等号，如果我们很辛苦一个月挣5000人民币，老美同样甚至更少的时间和劳动一个月挣5000美元，这是让我觉得可怕的地方', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3570', '27061666', '哇，好多看别人买的爱国人士', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3571', '27061666', '资本主义的优越性???', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3572', '27061666', '我知道你是在怼我，但我还是想知道我们一个月5000人民币的工资，和老美一个月5000美元的工资，付出的劳动是不是一样的', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3573', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3574', '27061666', '那越南人是不是只要2000越南盾就能买苹果了？', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3575', '27061666', '我们挣1元付出的劳动比老美挣1美元付出的劳动不值钱？', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3576', '27061666', '毛线营销不行，华为现在这套营销策略像素级模仿三星好不好。三星在国内亡了主要是恒大的球员“郑智”的问题。', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3577', '27061666', '华为都这么惨了，凭什么不买华为？价格高怎么了，为国家出一份力而已，难道诸位不爱国？', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3578', '27061666', '能抢到再说吧', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3579', '27061666', '崇洋媚外。。。', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3580', '27061666', '加价吗？？？', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3581', '27061666', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3582', '27061666', '华为mate40的手机部分用的是三星屏幕，部分是京东方的，三星采用的是钻石排列，京东方采用的是周冬雨排列，当你买到周冬雨排列屏就认栽吧', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3583', '27061666', '不用吹具体什么原因懂的都懂，关键不用这个市场照样世界第一然后再高价买你配件，美滋滋', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3584', '27061666', '说华为研发所以那么贵的，请问华为研发了啥？谷歌系统？丑刘海？挖孔屏？台积电组装的美国芯片？周冬雨？发绿屏？一个组装机罢了', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3585', '27061666', '一美元的购买力和一人民币的购买力能一样吗？你学过经济吗？', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3586', '27061666', 'mate10Pro还在服役', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3587', '27061666', '研发了啥？美国芯片？丑刘海？发绿屏？周冬雨？谷歌系统？爱国？', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3588', '27061666', '微博kol，给钱就卖的笑话', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3589', '27061666', '穷人不配爱', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3590', '27061666', '白色的Pro+也全网没有货', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3591', '27061666', '无', '0', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3592', '27061666', '实体店买路由器就可以买到保时捷吗？', '1', '2020-11-15 12:27:41');
INSERT INTO `good_comment` VALUES ('3593', '27061666', '如果不是为了打游戏，我还是买三星。韩版价格还是香的。', '0', '2020-11-15 12:27:59');
INSERT INTO `good_comment` VALUES ('3594', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 12:27:59');
INSERT INTO `good_comment` VALUES ('3595', '27061666', '秒无，根本抢不到好吧。', '0', '2020-11-15 12:27:59');
INSERT INTO `good_comment` VALUES ('3596', '27061666', '应该采用摇号的方法', '1', '2020-11-15 12:27:59');
INSERT INTO `good_comment` VALUES ('3597', '27061666', '各自为王还要联合国干什么？', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3598', '27061666', '三星在中国亡了主要还是营销不行', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3599', '27061666', '也就这一波了，其实还可以贵一点啊', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3600', '27061666', '直营店不是全国就两家吗？深圳上海各一家', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3601', '27061666', '抢不到啊', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3602', '27061666', '一年要求太低了吧，麒麟980及以后的随随便便两三年啊，内存大点5年不是问题', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3603', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3604', '27061666', '研发不用钱吗？不是你们消费者买单难道要企业做慈善?爱它就买它，好吧。', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3605', '27061666', '加价的一般是授权店，直营呢想买只能排队。', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3606', '27061666', '试试续航蹦不蹦 不蹦考虑老婆11max换12max', '0', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3607', '27061666', '我的p30pro已经卡顿了。我觉得可能是我微信从来不删除东西引起的。等辞职就可以刷机了', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3608', '27061666', '看微博，三星不是第一吗，这么多kol都在吹', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3609', '27061666', '华为三星都在用。。。同价还是三星香', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3610', '27061666', '用了一年的p30，一点都不卡，希望以后麒麟芯片的替代芯片也能做到用一年不卡', '0', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3611', '27061666', '好好好，买买买。反正我抢不到。', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3612', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3613', '27061666', '为我国点值', '0', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3614', '27061666', '你这话说的，按你这话的逻辑难道你们华为粉会喷某些华为产品？你评论里不都是各种华为好，其他的不好？华为电视都能和索尼平起平坐了，你说别人无可救药？', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3615', '27061666', '实体店，花349元多买一个华为路由器，抢了一个', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3616', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3617', '27061666', '哪个专营店敢加价卖？举报就完事儿了嗷。', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3618', '27061666', '买了挣1500', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3619', '27061666', '真的。。上次我就回了一句，这年头谁还用三星。。就被讽华为国外有人用吗。。。这跟华为有半毛钱关系', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3620', '27061666', '谢谢给我海军的称呼，但我只做过陆军没做过海军，中国人民海军从来就不是贬义词，所以谢谢。', '0', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3621', '27061666', '啧啧，海军你好。', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3622', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 11:27:59');
INSERT INTO `good_comment` VALUES ('3623', '27061666', '这就是拿爱国绑架华为的理由了？', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3624', '27061666', '白色全网好像都没有见过', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3625', '27061666', '我亲戚家某人原来在某为工作，嫌太累，去阿里了', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3626', '27061666', '后面八卦可是驱邪神器！', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3627', '27061666', '你何时拿着放大镜看过其他企业？', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3628', '27061666', '还不是水军不够多', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3629', '27061666', '为什么要保时捷不是比亚迪？', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3630', '27061666', '某企业违法劳动法，还特么不给加班费', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3631', '27061666', '瞎说什么大实话', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3632', '27061666', '缺德的价格  我不用苹果 但苹果在他果买700-1100美元', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3633', '27061666', '此用户认为【HUAWEI 华为 ...】性价比高', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3634', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3635', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3636', '27061666', '不需要加点成本吗', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3637', '27061666', '翻开看他历史评论，逢华为必喷，', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3638', '27061666', '确实比苹果值！', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3639', '27061666', '某企业带头违反劳动法996', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3640', '27061666', '这是要全系卖保时捷的节奏，保证利益最大化', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3641', '27061666', '法拉利设计多钱？', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3642', '27061666', '这里都是代抢吗？买这手机的人应该没时间抢吧', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3643', '27061666', '抢到的会自用吗？', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3644', '27061666', '我这里比较道德，只要3500，，，，哈哈哈，，', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3645', '27061666', '对不起，我是缺乏情怀的人，我点了一个不值。', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3646', '27061666', '此用户认为【HUAWEI 华为 ...】商品好', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3647', '27061666', '抢不到，把爱国的心和包里的钱都给我留下了', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3648', '27061666', '天天说华为爱国绑架，实际天天拿爱国绑架华为。', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3649', '27061666', '高攀不起，打扰了', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3650', '27061666', '白客#用了它就能像我一样强大吗？', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3651', '27061666', '一边说着没货，一边华为自己专营门店里加四千就可以买，呵呵', '1', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3652', '27061666', '买买买，帮助华为渡过难关，打败美国', '0', '2020-11-15 11:28:09');
INSERT INTO `good_comment` VALUES ('3653', '27061666', '耍了一个月猴，从此看到华为手机就点不值，有钱还买不到手机嘛？12max正在路上了', '1', '2020-11-15 11:28:15');
INSERT INTO `good_comment` VALUES ('3654', '27061666', '此用户认为【11999元包邮】价格值', '1', '2020-11-15 11:28:15');
INSERT INTO `good_comment` VALUES ('3655', '27061666', '这还有点不值的？值爆好嘛?', '1', '2020-11-15 11:28:15');
INSERT INTO `good_comment` VALUES ('3656', '27061666', '无', '0', '2020-11-15 11:28:15');
INSERT INTO `good_comment` VALUES ('3657', '27061666', '手机外观设计真的遇到了瓶颈 保时捷设计也没有眼前一亮的感觉', '0', '2020-11-15 10:28:15');
INSERT INTO `good_comment` VALUES ('3658', '27061666', '我就是看到华为过来点个不值的', '1', '2020-11-15 10:28:15');
INSERT INTO `good_comment` VALUES ('3659', '27061666', '在座的有人抢到过吗', '0', '2020-11-15 10:28:15');
INSERT INTO `good_comment` VALUES ('3660', '27061666', '网上这么多吹三星索尼的，楞是把三星索尼的大陆市场买亡了，真是想不通', '0', '2020-11-15 10:28:15');
INSERT INTO `good_comment` VALUES ('3661', '27061666', '不知怎么的，就进来点了个值，', '1', '2020-11-15 10:28:15');
INSERT INTO `good_comment` VALUES ('3662', '27061666', '库存100都没', '1', '2020-11-15 10:28:15');
INSERT INTO `good_comment` VALUES ('3663', '27061666', '把爱国的心，默默地藏起来！', '0', '2020-11-15 10:28:15');
INSERT INTO `good_comment` VALUES ('3664', '27061666', '抢了一个礼拜了，依旧没有抢到', '0', '2020-11-15 10:28:15');
INSERT INTO `good_comment` VALUES ('3665', '27061666', '这明明写的17号啊', '1', '2020-11-15 10:28:15');
