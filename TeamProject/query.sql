create table menu(
	menunum number(10) primary key,
	menutitle varchar2(40),
	menuprice number(20),
	color varchar2(10)
);

create table reservation(
	resnum number(10) primary key,
	menunum number(10),
	ressum number(20),
	resdate timestamp,
	restime timestamp,
	username varchar2(20),
	usernum number(10)
);

create table account(
	usernum number(10) primary key,
	userid varchar2(20),
	userpwd varchar2(20),
	regdate timestamp,
	userout varchar2(5)
);

create table info(
	usernum number(10) primary key,
	username varchar2(20),
	usertel varchar2(30),
	useraddr varchar2(50),
	useremail varchar2(30),
	admin varchar2(5)
);

create table board(
	boanum number(10) primary key,
	boatitle varchar2(50),
	boacontent varchar2(1000),
	boadate timestamp,
	boahit number(10)
);

create table qaboard(
	qaboanum number(10) primary key,
	qaboatitle varchar2(50),
	qaboacontent varchar2(1000),
	qaboahit number(10),
	qaboadate timestamp,
	usernum number(10),
	username varchar2(20),
	userpwd varchar2(20)
);

create table reply(
	repnum number(10) primary key,
	qaboanum number(10),
	repcontent varchar2(1000),
	usernum number(10)
);

create sequence boa_seq;
create sequence qaboa_seq;
create sequence res_seq;
create sequence rep_seq;

INSERT INTO "PIZZA"."ACCOUNT" (USERNUM, USERID, USERPWD, REGDATE, USEROUT) VALUES ('1','admin','1234','15/08/14 10:53:46.000000000','y');

INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('201', '씨푸드퐁듀', '33000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('202', '더블치즈버거', '33000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('203', '호박고구마', '32000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('204', '로맨틱콤보', '32000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('205', '통베이컨스테이크', '31000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('206', '베이컨포테이토', '31000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('301', '(씨퐁듀+콜라+파스타)세트', '37000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('302', '(더블즈+콜라+파스타)세트', '37000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('303', '(호박고+콜라+파스타)세트', '36000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('304', '(로맨보+콜라+파스타)세트', '36000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('305', '(통베컨+콜라+파스타)세트', '35000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('306', '(베컨포+콜라+파스타)세트', '35000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('401', '씨푸드 파스타', '6000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('402', '치킨텐더', '5000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('403', '허니브레드', '5000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('404', '초콜릿 점보쿠키', '7000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('501', '사이다', '1600', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('502', '환타', '1600', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('503', '콜라', '1600', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('504', '제로콜라', '1600', 'red');