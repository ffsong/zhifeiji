mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: zfj
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `post_count` int(11) NOT NULL DEFAULT '0' COMMENT '帖子数',
  PRIMARY KEY (`id`),
  KEY `categories_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'分享','分享创造，分享发现',0),(2,'教程','开发技巧、推荐扩展包等',0),(3,'生活','请保持友善，互帮互助',0),(4,'公告','站点公告',0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源的描述',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资源的链接',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `links_title_index` (`title`),
  KEY `links_link_index` (`link`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_04_18_101203_add_avatar_and_introduction_to_users_table',1),(4,'2019_04_18_140241_create_categories_table',1),(5,'2019_04_18_141131_seed_categories_data',1),(6,'2019_04_18_143226_create_topics_table',1),(7,'2019_04_19_151617_create_failed_jobs_table',1),(8,'2019_04_22_141643_create_replies_table',1),(9,'2019_04_22_152111_create_notifications_table',1),(10,'2019_04_22_152232_add_notification_count_to_users_table',1),(11,'2019_04_23_140713_create_permission_tables',1),(12,'2019_04_23_141315_seed_roles_and_permissions_data',1),(13,'2019_04_23_162142_create_links_table',1),(14,'2019_04_24_095152_add_last_actived_at_to_users_table',1),(15,'2019_04_25_144126_add_api_token_to_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'manage_contents','web','2019-05-05 10:20:24','2019-05-05 10:20:24'),(2,'manage_users','web','2019-05-05 10:20:24','2019-05-05 10:20:24'),(3,'edit_settings','web','2019-05-05 10:20:24','2019-05-05 10:20:24');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `replies_topic_id_index` (`topic_id`),
  KEY `replies_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (1,2,1,'<p>+1</p>','2019-05-17 16:08:52','2019-05-17 16:08:52'),(2,2,1,'<p>+2</p>','2019-05-17 16:09:14','2019-05-17 16:09:14');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(1,2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Founder','web','2019-05-05 10:20:24','2019-05-05 10:20:24'),(2,'Maintainer','web','2019-05-05 10:20:25','2019-05-05 10:20:25');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_reply_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_title_index` (`title`),
  KEY `topics_user_id_index` (`user_id`),
  KEY `topics_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'Filewalld（动态防火墙）打开关闭防火墙与端口基本使用','<ul><li><p>firewalld的基本使用</p><ul><li>启动：<code>systemctl start firewalld</code></li><li>关闭：<code>systemctl stop firewalld</code></li><li>查看状态：<code>systemctl status firewalld</code></li><li>开机禁用：<code>systemctl disable firewalld</code></li><li>开机启用 ：<code>systemctl enable firewalld</code></li></ul></li><li><p>systemctl是CentOS7的服务管理工具中主要的工具，它融合之前service和chkconfig的功能于一体。</p><ul><li>启动一个服务：<code>systemctl start firewalld.service</code></li><li>关闭一个服务：<code>systemctl stop firewalld.service</code></li><li>重启一个服务：<code>systemctl restart firewalld.service</code></li><li>显示一个服务的状态：<code>systemctl status firewalld.service</code></li><li>在开机时启用一个服务：<code>systemctl enable firewalld.service</code></li><li>在开机时禁用一个服务：<code>systemctl disable firewalld.service</code></li><li>查看服务是否开机启动：<code>systemctl is-enabled firewalld.service</code></li><li>查看已启动的服务列表：<code>systemctl list-unit-files|grep enabled</code></li><li>查看启动失败的服务列表：<code>systemctl --failed</code></li></ul></li><li><p>配置firewalld-cmd</p><ul><li>查看版本： <code>firewall-cmd --version</code></li><li>查看帮助： <code>firewall-cmd --help</code></li><li>显示状态： <code>firewall-cmd --state</code></li><li>查看所有打开的端口： <code>firewall-cmd --zone=public --list-ports</code></li><li>更新防火墙规则： <code>firewall-cmd --reload</code></li><li>查看区域信息: <code>firewall-cmd --get-active-zones</code></li><li>查看指定接口所属区域： <code>firewall-cmd --get-zone-of-interface=eth0</code></li><li>拒绝所有包：<code>firewall-cmd --panic-on</code></li><li>取消拒绝状态：<code>firewall-cmd --panic-off</code></li><li>查看是否拒绝： <code>firewall-cmd --query-panic</code></li></ul></li><li><p>添加删除端口</p><ul><li>添加：<code>firewall-cmd --zone=public --add-port=80/tcp --permanent</code> （--permanent永久生效，没有此参数重启后失效）</li><li>重新载入：<code>firewall-cmd --reload</code></li><li>查看：<code>firewall-cmd --zone= public --query-port=80/tcp</code></li><li>删除：<code>firewall-cmd --zone= public --remove-port=80/tcp --permanent</code></li></ul></li></ul>\n\n<blockquote><p>原文：<a href=\"https://www.cnblogs.com/moxiaoan/p/5683743.html\">https://www.cnblogs.com/moxiaoan/p/5683743.html</a></p></blockquote>',1,1,0,0,0,0,'firewalld的基本使用启动：systemctl start firewalld关闭：systemctl stop firewalld查看状态：systemctl status firewalld开机禁用：systemctl disable firewalld开机启用 ：systemctl enable firewalldsystemctl...',NULL,'2019-05-06 15:19:06','2019-05-06 15:30:16'),(2,'centos7下git服务器端搭建','<ul><li><p>创建git（可随意命名）用户并设置密码</p><pre><code>adduser git \npasswd git\n</code></pre></li><li><p>创建证书登录</p></li></ul>\n\n<blockquote><p>收集所有需要登录的用户的公钥,公钥位于id_rsa.pub文件中,把公钥导入/home/git/.ssh/authorized_keys文件里，一行一个。如果没有该文件创建它git 安装及配置参考</p></blockquote>\n\n<pre><code>  cd /home/git/ \n  mkdir .ssh \n  chmod 700 .ssh \n  touch .ssh/authorized_keys \n  chmod 600 .ssh/authorized_keys\n</code></pre>\n\n<ul><li>初始化Git仓库</li></ul>\n\n<blockquote><p>首先我们选定一个目录作为Git仓库，假定是/opt/git/project.git</p></blockquote>\n\n<pre><code> cd /opt/\n mkdir git\n chown git:git git/\n cd git\n git init --bare test.git\n</code></pre>\n\n<p>以上命令Git创建一个空仓库，服务器上的Git仓库通常都以.git结尾。然后，把仓库所属用户改为git：</p>\n\n<p><code>chown -R git:git test.git</code></p>\n\n<ul><li>仓库拉取</li></ul>\n\n<p><code>git clone git@192.168.1.12:/opt/git/test.git #可能需要输入git用户密码，可配置ssh 免密操作</code></p>\n\n<ul><li>禁止git用户shell登录</li></ul>\n\n<p><code>vim /etc/passwd</code></p>\n\n<blockquote><p>修改git的bash 从/bin/bash改为/usr/bin/git-shell</p></blockquote>\n\n<p><strong>注意：所有相关目录和文件用户组和用户均为一开始创建的用户</strong></p>',1,2,2,0,0,0,'创建git（可随意命名）用户并设置密码adduser git  passwd git 创建证书登录 收集所有需要登录的用户的公钥,公钥位于id_rsa.pub文件中,把公钥导入/home/git/.ssh/authorized_keys文件里，一行一个。如果没有该文件创...',NULL,'2019-05-17 11:47:40','2019-05-17 16:09:14'),(3,'生成多个git ssh密钥','<p>如果你已经有了一套名为 id_rsa 的公秘钥，将要生成另外一个公钥，比如 my，你也可以使用任何你喜欢的名字。</p>\n\n<p>步骤如下：</p>\n\n<ol><li><p>生成一个新的自定义名称的公钥：</p><p><code>ssh-keygen -t rsa -C \"YOUR_EMAIL@YOUREMAIL.COM\" -f ~/.ssh/my</code></p><p> 执行命令后，生成命名的公钥和生成默认公钥的步骤一样。</p><p> 执行完成后，会在 ~/.ssh/目录下生成一个 id_rsa_my（私钥） 和 id_rsa_my.pub（公钥） 文件。</p></li><li><p>在 SSH 用户配置文件 ~/.ssh/config 中指定对应服务所使用的公秘钥名称，如果没有 config（相当于一个映射文件） 文件的话就新建一个，并输入以下内容：</p><pre><code>Host github.com  （相当于一个别名，远程仓库地址的域名别名）\nHostName github.com （平台域名）\nUser aaa@email.cpm （用户名）\nPreferredAuthentications publickey（固定的）\nIdentityFile ~/.ssh/rsa_my   （对应使用的ssh key目录）\n\nHost aa\nHostName gitee.com\nUser aaa@email.cpm\nPreferredAuthentications publickey\nIdentityFile ~/.ssh/id_rsa_test\n</code></pre></li><li><p>测试是否能够通信</p></li></ol>\n\n<p><code>ssh -T github.com</code></p>\n\n<p><code>ssh -T aa</code></p>\n\n<p>如果成功<code>Hi xxx! You\'ve successfully authenticated, xxxx</code></p>',1,1,0,0,0,0,'如果你已经有了一套名为 id_rsa 的公秘钥，将要生成另外一个公钥，比如 my，你也可以使用任何你喜欢的名字。 步骤如下： 生成一个新的自定义名称的公钥：ssh-keygen -t rsa -C \"YOUR_EMAIL@YOUREMAIL.COM\" -f ~/.ssh...',NULL,'2019-05-17 16:00:36','2019-05-17 16:00:36'),(4,'全都是泡沫， 一刹那的花火','<p><a href=\"http://www.coding10.com/post/find-yourself-in-this-world\">全都是泡沫， 一刹那的花火</a></p>',1,3,0,0,0,0,'全都是泡沫， 一刹那的花火',NULL,'2019-05-22 11:37:07','2019-05-22 11:37:07'),(5,'git 常用命名','<p>查看git版本：<code>git --version</code></p>\n\n<p>从远程从库克隆项目：<code>git clone</code></p>\n\n<p>初始化git仓库：<code>git init</code></p>\n\n<p>查看文件状态：<code>git status</code></p>\n\n<p>将所有文件添加到文件缓冲区待提交: <code>git add .</code></p>\n\n<p>提交到版本库：git commit -m \"提交备注\"</p>\n\n<p>添加本地仓库和远程仓库关联：<code>git remote add origin git@github.com:test/test.git</code></p>\n\n<p>查看推送到远程仓库的地址：<code>git remote -v</code></p>\n\n<p>推送本地当前分支到origin远程master分支：<code>git push origin master</code></p>\n\n<p>查看分支情况：<code>git branch -a</code></p>\n\n<p>创建新的分支并切换到新建的分支：<code>git checkout -b 分支名</code></p>\n\n<p>切换分支：<code>git checkout 分支名</code></p>\n\n<p>合并分支：<code>git merge 被合并的分支名</code></p>\n\n<p>删除分支：<code>git branch -D dev(分支名)</code></p>\n\n<p>撤销提交：<code>git reset  --hard head^</code></p>',1,1,0,0,0,0,'查看git版本：git --version 从远程从库克隆项目：git clone 初始化git仓库：git init 查看文件状态：git status 将所有文件添加到文件缓冲区待提交: git add . 提交到版本库：git commit -m \"提交备注\" 添加本地仓...',NULL,'2019-06-13 15:59:23','2019-06-13 16:05:52'),(6,'分辨http请求是否使用代理访问','<p><span style=\"color:rgb(68,68,68);font-size:12px;\">一、没有使用代理服务器的情况：</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">REMOTE_ADDR：您的 IP。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_VIA ：没数值或不显示。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_X_FORWARDED_FOR：没数值或不显示。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">二、使用透明代理服务器的情况：Transparent Proxies</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">REMOTE_ADDR ：最后一个代理服务器 IP。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_VIA ：代理服务器 IP。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_X_FORWARDED_FOR ：您的真实 IP ，经过多个代理服务器时，这个值类似如下：203.98.182.163, 203.98.182.163, 203.129.72.215。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">这类代理服务器还是将您的信息转发给您的访问对象，无法达到隐藏真实身份的目的。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">三、使用普通匿名代理服务器的情况：Anonymous Proxies</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">REMOTE_ADDR ：最后一个代理服务器 IP。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_VIA ：代理服务器 IP。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_X_FORWARDED_FOR = 代理服务器 IP ，经过多个代理服务器时，这个值类似如下：203.98.182.163, 203.98.182.163, 203.129.72.215。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">隐藏了您的真实IP，但是向访问对象透露了您是使用代理服务器访问他们的。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">四、使用欺骗性代理服务器的情况：Distorting Proxies</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">REMOTE_ADDR ：代理服务器 IP。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_VIA ：代理服务器 IP。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_X_FORWARDED_FOR：随机的 IP ，经过多个代理服务器时，这个值类似如下：203.98.182.163, 203.98.182.163, 203.129.72.215。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">告诉了访问对象您使用了代理服务器，但编造了一个虚假的随机IP代替您的真实IP欺骗它。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">五、使用高匿名代理服务器的情况：High Anonymity Proxies (Elite proxies)</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">REMOTE_ADDR ：代理服务器 IP。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_VIA：没数值或不显示。</span></p>\n\n<p><span style=\"color:rgb(68,68,68);font-size:12px;\">HTTP_X_FORWARDED_FOR ：没数值或不显示 ，经过多个代理服务器时，这个值类似如下：203.98.182.163, 203.98.182.163, 203.129.72.215。</span></p>',1,1,0,0,0,0,'一、没有使用代理服务器的情况： REMOTE_ADDR：您的 IP。 HTTP_VIA ：没数值或不显示。 HTTP_X_FORWARDED_FOR：没数值或不显示。 二、使用透明代理服务器的情况：Transparent Proxies REMOTE_ADDR ：最后一个代理服...',NULL,'2019-06-21 10:57:06','2019-06-21 10:57:06');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_actived_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'zhifeiji','1262615182@qq.com','2019-05-06 10:27:28','$2y$10$/Oa1jlC13L.O.cmFfkA/g.b/bQms7Kt2T1NFuEbWoCX4mOYG5Kk22',NULL,NULL,'2019-05-05 11:55:52','2019-05-17 16:11:34','http://118.24.105.175/uploads/images/avatars/201905/17/1_1558080693_FMW6b0TKzq.jpeg',NULL,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-04  1:40:06
