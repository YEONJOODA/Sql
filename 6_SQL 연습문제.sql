#날짜 : 2022/06/20
#이름 : 김연주
#내용 : SQL 연습문제

#문제 1
CREATE TABLE `Book` (
  `bookid`     INT AUTO_INCREMENT PRIMARY KEY,
  `bookname`   VARCHAR(20),
  `publisher`  VARCHAR(10),
  `price`      INT
);

INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('축구의 역사', '굿스포츠', 7000);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('축구아는 여자', '나무수', 13000);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('골프 파이블', '대한미디어', 35000);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('피겨 교본', '굿스포츠', 8000);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` (`bookname`,`publisher`,`price`) VALUES ('Olympic Champions', 'Pearson', 13000);

#문제 2
CREATE TABLE `Customer` (
  `custid`     INT AUTO_INCREMENT PRIMARY KEY,
  `name`   VARCHAR(10),
  `address`  VARCHAR(10),
  `phone`      CHAR(13)
);

INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer` (`name`,`address`) VALUES ('박세리', '대한민국 대전');

#문제 3
CREATE TABLE `Orders` (
  `orderid`   INT AUTO_INCREMENT PRIMARY KEY,
  `custid`    INT,
  `bookid`    INT,
  `saleprice` INT,
  `orderdate` CHAR(10)
);

INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1,1,6000,'2014-07-01');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1,3,21000,'2014-07-03');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (2,4,8000,'2014-07-03');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3,5,6000,'2014-07-04');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (4,6,20000,'2014-07-05');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (1,2,12000,'2014-07-07');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (4,8,13000,'2014-07-07');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3,10,12000,'2014-07-08');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (2,10,7000,'2014-07-09');
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`,`orderdate`) VALUES (3,8,13000,'2014-07-10');

#문제 4
SELECT `custid`, `NAME`, `address` FROM `Customer`;

#문제 5
SELECT `bookname`, `price` FROM `Book`;

#문제 6
SELECT `price`, `bookname` FROM `Book`;

#문제 7
SELECT * FROM `Book`;

#문제 8
SELECT `publisher` FROM `Book`;

#문제 9
SELECT DISTINCT `publisher` FROM `Book`;

#문제 10
SELECT * FROM `Book` WHERE `price` >= 20000;

#문제 11
SELECT * FROM `Book` WHERE `price` < 20000;

#문제 12
SELECT * FROM `Book` WHERE `price` >= 10000 AND `price` <= 20000;
SELECT * FROM `Book` WHERE `price` BETWEEN 10000 AND 20000;

#문제 13
SELECT `bookid`,`bookname`,`price` FROM `Book` WHERE `price` >= 15000 AND `price` <= 30000;

#문제 14
SELECT * FROM `Book` WHERE `bookid`=2 OR `bookid`=3 OR `bookid`=5;
SELECT * FROM `Book` WHERE `bookid` IN(2,3,5);

#문제 15
SELECT *FROM `Book` WHERE `bookid` % 2 = 0;

#문제 16
SELECT * FROM `Customer` WHERE `name` LIKE '박%';

#문제 17
SELECT * FROM `Customer` WHERE `address` LIKE '%대한민국%';

#문제 18
SELECT * FROM `Book` WHERE NOT `Phone` IS NULL;

#문제 19
SELECT * FROM `Customer` WHERE `publisher` = '굿스포츠' OR `publisher`='대한미디어';
SELECT * FROM `Customer` WHERE `publisher` IN('굿스포츠', '대한미디어');

#문제 20
SELECT `publisher` FROM `Book` WHERE `bookname`='축구의 역사';

#문제 21
SELECT `publisher` FROM `Book` WHERE `bookname` LIKE '%축구%';

#문제 22
SELECT * FROM `Book` WHERE `bookname` LIKE '_구%';

#문제 23
SELECT * FROM `Book` WHERE `bookname` LIKE '%축구%' AND `price` >= 20000;

#문제 24
SELECT * FROM `Book` ORDER BY `bookname`;

#문제 25
SELECT * FROM `Book` ORDER BY `price`, `bookname`;

#문제 26
SELECT * FROM `Book` ORDER BY `price` DESC, `bookname` ASC;

#문제 27
SELECT * FROM `Book` ORDER BY `price` DESC LIMIT 3;

#문제 28
SELECT * FROM `Book` ORDER BY `price` ASC LIMIT 3;

#문제 29