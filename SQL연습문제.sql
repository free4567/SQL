#날짜 : 2022/08/29
#이름 : 이상헌
#내용: SQL 연습문제 1

#실습 1-1
create database `Java1_Shop`;
create user 'java1_admin1'@'%' identified by '1234';
grant all privileges on `java1_shop`.* to 'java1_admin1'@'%';
flush privileges;

#실습 1-2
CREATE TABLE `Customer` (
	`custId` VARCHAR(10) PRIMARY KEY,
	`name`   VARCHAR(10) NOT NULL,
	`hp`		CHAR(13) DEFAULT NULL,
	`addr`   VARCHAR(100) DEFAULT NULL,
	`rdate`	DATE NOT NULL
);
    
	CREATE TABLE `Product` (
	`prodNo`	INT AUTO_INCREMENT PRIMARY KEY,
	`prodName`  VARCHAR(10) NOT NULL,
	`stock`		INT DEFAULT 0,
	`price`		INT DEFAULT NULL,
	`company`   VARCHAR(20) NOT NULL
);
        
	CREATE TABLE `Order` (
	`orderNo`		INT AUTO_INCREMENT PRIMARY KEY,
	`orderId`      VARCHAR(10) NOT NULL,
	`orderProduct` INT NOT NULL,
	`orderCount`	INT DEFAULT 1,
	`orderDate`    DATETIME NOT NULL
);

#실습 1-3
insert into `customer` values ('c101', '김유신', '010-1234-1001', '김해시 봉황동', '2022-01-01');
insert into `customer` values ('c102', '김춘추', '010-1234-1002', '경주시 보문동', '2022-01-02');
insert into `customer` values ('c103', '장보고', '010-1234-1003', '완도군 청산면', '2022-01-03');
insert into `customer` values ('c104', '강감찬', '010-1234-1004', '서울시 마포구', '2022-01-04');
insert into `customer` (`custld`, `name`, `rdate`) values ('c105', '이성계', '2022-01-05');
insert into `customer` values ('c106', '정철', '010-1234-1006', '경기도 용인시', '2022-01-06');
insert into `customer` (`custld`, `name`, `rdate`) values ('c107', '허준', '2022-01-07');
insert into `customer` values ('c108', '이순신', '010-1234-1008', '서울시 영등포구', '2022-01-08');
insert into `customer` values ('c109', '송상현', '010-1234-1009', '부산시 동래구', '2022-01-09');
insert into `customer` values ('c110', '정약용', '010-1234-1010', '경기도 광주시', '2022-01-10');

insert into `product` values (1, '새우깡', 5000, 1500, '농심');  
insert into `product` values (2, '초코파이', 2500, 2500, '오리온');  
insert into `product` values (3, '포카칩', 3600, 1700, '오리온');  
insert into `product` values (4, '양파링', 1250, 1800, '농심');  
insert into `product` (`prodNO`, `prodName`, `stock`, `company`) values  (5, '죠리퐁', 2200, '크라운');  
insert into `product` values (6, '마카렛트', 3500, 3500, '롯데');  
insert into `product` values (7, '뿌셔뿌셔', 1650, 1200, '오뚜기'); 

insert into `order`   values (1, 'c102', 3, 2, '2022-07-01 13:15:10');
insert into `order`   values (2 , 'c101', 4, 1, '2022-07-01 14:16:11');
insert into `order`   values (3 , 'c108', 1, 1, '2022-07-01 17:23:18');
insert into `order`   values (4 , 'c109', 6, 5,'2022-07-02 10:46:36');
insert into `order`   values (5 , 'c102', 2, 1, '2022-07-03 09:15:37');
insert into `order`   values (6 , 'c101', 7, 3, '2022-07-03 12:35:12');
insert into `order`   values (7 , 'c110', 1, 2, '2022-07-03 16:55:36');
insert into `order`   values (8 , 'c104', 2, 4, '2022-07-04 14:23:23');
insert into `order`   values (9 , 'c102', 1, 3, '2022-07-04 21:54:34');
insert into `order`   values (10 , 'c107', 6, 1, '2022-07-05 14:21:03');

#실습 1-4
select * from `customer`;
#실습 1-5
SELECT `custid`, `name`, `hp` FROM `Customer`;

#실습 1-6
SELECT * FROM `Product`;

#실습 1-7
select `company` from `Product`;

#실습 1-8
select distinct `company` from `Product`;

#실습 1-9
select `prodname`, `price` from `Porduct`;

#실습 1-10
select `prodname`, `price` + 500 as `조정단가` from `Product`;
#실습 1-11
SELECT `prodName`, `stock`, `price` FROM `Product` WHERE `company` = '오리온';

#실습 1-12
SELECT `orderProduct`, `orderCount`, `orderDate` FROM `Order` WHERE `orderid` = 'c102';

#실습 1-13
SELECT `orderProduct`, `orderCount`, `orderDate` FROM `Order` WHERE `orderid` = 'c102' AND `orderCount` >= 2;

#실습 1-14
SELECT * FROM `Product` WHERE `price` >= 1000 AND `price` <= 2000;

#실습 1-15
select `custId`, `name`, `hp`, `addr` from `Customer` where `name` like '김%';

#실습 1-16
select `custId`, `name`, `hp`, `addr` from `Customer` where `name` like '__';

#실습 1-17
select * from `Customer` where `hp` is null;

#실습 1-18
select * from `Customer` where `addr` is not null;
#실습 1-19
SELECT * FROM `Customer` ORDER BY `rdate` DESC;
#실습 1-20
select * from `order` where `oredrCount` >= 3 order by `orderCount` Desc, `OrderNO` ASC;

#실습 1-21
SELECT AVG(`price`) FROM `Product`;

#실습 1-22
SELECT SUM(`stock`) AS `재고량 합계` FROM `Product` WHERE `company`='농심';

#실습 1-23
SELECT COUNT(`custid`) AS `고객수` FROM `Customer`;

#실습 1-24
SELECT COUNT(DISTINCT `company`) AS `제조업체 수` FROM `Product`;

#실습 1-25
select `orderProduct` as `주문 상품번호`, sum(`ordercount`) as `총 주문수량` from `order` group by `orederProduct`;

#실습 1-26
SELECT `company` AS `제조업체`, COUNT(*) AS `제품수`, MAX(`price`) AS `최고가` FROM `Product` GROUP BY `company`;

#실습 1-27
SELECT `company` AS `제조업체`, COUNT(*) AS `제품수`, MAX(`price`) AS `최고가` FROM `Product` GROUP BY `company` HAVING `제품수` >= 2;

#실습 1-28
SELECT `orderProduct`, `orderId`, SUM(`orderCount`) AS `총 주문수량` FROM `Order` GROUP BY `orderProduct`, `orderId`;

#실습 1-29
select * from `order`
join `Product` as b
on a.`orderProduct` = b.`prodno`
where `orderid` = 'c102';

#실습 1-30
select `orderid`, `name`, `prodName`, `orderDate` from `Order` as a
join `Customer` as b on a.orderId = b.custId
join `Product` as c on a.orderProduct = c.prodNo
where substr(`orderDate`, 1, 10) = '2022-07-03';