#날짜 : 2022/06/14
#이름 : 김연주
#내용 : SQL 고급실습

#실습하기 5-1
CREATE TABLE `Member` (
    `uid`    VARCHAR(10) PRIMARY KEY,
    `name`   VARCHAR(10),
    `hp`        CHAR(13) UNIQUE,
    `pos`    VARCHAR(10),
    `dep`        INT,
    `rdate`  DATETIME
    );
    

#실습하기 5-2