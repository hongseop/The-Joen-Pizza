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

INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('201', '��Ǫ������', '33000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('202', '����ġ�����', '33000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('203', 'ȣ�ڰ���', '32000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('204', '�θ�ƽ�޺�', '32000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('205', '�뺣����������ũ', '31000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('206', '��������������', '31000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('301', '(������+�ݶ�+�Ľ�Ÿ)��Ʈ', '37000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('302', '(������+�ݶ�+�Ľ�Ÿ)��Ʈ', '37000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('303', '(ȣ�ڰ�+�ݶ�+�Ľ�Ÿ)��Ʈ', '36000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('304', '(�θǺ�+�ݶ�+�Ľ�Ÿ)��Ʈ', '36000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('305', '(�뺣��+�ݶ�+�Ľ�Ÿ)��Ʈ', '35000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('306', '(������+�ݶ�+�Ľ�Ÿ)��Ʈ', '35000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('401', '��Ǫ�� �Ľ�Ÿ', '6000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('402', 'ġŲ�ٴ�', '5000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('403', '��Ϻ극��', '5000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('404', '���ݸ� ������Ű', '7000', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('501', '���̴�', '1600', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('502', 'ȯŸ', '1600', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('503', '�ݶ�', '1600', 'red');
INSERT INTO "PIZZA"."MENU" (MENUNUM, MENUTITLE, MENUPRICE, COLOR) VALUES ('504', '�����ݶ�', '1600', 'red');