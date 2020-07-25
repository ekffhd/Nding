/* 이름: demo_madang.sql */
/* 설명 */
 
/* root 계정으로 접속, madang 데이터베이스 생성, madang 계정 생성 */
/* MySQL Workbench에서 초기화면에서 +를 눌러 root connection을 만들어 접속한다. */
DROP DATABASE IF EXISTS  dancearch;
DROP USER IF EXISTS  dancearch@localhost;
create user dancearch@localhost identified WITH mysql_native_password  by 'dancearch';
create database dancearch;
grant all privileges on dancearch.* to dancearch@localhost with grant option;
commit;

/* madang DB 자료 생성 */
/* 이후 실습은 MySQL Workbench에서 초기화면에서 +를 눌러 madang connection을 만들어 접속하여 사용한다. */
 
USE dancearch;

CREATE TABLE Song (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `singer` varchar(30) NOT NULL,
  `link`     varchar(100) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `bpm` int(11) NOT NULL,
   PRIMARY KEY (`id`)
);

INSERT INTO Song VALUES (1, '16shots', 'cover by 블랙핑크', 'https://youtu.be/B_N4C-1bS5k?t=29', '랩/힙합', 95);
INSERT INTO Song VALUES (2,'가시나','선미', 'https://youtu.be/dOsK3FQPhw0?t=50', '댄스', 94);
INSERT INTO Song VALUES (3,'강남스타일','싸이', 'https://youtu.be/bSuWLVMvbJM?t=71', '랩/힙합', 132);
INSERT INTO Song VALUES (4,'나야나','워너원', 'https://youtu.be/GEky2K6HYDU?t=56', '댄스', 143);
INSERT INTO Song VALUES (5,'New Face','싸이', 'https://youtu.be/FNSctFSalbw?t=59', '댄스', 132);
INSERT INTO Song VALUES (6,'I LUV IT','싸이', 'https://youtu.be/Xyv_fd_Qs_g?t=55', '댄스', 125);
INSERT INTO Song VALUES (7,'문을여시오','임창정', 'https://youtu.be/2IXyfTh9qv8?t=23', '발라드', 128);
INSERT INTO Song VALUES (8,'Swish Swish','cover by 백팩키드', 'https://youtu.be/tIzXwVIiHI4?t=10', 'POP', 120);
INSERT INTO Song VALUES (9,'불장난','블랙핑크', 'https://youtu.be/NvWfJTbrTBY?t=62', '댄스', 97);
INSERT INTO Song VALUES (10,'빨간맛','현아', 'https://youtu.be/tUQD3JpVhcQ?t=102','댄스', 125);
INSERT INTO Song VALUES (11,'뿜뿜','모모랜드', 'https://youtu.be/hLv5MBuSYDY?t=93','댄스', 126);
INSERT INTO Song VALUES (12,'아무노래','지코', 'https://youtu.be/FLEqAO7OvvQ?t=149', '랩/힙합', 108);
INSERT INTO Song VALUES (13,'위아래','EXID', 'https://youtu.be/DLaQVboq5S8?t=8', '댄스', 112);
INSERT INTO Song VALUES (14,'Hip','마마무','https://youtu.be/4lL8JbNKZQQ?t=72','댄스', 138);
INSERT INTO Song VALUES (15,'Not today','방탄소년단','https://youtu.be/_PwYjNh1bww?t=69', '랩/힙합', 110);
INSERT INTO Song VALUES (16,'Pick Me','IOI','https://youtu.be/vFb405I-Tkw?t=65','댄스', 128);
INSERT INTO Song VALUES (17,'RolyPoly','티아라','https://youtu.be/08uYAi9wkXI?t=12','댄스', 130);
INSERT INTO Song VALUES (18,'Snapping','청하','https://youtu.be/195tL4wrhsk?t=42', '댄스',105);
INSERT INTO Song VALUES (19,'TT','트와이스','https://youtu.be/lA9yt6ARLwQ?t=75','댄스', 130);
INSERT INTO Song VALUES (20,'YES or YES','트와이스','https://youtu.be/Nl4BJ2TDmWE?t=73','댄스', 138);

commit;