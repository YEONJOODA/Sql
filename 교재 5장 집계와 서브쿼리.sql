#날짜 : 2022/06/22
#이름 : 김연주
#내용 : 교재 5장 집계와 서브쿼리

###############################
#20강 행 개수 구하기
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample51` (
  `no`        INT AUTO_INCREMENT PRIMARY KEY,
  `name`      VARCHAR(10), 
  `quantity`  INT
);

INSERT INTO `sample51` (`name`,`quantity`) VALUE ('A', 1);
INSERT INTO `sample51` (`name`,`quantity`) VALUE ('A', 2);
INSERT INTO `sample51` (`name`,`quantity`) VALUE ('B', 10);
INSERT INTO `sample51` (`name`,`quantity`) VALUE ('C', 3); 
INSERT INTO `sample51` VALUE ();

#p183
SELECT COUNT(*)FROM `sample51`;

#p185
SELECT * FROM `sample51` WHERE `name`='A';

SELECT COUNT(*)FROM `sample51` WHERE `name`='A';

#p186
SELECT COUNT(no), COUNT(name) FROM `sample51`;

#p187
SELECT * FROM `sample51`;

#p188
SELECT ALL `name` FROM `sample51`;

SELECT DISTINCT `name` FROM `sample51`;

#p189
SELECT COUNT(ALL name),COUNT(DISTINCT name)FROM `sample51`;

###############################
#21강 COUNT 이외의 집계함수
###############################
#p191
SELECT SUM(`quantity`) FROM `sample51`;

#p192
SELECT AVG(quantity), SUM(quantity)/COUNT(quantity) FROM `sample51`;

#p193
SELECT MIN(quantity), MAX(quantity), MIN(name), MAX(name) FROM `sample51`;
###############################
#22강 그룹화-GROUP BY
###############################
#p195
SELECT `name` FROM `sample51` GROUP BY `name`;

#p197
SELECT `name`, COUNT(name), SUM(quantity) FROM `sample51` GROUP BY `name`;

#p199
SELECT `name`, COUNT(name) FROM `sample51` GROUP BY `name`;

SELECT `name`, COUNT(name) FROM `sample51` GROUP BY `name` HAVING COUNT(NAME)=1;

#p202
SELECT `name`, COUNT(name), SUM(quantity) FROM `sample51` GROUP BY `name` ORDER BY SUM(quantity) DESC;

###############################
#23강 서브쿼리
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample54` (
  `no`  INT AUTO_INCREMENT PRIMARY KEY,
  `a`   INT
);

INSERT INTO `sample54` (`a`) VALUES (100);
INSERT INTO `sample54` (`a`) VALUES (900);
INSERT INTO `sample54` (`a`) VALUES (20);
INSERT INTO `sample54` (`a`) VALUES (80);

#p205
SELECT MIN(a) FROM `sample54`;

#p206
DELETE FROM `sample54` WHERE `a`=(SELECT MIN(a) FROM `sample54`);

#p207
SELECT MIN(a) FROM `sample54`;

SELECT `no` FROM `sample54`;

SELECT MIN(a), MAX(no) FROM `sample54`;

#p208
SELECT `no`,`a` FROM `sample54`;

#p210
SELECT 
(SELECT COUNT(*) FROM `sample51`) AS sq1,
(SELECT COUNT(*) FROM `sample54`) AS sq2;

#p211
UPDATE `sample54` SET a=(SELECT MAX(a) FROM `sample54`);

#p212
SELECT * FROM (SELECT * FROM `sample54`) sq;

#p213


#테이블 생성/데이터 저장
CREATE TABLE `sample541` ();
#p214
#p215

###############################
#24강 상관 서브쿼리
###############################
#테이블 생성/데이터 저장
CREATE TABLE `sample551` ();
CREATE TABLE `sample552` ();
#p217
#p218
#p219
#p221
#p222