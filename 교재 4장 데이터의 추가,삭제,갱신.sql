#날짜 : 2022/06/21
#이름 : 김연주
#내용 : 교재 4장 데이터의 추가,삭제,갱신


###############################
#16강 행 추가하기
###############################
#테이블 생성/데이터 저장
#p153 
CREATE TABLE `sample41` (
  `no` INT(11) NOT NULL,
  `a`  VARCHAR(30),
  `b`  DATE
);
DROP TABLE `sample41`;
#p154
INSERT INTO `sample41` VALUES(1,'ABC','2014-01-25');

#p155
INSERT INTO `sample41`(a, NO) VALUES ('XYZ', 2);

#p156
INSERT INTO `sample41`(no, a, b) VALUES (3, NULL, NULL);

#테이블 생성/데이터 저장
#p157
CREATE TABLE `sample411` (
  `no` INT(11) NOT NULL,
  `d`  INT(11) DEFAULT 0
);

#p158
INSERT INTO `sample411`(NO, d) VALUES (1,1);

INSERT INTO `sample411`(NO, d) VALUES (2, DEFAULT);

#p159
INSERT INTO `sample411`(no) VALUES (3);

###############################
#17강 삭제하기
###############################
#p161
SELECT * FROM `sample41`;

#p162
DELETE FROM `sample41` WHERE `no`=3;

###############################
#18강 데이터 갱신하기
###############################
#p165
SELECT * FROM `sample41`;

#p166
UPDATE `sample41` SET `b`='2014-09-07' WHERE `no`=2;

#p168
UPDATE `sample41` SET `no`=`no`+1;

#p170
UPDATE `sample41` SET `no`=`no`+1, `a`=`no`;

#p171
UPDATE `sample41` SET `a`=`no`, `no`=`no`+1;

UPDATE `sample41` SET `no`=`no`+1, `a`=`no`;

#p173
UPDATE `sample41` SET `a`= NULL;