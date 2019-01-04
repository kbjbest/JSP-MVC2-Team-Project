--------------------------------------------------------
--  파일이 생성됨 - 금요일-1월-13-2017   
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
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (1,'admin','admin','관리자','관리자',0,'남자',to_date('17/01/02','RR/MM/DD'),'admin@admin.com','01012345678','서울시','서울');
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (2,'signoutUser','1234','탈퇴한유저','탈퇴한유저',0,'남자',to_date('00/01/01','RR/MM/DD'),null,'00000000000',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (3,'test','1234','테스터','테스터',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (4,'test1','1234','테스터','테스터1',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (5,'test2','1234','테스터','테스터2',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (6,'test3','1234','테스터','테스터3',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (7,'test4','1234','테스터','테스터4',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (8,'test5','1234','테스터','테스터5',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (9,'test6','1234','테스터','테스터6',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (10,'test7','1234','테스터','테스터7',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (11,'test8','1234','테스터','테스터8',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (12,'test9','1234','테스터','테스터9',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (13,'test10','1234','테스터','테스터10',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (14,'test11','1234','테스터','테스터11',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (15,'test12','1234','테스터','테스터12',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (16,'test13','1234','테스터','테스터13',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (17,'test14','1234','테스터','테스터14',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (18,'test15','1234','테스터','테스터15',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (19,'test16','1234','테스터','테스터16',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (20,'test17','1234','테스터','테스터17',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (21,'test18','1234','테스터','테스터18',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (22,'test19','1234','테스터','테스터19',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (23,'test20','1234','테스터','테스터20',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (24,'test21','1234','테스터','테스터21',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (25,'test22','1234','테스터','테스터22',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (26,'test23','1234','테스터','테스터23',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (27,'test24','1234','테스터','테스터24',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (28,'test25','1234','테스터','테스터25',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (29,'test26','1234','테스터','테스터26',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (30,'test27','1234','테스터','테스터27',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (31,'test28','1234','테스터','테스터28',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (32,'test29','1234','테스터','테스터29',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
Insert into URANOS.MEMBER (M_NUM,M_ID,M_PW,M_NAME,M_NICK,M_GRADE,M_GENDER,M_BIRTH,M_EMAIL,M_TEL,M_ADDR1,M_ADDR2) values (33,'test30','1234','테스터','테스터30',1,'남자',to_date('00/01/01','RR/MM/DD'),null,'01012345678',null,null);
REM INSERTING into URANOS.NOTICE
SET DEFINE OFF;
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (1,'겨울방학「어린이박물관교실」 신청서 ','어린이 박물관교실 개최 신청기간 2008.12.29부터 2009.1.7까지 초등부 1.13일 3,4학년 32명 1.14일  3,4학년 32명 1.15일  4,5학년32명
교육내용 및 일정 내용과  견학, 강의, 체험 등 시간은 10:30~16:30까지 이며 제줄처는 museum@bok.or.kr 입니다.',to_date('08/12/23','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (2,'겨울방학 어린이 박물관 교실 조기 마감안내','어린이 박물관 교실에 관심을 보여주셔서 감사합니다. 현재 신청인원이 대상인원의 3배를 초과 접수되어 이에 오늘 자 14:00로 마감하게 됨을 알려드립니다. 착오없으시기 바라겠습니다. 아울러 선정된 어린이 명단은 2009년 1월 8일 E-mail을 통해 참가자에게 개별 통지하고  박물관 홈페이지에 게시합니다',to_date('09/01/02','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (3,'겨울방학 어린이 박물관 교실 참가자 선정 안내 ','한국은행 화폐금융박물관 「어린이 박물관 교실」에 선정되신 것을 진심으로 축하드립니다. 참가 어린이는 첨부파일을 꼭 참고하셔서 해당일에 늦지 않도록 화폐금융박물관에 도착해 주세요. 아울러 이번에 선정되지 못한 어린이는 여름에 다시 한번 도전해 주시기 바랍니다.',to_date('09/01/03','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (4,'우라노스박물관 임시휴관 안내','당사는 박물관 일부 전시시설 개편사업을 원할하게 추진하기 위해  2009.2.21 부터 2009.2.25 까지 박물관 임시휴관을 실시합니다. 아울러 정기휴관일인 월요일과 설 연휴기간을  포함하면 실제 휴관기간은 2. 28 (월)부터 3,5(월)까지 총 8일간 이므로 이용에 착오 없으시길 바랍니다.
감사합니다.',to_date('09/02/15','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (5,'2009년 4월 11일 화폐문화강좌 강사변경 ','강사의 사정으로 인해 2009년 4월 15일 문화강좌의 강사가 나폴레옹 조사역 에서 로빈훗 조사역으로 변경되었음을 알려드립니다.
',to_date('09/04/11','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (6,'본 박물관은 봄 맞이 개편으로 임시 휴장합니다','2009년 4월 20일부터 당월 21일까지,봄 맞이
개편 및 새로운 모습을 보여 드리고자 이틀간 휴장 합니다.',to_date('09/04/15','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (7,'2009년 5월 11일 화폐문화강좌 강사변경 ','로빈훗조사역 의 일신상의 사정으로 인해 기존 강사였던 나폴레옹 조사역으로 변경됩니다',to_date('09/05/09','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (8,'화폐금융박물관 강좌 임시 휴강 안내 ','신종 인풀루엔자의 감염 및 확산방지를 위하여 화폐금융박물관에서 실시하는 강좌들을 임시 휴강 합니다.#휴강 강좌 : 화폐문화강좌, 경제강좌, 토요음악감상, 일요영화감상
감사합니다.',to_date('09/09/05','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (9,'신종 인풀루엔자 확산방지로 인한 임시휴장기간 연장안내 ','신종 인풀루 엔자로 인한 피해 확산으로 인하여, 예정 되었던 박물관 개강 시기를 무기한 연장하는 바입니다. 사회적 확산을 막고 사태가 안정되었을 시 빠른 시일내 개장 할수 있기를 바라며, 개장안내에 대해서는 공지를 통해 알려드리겠습니다 ',to_date('09/10/05','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (10,'개장안내','신종 인풀루 엔자 확산방지 대책으로 인해 휴장하였던 박물관을, 당월 25일 자로
개장 하게 되어 알려드립니다. ',to_date('09/10/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (11,'한국은행 화폐박물관 개별관람 설명회 일시 중단 안내(2010.1.5-1.8)','2010년 한국은행 화폐박물관 행사실시로 인하여
1월5일(화)∼1월8일(금) 기간중 화폐박물관 개별관람객을 위한 오전 11시, 오후 3시 실시되던 개별관람 설명회가 중단되오니 양지하여 주시기 바랍니다.',to_date('10/01/01','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (12,'1층 화장실 배수관 파열로 인한 폐장 안내','1층 화장실 배수관 누수로 인하여, 금일부터 이틀간 공사일정을 안내 드립니다.',to_date('10/01/05','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (13,'배수관 파열로 인한 공사 일정 연장 안내','예정되었던 공사 일정이 연장 됨에 따로 개장일을 연장하며 일정을 잡은후 추후 공지 하겠습니다 이용에 불편을 드려 죄송합니다.',to_date('10/01/06','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (14,'우라노스 박물관 상하수도 공사 입찰안내 ','본 박물관 상하수도 시설 재공사 입찰 안내 드립니다. 제안서 와 기술서를 입찰서류와 함깨 본사 이메일mmm@nnn.nnn으로 보내주시면 됩니다.',to_date('10/01/07','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (15,'배수관 누수로 인해 휴장하였던 박물관을 1월 23일자로 개장 합니다.','배수관 누수로 인해 휴장 하였던 박물관관람을 1월23일 자로 개장 하게되었습니다. 이용에 불편을 드린점 대단히 죄송합니다.',to_date('10/01/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (16,'문화체육관광부 우라노스박물관장(개방형직위) 공개모집 안내 ','문화체육관광부 국립중앙박물관 우라노스박물관장(학예연구관 과장급, 임기제 포함)개방형직위 공개모집에 대한 사항입니다. 역량있는 분들의 많은 응모를 바랍니다.',to_date('10/02/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (17,'홈페이지 통합회원 관련 서비스 일시 중지 안내 ','우라노스박물관 아카이브 홈페이지 서버작업으로 인하여 홈페이지 통합회원 관련 서비스가 일시 중단 될 예정이오니,  이용에 참고 하여 주시기 바랍니다.
많은 양해 부탁드립니다.
일 시: 2010.3.8(월) 18:00 ~ 23:00
대 상: 우라노스박물관 홈페이지, 국악아카이브, E-국악아카데미, 통합회원 서비스
 사 유: 우라노스박물관 아카이브 홈페이지 서버작업',to_date('10/03/05','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (18,'가족과 함께하는 주말국악문화강좌 추가모집안내','가족과 함께하는 주말국악문화강좌 추가모집안내  단소반, 사물놀이반, 가야금반, 판소리반 약간명 추가 모집합니다. 희망하시는 가족은 선착순으로 전화 접수 받습니다. (070-580-3059)  강좌에 대한 자세한 내용은 <홈페이지 첫화면 - 교육- 가족강좌>에 있습니다. ',to_date('10/03/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (19,'인터넷 방송시스템 서버 하드 교체로 중단됨을 알려드립니다. ','안녕하십니까 국립국악원 전산실입니다 미디어 서버 하드 교체로 인해 당분간 인터넷방송 서비스 및 음악듣기 관련 서비스가 잠정적으로 중단됨을 알려드립니다 참고하시기 바랍니다 ',to_date('10/04/20','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (20,'12월 18일 토요상설국악공연 안내 ','12월 18일 토요상설국악공연은 국립국악원 <송년음악회>로 대체합니다. 이에 공연 관람에 차질 없으시길 바랍니다. ',to_date('10/05/10','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (21,'5월 11일 일요상설국악공연 안내 ','5월 11일 일요상설국악공연은 국립국악원 <송년음악회>로 대체합니다. 이에 공연 관람에 차질 없으시길 바랍니다. ',to_date('10/05/11','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (22,'5월 12일 월요상설국악공연 안내 ','5월 12일 월요상설국악공연은 국립국악원 <송년음악회>로 대체합니다. 이에 공연 관람에 차질 없으시길 바랍니다. ',to_date('10/05/11','RR/MM/DD'),0);
Insert into URANOS.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DAY,N_COUNT) values (23,'5월 13일 화요상설국악공연 안내 ','5월 13일 화요상설국악공연은 국립국악원 <송년음악회>로 대체합니다. 이에 공연 관람에 차질 없으시길 바랍니다. ',to_date('10/05/12','RR/MM/DD'),0);
REM INSERTING into URANOS.QNA
SET DEFINE OFF;
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (2,'하이','하이',to_date('17/01/11','RR/MM/DD'),1,0,5,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (3,'하잉ㅇㅇㅇㅇㅇㅇㅇㅇㅂㅇ관리자가옴','ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',to_date('17/01/11','RR/MM/DD'),3,0,15,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (4,'111111','111111ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',to_date('17/01/11','RR/MM/DD'),4,0,26,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (9,'dddddasd','dddddddddddddddddasdasd',to_date('17/01/12','RR/MM/DD'),7,0,45,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (40,'1234','44444444444444',to_date('17/01/13','RR/MM/DD'),40,0,13,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (39,'하이루','방가',to_date('17/01/13','RR/MM/DD'),36,0,6,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (57,'Re:  글을써보자','ddddd',to_date('17/01/13','RR/MM/DD'),55,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (71,'Re:  	타임머신을타고 1930년대 한국은행앞거리로~~','그럼요',to_date('17/01/13','RR/MM/DD'),62,1,1,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (35,'Re:  ㅇㅇㅇㅇㅇㅇ관리자임','ㅇㅇ',to_date('17/01/12','RR/MM/DD'),29,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (24,'ㅇㅇㅇㅇㅇㅇ','ㅇㅇㅇㅇ',to_date('17/01/12','RR/MM/DD'),24,0,3,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (25,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇ','ㅇㅇㅇㅇㅇ',to_date('17/01/12','RR/MM/DD'),25,0,6,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (44,'글을써보자','글을써보자',to_date('17/01/13','RR/MM/DD'),44,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (45,'글을써보자','글을써보자글을써보자',to_date('17/01/13','RR/MM/DD'),45,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (46,'글을써보자11','글을써보자',to_date('17/01/13','RR/MM/DD'),46,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (47,'글을써보자2222222','2222',to_date('17/01/13','RR/MM/DD'),47,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (48,'글을써보자3333333333','글을써보자',to_date('17/01/13','RR/MM/DD'),48,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (49,'글을써보자5444444444','ㅇ',to_date('17/01/13','RR/MM/DD'),49,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (50,'글을써보자5444444444','22222222222',to_date('17/01/13','RR/MM/DD'),50,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (51,'글을써보자231','ㅇ',to_date('17/01/13','RR/MM/DD'),51,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (52,'글을써보자ㅇㅇㅇㅇ','ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',to_date('17/01/13','RR/MM/DD'),52,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (53,'11','ㄴㅇ',to_date('17/01/13','RR/MM/DD'),53,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (54,'글을써보자3333333333','123123',to_date('17/01/13','RR/MM/DD'),54,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (55,'글을써보자','글을써보자글을써보자글을써보자글을써보자글을써보자글을써보자글을써보자',to_date('17/01/13','RR/MM/DD'),55,0,6,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (56,'12312','3123',to_date('17/01/13','RR/MM/DD'),56,0,3,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (68,'Re:  박물관 안에서 사진을 촬영할 수 있나요?','네',to_date('17/01/13','RR/MM/DD'),66,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (70,'Re:  질문개별 방문객도 전시설명을 해 주나요?','예아',to_date('17/01/13','RR/MM/DD'),64,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (6,'관리자입니다','ㅇㅇㅇ!!',to_date('17/01/11','RR/MM/DD'),3,1,7,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (10,'Re: 111111','dddddddddd',to_date('17/01/12','RR/MM/DD'),4,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (43,'dddd','dtdt',to_date('17/01/13','RR/MM/DD'),43,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (59,'Re:  글을써보자5444444444111','ddddddddddddddddddd',to_date('17/01/13','RR/MM/DD'),50,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (58,'Re:  글을써보자ㅇㅇㅇㅇ','dddddd',to_date('17/01/13','RR/MM/DD'),52,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (18,'ㅇㅇㅇㅇ','ㅇㅇ',to_date('17/01/12','RR/MM/DD'),11,0,2,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (26,'Re: ㅇㅇㅇㅇㅇㅇ111','!!',to_date('17/01/12','RR/MM/DD'),24,1,1,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (60,'Re:  글을써보자23111','11',to_date('17/01/13','RR/MM/DD'),51,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (29,'ㅇㅇㅇㅇㅇㅇ','ㅇㅇㅇㅇㅇㅇ',to_date('17/01/12','RR/MM/DD'),29,0,21,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (30,'ㅇ','ㅇㅇ',to_date('17/01/12','RR/MM/DD'),30,0,2,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (42,'Re:  1234ㅅㅅ','ㅅㅅ',to_date('17/01/13','RR/MM/DD'),40,1,4,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (61,'화폐박물관 초청견학행사','ㅇㅇ',to_date('17/01/13','RR/MM/DD'),61,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (34,'Re:  ㅇㅇㅇㅇㅇㅇㅇㅇㅇ관리자','하잇',to_date('17/01/12','RR/MM/DD'),25,1,0,1);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (62,'	타임머신을타고 1930년대 한국은행앞거리로~~','ㅇㅇㅇ',to_date('17/01/13','RR/MM/DD'),62,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (63,'질문자료안내실에서 이용 가능한 자료는 어떤 것들이 있나요?','11',to_date('17/01/13','RR/MM/DD'),63,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (64,'질문개별 방문객도 전시설명을 해 주나요?','ㅇㅇ',to_date('17/01/13','RR/MM/DD'),64,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (65,'질문음성안내기의 이용방법과 외국어도 지원이 되는지 알고 싶습니다.','11',to_date('17/01/13','RR/MM/DD'),65,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (66,'박물관 안에서 사진을 촬영할 수 있나요?','111',to_date('17/01/13','RR/MM/DD'),66,0,2,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (67,'질문단체인데 전시설명을 듣고 싶습니다. 인원 제한이 있는지요?','111',to_date('17/01/13','RR/MM/DD'),67,0,0,2);
Insert into URANOS.QNA (Q_NUM,Q_TITLE,Q_CONTENT,Q_DAY,Q_ORIGNUM,Q_LEVEL,Q_COUNT,M_NUM) values (69,'Re:  질문음성안내기의 이용방법과 외국어도 지원이 되는지 알고 싶습니다.','넵',to_date('17/01/13','RR/MM/DD'),65,1,0,1);
REM INSERTING into URANOS.REPLY
SET DEFINE OFF;
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (1,26,'안녕하세요 ^^',to_date('17/01/13','RR/MM/DD'),48);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (2,27,'정말 좋네요~',to_date('17/01/13','RR/MM/DD'),48);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (3,28,'감사합니다.',to_date('17/01/13','RR/MM/DD'),47);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (4,29,'오 멋지네요',to_date('17/01/13','RR/MM/DD'),47);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (5,30,'저도 다음에 가봐야겟어요',to_date('17/01/13','RR/MM/DD'),47);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (6,31,'안녕하세요 ^^',to_date('17/01/13','RR/MM/DD'),46);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (7,32,'정말 좋네요~',to_date('17/01/13','RR/MM/DD'),45);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (8,1,'감사합니다.',to_date('17/01/13','RR/MM/DD'),45);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (9,2,'오 멋지네요',to_date('17/01/13','RR/MM/DD'),44);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (10,3,'저도 다음에 가봐야겟어요',to_date('17/01/13','RR/MM/DD'),44);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (11,4,'안녕하세요 ^^',to_date('17/01/13','RR/MM/DD'),44);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (12,5,'정말 좋네요~',to_date('17/01/13','RR/MM/DD'),43);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (13,6,'감사합니다.',to_date('17/01/13','RR/MM/DD'),42);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (14,7,'오 멋지네요',to_date('17/01/13','RR/MM/DD'),42);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (15,8,'저도 다음에 가봐야겟어요',to_date('17/01/13','RR/MM/DD'),41);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (16,9,'안녕하세요 ^^',to_date('17/01/13','RR/MM/DD'),41);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (17,10,'정말 좋네요~',to_date('17/01/13','RR/MM/DD'),41);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (18,11,'감사합니다.',to_date('17/01/13','RR/MM/DD'),40);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (19,12,'오 멋지네요',to_date('17/01/13','RR/MM/DD'),39);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (20,13,'저도 다음에 가봐야겟어요',to_date('17/01/13','RR/MM/DD'),39);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (21,14,'안녕하세요 ^^',to_date('17/01/13','RR/MM/DD'),38);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (22,15,'정말 좋네요~',to_date('17/01/13','RR/MM/DD'),38);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (23,16,'감사합니다',to_date('17/01/13','RR/MM/DD'),38);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (24,17,'감사합니다',to_date('17/01/13','RR/MM/DD'),36);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (25,18,'정말 좋네요~',to_date('17/01/13','RR/MM/DD'),33);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (26,19,'저도 다음에 가봐야겟어요',to_date('17/01/13','RR/MM/DD'),33);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (27,20,'감사합니다',to_date('17/01/13','RR/MM/DD'),32);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (28,21,'굿',to_date('17/01/13','RR/MM/DD'),32);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (29,22,'정말 좋네요~',to_date('17/01/13','RR/MM/DD'),32);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (30,23,'저도 다음에 가봐야겟어요',to_date('17/01/13','RR/MM/DD'),28);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (31,24,'감사합니다',to_date('17/01/13','RR/MM/DD'),28);
Insert into URANOS.REPLY (CO_NUM,M_NUM,CO_CONTENT,CO_DAY,RW_NUM) values (32,25,'저도 다음에 가봐야겟어요',to_date('17/01/13','RR/MM/DD'),28);
REM INSERTING into URANOS.RESERVE
SET DEFINE OFF;
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (1,to_date('17/01/13','RR/MM/DD'),to_date('17/01/14','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:05',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (2,to_date('17/01/13','RR/MM/DD'),to_date('17/01/20','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (3,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'아직도 인간이 필요한 이유','PM:01',4);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (4,to_date('17/01/13','RR/MM/DD'),to_date('17/01/14','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:05',4);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (5,to_date('17/01/13','RR/MM/DD'),to_date('17/02/21','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',5);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (6,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'아직도 인간이 필요한 이유','PM:01',5);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (7,to_date('17/01/13','RR/MM/DD'),to_date('17/03/22','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:05',6);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (8,to_date('17/01/13','RR/MM/DD'),to_date('17/02/10','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (9,to_date('17/01/13','RR/MM/DD'),to_date('17/03/01','RR/MM/DD'),'아직도 인간이 필요한 이유','PM:01',8);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (10,to_date('17/01/13','RR/MM/DD'),to_date('17/01/18','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:05',10);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (11,to_date('17/01/13','RR/MM/DD'),to_date('17/02/26','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (12,to_date('17/01/13','RR/MM/DD'),to_date('17/02/13','RR/MM/DD'),'아직도 인간이 필요한 이유','PM:01',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (13,to_date('17/01/13','RR/MM/DD'),to_date('17/04/01','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:05',11);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (14,to_date('17/01/13','RR/MM/DD'),to_date('17/01/24','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',3);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (15,to_date('17/01/13','RR/MM/DD'),to_date('17/03/04','RR/MM/DD'),'아직도 인간이 필요한 이유','PM:01',12);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (16,to_date('17/01/13','RR/MM/DD'),to_date('17/02/28','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:01',11);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (17,to_date('17/01/13','RR/MM/DD'),to_date('17/01/25','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',4);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (18,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'아직도 인간이 필요한 이유','AM:11',13);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (19,to_date('17/01/13','RR/MM/DD'),to_date('17/01/26','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:03',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (20,to_date('17/01/13','RR/MM/DD'),to_date('17/02/11','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',5);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (21,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'아직도 인간이 필요한 이유','PM:01',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (22,to_date('17/01/13','RR/MM/DD'),to_date('17/01/14','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:02',15);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (23,to_date('17/01/13','RR/MM/DD'),to_date('17/02/16','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',6);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (24,to_date('17/01/13','RR/MM/DD'),to_date('17/02/01','RR/MM/DD'),'아직도 인간이 필요한 이유','AM:10',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (25,to_date('17/01/13','RR/MM/DD'),to_date('17/01/22','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:02',16);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (26,to_date('17/01/13','RR/MM/DD'),to_date('17/01/27','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',6);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (27,to_date('17/01/13','RR/MM/DD'),to_date('17/02/26','RR/MM/DD'),'아직도 인간이 필요한 이유','PM:01',1);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (28,to_date('17/01/13','RR/MM/DD'),to_date('17/01/14','RR/MM/DD'),'특별전 <흙으로 빚은 조선의 제기>','PM:03',17);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (29,to_date('17/01/13','RR/MM/DD'),to_date('17/01/22','RR/MM/DD'),'파블로 피카소展 열정,천재화가를 만나다','AM:10',5);
Insert into URANOS.RESERVE (R_NUM,R_DAY,R_START,R_NAME,R_TIME,M_NUM) values (30,to_date('17/01/13','RR/MM/DD'),to_date('17/02/11','RR/MM/DD'),'아직도 인간이 필요한 이유','PM:01',28);
REM INSERTING into URANOS.REVIEW
SET DEFINE OFF;
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (44,'아시아 화폐 전시 오류!','2층 전시실에 아시아의 화폐전시관에서  인도네시아 화폐와
스리랑카의 화폐가 서로 뒤바뀌어 전시되어 있습니다.
관람 하던 초등학생 아들이 발견하였습니다. 빠른 시정 바랍니다.
',to_date('17/01/13','RR/MM/DD'),null,14,27);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (45,'화폐금융박물관을 견학하고 나서','친구와 같이 박물관을 다녀왔는데 화페에 관해서 처음 들어보는 것들도 있었고, 신기한 것들이 참 많았어요. 무엇보다도 관람만 하는 것이 아니라 다양한 체험을 해볼 수 있다는 점이 참 좋았구요. 직접 학습지를 풀면서 관람을 하니까 더 잘 이해가 된 것 같고, 대여해서 들어볼 수 있는 설명도 참 좋았어요. 방학동안 집에만 있다가 나와서 화폐금융박물관에서 좋은 견학을 할 수 있었던 계기가 되었던 같아요.',to_date('17/01/13','RR/MM/DD'),null,55,28);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (46,'8월1일 가원초24명의 엄마와 아이들이 감사를 전합니다','안녕하세요.
지난 8월1일 방문한 가원초 입니다. 인원이 24명이나 갔는데 아이도 엄마들도 진지하게 설명도 잘듣고 자세한 설명을 해주신 해설 안내에 감사드립니다.
미리 댓글을 올려야 하는데 늦게나마 감사를 전합니다. 우리나라가 지금 경제가 힘들다고 하는데 한국은행이 있어 뿌듯했습니다. 수고하세요>
',to_date('17/01/13','RR/MM/DD'),null,99,30);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (47,'조금 직원의 안내가 불친절 하였습니다.','안녕하세요 화폐박물관을 다녀온 사람입니다. 그곳에 직원의 안내가 불친절하여 이렇게 글을 남깁니다. 나쁘게 말을 하고 싶진 않습니다. 그런데 저희 딸2이 나만의 화폐만들때 하고있는데 그곳에 있는 분에게 무엇을 잠깐 물어보니 들은체 만체 하며 저도 몰라여 이렇며 핸드폰을 만지내요...그때 기분이 살짝 상하였습니다. 오죽하면 나이 어린 저의 딸들이 불친절하다고 짜증 난다며 불평을 늘어놓았습니다. 조금의 주의 부탁드립니다.
또 박물관 안에 있는 여자 화장실을 조금 더 청결 부탁드립니다. 휴지가 늘어저있고 어느곳은 변기가 막혀 있더군요... 쓰기 조금 불쾌하였습니다. 다음에 올때는 이런일이 없기를 바랍니다. 조금의 주의 부탁들립니다.
',to_date('17/01/13','RR/MM/DD'),null,52,31);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (48,'박물관 수업을 마치고.....','오늘 박물관 수업에 참여한 승교 엄마입니다
아침 일찍 문도 열기전 박물관에 도착했지요
이를 시청각실에 넣어 주고 집으로 오는 발걸음이 가벼웠어요..
진행을 맡아주신 분들이 모두 친절하시고 믿음이 갖기 때문이죠.
오후에 수업을 마치고 나오는 아이는 즐겁고 행복한 모습이었어요.
단체 사진을 찍고 아이와 둘이 사진도 찍어 주시고 감사드립니다.
집에 오는 내내 아이는 하루 동안 수업내용을 줄줄이 신나게 얘기를 하면서 돈의 개념과 중요성,
경제 관념, 한국은행의 역활을 배웠다고 뿌듯해 하는걸 보면서 보내길 잘 했다고 생각했습니다.
점심이 너무 맛있었다는 이야기도 빼놓지 않더군요..
오늘 애써주신 모든 분들 감사 드립니다...
특히 이미화 과장님!!!!!!!
감사드립니다.',to_date('17/01/13','RR/MM/DD'),null,54,32);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (1,'박물관 관람예정입니다~','안녕하세요.이번 어린이날을 맞아 아이랑 부산에서 서울로 여행 예정에 있구요 그 첫번째 장소로 한국은행 화폐박물관으로 꼽았어요. 방문에 앞서 후기를 읽어보던 중 관계자분들의 불친절에 대한 얘기가 많아서요 걱정이 앞섭니다.
제가 소심한편이고 지나친 관심대상이 되면 크게 소리지르거나 울지도 몰라서요  ㅜㅜ ;; 모처럼 큰맘먹고 가는 서울여행인데 첫 스타트부터 기분좋게 시작할수 있었으면 하는 바람입니다. 아이랑 좋은 추억만들고 갈수 있게 부탁드립니다. 감사합니다.~~？  ',to_date('17/01/13','RR/MM/DD'),null,38,5);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (2,'아이들과 재미있는 경제 교육','초등 2, 3학년 올라가는 학부모입니다.아이들과 용돈과 돈에 대한 교육을 생각하다가 한국은행 화폐박물관에 찾았네요.아이들이 자유롭게 구경도 하고, 학습할 수 있어서 너무 좋았습니다.게다가 박물관에 있는 내용을 꼼꼼히 살필 수 있도록 학습지 같은 것도 무료로 제공이 되니더더욱 아이들이 재미있어 하네요.주변에서 추천을 받아 경제 게임도 아이들끼리 휴게소에서 하니까많은 추억이 되어 용돈에 대한 생각이 많이합니다.좋은박물관을운영주셔서감사드립니다.사진이더자세한후기블로그에보았습니다.http://blog.naver.com/texref/220628770597
관계자분들 모두 2016년에는 부자~~ 되세요~~!!',to_date('17/01/13','RR/MM/DD'),null,39,6);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (3,'잘봤습니다.','감사합니다. ',to_date('17/01/13','RR/MM/DD'),null,91,7);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (4,'박물관교실을 다녀와서...','안녕하세요? 저는 8월 6일 박물관교실을 다녀온 신민서입니다. 정말 열심히 경제교육도 듣고 신청서도 썼는데 다행히 참여하게 되어 너무도 좋았습니다. 저희 언니도 2011년도(초등학교 5학년) 여름방학때 참여했습니다. 언니의 자랑이 너무 심해서(특히 점심먹었던곳) 무척 샘이 났었는데 저도 가보니 정말 좋았습니다. 엄마가 회사에 가셔서 할머니랑 가야해서 조금 심통이 났지만 퀴즈대회에서 1등도 하여 선물도 받고 또 할머니가 집에 와서 치킨도 시켜 주셨습니다. 저에게 아직은 어려운 경제교육이었지만 4학년끼리 하니까 그래도 많이 이해가 됐습니다. 언니,오빠들하고 같이 고학년수업을 하면 전 어려워서 자꾸 딴짓을 하게 되는데 여기서는 그러지않았습니다. 교육해 주신 선생님들 감사드립니다. 6학년때 또 기회가 있었으면 좋겠습니다. ',to_date('17/01/13','RR/MM/DD'),null,98,8);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (8,'좋았습니다.','재밌고 유익한 곳이었습니다 ',to_date('17/01/13','RR/MM/DD'),null,43,12);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (9,'어린이 박물관 교실 참가후기!!','안녕하세요 저는 어린이 박물관 교실 참가한 이소정이에요.
？
2014년 1월 16일 목요일에 어린이 박물관에갔어요.
제가 가서 직접 보고 느끼는 시간이 정말 뜻깊었어요.？
옛날에는 무엇을 돈으로 썼는지, 옛날 화폐는 어떻게 생겼는지 알게 되었어요.
저는 가기 전에 무조건 돈이 생김 어디다 쓰지? 라고 생각했는데 가서 배우니
1년에 새 돈을 만드는데 1,500억 이상이 필요하다고 해서 돈을 깨끗하게 찢어지지 않게 하력 노력하고 있어요.
또, 이제는돈을 어디다 쓸까? 라고 생각하지 않고 어떻게 하면 돈을 쓰는걸 어떻게하면 줄일 수 있을까?라고 생각해요.
그리고 위조지폐를 식별하는 방법을 배우고 나니 너무 신기했어요.
볼록인쇄, 가로확대형 기번호, 띠형 홀로그램, 입체형 부분노출은선, 앞뒷면맞춤, 미세문자, 숨은 은선, 숨은그림, 요판잠상 등이 있다는것이 너무 신비로웠어요.
앞으로도 돈을 깨끗하게 소중하게 다루도록 노력할게요~~^^
',to_date('17/01/13','RR/MM/DD'),null,29,15);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (12,'재미있는 한국 은행 화폐박물관','오늘 한국은행 화폐박물관을 갔다 왔습니다. 거의 모든 박물관은 지루하고 박물관을 갈때 마다 재미가 없었는데, 오늘 화폐박물관에 갔다 오니까 돈의 가치도 알고 정말 재미있었습니다.
지금까지 이렇게 재미있고 내 머리에 쏙쏙 들어오는 박물관은 이곳 처음이였습니다.
여러곳을 돌아다녔지만 다리가 아픈 줄도 모르고, 노트에 적으며 돌아 다녔습니다.
2번째 가고 선생님 설명을 들으니까, 시간 가는 줄도 모르고, 내가 모르던 화폐 지식들을 알게 되어서 성취감을 느꼈습니다. 다음에 또와서 또 보면 좋겠고, 이 강의를 또 들어서 친구들에게 추천도 해주고 내가 배운 지식들을 모두 친구들에게 알려 주고 싶습니다. 비록 선물은 못받아도 한국은행 화폐박물관을 추천합니다!
',to_date('17/01/13','RR/MM/DD'),null,3,19);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (14,'좋은 시간이 되었습니다.','지난 주말 지인 자녀의 결혼식이 있어 한국은행을 방문하였습니다
조금 일찍 도착하게 되어 박물관을 관람하였고, 마침 갤러리에서 기획전이 개최된다하여 반가운 마음에 갤러리를 찾았습니다
전시를 둘러보고 돌아서려는데 전시설명을 한다해서 설명을 잘 들었습니다.
아는만큼 보인다고 하더니 설명을 듣고 보니 더 새로워보이고 작품도 좋아보이더군요
월 한차례 개최된다하던데 결혼식 등 행사가 있을땐 이렇게 프로그램을 병행해도 좋겠다는 생각이 들더군요.
암튼 좋은 전시 잘봤고, 설명도 잘 들었습니다
감사합니다',to_date('17/01/13','RR/MM/DD'),null,36,21);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (15,'어린이박물관교실 방문후기','이박물관교실이 있어서 아침일찍서둘러 한국은행으로왔다
넘 일찍와서 밖에서 기다리는데 옆에 벤치가이서서 다행 10  드디어 문이 열렸다
아이는 박물관교실로 들어가고 엄만 남대문시장을 돌고 1시30분부터 학부모교실이  있다해서 시간은 좀 늦었지 만 부리나케 들어갔다
학예사님이 겸재정선의 진경산수화와 김홍도의 풍혹화등등의 설명을 하고 계셨다
몰랐던 사실들을 알게되어 뜻깊은 시간이 되었다
이렇게 학부모 교육이 함께하니 아이에게도 엄마에게도 좋은 시간이독었다
5학년이 우리아이는 처음이자 마지막이 되었지만 덧많은프로그램과 더많은 아이들에게 기회가 될수 있도록 혹수를 늘려주면 더 좋을듯하다
좋은시긴 만들어주신 한국은행관계자분들과 학예사님께 진심으로 감사드립니다
',to_date('17/01/13','RR/MM/DD'),null,41,22);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (16,'++경제교실 신청이 3일쨰 안되고 있어요++','5일부터 신청이라 아침부터 저녁까지
홈피가 계속 에러 나서 전화했더니
방문자가 많아 복구 중에 있다는 답변을 들었습니다.
지금 3일쨰인데 아직까지 똑같네요.
신청을 하려고 하는 사람이 많은 건 알겠지만
3일쨰 컴퓨터를 붙잡고 있자니 화가 나서
글을 씁니다.
언제쯤 가능할까요?
',to_date('17/01/13','RR/MM/DD'),null,47,23);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (17,'돈이란?????','처음  한국은행  박물관을다녀왔다
잠깐  경제수업을 들었느데...
돈이란????
한번도 생각해보질 않았는데
돈이-가치를  평가하는  기준도물물교환의  수단도  된다고배우고왔다
매우유익한  시간이였다
',to_date('17/01/13','RR/MM/DD'),null,71,24);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (18,'화폐박물관을 다녀와서','멋진 곳을 발견해서 행복했습니다.
다시 찾아 오고 싶네요
',to_date('17/01/13','RR/MM/DD'),null,26,25);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (19,'박물관을 다녀오고 난뒤.....','저는 얼마전 역사기행 수업으로 화폐박물관에 다녀오게 되었습니다. 처음에 화폐박물관을 본 순간 정말 놀랐습니다.건물도 크고 멋지고...... 그리고 책갈피도 만들고....
많은 화폐들도 보고,게임도 해보고..정말 좋은 경험이었습니다. 기회가 된다면 다음에 또 가보고 싶습니다.
',to_date('17/01/13','RR/MM/DD'),null,66,26);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (20,'아시아 화폐 전시 오류!','2층 전시실에 아시아의 화폐전시관에서  인도네시아 화폐와
스리랑카의 화폐가 서로 뒤바뀌어 전시되어 있습니다.
관람 하던 초등학생 아들이 발견하였습니다. 빠른 시정 바랍니다.
',to_date('17/01/13','RR/MM/DD'),null,14,27);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (21,'화폐금융박물관을 견학하고 나서','친구와 같이 박물관을 다녀왔는데 화페에 관해서 처음 들어보는 것들도 있었고, 신기한 것들이 참 많았어요. 무엇보다도 관람만 하는 것이 아니라 다양한 체험을 해볼 수 있다는 점이 참 좋았구요. 직접 학습지를 풀면서 관람을 하니까 더 잘 이해가 된 것 같고, 대여해서 들어볼 수 있는 설명도 참 좋았어요. 방학동안 집에만 있다가 나와서 화폐금융박물관에서 좋은 견학을 할 수 있었던 계기가 되었던 같아요.',to_date('17/01/13','RR/MM/DD'),null,55,28);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (22,'8월1일 가원초24명의 엄마와 아이들이 감사를 전합니다','안녕하세요.
지난 8월1일 방문한 가원초 입니다. 인원이 24명이나 갔는데 아이도 엄마들도 진지하게 설명도 잘듣고 자세한 설명을 해주신 해설 안내에 감사드립니다.
미리 댓글을 올려야 하는데 늦게나마 감사를 전합니다. 우리나라가 지금 경제가 힘들다고 하는데 한국은행이 있어 뿌듯했습니다. 수고하세요>
',to_date('17/01/13','RR/MM/DD'),null,99,30);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (23,'조금 직원의 안내가 불친절 하였습니다.','안녕하세요 화폐박물관을 다녀온 사람입니다. 그곳에 직원의 안내가 불친절하여 이렇게 글을 남깁니다. 나쁘게 말을 하고 싶진 않습니다. 그런데 저희 딸2이 나만의 화폐만들때 하고있는데 그곳에 있는 분에게 무엇을 잠깐 물어보니 들은체 만체 하며 저도 몰라여 이렇며 핸드폰을 만지내요...그때 기분이 살짝 상하였습니다. 오죽하면 나이 어린 저의 딸들이 불친절하다고 짜증 난다며 불평을 늘어놓았습니다. 조금의 주의 부탁드립니다.
또 박물관 안에 있는 여자 화장실을 조금 더 청결 부탁드립니다. 휴지가 늘어저있고 어느곳은 변기가 막혀 있더군요... 쓰기 조금 불쾌하였습니다. 다음에 올때는 이런일이 없기를 바랍니다. 조금의 주의 부탁들립니다.
',to_date('17/01/13','RR/MM/DD'),null,52,31);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (24,'박물관 수업을 마치고.....','오늘 박물관 수업에 참여한 승교 엄마입니다
아침 일찍 문도 열기전 박물관에 도착했지요
이를 시청각실에 넣어 주고 집으로 오는 발걸음이 가벼웠어요..
진행을 맡아주신 분들이 모두 친절하시고 믿음이 갖기 때문이죠.
오후에 수업을 마치고 나오는 아이는 즐겁고 행복한 모습이었어요.
단체 사진을 찍고 아이와 둘이 사진도 찍어 주시고 감사드립니다.
집에 오는 내내 아이는 하루 동안 수업내용을 줄줄이 신나게 얘기를 하면서 돈의 개념과 중요성,
경제 관념, 한국은행의 역활을 배웠다고 뿌듯해 하는걸 보면서 보내길 잘 했다고 생각했습니다.
점심이 너무 맛있었다는 이야기도 빼놓지 않더군요..
오늘 애써주신 모든 분들 감사 드립니다...
특히 이미화 과장님!!!!!!!
감사드립니다.',to_date('17/01/13','RR/MM/DD'),null,54,32);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (25,'박물관 관람예정입니다~','안녕하세요.이번 어린이날을 맞아 아이랑 부산에서 서울로 여행 예정에 있구요 그 첫번째 장소로 한국은행 화폐박물관으로 꼽았어요. 방문에 앞서 후기를 읽어보던 중 관계자분들의 불친절에 대한 얘기가 많아서요 걱정이 앞섭니다.
제가 소심한편이고 지나친 관심대상이 되면 크게 소리지르거나 울지도 몰라서요  ㅜㅜ ;; 모처럼 큰맘먹고 가는 서울여행인데 첫 스타트부터 기분좋게 시작할수 있었으면 하는 바람입니다. 아이랑 좋은 추억만들고 갈수 있게 부탁드립니다. 감사합니다.~~？  ',to_date('17/01/13','RR/MM/DD'),null,38,5);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (26,'아이들과 재미있는 경제 교육','초등 2, 3학년 올라가는 학부모입니다.아이들과 용돈과 돈에 대한 교육을 생각하다가 한국은행 화폐박물관에 찾았네요.아이들이 자유롭게 구경도 하고, 학습할 수 있어서 너무 좋았습니다.게다가 박물관에 있는 내용을 꼼꼼히 살필 수 있도록 학습지 같은 것도 무료로 제공이 되니더더욱 아이들이 재미있어 하네요.주변에서 추천을 받아 경제 게임도 아이들끼리 휴게소에서 하니까많은 추억이 되어 용돈에 대한 생각이 많이합니다.좋은박물관을운영주셔서감사드립니다.사진이더자세한후기블로그에보았습니다.http://blog.naver.com/texref/220628770597
관계자분들 모두 2016년에는 부자~~ 되세요~~!!',to_date('17/01/13','RR/MM/DD'),null,39,6);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (27,'잘봤습니다.','감사합니다. ',to_date('17/01/13','RR/MM/DD'),null,91,7);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (28,'박물관교실을 다녀와서...','안녕하세요? 저는 8월 6일 박물관교실을 다녀온 신민서입니다. 정말 열심히 경제교육도 듣고 신청서도 썼는데 다행히 참여하게 되어 너무도 좋았습니다. 저희 언니도 2011년도(초등학교 5학년) 여름방학때 참여했습니다. 언니의 자랑이 너무 심해서(특히 점심먹었던곳) 무척 샘이 났었는데 저도 가보니 정말 좋았습니다. 엄마가 회사에 가셔서 할머니랑 가야해서 조금 심통이 났지만 퀴즈대회에서 1등도 하여 선물도 받고 또 할머니가 집에 와서 치킨도 시켜 주셨습니다. 저에게 아직은 어려운 경제교육이었지만 4학년끼리 하니까 그래도 많이 이해가 됐습니다. 언니,오빠들하고 같이 고학년수업을 하면 전 어려워서 자꾸 딴짓을 하게 되는데 여기서는 그러지않았습니다. 교육해 주신 선생님들 감사드립니다. 6학년때 또 기회가 있었으면 좋겠습니다. ',to_date('17/01/13','RR/MM/DD'),null,98,8);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (32,'좋았습니다.','재밌고 유익한 곳이었습니다 ',to_date('17/01/13','RR/MM/DD'),null,43,12);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (33,'어린이 박물관 교실 참가후기!!','안녕하세요 저는 어린이 박물관 교실 참가한 이소정이에요.
？
2014년 1월 16일 목요일에 어린이 박물관에갔어요.
제가 가서 직접 보고 느끼는 시간이 정말 뜻깊었어요.？
옛날에는 무엇을 돈으로 썼는지, 옛날 화폐는 어떻게 생겼는지 알게 되었어요.
저는 가기 전에 무조건 돈이 생김 어디다 쓰지? 라고 생각했는데 가서 배우니
1년에 새 돈을 만드는데 1,500억 이상이 필요하다고 해서 돈을 깨끗하게 찢어지지 않게 하력 노력하고 있어요.
또, 이제는돈을 어디다 쓸까? 라고 생각하지 않고 어떻게 하면 돈을 쓰는걸 어떻게하면 줄일 수 있을까?라고 생각해요.
그리고 위조지폐를 식별하는 방법을 배우고 나니 너무 신기했어요.
볼록인쇄, 가로확대형 기번호, 띠형 홀로그램, 입체형 부분노출은선, 앞뒷면맞춤, 미세문자, 숨은 은선, 숨은그림, 요판잠상 등이 있다는것이 너무 신비로웠어요.
앞으로도 돈을 깨끗하게 소중하게 다루도록 노력할게요~~^^
',to_date('17/01/13','RR/MM/DD'),null,29,15);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (36,'재미있는 한국 은행 화폐박물관','오늘 한국은행 화폐박물관을 갔다 왔습니다. 거의 모든 박물관은 지루하고 박물관을 갈때 마다 재미가 없었는데, 오늘 화폐박물관에 갔다 오니까 돈의 가치도 알고 정말 재미있었습니다.
지금까지 이렇게 재미있고 내 머리에 쏙쏙 들어오는 박물관은 이곳 처음이였습니다.
여러곳을 돌아다녔지만 다리가 아픈 줄도 모르고, 노트에 적으며 돌아 다녔습니다.
2번째 가고 선생님 설명을 들으니까, 시간 가는 줄도 모르고, 내가 모르던 화폐 지식들을 알게 되어서 성취감을 느꼈습니다. 다음에 또와서 또 보면 좋겠고, 이 강의를 또 들어서 친구들에게 추천도 해주고 내가 배운 지식들을 모두 친구들에게 알려 주고 싶습니다. 비록 선물은 못받아도 한국은행 화폐박물관을 추천합니다!
',to_date('17/01/13','RR/MM/DD'),null,3,19);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (38,'좋은 시간이 되었습니다.','지난 주말 지인 자녀의 결혼식이 있어 한국은행을 방문하였습니다
조금 일찍 도착하게 되어 박물관을 관람하였고, 마침 갤러리에서 기획전이 개최된다하여 반가운 마음에 갤러리를 찾았습니다
전시를 둘러보고 돌아서려는데 전시설명을 한다해서 설명을 잘 들었습니다.
아는만큼 보인다고 하더니 설명을 듣고 보니 더 새로워보이고 작품도 좋아보이더군요
월 한차례 개최된다하던데 결혼식 등 행사가 있을땐 이렇게 프로그램을 병행해도 좋겠다는 생각이 들더군요.
암튼 좋은 전시 잘봤고, 설명도 잘 들었습니다
감사합니다',to_date('17/01/13','RR/MM/DD'),null,36,21);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (39,'어린이박물관교실 방문후기','이박물관교실이 있어서 아침일찍서둘러 한국은행으로왔다
넘 일찍와서 밖에서 기다리는데 옆에 벤치가이서서 다행 10  드디어 문이 열렸다
아이는 박물관교실로 들어가고 엄만 남대문시장을 돌고 1시30분부터 학부모교실이  있다해서 시간은 좀 늦었지 만 부리나케 들어갔다
학예사님이 겸재정선의 진경산수화와 김홍도의 풍혹화등등의 설명을 하고 계셨다
몰랐던 사실들을 알게되어 뜻깊은 시간이 되었다
이렇게 학부모 교육이 함께하니 아이에게도 엄마에게도 좋은 시간이독었다
5학년이 우리아이는 처음이자 마지막이 되었지만 덧많은프로그램과 더많은 아이들에게 기회가 될수 있도록 혹수를 늘려주면 더 좋을듯하다
좋은시긴 만들어주신 한국은행관계자분들과 학예사님께 진심으로 감사드립니다
',to_date('17/01/13','RR/MM/DD'),null,41,22);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (40,'++경제교실 신청이 3일쨰 안되고 있어요++','5일부터 신청이라 아침부터 저녁까지
홈피가 계속 에러 나서 전화했더니
방문자가 많아 복구 중에 있다는 답변을 들었습니다.
지금 3일쨰인데 아직까지 똑같네요.
신청을 하려고 하는 사람이 많은 건 알겠지만
3일쨰 컴퓨터를 붙잡고 있자니 화가 나서
글을 씁니다.
언제쯤 가능할까요?
',to_date('17/01/13','RR/MM/DD'),null,47,23);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (41,'돈이란?????','처음  한국은행  박물관을다녀왔다
잠깐  경제수업을 들었느데...
돈이란????
한번도 생각해보질 않았는데
돈이-가치를  평가하는  기준도물물교환의  수단도  된다고배우고왔다
매우유익한  시간이였다
',to_date('17/01/13','RR/MM/DD'),null,71,24);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (42,'화폐박물관을 다녀와서','멋진 곳을 발견해서 행복했습니다.
다시 찾아 오고 싶네요
',to_date('17/01/13','RR/MM/DD'),null,26,25);
Insert into URANOS.REVIEW (RW_NUM,RW_TITLE,RW_CONTENT,RW_DAY,RW_FILE,RW_COUNT,M_NUM) values (43,'박물관을 다녀오고 난뒤.....','저는 얼마전 역사기행 수업으로 화폐박물관에 다녀오게 되었습니다. 처음에 화폐박물관을 본 순간 정말 놀랐습니다.건물도 크고 멋지고...... 그리고 책갈피도 만들고....
많은 화폐들도 보고,게임도 해보고..정말 좋은 경험이었습니다. 기회가 된다면 다음에 또 가보고 싶습니다.
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
