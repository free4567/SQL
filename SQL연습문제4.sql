#날짜 : 2022/09/02
#이름 : 이상헌
#내용 : SQL 연습문제 4

#실습 4-1
CREATE DATABASE `java1_BookStore`;
CREATE USER 'java1_admin4'@'%' identified BY '1234';
grant all privileges on `java1_BookStore`.* TO 'java1_admin4'@'%'; 
flush privileges;

#실습 4-2
create table `Customer` (
`custid`    	INT Auto_INCREMENT PRIMARY KEY,
`name`      	CHAR(10) NOT NULL,
`address`   	VARCHAR(20) DEFAULT NULL,
`phone`         VARCHAR(13) UNIQUE DEFAULT NULL
);

create table `Book` (
`bookid`    	INT NOT NULL PRIMARY KEY,
`bookName`      VARCHAR(20) NOT NULL,
`publisher`   	CHAR(20) NOT NULL,
`price`         VARCHAR(20) UNIQUE DEFAULT NULL
);

create table `Order` (
`orderid`    	INT NOT NULL PRIMARY KEY,
`custid`      	TINYINT NOT NULL,
`bookid`   		VARCHAR(20) DEFAULT NULL,
`salePrice`      VARCHAR(20) UNIQUE DEFAULT NULL
`orederDate`      VARCHAR(20) UNIQUE DEFAULT NULL
);
#실습 4-3
#실습 4-4
#실습 4-5
#실습 4-6
#실습 4-7
#실습 4-8
#실습 4-9
#실습 4-10
#실습 4-12
#실습 4-13
#실습 4-14
select * form `Book` where `bookid` =2 or `book1d`= 3;
#실습 4-15
#실습 4-16
#실습 4-17
#실습 4-18
#실습 4-19
#실습 4-20
#실습 4-21
#실습 4-22
#실습 4-23
#실습 4-24
#실습 4-25
#실습 4-26
#실습 4-27
#실습 4-28
#실습 4-29
#실습 4-30
#실습 4-31
#실습 4-32
#실습 4-33
#실습 4-34
#실습 4-35
#실습 4-36
#실습 4-37
#실습 4-38
#실습 4-39
#실습 4-40
#실습 4-41
#실습 4-42
#실습 4-43
#실습 4-44
#실습 4-45
#실습 4-46