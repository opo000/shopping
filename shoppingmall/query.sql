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
����(HA)
�����(JN)
�Ͱ���(JE)
����(JA)
����(JR)
����(BA)
�ð�(SC)
��Ʈ(SB)
������(SH)
��Ÿ(SO)
�Ź�(FW)
-----------
g_style
������(B)
���Ÿ�(L)
�θ�ƽ(R)
����Ƽ(P)
ĳ���(C)
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

insert into tblUser values('tiger', '�Ӳ���', '1111', '111-111', '����� ���α�', 'tiger@anonymous.net', '����', '010-111-1111', '1960-01-31');
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
 	o_num		NUMBER			CONSTRAINT pk_onum PRIMARY KEY,		-- �ֹ���ȣ
 	o_code		VARCHAR2(10),										-- ��ǰ�ڵ�(tblGoods ����)
 	o_quantity	NUMBER,												-- �ֹ�����
 	o_date		VARCHAR2(50),										-- �ֹ���¥
 	o_state		VARCHAR2(10),										-- �ֹ�����
 	o_id		VARCHAR2(20),										-- �ֹ��� ȸ�����̵�(tblUser ����)
 	-- ���⼭���ʹ� �ڵ带 �ۼ��ϸ鼭 �ʿ信 ���� �ۼ��ϰԵ� �ʵ�
 	o_price		NUMBER,												-- �Ǹ� ����
 	o_name		VARCHAR2(50)										-- ��ǰ��
 );
 
-- �ֹ� ���� : 1-������, 2-����, 3-�Ա�Ȯ��, 4-����غ�, 5-�����, 6-�Ϸ�
 
CREATE SEQUENCE seq_order;
 
CREATE TABLE tblAdmin(
 	a_id	VARCHAR2(20)	CONSTRAINT pk_aid PRIMARY KEY,
 	a_pw	VARCHAR2(20)
);
 
insert into tblAdmin values('admin', '1111');