#날짜 : 2022/09/01
#이름 : 이상헌
#내용 : SQL 연습문제3

#실습 3-1
CREATE DATABASE `java1_College`;
CREATE USER 'java1_admin3'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON java1_College.*TO 'java1_admin3'@'%';
FLUSH PRIVILEGES;


#실습 3-2
CREATE TABLE `Student` (
		`stdno`          Char(8) PRIMARY KEY,
        `stdName`        VARCHAR(20) NOT NULL ,
        `stdHP`          CHAR(13) NOT NULL,
        `stdYear`        TINYINT NOT NULL,
        `stdAddress`     VARCHAR(100)
);

CREATE TABLE `Lecture` (
	`lecNO`         INT PRIMARY KEY,
	`lecName`        VARCHAR(20) NOT NULL ,
	`lecCredit`      TINYINT NOT NULL,
	`lecTime`        INT NOT NULL,
	`lecClass`     	VARCHAR(10) DEFAULT NULL
);

CREATE TABLE `Register` (
	`regStdNO`         	CHAR(8),
	`regLecNO`        	INT,
	`regMidScore`      	TINYINT,
	`regFinalScore`     TINYINT,
	`regTotalScore`     TINYINT,
    `regGrade`     	CHAR(1)
);
		
#실습 3-3
INSERT INTO `student` VALUES ('20201016', '김유신', '010-1234-1001', 3, NULL);
INSERT INTO `student` VALUES ('20201126', '김춘추', '010-1234-1002', 3, '경상남도 경주시');
INSERT INTO `student` VALUES ('20210216', '장보고', '010-1234-1003', 2, '전라남도 완도시');
INSERT INTO `student` VALUES ('20210326', '강감찬', '010-1234-1004', 2, '서울시 영등포구');
INSERT INTO `student` VALUES ('20220416', '이순신', '010-1234-1005', 1, '부산시 부산진구');
INSERT INTO `student` VALUES ('20220521', '송상현', '010-1234-1006', 1, '부산시 동래구');

INSERT INTO `Lecture` VALUES (159, '인지행동심리학', 3, 40, '본304');
INSERT INTO `Lecture` VALUES (167, '운영체제론', 3, 25, '본B05');
INSERT INTO `Lecture` VALUES (234, '중급영문법', 3, 20, '본201');
INSERT INTO `Lecture` VALUES (239, '세법개론', 3, 40, '본204');
INSERT INTO `Lecture` VALUES (248, '빅데이터 개론', 3, 20, '본Bo1');
INSERT INTO `Lecture` VALUES (253, '컴퓨터사과와 코딩', 2, 10, '본Bo2');
INSERT INTO `Lecture` VALUES (349, '사회복지 마케팅', 2, 50, '본301');

INSERT INTO `Register` (`regStdNO`, `regLecNo`) VALUES ('201126', 234);
INSERT INTO `Register` (`regStdNO`, `regLecNo`) VALUES ('20201016', 248);
INSERT INTO `Register` (`regStdNO`, `regLecNo`) VALUES ('20201016', 253);
INSERT INTO `Register` (`regStdNO`, `regLecNo`) VALUES ('20201126', 239);
INSERT INTO `Register` (`regStdNO`, `regLecNo`) VALUES ('20210216', 349);
INSERT INTO `Register` (`regStdNO`, `regLecNo`) VALUES ('20210326', 349);
INSERT INTO `Register` (`regStdNO`, `regLecNo`) VALUES ('20201016', 167);
INSERT INTO `Register` (`regStdNO`, `regLecNo`) VALUES ('20220416', 349);

#실습 3-4
SELECT * FROM `lecture`;

#실습 3-5
SELECT * FROM `student`;

#실습 3-6
SELECT * FROM `register`;

#실습 3-7
SELECT * FROM `Student` 
#실습 3-8
;
#실습 3-9
update `Register` set `regMidScore`=36, `regfinalScore` =42 WHERE `regStdNO`= '20201126' AND `regLecNO`=234;
update `Register` set `regMidScore`=36, `regfinalScore` =42 WHERE `regStdNO`= '20201126' AND `regLecNO`=234;
update `Register` set `regMidScore`=36, `regfinalScore` =42 WHERE `regStdNO`= '20201126' AND `regLecNO`=234;
update `Register` set `regMidScore`=36, `regfinalScore` =42 WHERE `regStdNO`= '20201126' AND `regLecNO`=234;
update `Register` set `regMidScore`=36, `regfinalScore` =42 WHERE `regStdNO`= '20201126' AND `regLecNO`=234;
update `Register` set `regMidScore`=36, `regfinalScore` =42 WHERE `regStdNO`= '20201126' AND `regLecNO`=234;
#실습 3-10

#실습 3-11
#실습 3-12
#실습 3-13
#실습 3-14
#실습 3-15
#실습 3-16
select * from `Student` where `stdAddress` is null;

#실습 3-17
#실습 3-18
select *from `Student` as a
left join `Register` as b
on a.stdNo = b.regStdNO;

#실습 3-19
select * from `Student` as a, `Register` as b where a.stdNO = b.regStdNO;

#실습 3-20

#실습 3-21
#실습 3-22
#실습 3-23
#실습 3-24
#실습 3-25
#실습 3-26
#실습 3-27
#실습 3-28
select * from `Student` as a
join `Register` as b on a.stdNO = b.regStdNO
join `Lecture` as  c on b.regLecNO = clecNO
where `regGrade` ='F';
#실습 3-29
select
	`stdNo`,
    `srdName`,
    sum(`lecCrdit`) as `이수학점`
* from `Student` as a
join `Register` as b on a.stdNO = b.regStdNO
join `Lecture` as c on b.regLecNO = c.lecNO;
where `regGrade` != 'F'
group by `stdNO`;

#실습 3-30
select
	`stdNO`,
    `stdName`,
    group_concat(`lecName`) as `신청과목`
from `Student` as a
join `Register` as b on a.stdNO = b.regSTdNO
join `Lecture` as c on b.reglecNO = c.lecNO
group by `stdNO`;