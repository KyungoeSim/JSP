CREATE TABLE `coop` (
   `cno` INT(10) NOT NULL AUTO_INCREMENT,
   `ctitle` VARCHAR(50) NULL DEFAULT NULL,
   `ccontent` LONGTEXT NULL DEFAULT NULL,
   `email` VARCHAR(100) NULL DEFAULT NULL,
   `cdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`cno`) USING BTREE
);

CREATE TABLE `doctrine` (
   `dno` INT(10) NOT NULL AUTO_INCREMENT,
   `dtitle` VARCHAR(50) NULL DEFAULT NULL,
   `dcontent` LONGTEXT NULL DEFAULT NULL,
   `email` VARCHAR(100) NULL DEFAULT NULL,
   `ddate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`dno`) USING BTREE
);

CREATE TABLE `gallery` (
   `gno` INT(10) NOT NULL AUTO_INCREMENT,
   `gtitle` VARCHAR(50) NULL DEFAULT NULL,
   `gupfolder` VARCHAR(100) NULL DEFAULT NULL,
   `guuid` VARCHAR(100) NULL DEFAULT NULL,
   `gfilename` VARCHAR(100) NULL DEFAULT NULL,
   `email` VARCHAR(100) NOT NULL,
   `gdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`gno`) USING BTREE
);

CREATE TABLE `lecture` (
   `lno` INT(10) NOT NULL AUTO_INCREMENT,
   `ltitle` VARCHAR(50) NULL DEFAULT NULL,
   `lname` LONGTEXT NULL DEFAULT NULL,
   `lcontent` LONGTEXT NULL DEFAULT NULL,
   `email` VARCHAR(100) NOT NULL,
   `ldate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`lno`) USING BTREE
);

CREATE TABLE `news` (
   `nno` INT(10) NOT NULL AUTO_INCREMENT,
   `ntitle` VARCHAR(50) NULL DEFAULT NULL,
   `ncontent` LONGTEXT NULL DEFAULT NULL,
   `email` VARCHAR(100) NOT NULL,
   `ndate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`nno`) USING BTREE
);

CREATE TABLE `post` (
   `pno` INT(10) NOT NULL AUTO_INCREMENT,
   `ptitle` VARCHAR(50) NULL DEFAULT NULL,
   `pupfolder` VARCHAR(100) NULL DEFAULT NULL,
   `puuid` VARCHAR(100) NULL DEFAULT NULL,
   `pfilename` VARCHAR(100) NULL DEFAULT NULL,
   `email` VARCHAR(100) NOT NULL,
   `pdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`pno`) USING BTREE
);

CREATE TABLE `user` (
   `email` VARCHAR(100) NOT NULL,
   `password` VARCHAR(50) NULL DEFAULT NULL,
   `name` VARCHAR(50) NULL DEFAULT NULL,
   `job` VARCHAR(50) NULL DEFAULT NULL,
   `joindate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   `approve` INT(10) NULL DEFAULT '0',
   PRIMARY KEY (`email`) USING BTREE
);

CREATE TABLE `vow` (
   `vno` INT(10) NOT NULL AUTO_INCREMENT,
   `vtitle` VARCHAR(50) NULL DEFAULT NULL,
   `vcontent` LONGTEXT NULL DEFAULT NULL,
   `vdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   `email` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`vno`) USING BTREE
);

CREATE TABLE `worship` (
   `wno` INT(10) NOT NULL AUTO_INCREMENT,
   `wtitle` VARCHAR(50) NULL DEFAULT NULL,
   `wcontent` LONGTEXT NULL DEFAULT NULL,
   `email` VARCHAR(100) NOT NULL,
   `wname` VARCHAR(50) NULL DEFAULT NULL,
   `wdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`wno`) USING BTREE
);