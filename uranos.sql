--------------------------------------------------------
--  ������ ������ - �ݿ���-1��-13-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "URANOS"."MEMBER" 
   (	"M_NUM" NUMBER, 
	"M_ID" VARCHAR2(12 BYTE), 
	"M_PW" VARCHAR2(20 BYTE), 
	"M_NAME" VARCHAR2(20 BYTE), 
	"M_NICK" VARCHAR2(20 BYTE), 
	"M_GRADE" NUMBER DEFAULT 1, 
	"M_GENDER" VARCHAR2(10 BYTE), 
	"M_BIRTH" DATE, 
	"M_EMAIL" VARCHAR2(50 BYTE), 
	"M_TEL" VARCHAR2(20 BYTE), 
	"M_ADDR1" VARCHAR2(50 BYTE), 
	"M_ADDR2" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "URANOS"."NOTICE" 
   (	"N_NUM" NUMBER, 
	"N_TITLE" VARCHAR2(100 BYTE), 
	"N_CONTENT" VARCHAR2(1000 BYTE), 
	"N_DAY" DATE, 
	"N_COUNT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "URANOS"."QNA" 
   (	"Q_NUM" NUMBER, 
	"Q_TITLE" VARCHAR2(100 BYTE), 
	"Q_CONTENT" VARCHAR2(1000 BYTE), 
	"Q_DAY" DATE, 
	"Q_ORIGNUM" NUMBER, 
	"Q_LEVEL" NUMBER, 
	"Q_COUNT" NUMBER DEFAULT 0, 
	"M_NUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REPLY
--------------------------------------------------------

  CREATE TABLE "URANOS"."REPLY" 
   (	"CO_NUM" NUMBER, 
	"M_NUM" NUMBER, 
	"CO_CONTENT" VARCHAR2(1000 BYTE), 
	"CO_DAY" DATE, 
	"RW_NUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVE
--------------------------------------------------------

  CREATE TABLE "URANOS"."RESERVE" 
   (	"R_NUM" NUMBER, 
	"R_DAY" DATE, 
	"R_START" DATE, 
	"R_NAME" VARCHAR2(100 BYTE), 
	"R_TIME" VARCHAR2(50 BYTE), 
	"M_NUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "URANOS"."REVIEW" 
   (	"RW_NUM" NUMBER, 
	"RW_TITLE" VARCHAR2(100 BYTE), 
	"RW_CONTENT" VARCHAR2(1000 BYTE), 
	"RW_DAY" DATE, 
	"RW_FILE" VARCHAR2(255 BYTE), 
	"RW_COUNT" NUMBER DEFAULT 0, 
	"M_NUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MEMBER
--------------------------------------------------------

   CREATE SEQUENCE  "URANOS"."SEQ_MEMBER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_NOTICE
--------------------------------------------------------

   CREATE SEQUENCE  "URANOS"."SEQ_NOTICE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_QNA
--------------------------------------------------------

   CREATE SEQUENCE  "URANOS"."SEQ_QNA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REPLY
--------------------------------------------------------

   CREATE SEQUENCE  "URANOS"."SEQ_REPLY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RESERVE
--------------------------------------------------------

   CREATE SEQUENCE  "URANOS"."SEQ_RESERVE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REVIEW
--------------------------------------------------------

   CREATE SEQUENCE  "URANOS"."SEQ_REVIEW"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into URANOS.MEMBER
SET DEFINE OFF;
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (1,'admin','admin','������','������',0,'����',to_date('17/01/02','RR/MM/DD'),'admin@admin.com','01012345678','�����','����');
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (2,'signoutUser','1234','Ż��������','Ż��������',0,'����',to_date('00/01/01','RR/MM/DD'),null,'00000000000',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (3,'test','1234','�׽���','�׽���',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (4,'test1','1234','�׽���','�׽���1',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (5,'test2','1234','�׽���','�׽���2',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (6,'test3','1234','�׽���','�׽���3',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (7,'test4','1234','�׽���','�׽���4',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (8,'test5','1234','�׽���','�׽���5',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (9,'test6','1234','�׽���','�׽���6',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (10,'test7','1234','�׽���','�׽���7',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (11,'test8','1234','�׽���','�׽���8',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (12,'test9','1234','�׽���','�׽���9',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (13,'test10','1234','�׽���','�׽���10',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (14,'test11','1234','�׽���','�׽���11',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (15,'test12','1234','�׽���','�׽���12',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (16,'test13','1234','�׽���','�׽���13',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (17,'test14','1234','�׽���','�׽���14',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (18,'test15','1234','�׽���','�׽���15',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (19,'test16','1234','�׽���','�׽���16',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (20,'test17','1234','�׽���','�׽���17',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (21,'test18','1234','�׽���','�׽���18',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (22,'test19','1234','�׽���','�׽���19',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (23,'test20','1234','�׽���','�׽���20',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (24,'test21','1234','�׽���','�׽���21',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (25,'test22','1234','�׽���','�׽���22',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (26,'test23','1234','�׽���','�׽���23',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (27,'test24','1234','�׽���','�׽���24',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (28,'test25','1234','�׽���','�׽���25',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (29,'test26','1234','�׽���','�׽���26',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (30,'test27','1234','�׽���','�׽���27',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (31,'test28','1234','�׽���','�׽���28',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (32,'test29','1234','�׽���','�׽���29',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (33,'test30','1234','�׽���','�׽���30',1,'����',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
REM INSERTING into URANOS.NOTICE
SET DEFINE OFF;
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (1,'�ܿ���С���̹ڹ������ǡ� ��û�� ','��� �ڹ������� ���� ��û�Ⱓ 2008.12.29���� 2009.1.7���� �ʵ�� 1.13�� 3,4�г� 32�� 1.14��  3,4�г� 32�� 1.15��  4,5�г�32��
�������� �� ���� �����  ����, ����, ü�� �� �ð��� 10:30~16:30���� �̸� ����ó�� museum@bok.or.kr �Դϴ�.',to_date('08/12/23','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (2,'�ܿ���� ��� �ڹ��� ���� ���� �����ȳ�','��� �ڹ��� ���ǿ� ������ �����ּż� �����մϴ�. ���� ��û�ο��� ����ο��� 3�踦 �ʰ� �����Ǿ� �̿� ���� �� 14:00�� �����ϰ� ���� �˷��帳�ϴ�. ���������ñ� �ٶ�ڽ��ϴ�. �ƿ﷯ ������ ��� ����� 2009�� 1�� 8�� E-mail�� ���� �����ڿ��� ���� �����ϰ�  �ڹ��� Ȩ�������� �Խ��մϴ�',to_date('09/01/02','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (3,'�ܿ���� ��� �ڹ��� ���� ������ ���� �ȳ� ','�ѱ����� ȭ������ڹ��� ����� �ڹ��� ���ǡ��� �����ǽ� ���� �������� ���ϵ帳�ϴ�. ���� ��̴� ÷�������� �� �����ϼż� �ش��Ͽ� ���� �ʵ��� ȭ������ڹ����� ������ �ּ���. �ƿ﷯ �̹��� �������� ���� ��̴� ������ �ٽ� �ѹ� ������ �ֽñ� �ٶ��ϴ�.',to_date('09/01/03','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (4,'���뽺�ڹ��� �ӽ��ް� �ȳ�','���� �ڹ��� �Ϻ� ���ýü� �������� �����ϰ� �����ϱ� ����  2009.2.21 ���� 2009.2.25 ���� �ڹ��� �ӽ��ް��� �ǽ��մϴ�. �ƿ﷯ �����ް����� �����ϰ� �� ���ޱⰣ��  �����ϸ� ���� �ް��Ⱓ�� 2. 28 (��)���� 3,5(��)���� �� 8�ϰ� �̹Ƿ� �̿뿡 ���� �����ñ� �ٶ��ϴ�.
�����մϴ�.',to_date('09/02/15','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (5,'2009�� 4�� 11�� ȭ��ȭ���� ���纯�� ','������ �������� ���� 2009�� 4�� 15�� ��ȭ������ ���簡 �������� ���翪 ���� �κ��� ���翪���� ����Ǿ����� �˷��帳�ϴ�.
',to_date('09/04/11','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (6,'�� �ڹ����� �� ���� �������� �ӽ� �����մϴ�','2009�� 4�� 20�Ϻ��� ��� 21�ϱ���,�� ����
���� �� ���ο� ����� ���� �帮���� ��Ʋ�� ���� �մϴ�.',to_date('09/04/15','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (7,'2009�� 5�� 11�� ȭ��ȭ���� ���纯�� ','�κ������翪 �� �ϽŻ��� �������� ���� ���� ���翴�� �������� ���翪���� ����˴ϴ�',to_date('09/05/09','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (8,'ȭ������ڹ��� ���� �ӽ� �ް� �ȳ� ','���� ��Ǯ�翣���� ���� �� Ȯ������� ���Ͽ� ȭ������ڹ������� �ǽ��ϴ� ���µ��� �ӽ� �ް� �մϴ�.#�ް� ���� : ȭ��ȭ����, ��������, ������ǰ���, �Ͽ俵ȭ����
�����մϴ�.',to_date('09/09/05','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (9,'���� ��Ǯ�翣�� Ȯ������� ���� �ӽ�����Ⱓ ����ȳ� ','���� ��Ǯ�� ���ڷ� ���� ���� Ȯ������ ���Ͽ�, ���� �Ǿ��� �ڹ��� ���� �ñ⸦ ������ �����ϴ� ���Դϴ�. ��ȸ�� Ȯ���� ���� ���°� �����Ǿ��� �� ���� ���ϳ� ���� �Ҽ� �ֱ⸦ �ٶ��, ����ȳ��� ���ؼ��� ������ ���� �˷��帮�ڽ��ϴ� ',to_date('09/10/05','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (10,'����ȳ�','���� ��Ǯ�� ���� Ȯ����� ��å���� ���� �����Ͽ��� �ڹ�����, ��� 25�� �ڷ�
���� �ϰ� �Ǿ� �˷��帳�ϴ�. ',to_date('09/10/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (11,'�ѱ����� ȭ��ڹ��� �������� ����ȸ �Ͻ� �ߴ� �ȳ�(2010.1.5-1.8)','2010�� �ѱ����� ȭ��ڹ��� ���ǽ÷� ���Ͽ�
1��5��(ȭ)��1��8��(��) �Ⱓ�� ȭ��ڹ��� ������������ ���� ���� 11��, ���� 3�� �ǽõǴ� �������� ����ȸ�� �ߴܵǿ��� �����Ͽ� �ֽñ� �ٶ��ϴ�.',to_date('10/01/01','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (12,'1�� ȭ��� ����� �Ŀ��� ���� ���� �ȳ�','1�� ȭ��� ����� ������ ���Ͽ�, ���Ϻ��� ��Ʋ�� ���������� �ȳ� �帳�ϴ�.',to_date('10/01/05','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (13,'����� �Ŀ��� ���� ���� ���� ���� �ȳ�','�����Ǿ��� ���� ������ ���� �ʿ� ���� �������� �����ϸ� ������ ������ ���� ���� �ϰڽ��ϴ� �̿뿡 ������ ��� �˼��մϴ�.',to_date('10/01/06','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (14,'���뽺 �ڹ��� ���ϼ��� ���� �����ȳ� ','�� �ڹ��� ���ϼ��� �ü� ����� ���� �ȳ� �帳�ϴ�. ���ȼ� �� ������� ���������� �Ա� ���� �̸���mmm@nnn.nnn���� �����ֽø� �˴ϴ�.',to_date('10/01/07','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (15,'����� ������ ���� �����Ͽ��� �ڹ����� 1�� 23���ڷ� ���� �մϴ�.','����� ������ ���� ���� �Ͽ��� �ڹ��������� 1��23�� �ڷ� ���� �ϰԵǾ����ϴ�. �̿뿡 ������ �帰�� ����� �˼��մϴ�.',to_date('10/01/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (16,'��ȭü�������� ���뽺�ڹ�����(����������) �������� �ȳ� ','��ȭü�������� �����߾ӹڹ��� ���뽺�ڹ�����(�п������� �����, �ӱ��� ����)���������� ���������� ���� �����Դϴ�. �����ִ� �е��� ���� ���� �ٶ��ϴ�.',to_date('10/02/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (17,'Ȩ������ ����ȸ�� ���� ���� �Ͻ� ���� �ȳ� ','���뽺�ڹ��� ��ī�̺� Ȩ������ �����۾����� ���Ͽ� Ȩ������ ����ȸ�� ���� ���񽺰� �Ͻ� �ߴ� �� �����̿���,  �̿뿡 ���� �Ͽ� �ֽñ� �ٶ��ϴ�.
���� ���� ��Ź�帳�ϴ�.
�� ��: 2010.3.8(��) 18:00 ~ 23:00
�� ��: ���뽺�ڹ��� Ȩ������, ���Ǿ�ī�̺�, E-���Ǿ�ī����, ����ȸ�� ����
 �� ��: ���뽺�ڹ��� ��ī�̺� Ȩ������ �����۾�',to_date('10/03/05','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (18,'������ �Բ��ϴ� �ָ����ǹ�ȭ���� �߰������ȳ�','������ �Բ��ϴ� �ָ����ǹ�ȭ���� �߰������ȳ�  �ܼҹ�, �繰���̹�, ���߱ݹ�, �ǼҸ��� �ణ�� �߰� �����մϴ�. ����Ͻô� ������ ���������� ��ȭ ���� �޽��ϴ�. (070-580-3059)  ���¿� ���� �ڼ��� ������ <Ȩ������ ùȭ�� - ����- ��������>�� �ֽ��ϴ�. ',to_date('10/03/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (19,'���ͳ� ��۽ý��� ���� �ϵ� ��ü�� �ߴܵ��� �˷��帳�ϴ�. ','�ȳ��Ͻʴϱ� �������ǿ� ������Դϴ� �̵�� ���� �ϵ� ��ü�� ���� ��а� ���ͳݹ�� ���� �� ���ǵ�� ���� ���񽺰� ���������� �ߴܵ��� �˷��帳�ϴ� �����Ͻñ� �ٶ��ϴ� ',to_date('10/04/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (20,'12�� 18�� ���󼳱��ǰ��� �ȳ� ','12�� 18�� ���󼳱��ǰ����� �������ǿ� <�۳�����ȸ>�� ��ü�մϴ�. �̿� ���� ������ ���� �����ñ� �ٶ��ϴ�. ',to_date('10/05/10','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (21,'5�� 11�� �Ͽ�󼳱��ǰ��� �ȳ� ','5�� 11�� �Ͽ�󼳱��ǰ����� �������ǿ� <�۳�����ȸ>�� ��ü�մϴ�. �̿� ���� ������ ���� �����ñ� �ٶ��ϴ�. ',to_date('10/05/11','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (22,'5�� 12�� ����󼳱��ǰ��� �ȳ� ','5�� 12�� ����󼳱��ǰ����� �������ǿ� <�۳�����ȸ>�� ��ü�մϴ�. �̿� ���� ������ ���� �����ñ� �ٶ��ϴ�. ',to_date('10/05/11','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (23,'5�� 13�� ȭ��󼳱��ǰ��� �ȳ� ','5�� 13�� ȭ��󼳱��ǰ����� �������ǿ� <�۳�����ȸ>�� ��ü�մϴ�. �̿� ���� ������ ���� �����ñ� �ٶ��ϴ�. ',to_date('10/05/12','RR/MM/DD'),0);
REM INSERTING into URANOS.QNA
SET DEFINE OFF;
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (2,'����','����',to_date('17/01/11','RR/MM/DD'),1,0,5,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (3,'���פ������������������������ڰ���','������������������������',to_date('17/01/11','RR/MM/DD'),3,0,15,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (4,'111111','111111��������������������',to_date('17/01/11','RR/MM/DD'),4,0,26,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (9,'dddddasd','dddddddddddddddddasdasd',to_date('17/01/12','RR/MM/DD'),7,0,45,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (40,'1234','44444444444444',to_date('17/01/13','RR/MM/DD'),40,0,13,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (39,'���̷�','�氡',to_date('17/01/13','RR/MM/DD'),36,0,6,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (57,'Re:  �����Ẹ��','ddddd',to_date('17/01/13','RR/MM/DD'),55,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (71,'Re:  	Ÿ�Ӹӽ���Ÿ�� 1930��� �ѱ�����հŸ���~~','�׷���',to_date('17/01/13','RR/MM/DD'),62,1,1,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (35,'Re:  ��������������������','����',to_date('17/01/12','RR/MM/DD'),29,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (24,'������������','��������',to_date('17/01/12','RR/MM/DD'),24,0,3,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (25,'������������������','����������',to_date('17/01/12','RR/MM/DD'),25,0,6,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (44,'�����Ẹ��','�����Ẹ��',to_date('17/01/13','RR/MM/DD'),44,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (45,'�����Ẹ��','�����Ẹ�ڱ����Ẹ��',to_date('17/01/13','RR/MM/DD'),45,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (46,'�����Ẹ��11','�����Ẹ��',to_date('17/01/13','RR/MM/DD'),46,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (47,'�����Ẹ��2222222','2222',to_date('17/01/13','RR/MM/DD'),47,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (48,'�����Ẹ��3333333333','�����Ẹ��',to_date('17/01/13','RR/MM/DD'),48,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (49,'�����Ẹ��5444444444','��',to_date('17/01/13','RR/MM/DD'),49,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (50,'�����Ẹ��5444444444','22222222222',to_date('17/01/13','RR/MM/DD'),50,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (51,'�����Ẹ��231','��',to_date('17/01/13','RR/MM/DD'),51,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (52,'�����Ẹ�ڤ�������','������������������������',to_date('17/01/13','RR/MM/DD'),52,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (53,'11','����',to_date('17/01/13','RR/MM/DD'),53,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (54,'�����Ẹ��3333333333','123123',to_date('17/01/13','RR/MM/DD'),54,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (55,'�����Ẹ��','�����Ẹ�ڱ����Ẹ�ڱ����Ẹ�ڱ����Ẹ�ڱ����Ẹ�ڱ����Ẹ�ڱ����Ẹ��',to_date('17/01/13','RR/MM/DD'),55,0,6,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (56,'12312','3123',to_date('17/01/13','RR/MM/DD'),56,0,3,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (68,'Re:  �ڹ��� �ȿ��� ������ �Կ��� �� �ֳ���?','��',to_date('17/01/13','RR/MM/DD'),66,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (70,'Re:  �������� �湮���� ���ü����� �� �ֳ���?','����',to_date('17/01/13','RR/MM/DD'),64,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (6,'�������Դϴ�','������!!',to_date('17/01/11','RR/MM/DD'),3,1,7,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (10,'Re: 111111','dddddddddd',to_date('17/01/12','RR/MM/DD'),4,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (43,'dddd','dtdt',to_date('17/01/13','RR/MM/DD'),43,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (59,'Re:  �����Ẹ��5444444444111','ddddddddddddddddddd',to_date('17/01/13','RR/MM/DD'),50,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (58,'Re:  �����Ẹ�ڤ�������','dddddd',to_date('17/01/13','RR/MM/DD'),52,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (18,'��������','����',to_date('17/01/12','RR/MM/DD'),11,0,2,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (26,'Re: ������������111','!!',to_date('17/01/12','RR/MM/DD'),24,1,1,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (60,'Re:  �����Ẹ��23111','11',to_date('17/01/13','RR/MM/DD'),51,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (29,'������������','������������',to_date('17/01/12','RR/MM/DD'),29,0,21,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (30,'��','����',to_date('17/01/12','RR/MM/DD'),30,0,2,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (42,'Re:  1234����','����',to_date('17/01/13','RR/MM/DD'),40,1,4,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (61,'ȭ��ڹ��� ��û�������','����',to_date('17/01/13','RR/MM/DD'),61,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (34,'Re:  ������������������������','����',to_date('17/01/12','RR/MM/DD'),25,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (62,'	Ÿ�Ӹӽ���Ÿ�� 1930��� �ѱ�����հŸ���~~','������',to_date('17/01/13','RR/MM/DD'),62,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (63,'�����ڷ�ȳ��ǿ��� �̿� ������ �ڷ�� � �͵��� �ֳ���?','11',to_date('17/01/13','RR/MM/DD'),63,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (64,'�������� �湮���� ���ü����� �� �ֳ���?','����',to_date('17/01/13','RR/MM/DD'),64,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (65,'���������ȳ����� �̿����� �ܱ�� ������ �Ǵ��� �˰� �ͽ��ϴ�.','11',to_date('17/01/13','RR/MM/DD'),65,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (66,'�ڹ��� �ȿ��� ������ �Կ��� �� �ֳ���?','111',to_date('17/01/13','RR/MM/DD'),66,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (67,'������ü�ε� ���ü����� ��� �ͽ��ϴ�. �ο� ������ �ִ�����?','111',to_date('17/01/13','RR/MM/DD'),67,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (69,'Re:  ���������ȳ����� �̿����� �ܱ�� ������ �Ǵ��� �˰� �ͽ��ϴ�.','��',to_date('17/01/13','RR/MM/DD'),65,1,0,1);
REM INSERTING into URANOS.REPLY
SET DEFINE OFF;
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (1,26,'�ȳ��ϼ��� ^^',to_date('17/01/13','RR/MM/DD'),48);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (2,27,'���� ���׿�~',to_date('17/01/13','RR/MM/DD'),48);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (3,28,'�����մϴ�.',to_date('17/01/13','RR/MM/DD'),47);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (4,29,'�� �����׿�',to_date('17/01/13','RR/MM/DD'),47);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (5,30,'���� ������ �����߰پ��',to_date('17/01/13','RR/MM/DD'),47);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (6,31,'�ȳ��ϼ��� ^^',to_date('17/01/13','RR/MM/DD'),46);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (7,32,'���� ���׿�~',to_date('17/01/13','RR/MM/DD'),45);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (8,1,'�����մϴ�.',to_date('17/01/13','RR/MM/DD'),45);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (9,2,'�� �����׿�',to_date('17/01/13','RR/MM/DD'),44);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (10,3,'���� ������ �����߰پ��',to_date('17/01/13','RR/MM/DD'),44);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (11,4,'�ȳ��ϼ��� ^^',to_date('17/01/13','RR/MM/DD'),44);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (12,5,'���� ���׿�~',to_date('17/01/13','RR/MM/DD'),43);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (13,6,'�����մϴ�.',to_date('17/01/13','RR/MM/DD'),42);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (14,7,'�� �����׿�',to_date('17/01/13','RR/MM/DD'),42);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (15,8,'���� ������ �����߰پ��',to_date('17/01/13','RR/MM/DD'),41);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (16,9,'�ȳ��ϼ��� ^^',to_date('17/01/13','RR/MM/DD'),41);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (17,10,'���� ���׿�~',to_date('17/01/13','RR/MM/DD'),41);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (18,11,'�����մϴ�.',to_date('17/01/13','RR/MM/DD'),40);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (19,12,'�� �����׿�',to_date('17/01/13','RR/MM/DD'),39);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (20,13,'���� ������ �����߰پ��',to_date('17/01/13','RR/MM/DD'),39);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (21,14,'�ȳ��ϼ��� ^^',to_date('17/01/13','RR/MM/DD'),38);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (22,15,'���� ���׿�~',to_date('17/01/13','RR/MM/DD'),38);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (23,16,'�����մϴ�',to_date('17/01/13','RR/MM/DD'),38);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (24,17,'�����մϴ�',to_date('17/01/13','RR/MM/DD'),36);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (25,18,'���� ���׿�~',to_date('17/01/13','RR/MM/DD'),33);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (26,19,'���� ������ �����߰پ��',to_date('17/01/13','RR/MM/DD'),33);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (27,20,'�����մϴ�',to_date('17/01/13','RR/MM/DD'),32);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (28,21,'��',to_date('17/01/13','RR/MM/DD'),32);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (29,22,'���� ���׿�~',to_date('17/01/13','RR/MM/DD'),32);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (30,23,'���� ������ �����߰پ��',to_date('17/01/13','RR/MM/DD'),28);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (31,24,'�����մϴ�',to_date('17/01/13','RR/MM/DD'),28);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (32,25,'���� ������ �����߰پ��',to_date('17/01/13','RR/MM/DD'),28);
REM INSERTING into URANOS.RESERVE
SET DEFINE OFF;
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (1,to_date('17/01/13','RR/MM/DD'),to_date('17/01/14','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:05',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (2,to_date('17/01/13','RR/MM/DD'),to_date('17/01/20','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (3,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','PM:01',4);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (4,to_date('17/01/13','RR/MM/DD'),to_date('17/01/14','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:05',4);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (5,to_date('17/01/13','RR/MM/DD'),to_date('17/02/21','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',5);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (6,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','PM:01',5);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (7,to_date('17/01/13','RR/MM/DD'),to_date('17/03/22','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:05',6);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (8,to_date('17/01/13','RR/MM/DD'),to_date('17/02/10','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (9,to_date('17/01/13','RR/MM/DD'),to_date('17/03/01','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','PM:01',8);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (10,to_date('17/01/13','RR/MM/DD'),to_date('17/01/18','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:05',10);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (11,to_date('17/01/13','RR/MM/DD'),to_date('17/02/26','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (12,to_date('17/01/13','RR/MM/DD'),to_date('17/02/13','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','PM:01',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (13,to_date('17/01/13','RR/MM/DD'),to_date('17/04/01','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:05',11);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (14,to_date('17/01/13','RR/MM/DD'),to_date('17/01/24','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (15,to_date('17/01/13','RR/MM/DD'),to_date('17/03/04','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','PM:01',12);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (16,to_date('17/01/13','RR/MM/DD'),to_date('17/02/28','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:01',11);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (17,to_date('17/01/13','RR/MM/DD'),to_date('17/01/25','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',4);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (18,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','AM:11',13);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (19,to_date('17/01/13','RR/MM/DD'),to_date('17/01/26','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:03',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (20,to_date('17/01/13','RR/MM/DD'),to_date('17/02/11','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',5);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (21,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','PM:01',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (22,to_date('17/01/13','RR/MM/DD'),to_date('17/01/14','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:02',15);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (23,to_date('17/01/13','RR/MM/DD'),to_date('17/02/16','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',6);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (24,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','AM:10',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (25,to_date('17/01/13','RR/MM/DD'),to_date('17/01/22','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:02',16);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (26,to_date('17/01/13','RR/MM/DD'),to_date('17/01/27','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',6);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (27,to_date('17/01/13','RR/MM/DD'),to_date('17/02/26','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','PM:01',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (28,to_date('17/01/13','RR/MM/DD'),to_date('17/01/14','RR/MM/DD'),'Ư���� <������ ���� ������ ����>','PM:03',17);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (29,to_date('17/01/13','RR/MM/DD'),to_date('17/01/22','RR/MM/DD'),'�ĺ�� ��ī���� ����,õ��ȭ���� ������','AM:10',5);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (30,to_date('17/01/13','RR/MM/DD'),to_date('17/02/11','RR/MM/DD'),'������ �ΰ��� �ʿ��� ����','PM:01',28);
REM INSERTING into URANOS.REVIEW
SET DEFINE OFF;
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (44,'�ƽþ� ȭ�� ���� ����!','2�� ���ýǿ� �ƽþ��� ȭ�����ð�����  �ε��׽þ� ȭ���
������ī�� ȭ�� ���� �ڹٲ�� ���õǾ� �ֽ��ϴ�.
���� �ϴ� �ʵ��л� �Ƶ��� �߰��Ͽ����ϴ�. ���� ���� �ٶ��ϴ�.
',to_date('17/01/13','RR/MM/DD'),null,14,27);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (45,'ȭ������ڹ����� �����ϰ� ����','ģ���� ���� �ڹ����� �ٳ�Դµ� ȭ�信 ���ؼ� ó�� ���� �͵鵵 �־���, �ű��� �͵��� �� ���Ҿ��. �������ٵ� ������ �ϴ� ���� �ƴ϶� �پ��� ü���� �غ� �� �ִٴ� ���� �� ���ұ���. ���� �н����� Ǯ�鼭 ������ �ϴϱ� �� �� ���ذ� �� �� ����, �뿩�ؼ� �� �� �ִ� ���� �� ���Ҿ��. ���е��� ������ �ִٰ� ���ͼ� ȭ������ڹ������� ���� ������ �� �� �־��� ��Ⱑ �Ǿ��� ���ƿ�.',to_date('17/01/13','RR/MM/DD'),null,55,28);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (46,'8��1�� ������24���� ������ ���̵��� ���縦 ���մϴ�','�ȳ��ϼ���.
���� 8��1�� �湮�� ������ �Դϴ�. �ο��� 24���̳� ���µ� ���̵� �����鵵 �����ϰ� ���� �ߵ�� �ڼ��� ������ ���ֽ� �ؼ� �ȳ��� ����帳�ϴ�.
�̸� ����� �÷��� �ϴµ� �ʰԳ��� ���縦 ���մϴ�. �츮���� ���� ������ ����ٰ� �ϴµ� �ѱ������� �־� �ѵ��߽��ϴ�. �����ϼ���>
',to_date('17/01/13','RR/MM/DD'),null,99,30);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (47,'���� ������ �ȳ��� ��ģ�� �Ͽ����ϴ�.','�ȳ��ϼ��� ȭ��ڹ����� �ٳ�� ����Դϴ�. �װ��� ������ �ȳ��� ��ģ���Ͽ� �̷��� ���� ����ϴ�. ���ڰ� ���� �ϰ� ���� �ʽ��ϴ�. �׷��� ���� ��2�� ������ ȭ�󸸵鶧 �ϰ��ִµ� �װ��� �ִ� �п��� ������ ��� ����� ����ü ��ü �ϸ� ���� ���� �̷��� �ڵ����� ��������...�׶� ����� ��¦ ���Ͽ����ϴ�. �����ϸ� ���� � ���� ������ ��ģ���ϴٰ� ¥�� ���ٸ� ������ �þ���ҽ��ϴ�. ������ ���� ��Ź�帳�ϴ�.
�� �ڹ��� �ȿ� �ִ� ���� ȭ����� ���� �� û�� ��Ź�帳�ϴ�. ������ �þ����ְ� ������� ���Ⱑ ���� �ִ�����... ���� ���� �����Ͽ����ϴ�. ������ �ö��� �̷����� ���⸦ �ٶ��ϴ�. ������ ���� ��Ź�鸳�ϴ�.
',to_date('17/01/13','RR/MM/DD'),null,52,31);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (48,'�ڹ��� ������ ��ġ��.....','���� �ڹ��� ������ ������ �±� �����Դϴ�
��ħ ���� ���� ������ �ڹ����� ����������
�̸� ��û���ǿ� �־� �ְ� ������ ���� �߰����� ���������..
������ �þ��ֽ� �е��� ��� ģ���Ͻð� ������ ���� ��������.
���Ŀ� ������ ��ġ�� ������ ���̴� ��̰� �ູ�� ����̾����.
��ü ������ ��� ���̿� ���� ������ ��� �ֽð� ����帳�ϴ�.
���� ���� ���� ���̴� �Ϸ� ���� ���������� ������ �ų��� ��⸦ �ϸ鼭 ���� ����� �߿伺,
���� ����, �ѱ������� ��Ȱ�� ����ٰ� �ѵ��� �ϴ°� ���鼭 ������ �� �ߴٰ� �����߽��ϴ�.
������ �ʹ� ���־��ٴ� �̾߱⵵ ������ �ʴ�����..
���� �ֽ��ֽ� ��� �е� ���� �帳�ϴ�...
Ư�� �̹�ȭ �����!!!!!!!
����帳�ϴ�.',to_date('17/01/13','RR/MM/DD'),null,54,32);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (1,'�ڹ��� ���������Դϴ�~','�ȳ��ϼ���.�̹� ��̳��� �¾� ���̶� �λ꿡�� ����� ���� ������ �ֱ��� �� ù��° ��ҷ� �ѱ����� ȭ��ڹ������� �žҾ��. �湮�� �ռ� �ı⸦ �о�� �� �����ںе��� ��ģ���� ���� ��Ⱑ ���Ƽ��� ������ �ռ��ϴ�.
���� �ҽ������̰� ����ģ ���ɴ���� �Ǹ� ũ�� �Ҹ������ų� ������ ���󼭿�  �̤� ;; ��ó�� ū���԰� ���� ���￩���ε� ù ��ŸƮ���� ������� �����Ҽ� �־����� �ϴ� �ٶ��Դϴ�. ���̶� ���� �߾︸��� ���� �ְ� ��Ź�帳�ϴ�. �����մϴ�.~~��  ',to_date('17/01/13','RR/MM/DD'),null,38,5);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (2,'���̵�� ����ִ� ���� ����','�ʵ� 2, 3�г� �ö󰡴� �кθ��Դϴ�.���̵�� �뵷�� ���� ���� ������ �����ϴٰ� �ѱ����� ȭ��ڹ����� ã�ҳ׿�.���̵��� �����Ӱ� ���浵 �ϰ�, �н��� �� �־ �ʹ� ���ҽ��ϴ�.�Դٰ� �ڹ����� �ִ� ������ �Ĳ��� ���� �� �ֵ��� �н��� ���� �͵� ����� ������ �Ǵϴ����� ���̵��� ����־� �ϳ׿�.�ֺ����� ��õ�� �޾� ���� ���ӵ� ���̵鳢�� �ްԼҿ��� �ϴϱ�� �߾��� �Ǿ� �뵷�� ���� ������ �����մϴ�.�����ڹ�������ּż�����帳�ϴ�.�����̴��ڼ����ı��α׿����ҽ��ϴ�.http://blog.naver.com/texref/220628770597
�����ںе� ��� 2016�⿡�� ����~~ �Ǽ���~~!!',to_date('17/01/13','RR/MM/DD'),null,39,6);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (3,'�ߺý��ϴ�.','�����մϴ�. ',to_date('17/01/13','RR/MM/DD'),null,91,7);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (4,'�ڹ��������� �ٳ�ͼ�...','�ȳ��ϼ���? ���� 8�� 6�� �ڹ��������� �ٳ�� �Źμ��Դϴ�. ���� ������ ���������� ��� ��û���� ��µ� ������ �����ϰ� �Ǿ� �ʹ��� ���ҽ��ϴ�. ���� ��ϵ� 2011�⵵(�ʵ��б� 5�г�) �������ж� �����߽��ϴ�. ����� �ڶ��� �ʹ� ���ؼ�(Ư�� ���ɸԾ�����) ��ô ���� �����µ� ���� ������ ���� ���ҽ��ϴ�. ������ ȸ�翡 ���ż� �ҸӴ϶� �����ؼ� ���� ������ ������ �����ȸ���� 1� �Ͽ� ������ �ް� �� �ҸӴϰ� ���� �ͼ� ġŲ�� ���� �ּ̽��ϴ�. ������ ������ ����� ���������̾����� 4�гⳢ�� �ϴϱ� �׷��� ���� ���ذ� �ƽ��ϴ�. ���,�������ϰ� ���� ���г������ �ϸ� �� ������� �ڲ� ������ �ϰ� �Ǵµ� ���⼭�� �׷����ʾҽ��ϴ�. ������ �ֽ� �����Ե� ����帳�ϴ�. 6�г⶧ �� ��ȸ�� �־����� ���ڽ��ϴ�. ',to_date('17/01/13','RR/MM/DD'),null,98,8);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (8,'���ҽ��ϴ�.','��հ� ������ ���̾����ϴ� ',to_date('17/01/13','RR/MM/DD'),null,43,12);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (9,'��� �ڹ��� ���� �����ı�!!','�ȳ��ϼ��� ���� ��� �ڹ��� ���� ������ �̼����̿���.
��
2014�� 1�� 16�� ����Ͽ� ��� �ڹ����������.
���� ���� ���� ���� ������ �ð��� ���� �������.��
�������� ������ ������ �����, ���� ȭ��� ��� ������� �˰� �Ǿ����.
���� ���� ���� ������ ���� ���� ���� ����? ��� �����ߴµ� ���� ����
1�⿡ �� ���� ����µ� 1,500�� �̻��� �ʿ��ϴٰ� �ؼ� ���� �����ϰ� �������� �ʰ� �Ϸ� ����ϰ� �־��.
��, �����µ��� ���� ����? ��� �������� �ʰ� ��� �ϸ� ���� ���°� ����ϸ� ���� �� ������?��� �����ؿ�.
�׸��� �������� �ĺ��ϴ� ����� ���� ���� �ʹ� �ű��߾��.
�����μ�, ����Ȯ���� ���ȣ, ���� Ȧ�α׷�, ��ü�� �κг�������, �յ޸����, �̼�����, ���� ����, �����׸�, ������� ���� �ִٴ°��� �ʹ� �ź�ο����.
�����ε� ���� �����ϰ� �����ϰ� �ٷ絵�� ����ҰԿ�~~^^
',to_date('17/01/13','RR/MM/DD'),null,29,15);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (12,'����ִ� �ѱ� ���� ȭ��ڹ���','���� �ѱ����� ȭ��ڹ����� ���� �Խ��ϴ�. ���� ��� �ڹ����� �����ϰ� �ڹ����� ���� ���� ��̰� �����µ�, ���� ȭ��ڹ����� ���� ���ϱ� ���� ��ġ�� �˰� ���� ����־����ϴ�.
���ݱ��� �̷��� ����ְ� �� �Ӹ��� ��� ������ �ڹ����� �̰� ó���̿����ϴ�.
�������� ���ƴٳ����� �ٸ��� ���� �ٵ� �𸣰�, ��Ʈ�� ������ ���� �ٳ���ϴ�.
2��° ���� ������ ������ �����ϱ�, �ð� ���� �ٵ� �𸣰�, ���� �𸣴� ȭ�� ���ĵ��� �˰� �Ǿ ���밨�� �������ϴ�. ������ �ǿͼ� �� ���� ���ڰ�, �� ���Ǹ� �� �� ģ���鿡�� ��õ�� ���ְ� ���� ��� ���ĵ��� ��� ģ���鿡�� �˷� �ְ� �ͽ��ϴ�. ��� ������ ���޾Ƶ� �ѱ����� ȭ��ڹ����� ��õ�մϴ�!
',to_date('17/01/13','RR/MM/DD'),null,3,19);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (14,'���� �ð��� �Ǿ����ϴ�.','���� �ָ� ���� �ڳ��� ��ȥ���� �־� �ѱ������� �湮�Ͽ����ϴ�
���� ���� �����ϰ� �Ǿ� �ڹ����� �����Ͽ���, ��ħ ���������� ��ȹ���� ���ֵȴ��Ͽ� �ݰ��� ������ �������� ã�ҽ��ϴ�
���ø� �ѷ����� ���Ƽ����µ� ���ü����� �Ѵ��ؼ� ������ �� ������ϴ�.
�ƴ¸�ŭ ���δٰ� �ϴ��� ������ ��� ���� �� ���ο����̰� ��ǰ�� ���ƺ��̴�����
�� ������ ���ֵȴ��ϴ��� ��ȥ�� �� ��簡 ������ �̷��� ���α׷��� �����ص� ���ڴٴ� ������ �������.
��ư ���� ���� �ߺð�, ���� �� ������ϴ�
�����մϴ�',to_date('17/01/13','RR/MM/DD'),null,36,21);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (15,'��̹ڹ������� �湮�ı�','�̹ڹ��������� �־ ��ħ���Ｍ�ѷ� �ѱ��������οԴ�
�� ����ͼ� �ۿ��� ��ٸ��µ� ���� ��ġ���̼��� ���� 10  ���� ���� ���ȴ�
���̴� �ڹ������Ƿ� ���� ���� ���빮������ ���� 1��30�к��� �кθ𱳽���  �ִ��ؼ� �ð��� �� �ʾ��� �� �θ����� ����
�п������ ���������� ������ȭ�� ��ȫ���� ǳȤȭ����� ������ �ϰ� ��̴�
������ ��ǵ��� �˰ԵǾ� ����� �ð��� �Ǿ���
�̷��� �кθ� ������ �Բ��ϴ� ���̿��Ե� �������Ե� ���� �ð��̵�����
5�г��� �츮���̴� ó������ �������� �Ǿ����� ���������α׷��� ������ ���̵鿡�� ��ȸ�� �ɼ� �ֵ��� Ȥ���� �÷��ָ� �� �������ϴ�
�����ñ� ������ֽ� �ѱ���������ںе�� �п���Բ� �������� ����帳�ϴ�
',to_date('17/01/13','RR/MM/DD'),null,41,22);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (16,'++�������� ��û�� 3�Ϥ� �ȵǰ� �־��++','5�Ϻ��� ��û�̶� ��ħ���� �������
Ȩ�ǰ� ��� ���� ���� ��ȭ�ߴ���
�湮�ڰ� ���� ���� �߿� �ִٴ� �亯�� ������ϴ�.
���� 3�Ϥ��ε� �������� �Ȱ��׿�.
��û�� �Ϸ��� �ϴ� ����� ���� �� �˰�����
3�Ϥ� ��ǻ�͸� ����� ���ڴ� ȭ�� ����
���� ���ϴ�.
������ �����ұ��?
',to_date('17/01/13','RR/MM/DD'),null,47,23);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (17,'���̶�?????','ó��  �ѱ�����  �ڹ������ٳ�Դ�
���  ���������� �������...
���̶�????
�ѹ��� �����غ��� �ʾҴµ�
����-��ġ��  ���ϴ�  ���ص�������ȯ��  ���ܵ�  �ȴٰ����Դ�
�ſ�������  �ð��̿���
',to_date('17/01/13','RR/MM/DD'),null,71,24);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (18,'ȭ��ڹ����� �ٳ�ͼ�','���� ���� �߰��ؼ� �ູ�߽��ϴ�.
�ٽ� ã�� ���� �ͳ׿�
',to_date('17/01/13','RR/MM/DD'),null,26,25);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (19,'�ڹ����� �ٳ���� ����.....','���� ���� ������� �������� ȭ��ڹ����� �ٳ���� �Ǿ����ϴ�. ó���� ȭ��ڹ����� �� ���� ���� ������ϴ�.�ǹ��� ũ�� ������...... �׸��� å���ǵ� �����....
���� ȭ��鵵 ����,���ӵ� �غ���..���� ���� �����̾����ϴ�. ��ȸ�� �ȴٸ� ������ �� ������ �ͽ��ϴ�.
',to_date('17/01/13','RR/MM/DD'),null,66,26);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (20,'�ƽþ� ȭ�� ���� ����!','2�� ���ýǿ� �ƽþ��� ȭ�����ð�����  �ε��׽þ� ȭ���
������ī�� ȭ�� ���� �ڹٲ�� ���õǾ� �ֽ��ϴ�.
���� �ϴ� �ʵ��л� �Ƶ��� �߰��Ͽ����ϴ�. ���� ���� �ٶ��ϴ�.
',to_date('17/01/13','RR/MM/DD'),null,14,27);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (21,'ȭ������ڹ����� �����ϰ� ����','ģ���� ���� �ڹ����� �ٳ�Դµ� ȭ�信 ���ؼ� ó�� ���� �͵鵵 �־���, �ű��� �͵��� �� ���Ҿ��. �������ٵ� ������ �ϴ� ���� �ƴ϶� �پ��� ü���� �غ� �� �ִٴ� ���� �� ���ұ���. ���� �н����� Ǯ�鼭 ������ �ϴϱ� �� �� ���ذ� �� �� ����, �뿩�ؼ� �� �� �ִ� ���� �� ���Ҿ��. ���е��� ������ �ִٰ� ���ͼ� ȭ������ڹ������� ���� ������ �� �� �־��� ��Ⱑ �Ǿ��� ���ƿ�.',to_date('17/01/13','RR/MM/DD'),null,55,28);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (22,'8��1�� ������24���� ������ ���̵��� ���縦 ���մϴ�','�ȳ��ϼ���.
���� 8��1�� �湮�� ������ �Դϴ�. �ο��� 24���̳� ���µ� ���̵� �����鵵 �����ϰ� ���� �ߵ�� �ڼ��� ������ ���ֽ� �ؼ� �ȳ��� ����帳�ϴ�.
�̸� ����� �÷��� �ϴµ� �ʰԳ��� ���縦 ���մϴ�. �츮���� ���� ������ ����ٰ� �ϴµ� �ѱ������� �־� �ѵ��߽��ϴ�. �����ϼ���>
',to_date('17/01/13','RR/MM/DD'),null,99,30);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (23,'���� ������ �ȳ��� ��ģ�� �Ͽ����ϴ�.','�ȳ��ϼ��� ȭ��ڹ����� �ٳ�� ����Դϴ�. �װ��� ������ �ȳ��� ��ģ���Ͽ� �̷��� ���� ����ϴ�. ���ڰ� ���� �ϰ� ���� �ʽ��ϴ�. �׷��� ���� ��2�� ������ ȭ�󸸵鶧 �ϰ��ִµ� �װ��� �ִ� �п��� ������ ��� ����� ����ü ��ü �ϸ� ���� ���� �̷��� �ڵ����� ��������...�׶� ����� ��¦ ���Ͽ����ϴ�. �����ϸ� ���� � ���� ������ ��ģ���ϴٰ� ¥�� ���ٸ� ������ �þ���ҽ��ϴ�. ������ ���� ��Ź�帳�ϴ�.
�� �ڹ��� �ȿ� �ִ� ���� ȭ����� ���� �� û�� ��Ź�帳�ϴ�. ������ �þ����ְ� ������� ���Ⱑ ���� �ִ�����... ���� ���� �����Ͽ����ϴ�. ������ �ö��� �̷����� ���⸦ �ٶ��ϴ�. ������ ���� ��Ź�鸳�ϴ�.
',to_date('17/01/13','RR/MM/DD'),null,52,31);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (24,'�ڹ��� ������ ��ġ��.....','���� �ڹ��� ������ ������ �±� �����Դϴ�
��ħ ���� ���� ������ �ڹ����� ����������
�̸� ��û���ǿ� �־� �ְ� ������ ���� �߰����� ���������..
������ �þ��ֽ� �е��� ��� ģ���Ͻð� ������ ���� ��������.
���Ŀ� ������ ��ġ�� ������ ���̴� ��̰� �ູ�� ����̾����.
��ü ������ ��� ���̿� ���� ������ ��� �ֽð� ����帳�ϴ�.
���� ���� ���� ���̴� �Ϸ� ���� ���������� ������ �ų��� ��⸦ �ϸ鼭 ���� ����� �߿伺,
���� ����, �ѱ������� ��Ȱ�� ����ٰ� �ѵ��� �ϴ°� ���鼭 ������ �� �ߴٰ� �����߽��ϴ�.
������ �ʹ� ���־��ٴ� �̾߱⵵ ������ �ʴ�����..
���� �ֽ��ֽ� ��� �е� ���� �帳�ϴ�...
Ư�� �̹�ȭ �����!!!!!!!
����帳�ϴ�.',to_date('17/01/13','RR/MM/DD'),null,54,32);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (25,'�ڹ��� ���������Դϴ�~','�ȳ��ϼ���.�̹� ��̳��� �¾� ���̶� �λ꿡�� ����� ���� ������ �ֱ��� �� ù��° ��ҷ� �ѱ����� ȭ��ڹ������� �žҾ��. �湮�� �ռ� �ı⸦ �о�� �� �����ںе��� ��ģ���� ���� ��Ⱑ ���Ƽ��� ������ �ռ��ϴ�.
���� �ҽ������̰� ����ģ ���ɴ���� �Ǹ� ũ�� �Ҹ������ų� ������ ���󼭿�  �̤� ;; ��ó�� ū���԰� ���� ���￩���ε� ù ��ŸƮ���� ������� �����Ҽ� �־����� �ϴ� �ٶ��Դϴ�. ���̶� ���� �߾︸��� ���� �ְ� ��Ź�帳�ϴ�. �����մϴ�.~~��  ',to_date('17/01/13','RR/MM/DD'),null,38,5);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (26,'���̵�� ����ִ� ���� ����','�ʵ� 2, 3�г� �ö󰡴� �кθ��Դϴ�.���̵�� �뵷�� ���� ���� ������ �����ϴٰ� �ѱ����� ȭ��ڹ����� ã�ҳ׿�.���̵��� �����Ӱ� ���浵 �ϰ�, �н��� �� �־ �ʹ� ���ҽ��ϴ�.�Դٰ� �ڹ����� �ִ� ������ �Ĳ��� ���� �� �ֵ��� �н��� ���� �͵� ����� ������ �Ǵϴ����� ���̵��� ����־� �ϳ׿�.�ֺ����� ��õ�� �޾� ���� ���ӵ� ���̵鳢�� �ްԼҿ��� �ϴϱ�� �߾��� �Ǿ� �뵷�� ���� ������ �����մϴ�.�����ڹ�������ּż�����帳�ϴ�.�����̴��ڼ����ı��α׿����ҽ��ϴ�.http://blog.naver.com/texref/220628770597
�����ںе� ��� 2016�⿡�� ����~~ �Ǽ���~~!!',to_date('17/01/13','RR/MM/DD'),null,39,6);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (27,'�ߺý��ϴ�.','�����մϴ�. ',to_date('17/01/13','RR/MM/DD'),null,91,7);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (28,'�ڹ��������� �ٳ�ͼ�...','�ȳ��ϼ���? ���� 8�� 6�� �ڹ��������� �ٳ�� �Źμ��Դϴ�. ���� ������ ���������� ��� ��û���� ��µ� ������ �����ϰ� �Ǿ� �ʹ��� ���ҽ��ϴ�. ���� ��ϵ� 2011�⵵(�ʵ��б� 5�г�) �������ж� �����߽��ϴ�. ����� �ڶ��� �ʹ� ���ؼ�(Ư�� ���ɸԾ�����) ��ô ���� �����µ� ���� ������ ���� ���ҽ��ϴ�. ������ ȸ�翡 ���ż� �ҸӴ϶� �����ؼ� ���� ������ ������ �����ȸ���� 1� �Ͽ� ������ �ް� �� �ҸӴϰ� ���� �ͼ� ġŲ�� ���� �ּ̽��ϴ�. ������ ������ ����� ���������̾����� 4�гⳢ�� �ϴϱ� �׷��� ���� ���ذ� �ƽ��ϴ�. ���,�������ϰ� ���� ���г������ �ϸ� �� ������� �ڲ� ������ �ϰ� �Ǵµ� ���⼭�� �׷����ʾҽ��ϴ�. ������ �ֽ� �����Ե� ����帳�ϴ�. 6�г⶧ �� ��ȸ�� �־����� ���ڽ��ϴ�. ',to_date('17/01/13','RR/MM/DD'),null,98,8);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (32,'���ҽ��ϴ�.','��հ� ������ ���̾����ϴ� ',to_date('17/01/13','RR/MM/DD'),null,43,12);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (33,'��� �ڹ��� ���� �����ı�!!','�ȳ��ϼ��� ���� ��� �ڹ��� ���� ������ �̼����̿���.
��
2014�� 1�� 16�� ����Ͽ� ��� �ڹ����������.
���� ���� ���� ���� ������ �ð��� ���� �������.��
�������� ������ ������ �����, ���� ȭ��� ��� ������� �˰� �Ǿ����.
���� ���� ���� ������ ���� ���� ���� ����? ��� �����ߴµ� ���� ����
1�⿡ �� ���� ����µ� 1,500�� �̻��� �ʿ��ϴٰ� �ؼ� ���� �����ϰ� �������� �ʰ� �Ϸ� ����ϰ� �־��.
��, �����µ��� ���� ����? ��� �������� �ʰ� ��� �ϸ� ���� ���°� ����ϸ� ���� �� ������?��� �����ؿ�.
�׸��� �������� �ĺ��ϴ� ����� ���� ���� �ʹ� �ű��߾��.
�����μ�, ����Ȯ���� ���ȣ, ���� Ȧ�α׷�, ��ü�� �κг�������, �յ޸����, �̼�����, ���� ����, �����׸�, ������� ���� �ִٴ°��� �ʹ� �ź�ο����.
�����ε� ���� �����ϰ� �����ϰ� �ٷ絵�� ����ҰԿ�~~^^
',to_date('17/01/13','RR/MM/DD'),null,29,15);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (36,'����ִ� �ѱ� ���� ȭ��ڹ���','���� �ѱ����� ȭ��ڹ����� ���� �Խ��ϴ�. ���� ��� �ڹ����� �����ϰ� �ڹ����� ���� ���� ��̰� �����µ�, ���� ȭ��ڹ����� ���� ���ϱ� ���� ��ġ�� �˰� ���� ����־����ϴ�.
���ݱ��� �̷��� ����ְ� �� �Ӹ��� ��� ������ �ڹ����� �̰� ó���̿����ϴ�.
�������� ���ƴٳ����� �ٸ��� ���� �ٵ� �𸣰�, ��Ʈ�� ������ ���� �ٳ���ϴ�.
2��° ���� ������ ������ �����ϱ�, �ð� ���� �ٵ� �𸣰�, ���� �𸣴� ȭ�� ���ĵ��� �˰� �Ǿ ���밨�� �������ϴ�. ������ �ǿͼ� �� ���� ���ڰ�, �� ���Ǹ� �� �� ģ���鿡�� ��õ�� ���ְ� ���� ��� ���ĵ��� ��� ģ���鿡�� �˷� �ְ� �ͽ��ϴ�. ��� ������ ���޾Ƶ� �ѱ����� ȭ��ڹ����� ��õ�մϴ�!
',to_date('17/01/13','RR/MM/DD'),null,3,19);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (38,'���� �ð��� �Ǿ����ϴ�.','���� �ָ� ���� �ڳ��� ��ȥ���� �־� �ѱ������� �湮�Ͽ����ϴ�
���� ���� �����ϰ� �Ǿ� �ڹ����� �����Ͽ���, ��ħ ���������� ��ȹ���� ���ֵȴ��Ͽ� �ݰ��� ������ �������� ã�ҽ��ϴ�
���ø� �ѷ����� ���Ƽ����µ� ���ü����� �Ѵ��ؼ� ������ �� ������ϴ�.
�ƴ¸�ŭ ���δٰ� �ϴ��� ������ ��� ���� �� ���ο����̰� ��ǰ�� ���ƺ��̴�����
�� ������ ���ֵȴ��ϴ��� ��ȥ�� �� ��簡 ������ �̷��� ���α׷��� �����ص� ���ڴٴ� ������ �������.
��ư ���� ���� �ߺð�, ���� �� ������ϴ�
�����մϴ�',to_date('17/01/13','RR/MM/DD'),null,36,21);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (39,'��̹ڹ������� �湮�ı�','�̹ڹ��������� �־ ��ħ���Ｍ�ѷ� �ѱ��������οԴ�
�� ����ͼ� �ۿ��� ��ٸ��µ� ���� ��ġ���̼��� ���� 10  ���� ���� ���ȴ�
���̴� �ڹ������Ƿ� ���� ���� ���빮������ ���� 1��30�к��� �кθ𱳽���  �ִ��ؼ� �ð��� �� �ʾ��� �� �θ����� ����
�п������ ���������� ������ȭ�� ��ȫ���� ǳȤȭ����� ������ �ϰ� ��̴�
������ ��ǵ��� �˰ԵǾ� ����� �ð��� �Ǿ���
�̷��� �кθ� ������ �Բ��ϴ� ���̿��Ե� �������Ե� ���� �ð��̵�����
5�г��� �츮���̴� ó������ �������� �Ǿ����� ���������α׷��� ������ ���̵鿡�� ��ȸ�� �ɼ� �ֵ��� Ȥ���� �÷��ָ� �� �������ϴ�
�����ñ� ������ֽ� �ѱ���������ںе�� �п���Բ� �������� ����帳�ϴ�
',to_date('17/01/13','RR/MM/DD'),null,41,22);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (40,'++�������� ��û�� 3�Ϥ� �ȵǰ� �־��++','5�Ϻ��� ��û�̶� ��ħ���� �������
Ȩ�ǰ� ��� ���� ���� ��ȭ�ߴ���
�湮�ڰ� ���� ���� �߿� �ִٴ� �亯�� ������ϴ�.
���� 3�Ϥ��ε� �������� �Ȱ��׿�.
��û�� �Ϸ��� �ϴ� ����� ���� �� �˰�����
3�Ϥ� ��ǻ�͸� ����� ���ڴ� ȭ�� ����
���� ���ϴ�.
������ �����ұ��?
',to_date('17/01/13','RR/MM/DD'),null,47,23);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (41,'���̶�?????','ó��  �ѱ�����  �ڹ������ٳ�Դ�
���  ���������� �������...
���̶�????
�ѹ��� �����غ��� �ʾҴµ�
����-��ġ��  ���ϴ�  ���ص�������ȯ��  ���ܵ�  �ȴٰ����Դ�
�ſ�������  �ð��̿���
',to_date('17/01/13','RR/MM/DD'),null,71,24);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (42,'ȭ��ڹ����� �ٳ�ͼ�','���� ���� �߰��ؼ� �ູ�߽��ϴ�.
�ٽ� ã�� ���� �ͳ׿�
',to_date('17/01/13','RR/MM/DD'),null,26,25);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (43,'�ڹ����� �ٳ���� ����.....','���� ���� ������� �������� ȭ��ڹ����� �ٳ���� �Ǿ����ϴ�. ó���� ȭ��ڹ����� �� ���� ���� ������ϴ�.�ǹ��� ũ�� ������...... �׸��� å���ǵ� �����....
���� ȭ��鵵 ����,���ӵ� �غ���..���� ���� �����̾����ϴ�. ��ȸ�� �ȴٸ� ������ �� ������ �ͽ��ϴ�.
',to_date('17/01/13','RR/MM/DD'),null,66,26);
--------------------------------------------------------
--  DDL for Index SYS_C0011951
--------------------------------------------------------

  CREATE UNIQUE INDEX "URANOS"."SYS_C0011951" ON "URANOS"."MEMBER" ("M_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011952
--------------------------------------------------------

  CREATE UNIQUE INDEX "URANOS"."SYS_C0011952" ON "URANOS"."MEMBER" ("M_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011953
--------------------------------------------------------

  CREATE UNIQUE INDEX "URANOS"."SYS_C0011953" ON "URANOS"."MEMBER" ("M_NICK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011958
--------------------------------------------------------

  CREATE UNIQUE INDEX "URANOS"."SYS_C0011958" ON "URANOS"."RESERVE" ("R_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011962
--------------------------------------------------------

  CREATE UNIQUE INDEX "URANOS"."SYS_C0011962" ON "URANOS"."NOTICE" ("N_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011968
--------------------------------------------------------

  CREATE UNIQUE INDEX "URANOS"."SYS_C0011968" ON "URANOS"."QNA" ("Q_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011972
--------------------------------------------------------

  CREATE UNIQUE INDEX "URANOS"."SYS_C0011972" ON "URANOS"."REVIEW" ("RW_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011976
--------------------------------------------------------

  CREATE UNIQUE INDEX "URANOS"."SYS_C0011976" ON "URANOS"."REPLY" ("CO_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "URANOS"."MEMBER" MODIFY ("M_PW" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."MEMBER" MODIFY ("M_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."MEMBER" MODIFY ("M_GENDER" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."MEMBER" MODIFY ("M_TEL" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."MEMBER" ADD PRIMARY KEY ("M_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "URANOS"."MEMBER" ADD UNIQUE ("M_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "URANOS"."MEMBER" ADD UNIQUE ("M_NICK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "URANOS"."NOTICE" MODIFY ("N_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."NOTICE" MODIFY ("N_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."NOTICE" MODIFY ("N_DAY" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."NOTICE" ADD PRIMARY KEY ("N_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "URANOS"."QNA" MODIFY ("Q_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."QNA" MODIFY ("Q_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."QNA" MODIFY ("Q_DAY" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."QNA" MODIFY ("Q_ORIGNUM" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."QNA" MODIFY ("Q_LEVEL" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."QNA" ADD PRIMARY KEY ("Q_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REPLY
--------------------------------------------------------

  ALTER TABLE "URANOS"."REPLY" MODIFY ("CO_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."REPLY" MODIFY ("CO_DAY" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."REPLY" MODIFY ("RW_NUM" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."REPLY" ADD PRIMARY KEY ("CO_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "URANOS"."RESERVE" MODIFY ("R_DAY" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."RESERVE" MODIFY ("R_START" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."RESERVE" MODIFY ("R_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."RESERVE" MODIFY ("R_TIME" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."RESERVE" ADD PRIMARY KEY ("R_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "URANOS"."REVIEW" MODIFY ("RW_TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."REVIEW" MODIFY ("RW_CONTENT" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."REVIEW" MODIFY ("RW_DAY" NOT NULL ENABLE);
 
  ALTER TABLE "URANOS"."REVIEW" ADD PRIMARY KEY ("RW_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
