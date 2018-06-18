

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `dept_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
);

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
  `emp_id` int(11) PRIMARY KEY AUTO_INCREMENT,
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
  FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`),
  FOREIGN KEY (`manager_id`) REFERENCES `employee` (`emp_id`)
);

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for leave_info
-- ----------------------------
DROP TABLE IF EXISTS `leave_info`;
CREATE TABLE `leave_info` (
  `leave_id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `reason` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0',
  `year` char(4) NOT NULL,
  FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
);

