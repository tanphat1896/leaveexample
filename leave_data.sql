/*
Navicat MySQL Data Transfer

Source Server         : mariadb
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : leave

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-06-18 22:52:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'HR');
INSERT INTO `department` VALUES ('2', 'IT');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `position` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dept_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `manager_flag` char(1) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`emp_id`),
  KEY `dept_id` (`dept_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'Prof. Sierra Friesen PhD', '1996-08-01', 'Manager', '2', null, '1', 'noah14@example.org', 'lueilwitz.gaylord', '$2y$10$zqc.HVRPEVgq0R0GKOS6d.aBX5cf9Z7IsFHGH321Dd2NYvVJ5PODy', '01659.027.231', '933 Alessandra Point Suite 486\nNorth Blanche, AR 37625-8765', '0');
INSERT INTO `employee` VALUES ('2', 'Mckenna Rodriguez', '1996-08-01', 'Manager', '1', null, '1', 'nash.nikolaus@example.org', 'xfahey', '$2y$10$B/t5ghxk/ATDcVQXGqi.HOma0UPrDQv7uv56WAH4Dv1s2kWQfPHJm', '01659.027.231', '164 Tia Crossroad\nMosciskifort, OK 00738', '1');
INSERT INTO `employee` VALUES ('3', 'Dagmar Mohr', '1996-08-01', 'Manager', '1', null, '1', 'lelah40@example.com', 'julius70', '$2y$10$IdeKt8Ky4wqA3384yJlLeOXIft9a3l1hYXRIdpO7t.oGDB8Tp2fdy', '01655.938.743', '52974 Jared Valley Apt. 520\nAglaeport, KS 16319-6928', '1');
INSERT INTO `employee` VALUES ('4', 'Bret Bernier Sr.', '1996-08-01', 'Manager', '1', null, '1', 'qosinski@example.com', 'mrutherford', '$2y$10$tp5X4R5LH7zXD1uwMkAH8.Lk9G8GbUWAqXEauJgc79zBAP/kQ7S.a', '01697.249.605', '124 Wunsch Drive Apt. 028\nNorth Ophelia, RI 58506', '0');
INSERT INTO `employee` VALUES ('5', 'Vella Carter', '1996-08-01', 'Manager', '1', null, '1', 'crunolfsson@example.net', 'meta66', '$2y$10$0RRY0SKAz9N5Vi7OI1xiBu4PeJFEplZkWG.ucEIE8NFrZDS/5Hg72', '01695.074.801', '17499 Graham Rapid Suite 495\nAudreychester, IL 68970-2740', '1');
INSERT INTO `employee` VALUES ('6', 'Camylle Kulas DVM', '1996-08-01', 'Manager', '1', null, '1', 'carli.sauer@example.net', 'tkoepp', '$2y$10$dk4UIKt60exr5sUtZCxloOGMalrlGMd6g.72u89lY//EnSk4MWJPO', '01662.915.824', '691 Durgan Terrace Apt. 771\nSchowalterbury, AK 28324-4275', '0');
INSERT INTO `employee` VALUES ('7', 'Hallie Quigley DVM', '1996-08-01', 'Manager', '2', null, '1', 'theresia.hills@example.com', 'tkuhlman', '$2y$10$5utzoigvwBwua2M96hAk0.ClobdaHHrzQM4q43CxhQjjRxv8xHJbq', '01663.846.631', '615 Hilpert Wall Suite 930\nEast Martafort, GA 57253', '0');
INSERT INTO `employee` VALUES ('8', 'Lila Wisoky', '1996-08-01', 'Manager', '1', null, '1', 'rippin.kaleigh@example.org', 'damon66', '$2y$10$C.RdPW64NQ137keYi10WyO1kZBE3.UF.cBKzEjoEGtl01bDJ5HN2S', '01674.731.401', '6237 Von Port Apt. 467\nDarleneside, ND 58968', '0');
INSERT INTO `employee` VALUES ('9', 'Chadrick Bergnaum I', '1996-08-01', 'Manager', '1', null, '1', 'jjohnston@example.com', 'eva.runte', '$2y$10$EEelVzN8DJZqGfOg4K2CBuCC5GHC.mVEKjnX/3hMYp3/3d6BN8dYi', '01695.074.801', '8923 Cary Turnpike\nEast Libby, NM 04842-3593', '1');
INSERT INTO `employee` VALUES ('10', 'Fermin Bechtelar', '1996-08-01', 'Manager', '2', null, '1', 'pacocha.rene@example.org', 'ines28', '$2y$10$xmLV8rXODfG0u/wFiwBHFuUTLSSleQlN9hRAGSXZFWD33lVjb/mn2', '01627.065.824', '62429 Rhiannon Court Apt. 730\nWest Freddiefort, NJ 45541', '0');
INSERT INTO `employee` VALUES ('11', 'Lea Armstrong', '1996-08-01', 'Architect', '1', '9', '0', 'hintz.donna@example.net', 'qlemke', '$2y$10$2WT2PJ7OMFZ/05IlN60ucOp2OT5GEN/CzBJ9m32P/PrFr1JJu64NC', '01697.249.605', '35672 Jo Park\nMozellborough, NC 52253', '1');
INSERT INTO `employee` VALUES ('12', 'Wilson Stark', '1996-08-01', 'Architect', '1', '3', '0', 'ohara.alexa@example.com', 'mclaughlin.norbert', '$2y$10$Gk7Cft.hdFAbZeubhoGg7OsNBIF5NYNDQyhGMtF9wTdfDm21v2aNG', '01674.731.401', '4412 Keara Neck\nDavisland, NC 56846', '0');
INSERT INTO `employee` VALUES ('13', 'Madilyn Kirlin', '1996-08-01', 'Architect', '1', '9', '0', 'icorwin@example.org', 'emiller', '$2y$10$XzVrmMsX7K3dbjI1jMH8NOZ2oLagedii./Ur1.m.r4L.WHj1xo6XK', '01699.617.841', '1397 Devonte River Apt. 332\nDannyhaven, CA 82416-2253', '0');
INSERT INTO `employee` VALUES ('14', 'Amparo Dietrich', '1996-08-01', 'Developer', '1', '9', '0', 'kylie73@example.org', 'stiedemann.jordy', '$2y$10$Lizh5fEJ5dy7TewC7cs2hOW8L/qsV25xkIsQdD8AelL8lQLVzJsQq', '01697.249.605', '8898 Tomasa Ramp\nWest Kenya, MT 62830', '0');
INSERT INTO `employee` VALUES ('15', 'Jerome Armstrong', '1996-08-01', 'Helpdesk', '1', '8', '0', 'mozell17@example.net', 'ervin.tillman', '$2y$10$3aF5E2ze9KseBjZw8c.mnOS1CfXHxwyjUS8PqXywvS1trnULEZS6a', '01697.249.605', '89999 Trace Ways\nBreannefurt, OR 85940-3344', '0');
INSERT INTO `employee` VALUES ('16', 'Dr. Elvie Kris', '1996-08-01', 'Analyst', '1', '6', '0', 'helena43@example.com', 'jessyca.harber', '$2y$10$iyAp8ucHa5AnIlEh8lhDAetjqkOHIB.yn/..JoQeBJ2CVZNZT5PIu', '01699.617.841', '1611 Ali Pine Apt. 667\nReggiefort, TN 11482', '1');
INSERT INTO `employee` VALUES ('17', 'Dr. Santiago Johnston V', '1996-08-01', 'Helpdesk', '2', '6', '0', 'alfonzo.schaefer@example.com', 'lonny66', '$2y$10$yaNpGqyJ6aYTLG3zOiAXWemZ4UrRBO7fFfl7wZCT4Fs4gSuCIZrrK', '01659.027.231', '24844 Schaefer Run Apt. 943\nMariliefort, IN 40293-1499', '1');
INSERT INTO `employee` VALUES ('18', 'Dr. Erika Rosenbaum I', '1996-08-01', 'Architect', '2', '1', '0', 'kdickinson@example.com', 'beverly91', '$2y$10$vxYVHPxRYWL90qppHAU9t.5w61IlKuUYZZJYXikHeNBm6NUyGgv9i', '01657.314.961', '32674 Chaz Creek Suite 031\nLake Dillan, NH 77687-6652', '1');
INSERT INTO `employee` VALUES ('19', 'Shany Purdy', '1996-08-01', 'Engineer', '2', '7', '0', 'louvenia.kuhlman@example.com', 'hickle.clara', '$2y$10$/uc1xQbfLxExvsQsYHqlKeEHghpJ4vWnanmSTYOO8U7AN63GMDt6C', '01672.483.524', '14316 Jacobs Squares\nWizafort, FL 52457', '0');
INSERT INTO `employee` VALUES ('20', 'Eulalia Smith', '1996-08-01', 'Architect', '1', '6', '0', 'qklocko@example.net', 'vfadel', '$2y$10$oKCaVZcf9pLoGlH7o.xpvO.nOavHhV.5oDacDRNZQ6j/6dVAtz/nq', '01662.915.824', '519 Stehr Cove Apt. 948\nReillyfurt, FL 78256-5799', '0');
INSERT INTO `employee` VALUES ('21', 'Mr. Theodore Becker DDS', '1996-08-01', 'Engineer', '2', '6', '0', 'elyse.considine@example.net', 'yhagenes', '$2y$10$Qt6QGkhwKb.ea1ztf43Pd.N1inbyNKYvdZ50eNV5OLgynj/qLMCOS', '01672.591.703', '75497 Hintz Green\nSmithbury, WA 90641', '0');
INSERT INTO `employee` VALUES ('22', 'Savanah Robel', '1996-08-01', 'Analyst', '2', '8', '0', 'garth.torphy@example.net', 'bella96', '$2y$10$1oytnwml/gjbPoKpKSr0U.ICi4UPscwLJen6wWNGXHYFAgCGvPzfe', '01697.249.605', '939 Kane Coves\nBrainfort, DE 41755-4258', '1');
INSERT INTO `employee` VALUES ('23', 'Cassandra Carter', '1996-08-01', 'Analyst', '2', '5', '0', 'noemi.block@example.com', 'ddonnelly', '$2y$10$K47khYBwg/u4PptRa2fjcOWII5ETtxmAwRx7RPiCvynPJoK6YAxhW', '01659.063.142', '5061 Hane Knolls Apt. 113\nHarveyfort, MI 84783', '0');
INSERT INTO `employee` VALUES ('24', 'Brandi Rowe V', '1996-08-01', 'Analyst', '1', '8', '0', 'connor08@example.org', 'tbartell', '$2y$10$vItuxiV0WTwbjtdTl6k2FeNraQ3.3kCtOD0HcxYmkHcvzNEG0w432', '01672.483.524', '8535 Bruen Bridge Apt. 907\nDavisborough, PA 14075-5742', '0');
INSERT INTO `employee` VALUES ('25', 'Vivianne Von MD', '1996-08-01', 'Helpdesk', '1', '10', '0', 'qfadel@example.com', 'shields.garrison', '$2y$10$8qRxnAI82fqBFJEtdwkhz.JvDpcrOfXXghZuLJIonl.6VRPutgF0u', '01699.617.841', '4312 Dayton Stravenue\nVellatown, SC 15252', '1');
INSERT INTO `employee` VALUES ('26', 'Patience Wunsch DVM', '1996-08-01', 'Analyst', '2', '7', '0', 'ydickinson@example.org', 'homenick.ally', '$2y$10$KCHz78qWLXxVhUnm/.8E/eJUi8kVrJKVFXXUuSJ2ZURw3nfOoSH5i', '01697.249.605', '8700 Wunsch Estate Apt. 915\nPort Nyah, MA 22224-7892', '0');
INSERT INTO `employee` VALUES ('27', 'Kenya Bosco', '1996-08-01', 'Developer', '2', '5', '0', 'gveum@example.com', 'minerva33', '$2y$10$YjV23ztaM7YLAUE2.khCY.D1mIebFUPuP4Ok2nUUmvdGk1Kez.uS6', '01674.850.042', '65536 Luettgen Springs Apt. 648\nFredrickfort, WY 81223-7609', '1');
INSERT INTO `employee` VALUES ('28', 'Morgan Ziemann', '1996-08-01', 'Architect', '2', '6', '0', 'kpouros@example.org', 'brakus.berry', '$2y$10$tMiet97o1ZEt5PQ8o1P5k.ClItBzjAKdZvO4fgohIA5mEW1FHDbE.', '01697.249.605', '8918 Greenfelder Vista Suite 379\nIgnacioshire, NH 91195-6057', '0');
INSERT INTO `employee` VALUES ('29', 'Nikolas Hackett', '1996-08-01', 'Analyst', '1', '5', '0', 'ladarius93@example.net', 'rtreutel', '$2y$10$f84q9cfev/t7A.6Wxj.Y0eSaE.MsIthk1WOTbyzJWHrvTivWLMDFC', '01672.483.524', '99841 Florence Mall Apt. 325\nLake Rosanna, KY 23550', '0');
INSERT INTO `employee` VALUES ('30', 'Yvonne Kreiger MD', '1996-08-01', 'Analyst', '1', '2', '0', 'darryl.jaskolski@example.com', 'roberto50', '$2y$10$a5loUJnjlRiCGmhnoaUSM.m7q.q6GDkRE4zsE.TN/i9YOmyj16gDa', '01697.249.605', '13476 Logan Crossing\nStromanberg, VA 16955-0831', '1');
INSERT INTO `employee` VALUES ('31', 'Miss Daniella Hansen', '1996-08-01', 'Architect', '2', '4', '0', 'stark.kenna@example.org', 'fahey.jordon', '$2y$10$p3G7iOhDfwHkugDK9v1Da.n57p4LOAJUBHEdW6717b5xyrI5bQtGm', '01692.945.713', '200 Smitham Field Apt. 509\nMarielabury, UT 08922', '0');
INSERT INTO `employee` VALUES ('32', 'Milford Abshire', '1996-08-01', 'Analyst', '1', '4', '0', 'maximilian.windler@example.net', 'funk.allan', '$2y$10$GKX8NmcKpwTh7b2Vp.PyaeO2uByJo9hzj/ahNsCUUZ1g83dvdiJYm', '01672.413.051', '822 Minerva Crossroad Suite 162\nMonahanbury, CA 33995', '0');
INSERT INTO `employee` VALUES ('33', 'Noemi Cormier', '1996-08-01', 'Developer', '2', '9', '0', 'ibogan@example.org', 'freda.anderson', '$2y$10$VbIb7qInHLKIJSOLkU1anuAuo49hv4HCr922bwy1zrAwvEokQuWmi', '01659.063.142', '932 Coralie Ridges\nDomingobury, WI 29902', '0');
INSERT INTO `employee` VALUES ('34', 'Arianna Corkery', '1996-08-01', 'Analyst', '1', '3', '0', 'schroeder.carmine@example.net', 'abashirian', '$2y$10$f7rpIBHq7chIstA3vbEbXeq5VAJ9sYsvkzu.JdA2S8Lieq9CjQFwe', '01672.591.703', '2398 Oren Brooks Apt. 507\nSouth Faychester, ID 61568-4584', '0');
INSERT INTO `employee` VALUES ('35', 'Enrico Vandervort', '1996-08-01', 'Analyst', '2', '10', '0', 'alexandrea.legros@example.com', 'paucek.hank', '$2y$10$lmWi6Q0ARTeAt5Vv9VVP2OHKLGNiNZayEFVjYhjZqjlmlcVqucf9C', '01676.463.412', '783 Jacobson Mission\nLake Norval, AK 35387', '1');
INSERT INTO `employee` VALUES ('36', 'Prof. Andrew Green PhD', '1996-08-01', 'Engineer', '1', '5', '0', 'cmoen@example.com', 'hank01', '$2y$10$GENahfGKETfkzHmZcIGgDOSMD/PpdbXaP7Xsh2tMlGgyYPypfXVSS', '01699.617.841', '95994 Osinski Harbor\nRolfsonbury, SD 55704-4213', '0');
INSERT INTO `employee` VALUES ('37', 'Cletus Vandervort', '1996-08-01', 'Engineer', '2', '1', '0', 'trisha.torp@example.net', 'uprohaska', '$2y$10$L4q2lcDxwnSXqYGusi8Ta.KBnyftQT6mRYNRjL8T7cjBPGEH1DYna', '01627.065.824', '429 Kobe Landing\nSouth Daniella, CO 21387-4201', '0');
INSERT INTO `employee` VALUES ('38', 'Ali Olson Sr.', '1996-08-01', 'Architect', '2', '10', '0', 'deckow.rasheed@example.com', 'chaz32', '$2y$10$Ejr3ZfDFhc9TPrsiAHMMXO8Fs/rhegn2tGYwNau6AD77Eexr9SXse', '01655.938.743', '35327 Rocky Streets\nZiemannport, ME 46846-2052', '1');
INSERT INTO `employee` VALUES ('39', 'Nico Runolfsdottir I', '1996-08-01', 'Architect', '1', '8', '0', 'jimmy82@example.com', 'wdooley', '$2y$10$SnImfvzOBNjPVoeMGH5LuuGoKE4Z4jK0o6.S.mUrozVIR7NDh7NEW', '01652.206.842', '346 Paucek Track\nLeannhaven, CT 41795', '0');
INSERT INTO `employee` VALUES ('40', 'Prof. Gillian Greenholt DVM', '1996-08-01', 'Developer', '1', '9', '0', 'jarrell.lowe@example.org', 'ajacobs', '$2y$10$6ik4axz0NbIWqOFBcqBmCuiLOfMskdlzHq9rrmLbgErRDVpfhN9Mi', '01672.413.051', '420 Bode Meadows Apt. 548\nLake Unique, SC 24689-6033', '1');
INSERT INTO `employee` VALUES ('41', 'Dominic Lubowitz PhD', '1996-08-01', 'Analyst', '1', '7', '0', 'koch.magdalena@example.org', 'windler.judge', '$2y$10$pWh6Hy1Na7sriin0OqH8KurlPHawvoLb5x716qrafGJjoco.E/qxe', '01657.314.961', '833 Alessandro Way Suite 102\nNew Haskell, OH 79940', '0');
INSERT INTO `employee` VALUES ('42', 'Maci Cummerata I', '1996-08-01', 'Engineer', '1', '1', '0', 'leilani.bartell@example.org', 'kiara66', '$2y$10$xTU3k5vopDMjjlJwhAy0uuSm14CRmTl0jBM59fdyTxj3qU5oIlBym', '01674.850.042', '815 Gonzalo Run Apt. 184\nConstanceberg, SC 59029', '1');
INSERT INTO `employee` VALUES ('43', 'Maud Stanton', '1996-08-01', 'Analyst', '1', '1', '0', 'leopold90@example.org', 'johnny.ziemann', '$2y$10$Fs.fqFqfuZ7jCI5HTch.I.wlNyGZCe7Qvvx9FLd5AgIRDt6XrbNnS', '01662.915.824', '54000 Carroll Lights\nNorth Graciela, AR 82214-7350', '0');
INSERT INTO `employee` VALUES ('44', 'Prof. Matilde Sauer', '1996-08-01', 'Analyst', '1', '6', '0', 'beer.andreane@example.com', 'qchamplin', '$2y$10$Vs7tg/vqN/cg76SYFa2I9uv682P4UlfzSdA79HBbhYKw8sLNLUQ12', '01627.065.824', '500 Shanahan Glen\nNorth Harmony, NM 18745', '0');
INSERT INTO `employee` VALUES ('45', 'Dr. Okey O\'Conner', '1996-08-01', 'Engineer', '1', '2', '0', 'haven.hartmann@example.com', 'lesch.lamar', '$2y$10$gVK1l5flTLAedIskn1/7xeSdp04Z44pf8ew/8/ENBLTzzIA6v52oi', '01655.938.743', '841 Kling Crescent Suite 646\nMadalynland, KS 72430-2425', '0');
INSERT INTO `employee` VALUES ('46', 'Prof. Elisabeth Murray', '1996-08-01', 'Architect', '2', '2', '0', 'rhianna61@example.net', 'xjenkins', '$2y$10$WyoixnLQre6erDISii05veGz9iKrkbHEC2acpPl.0sKraBZ9M9vB6', '01659.027.231', '33402 Giovanni Burg Suite 061\nPourosside, NC 96299-7218', '1');
INSERT INTO `employee` VALUES ('47', 'Lafayette Rolfson', '1996-08-01', 'Engineer', '2', '4', '0', 'vlakin@example.net', 'seichmann', '$2y$10$sBhYuyIObnBmUtyuuX2TAOa7gvjEJ0Y7qxtEBuv0PGm7fuB5tur6G', '01655.938.743', '798 Della Underpass\nNew Jakeport, DE 29615-9077', '1');
INSERT INTO `employee` VALUES ('48', 'Adah Becker', '1996-08-01', 'Analyst', '2', '2', '0', 'brakus.tremayne@example.org', 'brody.runte', '$2y$10$VmLlcMLTB3CqlgOlQnoeCO63ukXeVYEWQFM1Lf/8zlNSVFcDYt5Wy', '01684.335.914', '5821 Virginie Haven Apt. 383\nLake Briannestad, IA 99442-6990', '0');
INSERT INTO `employee` VALUES ('49', 'Bert Rempel', '1996-08-01', 'Helpdesk', '2', '9', '0', 'kendall22@example.net', 'johanna55', '$2y$10$uRkUY93lU3ETMKnfN/zW9eTpZgsZN16wLbaTFHnWSbpVncdx85vGu', '01699.617.841', '623 Gleichner Terrace\nLake Asa, NH 23825', '1');
INSERT INTO `employee` VALUES ('50', 'Prof. Kennedy Deckow DDS', '1996-08-01', 'Analyst', '1', '9', '0', 'gsmitham@example.org', 'layne.bashirian', '$2y$10$MwgwlEBeIt4mQEoRoWptJuX9Z2phuiI92GicoBNeBgDm9jvFDgjLq', '01672.591.703', '23187 Darrin Rest Suite 926\nPort Korbin, DE 72775-0494', '0');
INSERT INTO `employee` VALUES ('51', 'Ms. Kaelyn Romaguera', '1996-08-01', 'Analyst', '2', '1', '0', 'thad78@example.net', 'bparisian', '$2y$10$sRQBjsnBAedxBnUH0PkWTuCTAb1Iw64Zo.fLMLTY.4pel.WMn87fS', '01672.591.703', '610 Ritchie Springs Suite 845\nStoltenbergmouth, VT 27297', '0');
INSERT INTO `employee` VALUES ('52', 'Eula Leannon Jr.', '1996-08-01', 'Architect', '2', '6', '0', 'effertz.imelda@example.org', 'treutel.trevor', '$2y$10$8OH6lKGugrqh6Ytu9wi5Y.Q5g2zPXov51.jFrEaNfCg1cwdmuk2V.', '01659.027.231', '884 Lula Hill Suite 896\nRustystad, IA 84624-2596', '1');
INSERT INTO `employee` VALUES ('53', 'Wilfredo Kertzmann', '1996-08-01', 'Analyst', '2', '1', '0', 'daniela.vonrueden@example.com', 'herman.mateo', '$2y$10$Bs6Snim.51p3eaVQStkumeHcqYMu65eFpVz9XR7gyzZYjGHzc73ca', '01697.249.605', '965 Daugherty Green Suite 897\nSpinkashire, IN 34557-4735', '0');
INSERT INTO `employee` VALUES ('54', 'Bret Sawayn', '1996-08-01', 'Engineer', '1', '10', '0', 'catherine.harber@example.org', 'nlebsack', '$2y$10$UWpXTibzuyZ/zO3K1WxteOeip2gmBwPZVraKMhs4LzazBpgdqZAf6', '01695.074.801', '501 Damaris Trail Apt. 156\nPort Idella, VA 25271-4557', '0');
INSERT INTO `employee` VALUES ('55', 'Ottis Wiegand', '1996-08-01', 'Analyst', '1', '1', '0', 'pziemann@example.org', 'marcel20', '$2y$10$QUkvhttzuxSkC0QH/vuJp.BKByikh62S7.jBr.nAJGTPIf5PI0mSK', '01676.463.412', '772 Eliseo Pine Apt. 205\nGrayceview, KY 26017-9305', '0');
INSERT INTO `employee` VALUES ('56', 'Prof. Genevieve Jacobi DVM', '1996-08-01', 'Helpdesk', '1', '8', '0', 'marguerite45@example.com', 'yshanahan', '$2y$10$ctDksuXwdoPOw8k6X1u5peS7JHtka4BK77ADuHrUpeFXFtWX34PmO', '01672.413.051', '57851 Parisian Junctions Suite 128\nEast Reganfort, DC 65550-0130', '0');
INSERT INTO `employee` VALUES ('57', 'Modesta Ullrich', '1996-08-01', 'Analyst', '1', '4', '0', 'hane.martin@example.org', 'amarks', '$2y$10$sQhwyIGyWL7O1mYbOsKJh.o1.hA1rmkErEKf1fgjJzkmRHd5fzKnq', '01672.591.703', '41854 Schuppe Crescent Apt. 783\nWest Angelinaview, IL 10980-7632', '1');
INSERT INTO `employee` VALUES ('58', 'Maximo Haley Jr.', '1996-08-01', 'Developer', '2', '7', '0', 'keebler.lourdes@example.net', 'pzboncak', '$2y$10$gSCccrUgtKDyt8N2EMYRFe346wyMtX0gPTwOIru/ULCAflNIcJEhC', '01657.314.961', '74998 Spinka Loop\nZemlakland, WI 88193-7347', '1');
INSERT INTO `employee` VALUES ('59', 'Dr. Talon Fritsch', '1996-08-01', 'Developer', '1', '4', '0', 'bogisich.idell@example.net', 'candelario.toy', '$2y$10$BkBBM.JfMZM5WoEsK7LrPOc9w9HXkT8gkppzia3h31/AYB8E.gcUq', '01672.483.524', '3465 Brown Meadow Apt. 221\nEast Reeseport, WY 32666-2096', '0');
INSERT INTO `employee` VALUES ('60', 'Dr. Pietro Metz DDS', '1996-08-01', 'Helpdesk', '2', '2', '0', 'dasia66@example.org', 'giovani95', '$2y$10$SLsK3sgBDp1W15XCtcBNHeNCaEBz5sZarjNwQESeuBGrTVCqNAM.6', '01672.483.524', '986 Frami Islands\nLavonneport, OK 04325', '1');
INSERT INTO `employee` VALUES ('61', 'Merle Deckow', '1996-08-01', 'Developer', '1', '1', '0', 'berneice.lemke@example.net', 'wuckert.porter', '$2y$10$A4EzcfQnE/IoMDTcuT2Bv./0h4/tkDLxJmnJ5v9WOlGD4f6zBqQce', '01684.335.914', '79523 Hodkiewicz Prairie\nNorth Helgachester, AK 63900', '0');
INSERT INTO `employee` VALUES ('62', 'Dr. Grayce Padberg DDS', '1996-08-01', 'Helpdesk', '2', '4', '0', 'fbailey@example.com', 'yokon', '$2y$10$hVJ0AG0DcSv3E8a9mjdjVemfHhFb9vOMd1MIYrUEn5i7OM1sEHlKu', '01674.731.401', '9227 Emmerich Vista\nPort Justusview, MN 18366', '1');
INSERT INTO `employee` VALUES ('63', 'Dr. Alfredo Bins', '1996-08-01', 'Architect', '1', '6', '0', 'wanda.keebler@example.net', 'frederic.raynor', '$2y$10$D/bUpnXvrluDPRqNx3FUQ.YF9qelm2mGfx/11jSTFb30yV5LnwyTS', '01692.438.542', '69911 Vicky Forge\nKreigermouth, RI 13379-7735', '0');
INSERT INTO `employee` VALUES ('64', 'Peyton Bauch', '1996-08-01', 'Analyst', '1', '9', '0', 'letitia.jacobi@example.net', 'carolyne.becker', '$2y$10$3o0TT.JdzBaAkdJO80.5Xu145GisMpS/.Y1qNCR4q9LQ.4ycivVb.', '01672.413.051', '344 Batz Park\nLake Charleneland, NM 15344', '0');
INSERT INTO `employee` VALUES ('65', 'Landen Mohr', '1996-08-01', 'Analyst', '2', '10', '0', 'xander.reichel@example.net', 'carmen.mante', '$2y$10$7X49WyNtytsFUsq4.uvzXunYmYO6/gDBxodIF3k1WmsOmoL/sx0/u', '01697.249.605', '734 Osinski Extension Apt. 124\nWest Rosie, UT 04494', '1');
INSERT INTO `employee` VALUES ('66', 'Prof. Jaden Gaylord', '1996-08-01', 'Helpdesk', '2', '3', '0', 'kpacocha@example.com', 'daniel.sammy', '$2y$10$feVe2Ov9r.RTTyXXk4RM..ppXJLWoLrXsKypD.IRugnYPOpfeLVv.', '01674.731.401', '3397 Spinka Camp Suite 959\nEast Camrenborough, ND 82771-2123', '1');
INSERT INTO `employee` VALUES ('67', 'Harold Homenick', '1996-08-01', 'Helpdesk', '1', '7', '0', 'aimee67@example.org', 'okey.gulgowski', '$2y$10$imaY/HF6t.CF7FPJZlZOe.U3Z.So48qUj2uQUwPjV6gDi2fwG/.V2', '01695.074.801', '122 Ziemann Freeway Suite 701\nLake Davinville, OH 79629', '1');
INSERT INTO `employee` VALUES ('68', 'Krystal Gerlach', '1996-08-01', 'Architect', '2', '3', '0', 'colten.kilback@example.org', 'xjacobi', '$2y$10$Ir4Sn/TIwk9ynWCh4Xr7Z.pqboRvGaU0A5CsnBkeyS9Ej4rx.dUVy', '01684.335.914', '858 Russel Crest Apt. 408\nLake Kenya, NH 25453-6576', '0');
INSERT INTO `employee` VALUES ('69', 'Deja Heaney', '1996-08-01', 'Helpdesk', '1', '5', '0', 'hrussel@example.org', 'pouros.larue', '$2y$10$mtKqj1dyPy7R611P5LoFP.AQTcLvT5BG0zXbjvsbsA8DmgG8va97O', '01672.483.524', '654 Mante Spur Apt. 541\nVernaview, LA 99810-5657', '0');
INSERT INTO `employee` VALUES ('70', 'Miss Marie Klocko DVM', '1996-08-01', 'Engineer', '2', '3', '0', 'bailey.mayert@example.net', 'otis20', '$2y$10$k9IFrKQD/or6Y0/b.HXCF.lTpBWSP20KoywHM/ZVpwQmZMbkhnEHy', '01662.915.824', '78085 Will Causeway Suite 680\nKristofermouth, OK 59165', '0');
INSERT INTO `employee` VALUES ('71', 'Prof. Adalberto Hyatt', '1996-08-01', 'Developer', '1', '8', '0', 'ghahn@example.com', 'johns.demarcus', '$2y$10$U8FIEn/nmlJ6B7HPmM1KSO9AI0LEHaBziGv7vKatVIcvTAlw.4AZW', '01674.850.042', '8437 Simeon Ford Apt. 986\nNorth Layneport, OH 29055-8336', '1');
INSERT INTO `employee` VALUES ('72', 'Mrs. Mattie Hand', '1996-08-01', 'Developer', '1', '7', '0', 'ygusikowski@example.org', 'maxie.mccullough', '$2y$10$/ZXtwSLO4hg7NVY5l5qyBepu6am3OzEHUJKVYbs8kwvaKf7o6glXu', '01672.413.051', '35983 Dayne Loop\nAndersonmouth, NM 47666-1357', '0');
INSERT INTO `employee` VALUES ('73', 'Edythe Howe', '1996-08-01', 'Developer', '1', '3', '0', 'hodkiewicz.harry@example.com', 'durgan.cyril', '$2y$10$BdA7kr5Xf3TZ8wM30.s.JOZlaWrow6y1ZWHOd8TNjmLj35TCK9XyO', '01692.945.713', '594 Lynch Shoal\nPort Peter, MS 34012', '1');
INSERT INTO `employee` VALUES ('74', 'Otilia Satterfield', '1996-08-01', 'Developer', '1', '8', '0', 'cjenkins@example.com', 'cskiles', '$2y$10$Y6das2rLc9yJYAt4By1TneLIF0ugTM5ICOqipQtqEP47dHvNRFgxO', '01676.463.412', '5725 Rowe Squares\nPort Kaiatown, PA 13269', '0');
INSERT INTO `employee` VALUES ('75', 'Deja Murazik', '1996-08-01', 'Architect', '1', '1', '0', 'kasey.bartoletti@example.com', 'zhuels', '$2y$10$t2Mbg/yN2r2hp/C4ThEZc.29SyJ1x4V9554R97kr5Rz5ooEhy2K76', '01692.945.713', '79243 Williamson Locks\nSouth Ninaview, GA 32167-9052', '1');
INSERT INTO `employee` VALUES ('76', 'Walker Schulist', '1996-08-01', 'Architect', '1', '7', '0', 'langosh.nicolette@example.org', 'darwin.donnelly', '$2y$10$FrknO30GrsP.IspVT.mIf.u6WwR0Nr2o4ojO/KIfp35A69spKFpR.', '01627.065.824', '81430 Marquardt Terrace Apt. 907\nLake Ewellburgh, MT 73217', '1');
INSERT INTO `employee` VALUES ('77', 'Nina Schinner', '1996-08-01', 'Analyst', '2', '2', '0', 'stehr.abraham@example.net', 'hand.otis', '$2y$10$hBPtJiYcmToRks7T5Kx4AuOKLS6xqLfNph0Za7sz7KRQvkCXpUFea', '01662.915.824', '2111 Ruthie Row Suite 635\nWest Rudy, KY 54377-9172', '0');
INSERT INTO `employee` VALUES ('78', 'Prof. Sonia Little V', '1996-08-01', 'Helpdesk', '1', '9', '0', 'nienow.leo@example.org', 'badams', '$2y$10$6WyOvsH47hfR2ni15SFQFOytADn/wu2XqMubyf0Lkuy662iQejbTe', '01655.938.743', '372 Chaya Course Apt. 788\nEast Leonehaven, RI 89607', '1');
INSERT INTO `employee` VALUES ('79', 'Lon Rath III', '1996-08-01', 'Engineer', '1', '3', '0', 'edwin.cummerata@example.org', 'westley72', '$2y$10$eULDJB7ptvIg0K0orK9YlebJtMIbggtnEa6aRjCqHQne01atde2le', '01684.335.914', '867 Darby Drive Apt. 750\nLake Mackenzieburgh, KY 31747', '1');
INSERT INTO `employee` VALUES ('80', 'Miss Dixie Kassulke', '1996-08-01', 'Helpdesk', '2', '3', '0', 'ozulauf@example.com', 'xturcotte', '$2y$10$a9pix2oSAV0WTfurKUdHsebSx8y.IgF9nhXled5iiIQItbzwAhHxK', '01674.850.042', '548 Gleason Lodge\nLake Katrinemouth, FL 01670', '1');
INSERT INTO `employee` VALUES ('81', 'Dr. Iliana Roberts Sr.', '1996-08-01', 'Developer', '1', '1', '0', 'boyle.opal@example.com', 'grady.kailey', '$2y$10$8h0x.tdKoIfpwXBK08q5tOl7bMy/utx6/buGU73ndDMtRRg9QLII.', '01663.846.631', '67055 Stamm Valleys Suite 741\nNorth Vernie, MS 86240', '0');
INSERT INTO `employee` VALUES ('82', 'Sophia Miller', '1996-08-01', 'Developer', '2', '9', '0', 'lebsack.melisa@example.com', 'zieme.earnest', '$2y$10$.KAEO30ukKYwNRICRvFNze6hwsTkURA.W4pjVxH/a/keOZFERXogG', '01657.314.961', '476 Breitenberg Rest Suite 668\nWest Maxime, SD 30139', '0');
INSERT INTO `employee` VALUES ('83', 'Erich Wehner', '1996-08-01', 'Developer', '1', '6', '0', 'gschumm@example.org', 'kirlin.efren', '$2y$10$8SEHwSt/VjgQFfZ4Wz7B0uNiE.OJlH8/Q0Gvcg3iA0K1.nmI1CMha', '01695.074.801', '51389 Schuyler Meadows Suite 524\nPort Vernonview, DC 26883', '0');
INSERT INTO `employee` VALUES ('84', 'Filiberto Bahringer II', '1996-08-01', 'Developer', '2', '8', '0', 'ruecker.meaghan@example.com', 'stephen11', '$2y$10$8YJYf4ncw2eCpJJGW44IZO9f8mw3UFRq6r8pEcGfEpem7w/jAJUVu', '01657.314.961', '7979 Kerluke Track Apt. 202\nWest Brett, KS 49346-6407', '0');
INSERT INTO `employee` VALUES ('85', 'Hellen Bailey I', '1996-08-01', 'Developer', '1', '3', '0', 'rowan78@example.com', 'gracie58', '$2y$10$7deykZUMguGTij6VHfQNkuALBrlxa2A3MQ2yS0TFbm.FGJ20dItDu', '01659.027.231', '3142 Santa Isle\nNew Montana, WV 35783-6837', '0');
INSERT INTO `employee` VALUES ('86', 'Lelia Hayes', '1996-08-01', 'Engineer', '2', '2', '0', 'langosh.general@example.org', 'clifton.armstrong', '$2y$10$SlnHzwQVa6RI8qxla/nNKe/K5HQV5plI3ELdUyNkDkKW8.jXO9lGe', '01695.074.801', '8179 Judd Hill Apt. 070\nNew Cydneyview, OR 48740-1939', '1');
INSERT INTO `employee` VALUES ('87', 'Prof. Aimee Pacocha', '1996-08-01', 'Engineer', '2', '3', '0', 'murphy.jarrod@example.net', 'ilindgren', '$2y$10$3KTNgoogbAM70t290x4otOKti6/1mIWakBhAihi1smmbYDvktJnBi', '01674.731.401', '81691 Weimann Turnpike Apt. 850\nMarioton, CO 05905-1310', '0');
INSERT INTO `employee` VALUES ('88', 'Friedrich Kirlin', '1996-08-01', 'Developer', '1', '3', '0', 'leatha95@example.org', 'pabshire', '$2y$10$QLZ16gFnHqSgBok.f24ZjehZpIjf/Kyo0xQzFVWgH6NxB9g/BlAF.', '01657.314.961', '80059 Valentina Ports Apt. 813\nMarlonchester, SC 41809', '0');
INSERT INTO `employee` VALUES ('89', 'Easter Dickens', '1996-08-01', 'Analyst', '2', '1', '0', 'oberbrunner.caleb@example.com', 'grady.ryan', '$2y$10$tfMfjlzZmZxDh6FUc5UqWOUBflTw1DsN9YUv6sz1vt/B1/NasYSsa', '01627.065.824', '71318 White Ramp\nWest Elyssa, SD 02721-2865', '0');
INSERT INTO `employee` VALUES ('90', 'Florian Torphy', '1996-08-01', 'Analyst', '2', '4', '0', 'malinda06@example.net', 'juliana.botsford', '$2y$10$Az28HgYB1oH7J7oedfcSgOTGBD10qXErVGkivElI8QUYb2/WwsfsC', '01676.463.412', '3922 Moen Mews Apt. 019\nAltastad, MS 85507', '1');
INSERT INTO `employee` VALUES ('91', 'Dolores Gutmann', '1996-08-01', 'Engineer', '2', '8', '0', 'klocko.marian@example.org', 'wvandervort', '$2y$10$UA1PDoJg4/zJlDTNFOkOF.mW8QSLgAp5DTrl8oBnly4uy4nni5132', '01652.206.842', '42452 Rolfson Brook Apt. 198\nVeronicamouth, AZ 30285', '1');
INSERT INTO `employee` VALUES ('92', 'Demarcus Ullrich', '1996-08-01', 'Developer', '2', '10', '0', 'gvandervort@example.com', 'wemard', '$2y$10$XKsKBOOnX9Ycnr0S6QEXNuhW6PBVMv.6oWvZuXRIb2tGdkYeeq7sG', '01674.850.042', '7728 Miracle Corner\nSouth Frankie, MO 36354-4554', '0');
INSERT INTO `employee` VALUES ('93', 'Nicole Boyer', '1996-08-01', 'Engineer', '1', '3', '0', 'michel.roberts@example.org', 'ikeebler', '$2y$10$V1v24ETVrYp5eYXWszrri.Wq9DZJl.jWocdVtT51esdpDU9y9qdce', '01697.249.605', '319 Garnett Pike Suite 872\nNew Trever, MA 88271-7855', '1');
INSERT INTO `employee` VALUES ('94', 'Dr. Janessa Walker', '1996-08-01', 'Helpdesk', '1', '7', '0', 'csmith@example.net', 'toy.sadie', '$2y$10$HO3hZmZjyz0BOWstJ5LmuOw4jtu2dSzbLt3KfR50NAkilHBPB6Gua', '01663.846.631', '1327 Ottis Circle\nLake Nathanial, NM 14048', '1');
INSERT INTO `employee` VALUES ('95', 'Asa Huels', '1996-08-01', 'Developer', '2', '8', '0', 'tbailey@example.net', 'donald.keeling', '$2y$10$tfSmXBw67hD99XQhe1zaZuFwvDAA95bJiCdAK/6uCYZNnNAWaKm4K', '01699.617.841', '1180 Stroman Court Apt. 288\nPort Kacey, CT 27525-4776', '0');
INSERT INTO `employee` VALUES ('96', 'Prof. Leonie Armstrong DDS', '1996-08-01', 'Developer', '2', '2', '0', 'cmckenzie@example.org', 'hilpert.donald', '$2y$10$2XRtl6gxJZfY3lLV01G.JePT0S9QKOpRiE1BA1jnJgPEQbtW5MvCO', '01674.731.401', '746 Doyle Fall Apt. 688\nBrycenview, ME 03110', '0');
INSERT INTO `employee` VALUES ('97', 'Derek Marquardt', '1996-08-01', 'Engineer', '1', '5', '0', 'marina.pagac@example.net', 'eboehm', '$2y$10$HTU7B8KajjfloWDfVZ3c1.B3GKSc2hbvGywoYN/vxVvLW/W21KGv.', '01659.027.231', '3802 Sammy Streets Suite 626\nDonatostad, KS 38248-0205', '1');
INSERT INTO `employee` VALUES ('98', 'Prof. Eloy Luettgen I', '1996-08-01', 'Analyst', '1', '6', '0', 'davon87@example.net', 'oconroy', '$2y$10$e9mU9uosvLB0J83domBXIOMs9OQK5MOgu0hnhEcBb3wl4jLv0xnAG', '01627.065.824', '21700 General Greens Apt. 523\nWyattborough, MO 98589-1422', '1');
INSERT INTO `employee` VALUES ('99', 'Dominic Kreiger', '1996-08-01', 'Engineer', '1', '8', '0', 'cfriesen@example.org', 'hassan46', '$2y$10$4wCHfTmj24Ccbup3gbSmSu/KSUCLtcuV324qN7RbMvwwoC/0G09iu', '01659.063.142', '4165 Darrion Plaza Suite 621\nSipesstad, NV 66599', '0');
INSERT INTO `employee` VALUES ('100', 'Dr. Korbin McClure MD', '1996-08-01', 'Engineer', '2', '1', '0', 'luettgen.brennan@example.org', 'aracely99', '$2y$10$tuCesltWRx8Vb6rSZevSJuk//RXJkyx/MfFKJXU.msMYDD6AUvBtS', '01659.063.142', '3077 Hertha Shoal\nNew Amalia, MN 82372', '0');
INSERT INTO `employee` VALUES ('101', 'Trudie Bogisich', '1996-08-01', 'Helpdesk', '2', '6', '0', 'cleo.kshlerin@example.net', 'auer.sonya', '$2y$10$gdBtjz89jMn8GUf94eVdK.cZ87BFzEgPC7jhWlYn5m2iA8rieRZua', '01662.915.824', '458 Feil Grove Apt. 332\nSouth Emmalee, SC 53608-7025', '0');
INSERT INTO `employee` VALUES ('102', 'Alec Oberbrunner', '1996-08-01', 'Helpdesk', '1', '4', '0', 'ibashirian@example.com', 'goyette.jaden', '$2y$10$nISpLJsCVxHlM90iCO/U8OuVZCByMnlI75MMrA81pIeViYOmlBle.', '01699.617.841', '702 Okuneva Circles Suite 880\nNorth Kyleestad, NH 30048', '0');
INSERT INTO `employee` VALUES ('103', 'Vern Heller', '1996-08-01', 'Analyst', '1', '4', '0', 'janick96@example.com', 'vraynor', '$2y$10$NiiFt.SaOeBO2N5u.clAmu.V6vRPTO41mIS7qjHKgfmkHFfpAhKeu', '01684.335.914', '9818 Sauer Loaf Suite 080\nPort Paige, VA 47549-1037', '0');
INSERT INTO `employee` VALUES ('104', 'Dr. Consuelo Kovacek', '1996-08-01', 'Engineer', '1', '6', '0', 'xbalistreri@example.com', 'rossie.lakin', '$2y$10$dDnoxFcJeOYGM7mLDkc5Gu4g3jvERbd7v4DYuiso/tCDDEwFektDe', '01672.591.703', '7063 Nader Lodge Apt. 478\nWest Candida, ND 52300', '1');
INSERT INTO `employee` VALUES ('105', 'Cassandre Cruickshank', '1996-08-01', 'Engineer', '1', '5', '0', 'farrell.deangelo@example.org', 'nhudson', '$2y$10$mrhb0tyvKAdvKoXUtYmcf.12Q4Nu5LV.Fqgx1FlVgE7i2Q8AGxBZ.', '01684.335.914', '820 Terrence Stream Suite 349\nNew Perry, TX 18840', '1');
INSERT INTO `employee` VALUES ('106', 'Alexandrine Raynor', '1996-08-01', 'Helpdesk', '2', '7', '0', 'doyle.maureen@example.org', 'towne.hadley', '$2y$10$58hCRlziJ4z3ocx0/zLzhOFKC2ly/qj7rOxSBJVkBCvF8UHobK2bO', '01699.617.841', '534 Rempel Center\nDarefurt, VT 38567-0510', '1');
INSERT INTO `employee` VALUES ('107', 'Brook Klocko', '1996-08-01', 'Analyst', '2', '9', '0', 'clarabelle.hudson@example.org', 'providenci.will', '$2y$10$S0ddKe3FuypdCPb.WPiVB.Ch/G1/oT/n7mlH7QVPSUb/cZBvPuPNi', '01674.850.042', '25447 Collier Port\nLake Gladys, VA 73891-5702', '1');
INSERT INTO `employee` VALUES ('108', 'Prof. Griffin Champlin', '1996-08-01', 'Developer', '1', '3', '0', 'omedhurst@example.net', 'jschneider', '$2y$10$YKeL9AUwcQ9Pd0SIXstKpetN9MU0ONhjdzPW2chAO837uqEdAh.DC', '01659.063.142', '154 McKenzie Parkways Apt. 050\nWest Russ, CO 87298-4671', '1');
INSERT INTO `employee` VALUES ('109', 'Raquel Borer PhD', '1996-08-01', 'Helpdesk', '2', '5', '0', 'haag.ila@example.org', 'rcrist', '$2y$10$h7wXwH64w2z2I7/n69ASb.WM4c7NZ.WRZtfQchjQxY4h3iYrqmuwq', '01697.249.605', '27878 Bednar Lights\nLake Hoseafurt, NM 10906', '0');
INSERT INTO `employee` VALUES ('110', 'Presley Glover', '1996-08-01', 'Analyst', '2', '8', '0', 'maximillian75@example.net', 'aliza33', '$2y$10$pc2ELUrM.Kc/9dJYaZDxjOeZN.Ii.Vm28gfBiLnTVVCsvIKFrDrXi', '01699.617.841', '5036 Alexandra Islands Apt. 017\nCoryshire, KS 23293-4263', '0');

-- ----------------------------
-- Table structure for leave_info
-- ----------------------------
DROP TABLE IF EXISTS `leave_info`;
CREATE TABLE `leave_info` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `reason` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `year` char(4) NOT NULL,
  PRIMARY KEY (`leave_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `leave_info_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leave_info
-- ----------------------------
INSERT INTO `leave_info` VALUES ('1', '29', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'In ipsam repellendus tempore accusantium.', '1', '2017');
INSERT INTO `leave_info` VALUES ('2', '84', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'In repudiandae et laudantium voluptas.', '1', '2017');
INSERT INTO `leave_info` VALUES ('3', '39', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Accusamus totam fugiat officia aut ad nobis fuga.', '1', '2018');
INSERT INTO `leave_info` VALUES ('4', '105', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Odio voluptatem quasi dolores asperiores et enim.', '1', '2017');
INSERT INTO `leave_info` VALUES ('5', '95', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Enim nisi id quos quos accusantium.', '0', '2017');
INSERT INTO `leave_info` VALUES ('6', '58', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Repellendus dolores aut a consequatur ipsa iste reprehenderit officiis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('7', '56', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Illo pariatur sed voluptatem delectus nihil.', '0', '2018');
INSERT INTO `leave_info` VALUES ('8', '66', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Sapiente fuga laboriosam et non est.', '2', '2018');
INSERT INTO `leave_info` VALUES ('9', '86', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Odit nisi provident et tenetur.', '0', '2017');
INSERT INTO `leave_info` VALUES ('10', '28', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Odit consequatur praesentium aut cumque.', '2', '2017');
INSERT INTO `leave_info` VALUES ('11', '44', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Sit est aliquam sint ipsum ut sed quibusdam.', '0', '2018');
INSERT INTO `leave_info` VALUES ('12', '73', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Quia corrupti quos id maiores perferendis totam atque doloremque.', '0', '2018');
INSERT INTO `leave_info` VALUES ('13', '95', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Odio et dolore minus nihil sit.', '1', '2017');
INSERT INTO `leave_info` VALUES ('14', '44', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Aut at quia quam ad voluptas incidunt est et.', '0', '2018');
INSERT INTO `leave_info` VALUES ('15', '94', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Temporibus aut doloremque eligendi mollitia et ut aut vitae.', '2', '2017');
INSERT INTO `leave_info` VALUES ('16', '93', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Fuga error at est voluptatum odit rerum.', '1', '2018');
INSERT INTO `leave_info` VALUES ('17', '32', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Quia dolores quis consequuntur et.', '1', '2018');
INSERT INTO `leave_info` VALUES ('18', '87', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Quidem est odit qui.', '1', '2017');
INSERT INTO `leave_info` VALUES ('19', '68', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Numquam aut rerum qui.', '2', '2017');
INSERT INTO `leave_info` VALUES ('20', '66', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Saepe aut deleniti et voluptatibus eos corporis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('21', '82', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Ut molestias sunt aliquam aliquid beatae itaque ullam sapiente.', '1', '2018');
INSERT INTO `leave_info` VALUES ('22', '101', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Ut excepturi dolor nihil rerum laboriosam suscipit.', '0', '2017');
INSERT INTO `leave_info` VALUES ('23', '102', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Cupiditate voluptatem et numquam est et quisquam ut vitae.', '2', '2017');
INSERT INTO `leave_info` VALUES ('24', '108', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Consequatur libero dicta et culpa aut animi tempora animi.', '2', '2017');
INSERT INTO `leave_info` VALUES ('25', '76', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Consequatur dignissimos et consequatur est ratione dignissimos et aut.', '0', '2017');
INSERT INTO `leave_info` VALUES ('26', '16', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Non a autem esse provident sunt mollitia atque aut.', '2', '2018');
INSERT INTO `leave_info` VALUES ('27', '26', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'In iste accusamus voluptatem minima.', '2', '2018');
INSERT INTO `leave_info` VALUES ('28', '22', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Aut doloribus minima hic at est odit cum.', '2', '2017');
INSERT INTO `leave_info` VALUES ('29', '94', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Numquam qui et dolores temporibus.', '2', '2017');
INSERT INTO `leave_info` VALUES ('30', '39', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Quis ab quibusdam ut veritatis iure deleniti aperiam.', '2', '2017');
INSERT INTO `leave_info` VALUES ('31', '68', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Itaque doloribus quam officiis alias tempore dolore officia.', '2', '2018');
INSERT INTO `leave_info` VALUES ('32', '101', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Facilis beatae quia sit voluptatem dignissimos quia voluptas quas.', '1', '2017');
INSERT INTO `leave_info` VALUES ('33', '71', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Soluta voluptas qui minus neque unde sint.', '0', '2017');
INSERT INTO `leave_info` VALUES ('34', '26', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Aut ullam sit molestiae tempore corporis tempore.', '2', '2017');
INSERT INTO `leave_info` VALUES ('35', '105', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Numquam numquam nam voluptatem autem.', '2', '2017');
INSERT INTO `leave_info` VALUES ('36', '88', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Repellat vero harum in nihil aut neque ratione.', '1', '2018');
INSERT INTO `leave_info` VALUES ('37', '93', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Et perferendis amet omnis itaque nam quia animi.', '1', '2018');
INSERT INTO `leave_info` VALUES ('38', '91', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Sequi soluta odio omnis corrupti consequatur.', '0', '2017');
INSERT INTO `leave_info` VALUES ('39', '80', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Aut quo vel et et dolor.', '2', '2017');
INSERT INTO `leave_info` VALUES ('40', '48', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Reiciendis cum asperiores eum totam ipsum quia vero.', '1', '2018');
INSERT INTO `leave_info` VALUES ('41', '55', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Eum et voluptas ex voluptatibus reprehenderit qui incidunt.', '1', '2018');
INSERT INTO `leave_info` VALUES ('42', '53', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Consequatur sit rerum error veniam non debitis.', '1', '2017');
INSERT INTO `leave_info` VALUES ('43', '38', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Debitis ea tenetur amet cupiditate rerum odio et culpa.', '0', '2018');
INSERT INTO `leave_info` VALUES ('44', '91', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Qui molestias laboriosam magni reprehenderit repellat et.', '1', '2017');
INSERT INTO `leave_info` VALUES ('45', '29', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Est sed sit accusantium illo molestias.', '2', '2017');
INSERT INTO `leave_info` VALUES ('46', '102', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Quaerat corrupti assumenda saepe voluptas.', '2', '2018');
INSERT INTO `leave_info` VALUES ('47', '58', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Placeat architecto est eum ut ut itaque.', '0', '2017');
INSERT INTO `leave_info` VALUES ('48', '45', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Quis unde perspiciatis est doloremque aspernatur.', '1', '2018');
INSERT INTO `leave_info` VALUES ('49', '23', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Excepturi veritatis ut at nobis.', '2', '2017');
INSERT INTO `leave_info` VALUES ('50', '70', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Possimus nobis reprehenderit saepe dicta aut.', '0', '2018');
INSERT INTO `leave_info` VALUES ('51', '37', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Eius modi iusto cumque odit est sed delectus.', '2', '2018');
INSERT INTO `leave_info` VALUES ('52', '18', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Facilis laborum doloremque sunt animi aut.', '1', '2018');
INSERT INTO `leave_info` VALUES ('53', '17', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Velit voluptatum adipisci et optio ipsum at.', '1', '2018');
INSERT INTO `leave_info` VALUES ('54', '40', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Provident dolor cumque cum eligendi similique ut tempora.', '0', '2017');
INSERT INTO `leave_info` VALUES ('55', '19', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Consectetur cum ullam et adipisci ut reiciendis deleniti.', '2', '2017');
INSERT INTO `leave_info` VALUES ('56', '95', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Ut aliquam ad rerum similique error et.', '1', '2018');
INSERT INTO `leave_info` VALUES ('57', '37', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Ipsa et accusantium omnis rerum.', '2', '2018');
INSERT INTO `leave_info` VALUES ('58', '45', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Quod incidunt exercitationem in.', '2', '2017');
INSERT INTO `leave_info` VALUES ('59', '102', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Officia quisquam officiis est pariatur omnis voluptate.', '0', '2018');
INSERT INTO `leave_info` VALUES ('60', '99', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Harum rerum molestiae quas quis eum recusandae.', '0', '2018');
INSERT INTO `leave_info` VALUES ('61', '57', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Ex quas doloremque sit quam sequi rerum aut.', '1', '2017');
INSERT INTO `leave_info` VALUES ('62', '104', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Deserunt esse neque temporibus atque a dolor molestiae.', '0', '2017');
INSERT INTO `leave_info` VALUES ('63', '70', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Dolores et occaecati harum.', '0', '2018');
INSERT INTO `leave_info` VALUES ('64', '73', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Eligendi facere facere voluptate ad inventore alias qui.', '2', '2018');
INSERT INTO `leave_info` VALUES ('65', '105', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Suscipit ipsam cum enim neque est.', '1', '2017');
INSERT INTO `leave_info` VALUES ('66', '36', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Est illum ut incidunt ratione quisquam sapiente ut dolores.', '0', '2017');
INSERT INTO `leave_info` VALUES ('67', '36', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Quas labore quas omnis eligendi quam voluptas rerum at.', '0', '2017');
INSERT INTO `leave_info` VALUES ('68', '101', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Eligendi corporis quasi qui provident.', '2', '2017');
INSERT INTO `leave_info` VALUES ('69', '83', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Iure architecto sunt aut sit natus.', '1', '2018');
INSERT INTO `leave_info` VALUES ('70', '50', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Magnam omnis omnis atque.', '2', '2017');
INSERT INTO `leave_info` VALUES ('71', '76', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Non possimus in eum rerum vitae aut repellendus.', '0', '2017');
INSERT INTO `leave_info` VALUES ('72', '29', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Et molestiae dicta sit consequatur quas.', '2', '2018');
INSERT INTO `leave_info` VALUES ('73', '12', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Hic reiciendis cupiditate esse facere non.', '2', '2017');
INSERT INTO `leave_info` VALUES ('74', '63', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Itaque ratione molestiae aspernatur ut.', '1', '2018');
INSERT INTO `leave_info` VALUES ('75', '47', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Aut aspernatur harum molestias error error.', '0', '2017');
INSERT INTO `leave_info` VALUES ('76', '33', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Omnis necessitatibus quis qui explicabo et sint.', '2', '2017');
INSERT INTO `leave_info` VALUES ('77', '60', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Fuga ab accusantium sit quia voluptatem id ea.', '1', '2018');
INSERT INTO `leave_info` VALUES ('78', '33', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Et autem numquam rem fuga quo.', '1', '2017');
INSERT INTO `leave_info` VALUES ('79', '44', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Omnis deserunt qui nostrum ullam architecto.', '2', '2018');
INSERT INTO `leave_info` VALUES ('80', '80', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Velit ullam illum pariatur et debitis recusandae.', '0', '2018');
INSERT INTO `leave_info` VALUES ('81', '103', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Aut praesentium occaecati quo ipsam non atque cum.', '1', '2017');
INSERT INTO `leave_info` VALUES ('82', '96', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Temporibus occaecati ut sint quas animi.', '0', '2018');
INSERT INTO `leave_info` VALUES ('83', '75', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Pariatur non aut exercitationem consectetur.', '0', '2018');
INSERT INTO `leave_info` VALUES ('84', '56', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Et quam laudantium culpa necessitatibus molestiae itaque reprehenderit provident.', '0', '2018');
INSERT INTO `leave_info` VALUES ('85', '40', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Ut vel accusamus consequatur sed velit sint.', '1', '2017');
INSERT INTO `leave_info` VALUES ('86', '63', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Maiores non sit neque corporis.', '2', '2017');
INSERT INTO `leave_info` VALUES ('87', '52', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Veritatis quaerat fugit fuga incidunt et.', '0', '2018');
INSERT INTO `leave_info` VALUES ('88', '69', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Quia expedita voluptates assumenda.', '1', '2018');
INSERT INTO `leave_info` VALUES ('89', '41', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Sapiente omnis qui expedita inventore.', '2', '2018');
INSERT INTO `leave_info` VALUES ('90', '52', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Et quasi voluptatem et inventore.', '1', '2017');
INSERT INTO `leave_info` VALUES ('91', '96', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Minima necessitatibus cum delectus deserunt aut ullam.', '2', '2017');
INSERT INTO `leave_info` VALUES ('92', '79', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Nisi sit quis velit occaecati est.', '1', '2018');
INSERT INTO `leave_info` VALUES ('93', '62', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Impedit ducimus dolor est aut accusamus consequatur.', '0', '2017');
INSERT INTO `leave_info` VALUES ('94', '42', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Et voluptas ut est.', '1', '2017');
INSERT INTO `leave_info` VALUES ('95', '106', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Nihil voluptatem provident aspernatur quis nesciunt.', '1', '2018');
INSERT INTO `leave_info` VALUES ('96', '53', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Itaque consequatur saepe et.', '2', '2017');
INSERT INTO `leave_info` VALUES ('97', '54', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Quia qui est rerum accusamus sed.', '2', '2018');
INSERT INTO `leave_info` VALUES ('98', '51', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Sunt minima aut et aspernatur architecto dicta.', '2', '2018');
INSERT INTO `leave_info` VALUES ('99', '16', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Nostrum magnam impedit in non rem vero aliquid.', '0', '2017');
INSERT INTO `leave_info` VALUES ('100', '107', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Fugit laborum vitae id incidunt exercitationem.', '1', '2018');
INSERT INTO `leave_info` VALUES ('101', '84', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Soluta corporis aut in deleniti provident.', '0', '2017');
INSERT INTO `leave_info` VALUES ('102', '29', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Quia quo cumque et aut voluptas esse.', '2', '2017');
INSERT INTO `leave_info` VALUES ('103', '51', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Perspiciatis aspernatur voluptate accusamus quibusdam.', '2', '2017');
INSERT INTO `leave_info` VALUES ('104', '71', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Harum ullam distinctio eligendi tempora similique.', '0', '2018');
INSERT INTO `leave_info` VALUES ('105', '92', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Rem ipsum et molestiae esse.', '2', '2017');
INSERT INTO `leave_info` VALUES ('106', '11', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Expedita quidem error aut ut.', '2', '2018');
INSERT INTO `leave_info` VALUES ('107', '27', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Ad rerum labore non modi dolorem.', '2', '2017');
INSERT INTO `leave_info` VALUES ('108', '46', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Velit sapiente beatae dolorum itaque.', '0', '2018');
INSERT INTO `leave_info` VALUES ('109', '67', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Animi eaque sit vitae quia suscipit.', '0', '2018');
INSERT INTO `leave_info` VALUES ('110', '71', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Eveniet doloremque sed facilis et corrupti.', '2', '2017');
INSERT INTO `leave_info` VALUES ('111', '36', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Omnis quis officia enim non aliquam.', '0', '2018');
INSERT INTO `leave_info` VALUES ('112', '69', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Est libero placeat molestias voluptas quos delectus ut ad.', '1', '2017');
INSERT INTO `leave_info` VALUES ('113', '69', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Quo aut molestiae tempora cupiditate.', '2', '2017');
INSERT INTO `leave_info` VALUES ('114', '40', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Quisquam illo qui et consequuntur distinctio facilis quibusdam.', '0', '2017');
INSERT INTO `leave_info` VALUES ('115', '26', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Quasi reprehenderit eum minima est eos.', '1', '2017');
INSERT INTO `leave_info` VALUES ('116', '19', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Doloribus aliquam cumque nihil vel dolore eos.', '2', '2017');
INSERT INTO `leave_info` VALUES ('117', '15', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Quis accusamus aut dolor et dignissimos quia inventore.', '2', '2017');
INSERT INTO `leave_info` VALUES ('118', '23', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Nisi aut qui sint quia.', '0', '2017');
INSERT INTO `leave_info` VALUES ('119', '78', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Placeat quidem excepturi animi.', '2', '2017');
INSERT INTO `leave_info` VALUES ('120', '43', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Et hic vel aut sed vero sunt ratione.', '1', '2018');
INSERT INTO `leave_info` VALUES ('121', '22', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Nulla sapiente nisi aliquam debitis aut fugit aliquid.', '1', '2018');
INSERT INTO `leave_info` VALUES ('122', '70', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Corporis alias cupiditate id qui.', '1', '2017');
INSERT INTO `leave_info` VALUES ('123', '95', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Nesciunt eos atque et nihil deleniti iusto.', '0', '2018');
INSERT INTO `leave_info` VALUES ('124', '65', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Voluptatem quia voluptas vel atque pariatur est.', '1', '2017');
INSERT INTO `leave_info` VALUES ('125', '61', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Voluptatibus quae vero laborum deleniti.', '1', '2018');
INSERT INTO `leave_info` VALUES ('126', '105', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Porro impedit est optio blanditiis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('127', '14', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Adipisci voluptatem eos quia.', '2', '2017');
INSERT INTO `leave_info` VALUES ('128', '88', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Id non repudiandae commodi minus iste rerum.', '1', '2017');
INSERT INTO `leave_info` VALUES ('129', '76', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Labore at id vero aspernatur animi.', '2', '2018');
INSERT INTO `leave_info` VALUES ('130', '50', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Autem corporis est et earum.', '0', '2018');
INSERT INTO `leave_info` VALUES ('131', '55', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Est ipsa quibusdam dolorum sit molestiae quaerat.', '1', '2017');
INSERT INTO `leave_info` VALUES ('132', '36', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Ut voluptatem atque voluptatum quas consectetur expedita.', '1', '2018');
INSERT INTO `leave_info` VALUES ('133', '12', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Et et molestiae sed sit provident dolor distinctio.', '2', '2018');
INSERT INTO `leave_info` VALUES ('134', '57', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Reiciendis veritatis ut ea alias.', '2', '2017');
INSERT INTO `leave_info` VALUES ('135', '45', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Eos a quia voluptatem debitis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('136', '13', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Et nihil hic inventore facilis labore labore.', '0', '2018');
INSERT INTO `leave_info` VALUES ('137', '39', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Magni voluptas ut eveniet doloribus qui blanditiis ad.', '2', '2018');
INSERT INTO `leave_info` VALUES ('138', '55', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Et libero temporibus eum est.', '1', '2018');
INSERT INTO `leave_info` VALUES ('139', '57', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Alias reiciendis molestiae deserunt rerum.', '1', '2018');
INSERT INTO `leave_info` VALUES ('140', '110', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Neque quisquam minus rem aut id.', '0', '2017');
INSERT INTO `leave_info` VALUES ('141', '95', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Et commodi vitae facere vel aliquam.', '0', '2017');
INSERT INTO `leave_info` VALUES ('142', '88', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Temporibus debitis molestias fugit provident ut.', '0', '2017');
INSERT INTO `leave_info` VALUES ('143', '78', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Quam mollitia qui ut sequi rerum nihil.', '0', '2017');
INSERT INTO `leave_info` VALUES ('144', '107', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Dolores sapiente sit quasi dolor voluptatem.', '1', '2017');
INSERT INTO `leave_info` VALUES ('145', '15', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Atque distinctio at unde nam eum voluptas.', '1', '2017');
INSERT INTO `leave_info` VALUES ('146', '19', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Et ut eum omnis.', '0', '2018');
INSERT INTO `leave_info` VALUES ('147', '38', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Accusantium eaque aliquid ex asperiores dolorum quod nihil.', '2', '2017');
INSERT INTO `leave_info` VALUES ('148', '105', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Eius consequatur molestias tempora consequatur natus aspernatur.', '0', '2018');
INSERT INTO `leave_info` VALUES ('149', '65', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Soluta omnis eos eos veritatis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('150', '37', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Dolorum voluptatibus odit soluta nemo sapiente vel.', '2', '2018');
INSERT INTO `leave_info` VALUES ('151', '60', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Deserunt dolor natus esse.', '2', '2017');
INSERT INTO `leave_info` VALUES ('152', '70', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Architecto quae provident molestiae nihil.', '2', '2018');
INSERT INTO `leave_info` VALUES ('153', '23', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Labore et provident unde saepe molestiae ea quia.', '2', '2018');
INSERT INTO `leave_info` VALUES ('154', '25', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Animi dolorem recusandae fuga quam quo ut.', '1', '2017');
INSERT INTO `leave_info` VALUES ('155', '108', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Consequatur incidunt molestiae odio cumque.', '2', '2018');
INSERT INTO `leave_info` VALUES ('156', '13', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Ut voluptates debitis qui fugiat placeat est rerum.', '2', '2018');
INSERT INTO `leave_info` VALUES ('157', '100', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Odit esse sunt sed aliquam tempora et qui.', '1', '2017');
INSERT INTO `leave_info` VALUES ('158', '83', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Facere nobis sit labore voluptas deserunt neque aperiam.', '2', '2018');
INSERT INTO `leave_info` VALUES ('159', '49', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Expedita voluptas voluptatem nostrum.', '1', '2018');
INSERT INTO `leave_info` VALUES ('160', '31', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Iure officia sit sunt libero.', '0', '2018');
INSERT INTO `leave_info` VALUES ('161', '104', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Quia sint et placeat quo quos.', '2', '2017');
INSERT INTO `leave_info` VALUES ('162', '97', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Dolores rerum et quaerat quod dolor.', '0', '2017');
INSERT INTO `leave_info` VALUES ('163', '88', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Vel id saepe error voluptatem.', '1', '2018');
INSERT INTO `leave_info` VALUES ('164', '30', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Et ipsa in omnis rerum cum adipisci.', '1', '2017');
INSERT INTO `leave_info` VALUES ('165', '88', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Atque eos molestias dolores.', '2', '2017');
INSERT INTO `leave_info` VALUES ('166', '50', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Dolores esse ut delectus architecto et odit est.', '2', '2017');
INSERT INTO `leave_info` VALUES ('167', '21', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Fuga minima dolor facere dolorum earum.', '0', '2017');
INSERT INTO `leave_info` VALUES ('168', '103', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Eos est a accusamus sint ea.', '1', '2017');
INSERT INTO `leave_info` VALUES ('169', '18', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Quae quasi ipsa sapiente fugit autem enim.', '1', '2017');
INSERT INTO `leave_info` VALUES ('170', '12', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Qui nobis minus laboriosam suscipit est asperiores.', '1', '2017');
INSERT INTO `leave_info` VALUES ('171', '100', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Ad incidunt nesciunt delectus officiis.', '0', '2017');
INSERT INTO `leave_info` VALUES ('172', '13', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Fugiat voluptatem qui ad quo ratione.', '2', '2018');
INSERT INTO `leave_info` VALUES ('173', '79', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Reprehenderit et sit in tempore officiis.', '0', '2017');
INSERT INTO `leave_info` VALUES ('174', '77', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Dolorem repudiandae sed voluptas et ullam.', '1', '2018');
INSERT INTO `leave_info` VALUES ('175', '47', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Quo ea asperiores earum sint blanditiis repellendus eos.', '1', '2017');
INSERT INTO `leave_info` VALUES ('176', '24', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Aut illum nobis molestiae ab et.', '1', '2018');
INSERT INTO `leave_info` VALUES ('177', '61', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Repellat perspiciatis similique ratione molestiae ipsa et.', '1', '2017');
INSERT INTO `leave_info` VALUES ('178', '41', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Repellendus architecto nihil excepturi dolorem veniam totam.', '2', '2017');
INSERT INTO `leave_info` VALUES ('179', '33', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Voluptatum tenetur iure aut inventore ut sit.', '2', '2017');
INSERT INTO `leave_info` VALUES ('180', '16', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Ut facilis molestiae molestias nobis quis sit illo.', '1', '2017');
INSERT INTO `leave_info` VALUES ('181', '52', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Modi molestiae exercitationem a blanditiis.', '2', '2017');
INSERT INTO `leave_info` VALUES ('182', '65', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Et nobis alias quas veniam.', '2', '2017');
INSERT INTO `leave_info` VALUES ('183', '96', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Consequatur dolor quis occaecati et quis magnam.', '1', '2017');
INSERT INTO `leave_info` VALUES ('184', '77', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Aut in ut error et maiores.', '0', '2017');
INSERT INTO `leave_info` VALUES ('185', '40', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Consectetur iste porro debitis enim aliquam exercitationem.', '1', '2018');
INSERT INTO `leave_info` VALUES ('186', '74', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Placeat eos minima voluptas repellat quia qui.', '2', '2018');
INSERT INTO `leave_info` VALUES ('187', '77', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Quidem quae itaque est nostrum dolorum qui quas.', '2', '2018');
INSERT INTO `leave_info` VALUES ('188', '100', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'In laboriosam ut assumenda.', '0', '2017');
INSERT INTO `leave_info` VALUES ('189', '70', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Aut dolores totam corporis et et iusto.', '0', '2017');
INSERT INTO `leave_info` VALUES ('190', '13', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Ut voluptas minus porro voluptatem qui harum.', '2', '2017');
INSERT INTO `leave_info` VALUES ('191', '39', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Omnis qui quod sunt quisquam est culpa est.', '0', '2017');
INSERT INTO `leave_info` VALUES ('192', '78', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Eligendi id minima aut pariatur.', '0', '2018');
INSERT INTO `leave_info` VALUES ('193', '87', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Nihil est quis quam iusto porro.', '1', '2017');
INSERT INTO `leave_info` VALUES ('194', '64', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Quia quos inventore est eum sunt doloremque.', '0', '2018');
INSERT INTO `leave_info` VALUES ('195', '68', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Autem repudiandae nulla veritatis id.', '1', '2018');
INSERT INTO `leave_info` VALUES ('196', '90', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Sed quidem dolor et atque.', '1', '2018');
INSERT INTO `leave_info` VALUES ('197', '95', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Ut ut voluptatem perspiciatis eum amet ad et.', '1', '2018');
INSERT INTO `leave_info` VALUES ('198', '76', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Et eligendi voluptatem laboriosam eum voluptatem ipsam quia a.', '0', '2017');
INSERT INTO `leave_info` VALUES ('199', '34', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Reprehenderit ullam aliquam in sapiente.', '0', '2018');
INSERT INTO `leave_info` VALUES ('200', '19', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Fugit enim eum quia deserunt id et perspiciatis.', '0', '2017');
INSERT INTO `leave_info` VALUES ('201', '16', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Deleniti excepturi deserunt expedita.', '1', '2017');
INSERT INTO `leave_info` VALUES ('202', '62', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Occaecati ut suscipit rem dignissimos sint error vero.', '1', '2017');
INSERT INTO `leave_info` VALUES ('203', '33', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Autem ea consequatur ullam nihil nihil nemo occaecati.', '2', '2018');
INSERT INTO `leave_info` VALUES ('204', '74', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Culpa unde vero dolor quidem voluptatem.', '2', '2017');
INSERT INTO `leave_info` VALUES ('205', '16', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Sit ut voluptatem sed quis praesentium.', '0', '2017');
INSERT INTO `leave_info` VALUES ('206', '48', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Labore sed perferendis placeat.', '0', '2018');
INSERT INTO `leave_info` VALUES ('207', '98', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Aliquam itaque veritatis adipisci ipsa.', '0', '2018');
INSERT INTO `leave_info` VALUES ('208', '41', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Eos sed officia qui dolorem facilis.', '2', '2017');
INSERT INTO `leave_info` VALUES ('209', '48', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Unde ullam accusamus illo et dolor consequatur nihil excepturi.', '1', '2018');
INSERT INTO `leave_info` VALUES ('210', '103', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Animi consequatur voluptatem amet minus dolorum velit.', '1', '2017');
INSERT INTO `leave_info` VALUES ('211', '17', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Debitis minus delectus debitis.', '0', '2017');
INSERT INTO `leave_info` VALUES ('212', '102', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Unde omnis adipisci et et et.', '2', '2017');
INSERT INTO `leave_info` VALUES ('213', '12', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Similique ipsum in consequatur quis amet.', '1', '2018');
INSERT INTO `leave_info` VALUES ('214', '102', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Vero earum voluptas dignissimos distinctio hic aperiam iure.', '1', '2018');
INSERT INTO `leave_info` VALUES ('215', '27', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Iste quo non eius ullam inventore modi.', '0', '2018');
INSERT INTO `leave_info` VALUES ('216', '84', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Reprehenderit aut id perspiciatis delectus voluptates architecto rerum.', '0', '2018');
INSERT INTO `leave_info` VALUES ('217', '11', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Quod et voluptatum doloremque magni rerum eligendi quis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('218', '109', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Sunt eum qui quia.', '0', '2017');
INSERT INTO `leave_info` VALUES ('219', '58', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Perferendis enim ipsum rerum repudiandae non non.', '2', '2017');
INSERT INTO `leave_info` VALUES ('220', '58', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Quam sunt rem inventore consequatur voluptatem.', '2', '2018');
INSERT INTO `leave_info` VALUES ('221', '108', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Autem veritatis fugit sunt quidem quia.', '1', '2017');
INSERT INTO `leave_info` VALUES ('222', '107', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Eius consequatur ratione ab quo tenetur delectus harum.', '1', '2018');
INSERT INTO `leave_info` VALUES ('223', '60', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Nemo consequatur inventore provident maiores aut.', '2', '2018');
INSERT INTO `leave_info` VALUES ('224', '60', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Ipsa odio adipisci deserunt voluptatem cupiditate omnis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('225', '65', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Architecto quas harum quasi vel in unde nihil similique.', '2', '2018');
INSERT INTO `leave_info` VALUES ('226', '24', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Modi libero qui provident quia dolor aliquam suscipit.', '1', '2017');
INSERT INTO `leave_info` VALUES ('227', '89', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Tempore iure esse voluptatem libero.', '0', '2017');
INSERT INTO `leave_info` VALUES ('228', '79', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Cupiditate rerum doloribus reprehenderit.', '1', '2017');
INSERT INTO `leave_info` VALUES ('229', '55', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Illo veniam quidem possimus in sunt non consequatur.', '1', '2018');
INSERT INTO `leave_info` VALUES ('230', '91', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Adipisci voluptas voluptas dolorum reiciendis.', '2', '2017');
INSERT INTO `leave_info` VALUES ('231', '91', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Esse ex sed eligendi qui autem.', '1', '2017');
INSERT INTO `leave_info` VALUES ('232', '95', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Velit iure eius dolores reprehenderit.', '1', '2017');
INSERT INTO `leave_info` VALUES ('233', '109', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Illo illum illo eum enim eaque explicabo.', '1', '2017');
INSERT INTO `leave_info` VALUES ('234', '16', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Autem aut aliquam libero ipsam.', '2', '2018');
INSERT INTO `leave_info` VALUES ('235', '109', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Dolore deleniti dolores doloremque est.', '2', '2018');
INSERT INTO `leave_info` VALUES ('236', '37', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Voluptatum necessitatibus reiciendis id.', '1', '2017');
INSERT INTO `leave_info` VALUES ('237', '78', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Dolor quisquam autem omnis quia eaque.', '0', '2017');
INSERT INTO `leave_info` VALUES ('238', '108', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Neque temporibus natus sunt reiciendis.', '2', '2018');
INSERT INTO `leave_info` VALUES ('239', '82', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Recusandae ut fugiat laudantium exercitationem qui iste hic.', '2', '2017');
INSERT INTO `leave_info` VALUES ('240', '71', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Consequatur fuga enim rerum sapiente enim.', '2', '2018');
INSERT INTO `leave_info` VALUES ('241', '71', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Omnis libero voluptates laudantium ducimus sapiente quia dicta sunt.', '0', '2017');
INSERT INTO `leave_info` VALUES ('242', '99', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Eos asperiores officiis voluptatum sit est rem.', '2', '2018');
INSERT INTO `leave_info` VALUES ('243', '67', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Illo earum repellat eos quidem et.', '0', '2018');
INSERT INTO `leave_info` VALUES ('244', '77', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Quae omnis consequuntur et pariatur praesentium.', '0', '2017');
INSERT INTO `leave_info` VALUES ('245', '105', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Aut et eos ut minus officia minus molestias.', '0', '2018');
INSERT INTO `leave_info` VALUES ('246', '38', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Quasi culpa velit magnam iure sunt rerum ullam exercitationem.', '2', '2018');
INSERT INTO `leave_info` VALUES ('247', '83', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Incidunt minima rerum saepe quod.', '2', '2018');
INSERT INTO `leave_info` VALUES ('248', '108', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Molestiae quo ut omnis sint.', '1', '2018');
INSERT INTO `leave_info` VALUES ('249', '60', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Qui ab magni beatae eveniet in eum.', '1', '2018');
INSERT INTO `leave_info` VALUES ('250', '48', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Repudiandae velit ex corporis nihil.', '2', '2017');
INSERT INTO `leave_info` VALUES ('251', '54', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Et facere vel sit sit aut eum hic et.', '1', '2017');
INSERT INTO `leave_info` VALUES ('252', '71', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Fugit quis soluta aut accusamus maxime.', '1', '2018');
INSERT INTO `leave_info` VALUES ('253', '47', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Ab vitae corporis perferendis omnis incidunt.', '1', '2017');
INSERT INTO `leave_info` VALUES ('254', '19', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Quas provident in sit.', '1', '2018');
INSERT INTO `leave_info` VALUES ('255', '83', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Sunt aliquam facilis autem consequatur commodi.', '2', '2018');
INSERT INTO `leave_info` VALUES ('256', '103', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Assumenda et repellendus aperiam et velit eos.', '2', '2017');
INSERT INTO `leave_info` VALUES ('257', '44', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Quia nobis eligendi tempora ducimus sint iure.', '2', '2017');
INSERT INTO `leave_info` VALUES ('258', '35', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Nesciunt corrupti blanditiis quo hic voluptate officiis aut.', '2', '2018');
INSERT INTO `leave_info` VALUES ('259', '47', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Id nostrum eius quaerat dolor enim blanditiis enim dolor.', '2', '2017');
INSERT INTO `leave_info` VALUES ('260', '38', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Dolores laboriosam sit unde sunt cumque eum.', '0', '2017');
INSERT INTO `leave_info` VALUES ('261', '68', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Aut doloremque modi culpa quae voluptatem quas.', '1', '2017');
INSERT INTO `leave_info` VALUES ('262', '37', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Sit expedita ab repellendus delectus voluptas.', '0', '2017');
INSERT INTO `leave_info` VALUES ('263', '42', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Ut exercitationem blanditiis et sunt sed neque.', '1', '2018');
INSERT INTO `leave_info` VALUES ('264', '43', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Praesentium exercitationem reprehenderit et dolorem.', '2', '2018');
INSERT INTO `leave_info` VALUES ('265', '46', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Nihil aperiam sunt totam.', '0', '2017');
INSERT INTO `leave_info` VALUES ('266', '103', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Debitis deserunt exercitationem ullam consectetur praesentium sed.', '0', '2017');
INSERT INTO `leave_info` VALUES ('267', '98', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Aut quibusdam non dolorem iste esse.', '1', '2018');
INSERT INTO `leave_info` VALUES ('268', '87', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Velit vel ex ipsum qui qui.', '0', '2018');
INSERT INTO `leave_info` VALUES ('269', '48', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Dolorem laboriosam labore voluptatem temporibus a.', '2', '2017');
INSERT INTO `leave_info` VALUES ('270', '94', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Quibusdam laborum qui omnis velit et.', '1', '2018');
INSERT INTO `leave_info` VALUES ('271', '59', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Blanditiis saepe velit rerum excepturi aut et.', '0', '2017');
INSERT INTO `leave_info` VALUES ('272', '79', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Et consequatur libero dolore non autem totam.', '2', '2018');
INSERT INTO `leave_info` VALUES ('273', '58', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Omnis quasi suscipit aspernatur nisi.', '1', '2018');
INSERT INTO `leave_info` VALUES ('274', '81', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Veniam ea eum fugiat in.', '1', '2017');
INSERT INTO `leave_info` VALUES ('275', '58', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Aut molestiae praesentium enim eaque aut quisquam et.', '2', '2018');
INSERT INTO `leave_info` VALUES ('276', '45', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Quo laborum et id repellat voluptate aliquid illo.', '2', '2017');
INSERT INTO `leave_info` VALUES ('277', '88', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Odio in expedita sapiente necessitatibus omnis.', '2', '2018');
INSERT INTO `leave_info` VALUES ('278', '76', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Pariatur eligendi ullam architecto alias.', '0', '2017');
INSERT INTO `leave_info` VALUES ('279', '85', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Tenetur sed temporibus eveniet.', '0', '2018');
INSERT INTO `leave_info` VALUES ('280', '17', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Rem aut optio dolore labore.', '2', '2018');
INSERT INTO `leave_info` VALUES ('281', '77', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Sit nesciunt et earum excepturi deserunt quidem ipsa.', '2', '2018');
INSERT INTO `leave_info` VALUES ('282', '67', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Et rem repudiandae consequatur quia nihil rerum rerum culpa.', '1', '2017');
INSERT INTO `leave_info` VALUES ('283', '17', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Et tempore vel qui ut.', '1', '2018');
INSERT INTO `leave_info` VALUES ('284', '35', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Ea pariatur quibusdam aut et cum.', '1', '2017');
INSERT INTO `leave_info` VALUES ('285', '55', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Deleniti dolorem iure molestias enim.', '1', '2018');
INSERT INTO `leave_info` VALUES ('286', '104', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Quia id est delectus cumque commodi reiciendis nobis id.', '2', '2017');
INSERT INTO `leave_info` VALUES ('287', '70', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Natus facilis eos sed.', '1', '2017');
INSERT INTO `leave_info` VALUES ('288', '64', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Asperiores sed eveniet delectus doloremque beatae.', '1', '2017');
INSERT INTO `leave_info` VALUES ('289', '106', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Ad voluptatem architecto iusto perferendis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('290', '68', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Assumenda velit quia non cum quos iure ea.', '2', '2017');
INSERT INTO `leave_info` VALUES ('291', '19', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Ab voluptatem qui repellendus eos.', '2', '2017');
INSERT INTO `leave_info` VALUES ('292', '81', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Odio inventore qui deserunt suscipit.', '0', '2017');
INSERT INTO `leave_info` VALUES ('293', '24', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Nihil voluptas cumque qui minus et qui quia.', '0', '2017');
INSERT INTO `leave_info` VALUES ('294', '22', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Neque optio neque ad nihil.', '0', '2018');
INSERT INTO `leave_info` VALUES ('295', '106', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Nisi molestiae et cupiditate.', '2', '2018');
INSERT INTO `leave_info` VALUES ('296', '106', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Nihil eos commodi libero libero qui voluptatem a.', '2', '2017');
INSERT INTO `leave_info` VALUES ('297', '83', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Et non magni mollitia necessitatibus in et.', '1', '2017');
INSERT INTO `leave_info` VALUES ('298', '101', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Qui sequi aut architecto.', '1', '2017');
INSERT INTO `leave_info` VALUES ('299', '94', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Quibusdam et voluptate culpa est tempora.', '2', '2017');
INSERT INTO `leave_info` VALUES ('300', '80', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'A vero voluptas et nihil aperiam quo.', '0', '2017');
INSERT INTO `leave_info` VALUES ('301', '52', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Repellat dolorum quis similique placeat.', '2', '2017');
INSERT INTO `leave_info` VALUES ('302', '62', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Aspernatur eum praesentium consectetur reiciendis natus fuga nihil voluptatem.', '2', '2017');
INSERT INTO `leave_info` VALUES ('303', '50', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Quos sed doloremque ea ut.', '2', '2018');
INSERT INTO `leave_info` VALUES ('304', '23', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Iste sit alias rerum perferendis voluptas.', '2', '2017');
INSERT INTO `leave_info` VALUES ('305', '34', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Soluta iste eaque qui aperiam aut quia.', '2', '2017');
INSERT INTO `leave_info` VALUES ('306', '89', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Debitis exercitationem quae labore sed tempora tenetur.', '2', '2017');
INSERT INTO `leave_info` VALUES ('307', '80', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Et cumque nobis exercitationem magni officia molestiae.', '2', '2017');
INSERT INTO `leave_info` VALUES ('308', '105', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Aliquam id labore porro.', '1', '2017');
INSERT INTO `leave_info` VALUES ('309', '107', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Ea sequi est reiciendis autem modi sequi.', '0', '2018');
INSERT INTO `leave_info` VALUES ('310', '38', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Ex sed harum odio vero rerum officia impedit expedita.', '2', '2017');
INSERT INTO `leave_info` VALUES ('311', '79', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Facilis qui aut accusantium sequi.', '2', '2017');
INSERT INTO `leave_info` VALUES ('312', '22', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Est sunt aut aut aut.', '1', '2017');
INSERT INTO `leave_info` VALUES ('313', '60', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Et debitis numquam voluptates ducimus nostrum a enim dicta.', '1', '2018');
INSERT INTO `leave_info` VALUES ('314', '89', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Sed eum assumenda sed laudantium quasi omnis.', '0', '2018');
INSERT INTO `leave_info` VALUES ('315', '30', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Inventore voluptatem velit eum voluptate corrupti et quia.', '0', '2018');
INSERT INTO `leave_info` VALUES ('316', '93', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Quibusdam vero magni et fuga.', '2', '2018');
INSERT INTO `leave_info` VALUES ('317', '85', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Vitae inventore autem perspiciatis optio.', '1', '2018');
INSERT INTO `leave_info` VALUES ('318', '40', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Nihil consequatur totam harum ad.', '1', '2018');
INSERT INTO `leave_info` VALUES ('319', '83', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Explicabo voluptatem assumenda quod quod tenetur eveniet.', '0', '2017');
INSERT INTO `leave_info` VALUES ('320', '12', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Officiis quis quas debitis nesciunt rerum nihil.', '1', '2018');
INSERT INTO `leave_info` VALUES ('321', '33', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Ea molestiae voluptatem magni quo quia aperiam neque.', '1', '2018');
INSERT INTO `leave_info` VALUES ('322', '24', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Dolores doloribus at asperiores atque maiores dolores commodi maiores.', '2', '2018');
INSERT INTO `leave_info` VALUES ('323', '96', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Corporis ut alias et distinctio reiciendis odio.', '1', '2018');
INSERT INTO `leave_info` VALUES ('324', '16', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Enim in sunt perferendis neque.', '2', '2017');
INSERT INTO `leave_info` VALUES ('325', '97', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Laboriosam animi quisquam velit nesciunt necessitatibus expedita reiciendis.', '1', '2018');
INSERT INTO `leave_info` VALUES ('326', '21', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Et facere quisquam velit nobis ipsa illo fugiat.', '2', '2018');
INSERT INTO `leave_info` VALUES ('327', '65', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Corporis in nisi id.', '1', '2018');
INSERT INTO `leave_info` VALUES ('328', '61', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Repudiandae velit voluptatibus cum rerum voluptatem dolorum quia dignissimos.', '0', '2017');
INSERT INTO `leave_info` VALUES ('329', '59', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Ut nisi ex sint eum magnam voluptatem.', '2', '2017');
INSERT INTO `leave_info` VALUES ('330', '86', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Voluptatem rerum et sed sunt.', '1', '2017');
INSERT INTO `leave_info` VALUES ('331', '95', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Est assumenda numquam quia rem impedit ipsum omnis.', '1', '2017');
INSERT INTO `leave_info` VALUES ('332', '51', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Facilis veritatis nam culpa et.', '1', '2018');
INSERT INTO `leave_info` VALUES ('333', '102', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Eos assumenda quisquam ut.', '1', '2017');
INSERT INTO `leave_info` VALUES ('334', '17', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Ratione pariatur id non quo quam omnis repellat.', '2', '2018');
INSERT INTO `leave_info` VALUES ('335', '67', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Ullam eos rerum voluptatem vero nihil facilis.', '2', '2017');
INSERT INTO `leave_info` VALUES ('336', '14', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Molestiae dignissimos rerum nostrum labore optio sunt.', '0', '2017');
INSERT INTO `leave_info` VALUES ('337', '101', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Qui ut magni consequatur soluta voluptas.', '0', '2018');
INSERT INTO `leave_info` VALUES ('338', '93', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Id quia corporis sunt molestiae et.', '1', '2017');
INSERT INTO `leave_info` VALUES ('339', '105', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Distinctio qui voluptatem dolor asperiores non et aut.', '1', '2017');
INSERT INTO `leave_info` VALUES ('340', '40', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Enim velit optio ut facere consequatur dolor.', '0', '2018');
INSERT INTO `leave_info` VALUES ('341', '11', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Dolor laudantium consequuntur saepe quia tempora id.', '0', '2017');
INSERT INTO `leave_info` VALUES ('342', '25', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Exercitationem officiis tenetur sed est autem.', '1', '2018');
INSERT INTO `leave_info` VALUES ('343', '34', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Autem omnis deserunt temporibus et voluptates.', '0', '2018');
INSERT INTO `leave_info` VALUES ('344', '96', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Laboriosam harum dicta accusantium sapiente aut commodi.', '1', '2018');
INSERT INTO `leave_info` VALUES ('345', '50', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Nulla non incidunt sunt.', '0', '2017');
INSERT INTO `leave_info` VALUES ('346', '102', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Sequi minima rerum iure quis iure architecto.', '1', '2017');
INSERT INTO `leave_info` VALUES ('347', '94', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Aut enim ea perferendis.', '2', '2017');
INSERT INTO `leave_info` VALUES ('348', '17', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Sint vero qui dolor necessitatibus.', '0', '2018');
INSERT INTO `leave_info` VALUES ('349', '70', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Sed ex eius quo veritatis laboriosam itaque inventore fuga.', '2', '2018');
INSERT INTO `leave_info` VALUES ('350', '105', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Voluptatibus quod autem iste quia cumque.', '0', '2017');
INSERT INTO `leave_info` VALUES ('351', '79', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Ab enim et exercitationem.', '1', '2018');
INSERT INTO `leave_info` VALUES ('352', '85', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Tenetur pariatur rem deleniti et commodi.', '2', '2017');
INSERT INTO `leave_info` VALUES ('353', '42', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Voluptatibus iste at nostrum in minima.', '1', '2018');
INSERT INTO `leave_info` VALUES ('354', '19', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Pariatur adipisci dicta possimus aut consequatur aspernatur possimus excepturi.', '2', '2017');
INSERT INTO `leave_info` VALUES ('355', '57', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Aperiam necessitatibus quis corporis est in qui.', '1', '2017');
INSERT INTO `leave_info` VALUES ('356', '58', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Quo voluptatem rerum qui reprehenderit totam.', '2', '2017');
INSERT INTO `leave_info` VALUES ('357', '106', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Reprehenderit nihil quia saepe rerum et.', '0', '2017');
INSERT INTO `leave_info` VALUES ('358', '25', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Aliquam quasi eaque et repellat laudantium eos.', '0', '2017');
INSERT INTO `leave_info` VALUES ('359', '71', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Quas ea eos unde enim consequatur magnam.', '1', '2017');
INSERT INTO `leave_info` VALUES ('360', '95', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Fuga libero aut eos qui enim.', '2', '2017');
INSERT INTO `leave_info` VALUES ('361', '25', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Accusantium ipsam delectus magni occaecati deserunt aut tenetur error.', '1', '2018');
INSERT INTO `leave_info` VALUES ('362', '83', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Porro delectus natus ea sunt impedit fugit.', '2', '2017');
INSERT INTO `leave_info` VALUES ('363', '42', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Magni unde nisi sed quo accusantium est commodi.', '2', '2018');
INSERT INTO `leave_info` VALUES ('364', '90', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Sit dolor natus libero ipsam.', '0', '2018');
INSERT INTO `leave_info` VALUES ('365', '92', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Perferendis voluptate deserunt sint quos enim et hic.', '0', '2017');
INSERT INTO `leave_info` VALUES ('366', '81', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Laboriosam et iusto esse commodi.', '2', '2017');
INSERT INTO `leave_info` VALUES ('367', '25', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Ratione veritatis quam sed assumenda voluptatem.', '1', '2017');
INSERT INTO `leave_info` VALUES ('368', '56', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Ea ea necessitatibus sed eum sunt reiciendis quis.', '0', '2017');
INSERT INTO `leave_info` VALUES ('369', '89', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Ab veritatis ut illo nam temporibus est.', '1', '2017');
INSERT INTO `leave_info` VALUES ('370', '17', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Non alias et quo et hic.', '0', '2018');
INSERT INTO `leave_info` VALUES ('371', '108', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Distinctio error sit voluptatibus qui quis.', '0', '2017');
INSERT INTO `leave_info` VALUES ('372', '108', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Est ex aperiam quae.', '1', '2018');
INSERT INTO `leave_info` VALUES ('373', '108', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Est error adipisci et eaque rem.', '0', '2017');
INSERT INTO `leave_info` VALUES ('374', '13', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Quibusdam facere dolores voluptas.', '2', '2018');
INSERT INTO `leave_info` VALUES ('375', '62', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Ipsa quis et deserunt aspernatur et sapiente.', '2', '2017');
INSERT INTO `leave_info` VALUES ('376', '63', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Assumenda voluptas sint architecto repellendus minus.', '0', '2018');
INSERT INTO `leave_info` VALUES ('377', '36', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Dignissimos voluptatem eum sed.', '2', '2018');
INSERT INTO `leave_info` VALUES ('378', '93', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Vero voluptas ut laborum eum nulla aliquid.', '2', '2017');
INSERT INTO `leave_info` VALUES ('379', '50', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Repudiandae est molestiae laudantium consequuntur distinctio sit in.', '0', '2017');
INSERT INTO `leave_info` VALUES ('380', '25', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Assumenda id et adipisci sequi voluptatem ut eos.', '0', '2017');
INSERT INTO `leave_info` VALUES ('381', '26', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Modi nihil vel veritatis at perspiciatis nihil natus.', '1', '2018');
INSERT INTO `leave_info` VALUES ('382', '94', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Fuga voluptate aliquid aperiam magnam similique ullam illum.', '1', '2017');
INSERT INTO `leave_info` VALUES ('383', '105', '2018-06-18 12:00:00', '2018-06-19 08:00:00', 'Delectus iusto dolores adipisci odio quam.', '0', '2017');
INSERT INTO `leave_info` VALUES ('384', '63', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Ea vel repudiandae blanditiis hic a fugiat consequatur.', '2', '2017');
INSERT INTO `leave_info` VALUES ('385', '18', '2018-06-18 17:00:00', '2018-06-19 08:00:00', 'Quia commodi consequatur id dolore ducimus autem autem.', '2', '2017');
INSERT INTO `leave_info` VALUES ('386', '50', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Rem similique amet reprehenderit ut et debitis harum.', '2', '2018');
INSERT INTO `leave_info` VALUES ('387', '23', '2018-06-18 17:00:00', '2018-06-19 12:00:00', 'Accusamus odit debitis est ea.', '1', '2018');
INSERT INTO `leave_info` VALUES ('388', '50', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Et soluta repudiandae quia nobis possimus.', '1', '2018');
INSERT INTO `leave_info` VALUES ('389', '96', '2018-06-18 08:00:00', '2018-06-19 12:00:00', 'Voluptatibus veniam placeat explicabo reiciendis nemo temporibus molestiae.', '1', '2018');
INSERT INTO `leave_info` VALUES ('390', '64', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Rem soluta pariatur sed.', '0', '2017');
INSERT INTO `leave_info` VALUES ('391', '107', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Molestias consequuntur cupiditate qui corrupti eos soluta.', '1', '2017');
INSERT INTO `leave_info` VALUES ('392', '14', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Sunt ut delectus consequuntur vel cum officiis eius.', '0', '2017');
INSERT INTO `leave_info` VALUES ('393', '24', '2018-06-18 12:00:00', '2018-06-19 12:00:00', 'Illum voluptas aut veniam iusto dolores delectus eius.', '0', '2017');
INSERT INTO `leave_info` VALUES ('394', '57', '2018-06-18 08:00:00', '2018-06-19 17:00:00', 'Suscipit totam rerum repellat assumenda.', '1', '2018');
INSERT INTO `leave_info` VALUES ('395', '80', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Sint recusandae et quo sint quas nesciunt id.', '2', '2018');
INSERT INTO `leave_info` VALUES ('396', '31', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Iure soluta dolorum inventore.', '0', '2017');
INSERT INTO `leave_info` VALUES ('397', '22', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Corporis eum id eligendi cupiditate at tenetur.', '0', '2018');
INSERT INTO `leave_info` VALUES ('398', '101', '2018-06-18 12:00:00', '2018-06-19 17:00:00', 'Et eum sint vel dolorum natus tenetur.', '2', '2018');
INSERT INTO `leave_info` VALUES ('399', '18', '2018-06-18 17:00:00', '2018-06-19 17:00:00', 'Nihil at veritatis voluptatem necessitatibus.', '2', '2018');
INSERT INTO `leave_info` VALUES ('400', '70', '2018-06-18 08:00:00', '2018-06-19 08:00:00', 'Quaerat quia iusto natus veniam.', '1', '2017');
