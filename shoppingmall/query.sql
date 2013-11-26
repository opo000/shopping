CREATE TABLE tblGoods(
    g_code			VARCHAR2(10)	CONSTRAINT pk_gcode PRIMARY KEY,
    g_name			VARCHAR2(50),
    g_part			CHAR(2),
    g_style			CHAR(1),
    g_maker			VARCHAR2(30),
    g_image1		VARCHAR2(50),
    g_image2		VARCHAR2(50),
    g_image3		VARCHAR2(50),
    g_originprice	NUMBER,
    g_sellprice		NUMBER,
    g_event			CHAR(4),
    g_updateday		VARCHAR2(50),
    g_content		VARCHAR2(4000),
    g_stock		NUMBER
);

select * from tblGoods;
delete from tblGoods;
UPDATE TBLGOODS SET g_stock=100;

/*
g_part
모자(HA)
목걸이(JN)
귀걸이(JE)
팔찌(JA)
반지(JR)
가방(BA)
시계(SC)
벨트(SB)
헤어관련(SH)
기타(SO)
신발(FW)
-----------
g_style
베이직(B)
럭셔리(L)
로맨틱(R)
프리티(P)
캐쥬얼(C)
*/

UPDATE tblGoods SET g_part = trim(g_part);
UPDATE tblGoods SET g_code = trim(g_code);



CREATE TABLE tblUser(
	u_id	VARCHAR2(20)	CONSTRAINT pk_uid PRIMARY KEY,
	u_name	VARCHAR2(20),
	u_pw	VARCHAR2(20),
	u_post	VARCHAR2(8),
	u_addr	VARCHAR2(50),
	u_email	VARCHAR2(50),
	u_job	VARCHAR2(30),
	u_tel	VARCHAR2(20),
	u_birth	Date
);

insert into tblUser values('tiger', '임꺽정', '1111', '111-111', '서울시 종로구', 'tiger@anonymous.net', '교수', '010-111-1111', '1960-01-31');
drop table tblZipAddr;
CREATE TABLE tblZipAddr(
	ZIPCODE		CHAR(7),
	SIDO		VARCHAR2(6),
 	GUGUN		VARCHAR2(30),
 	DONG		VARCHAR2(80),
 	BUNJI		VARCHAR2(20),
 	SEQ			NUMBER(5)
 );

 select count(*) from tblZipAddr;
 select * from TBLUSER;

 CREATE TABLE tblOrder(
 	o_num		NUMBER			CONSTRAINT pk_onum PRIMARY KEY,		-- 주문번호
 	o_code		VARCHAR2(10),										-- 상품코드(tblGoods 참조)
 	o_quantity	NUMBER,												-- 주문수량
 	o_date		VARCHAR2(50),										-- 주문날짜
 	o_state		VARCHAR2(10),										-- 주문상태
 	o_id		VARCHAR2(20),										-- 주문한 회원아이디(tblUser 참조)
 	-- 여기서부터는 코드를 작성하면서 필요에 의해 작성하게된 필드
 	o_price		NUMBER,												-- 판매 가격
 	o_name		VARCHAR2(50)										-- 상품명
 );
 
-- 주문 상태 : 1-접수중, 2-접수, 3-입금확인, 4-배송준비, 5-배송중, 6-완료
 
CREATE SEQUENCE seq_order;
 
CREATE TABLE tblAdmin(
 	a_id	VARCHAR2(20)	CONSTRAINT pk_aid PRIMARY KEY,
 	a_pw	VARCHAR2(20)
);
 
insert into tblAdmin values('admin', '1111');