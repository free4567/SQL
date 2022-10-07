#날짜 : 2022/08/31
#이름 : 이상헌
#내용 : SQL 연습문제2

#실습2-1
create database `java1_Bank`;
create user 'java1_admin2'@'%' identified by '1234';
grant all privileges on `java1_Bank`.* To 'java1_admin2'@'%';
flush privileges;

#실습2-2
CREATE TABLE `bank_customer` ( 
	`c_no`      CHAR(14) PRIMARY KEY,
    `c_name`    	VARCHAR (20) NOT NULL,
    `c_dist`    	TINYINT NOT NULL DEFAULT 0,
    `c_phoe`     VARCHAR(20) UNiQUE NOT NUll,
    `c_addr`  		VARCHAR (100)
);
    
CREATE TABLE `bank_account` ( 
		`a_no`          CHAR(11) primary key,
        `a_item_dist`   CHAR(2)  NOT NULL,
        `a_item_name`   VARCHAR(20) NOT NULL,
	    `a_c_no`           CHAR(14) NOT NULL,
        `a_balace`      INT NOT NULL DEFAULT 0,
        `a_open_date`   DATE NOT NULL
);

CREATE TABLE `bank_transaction`
`t_no` 			INT AUTO_INCREMENT PRIMARY KEY,
`t_a_no`			CHAR(11) NOT NULL,
`t_dist`			TINYINT NOT NULL,
`t_amount`		INT NOT NULL DEFAULT 0,
`t_datetime`	DATETIME NOT NULL
);

#실습2-3
insert into `bank_customer` values ('102-22-51094', '부산의원', 2, '051-518-1010', '부산시 남구');
insert into `bank_customer` values ('220-82-52237', '(주)한국전산', 2, '02-134-1045', '서울시 강서구');
insert into `bank_customer` values ('361-22-42687', '(주)정보산업', 2, '031-563-1253', '경기도 광명시');
insert into `bank_customer` values ('730423-1000001', '김유신', 1, '010-1234-1001', '경기도 수원시');
insert into `bank_customer` values ('750210-1000002', '김춘추', 1, '010-1234-1002', '경기도 광주시');
insert into `bank_customer` values ('830513-2000003', '선덕여왕', 1, '010-1234-1003', '서울시 마포구');
insert into `bank_customer` values ('870830-1000004', '강감찬', 1, '010-1234-1004', '서울시 영등포구');
insert into `bank_customer` values ('910912-2000005', '신사임당', 1, '010-1234-1005', '강원도 강릉시');
insert into `bank_customer` values ('941127-1000006', '이순신', 1, '010-1234-1006', '부산시 영도구');

insert into `bank_account` values ('101-11-1001', 'S1', '자유저축예금', '730423-1000001', 420000, '2005-07-21');
insert into `bank_account` values ('101-11-1003', 'S1', '자유저축예금', '870830-1000004', 53000, '2007-02-17');
insert into `bank_account` values ('101-11-2001', 'S1', '자유저축예금', '220-82-52237', 23000000, '2003-04-14');
insert into `bank_account` values ('101-11-2002', 'S1', '자유저축예금', '361-22-42687', 4201000, '2008-12-30');
insert into `bank_account` values ('101-11-2003', 'S1', '자유저축예금', '102-22-51094', 8325010, '2010-06-07');
insert into `bank_account` values ('101-12-1002', 'S2', '정기적립적금', '830513-2000003', 1020000, '2011-05-13');
insert into `bank_account` values ('101-13-1005', 'S3', '주택청약예금', '941127-1000006', 720800, '2012-10-15');
insert into `bank_account` values ('101-21-1004', 'L1', '고객신용대출', '910912-2000005', 1200500, '2009-08-25');
insert into `bank_account` values ('101-22-1006', 'L2', '예금담보대줄', '730423-1000001', 25000, '2013-12-11');
insert into `bank_account` values ('101-23-1007', 'L3', '주택담보대줄', '750210-1000002', 2700000, '2020-09-23');

insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) values ('101-11-10001', 1, , '2022-08-21 04:26:52');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) values ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) values ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) values ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) values ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) values ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
insert into `bank_transaction` (`t_a_no`, `t_dist`, `t_amount`, `t_datetime`) ('', , , '');
#실습2-4

#실습2-5
#실습2-6
#실습2-7
#실습2-8
#실습2-9
select distinct `a_item_dist` , `a_item`name* from `bank_accout`;
#실습2-10
select *  freom `bank_accout` where `a_item_dist`='S!' and `a_balance` >= 1000000;
#실습2-11
select * from `bank_customer` where `c_addr` like '경기도%';

#실습2-12
select * from `bank_customer` where `c_dist`=2;

#실습2-13
#실습2-14
select * from `bank_transaction` where `t_dist`=2 order by `t_amount` desc;

#실습2-15
select
	sum(`t_amount`) as `임금총합`,
	avg(`t_amount`) as `임금평균`
from `bank_transaction` where `t_dist`=1;

#실습2-16
#실습2-17
#실습2-18
select * from `bank_accout` where `a_item_dist`= 'S1' order by `a_balance` desc limit 1;

#실습2-19
select * from `bank_transaction` where `t_dist` <> 3
order by `t_dist`, `t_amount` desc;

#실습2-20
select 
	count(if(`t_dist`=1, 1, null)) as `입금 건수`,
	count(if(`t_dist`=2, 1, null)) as `출금 건수`,
    count(if(`t_dist`=3, 1, null)) as `조회 건수`
 from `bank_transaction`;
 
#실습2-21
select 
	`t_dist`,
    CASE
		when(`t_dist` = 1) then '입금',
        when(`t_dist` = 2) then '출금',
		when(`t_dist` = 3) then '조회',
    End as `type`,
    `t_a_no,
    `t_amount
 from `bank_transaction`;
 
#실습2-22
#실습2-23
#실습2-24
select
	`t_a_no`,
    `t_dist`,
    sum('t_amount`) as `합계`
#실습2-25
select * from `bank_accout` as a
ioin `bank_customer` as b
on a.a_c_no = b.c_no;

#실습2-26
select
	`a_no as `계좌번호`,
    `a_item_name` as `계좌이름`,
    `a_c_no` as `주민번호(사업자번호)`,
    `
 from `bank_accout` as a
ioin `bank_customer` as b
on a.a_c_no = b.c_no;
#실습2-27

#실습2-28
#실습2-29
#실습2-30