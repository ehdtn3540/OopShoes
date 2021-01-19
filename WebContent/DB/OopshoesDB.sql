-- memberDB ---------------------------------------------------------------------------
select * from tab;
select * from MEMBER;

drop table member;

CREATE TABLE MEMBER(
    mID VARCHAR2(500) PRIMARY KEY, --고객아이디
    mPW VARCHAR2(15), --비밀번호
    mNAME VARCHAR2(100), --이름
    mADDRESS VARCHAR2(500) DEFAULT '없음', --주소
    mPOST VARCHAR2(10) DEFAULT '없음', --우편번호
    mPHONE VARCHAR2(300), --핸드폰번호
    mRDATE DATE DEFAULT SYSDATE, --가입일
    --mBIRTH DATE, --생일
    --mAGREE NUMBER(1), --약관동의여부
    --mLEVEL NUMBER(1) DEFAULT 1, -- 고객등급
    --mBUY NUMBER(3) DEFAULT 0, --누적구매수
    mDROP NUMBER(1) DEFAULT 0, --탈퇴여부
    mADMIN NUMBER(1) DEFAULT 0 --관리자여부
);

DELETE MEMBER WHERE mID='aaa';

INSERT INTO MEMBER(mID, mPW, mNAME, mPHONE, mADMIN) 
VALUES ('admin', '1', '관리자', '010-aaaa-aaaa', 1);
INSERT INTO MEMBER(mID, mPW, mNAME, mPHONE) 
VALUES ('aaa', 'aaa', '홍길동', '010-1111-1111');
INSERT INTO MEMBER(mID, mPW, mNAME, mPHONE) 
VALUES ('bbb', 'bbb', '김철수', '010-2222-2222');
INSERT INTO MEMBER(mID, mPW, mNAME, mPHONE) 
VALUES ('ccc', 'ccc', '김하늘', '010-3333-3333');
INSERT INTO MEMBER(mID, mPW, mNAME, mPHONE) 
VALUES ('ddd', 'ddd', '장호구', '010-4444-4444');
INSERT INTO MEMBER(mID, mPW, mNAME, mPHONE) 
VALUES ('eee', 'eee', '최철호', '010-5555-5555');

-- orderDB --------------------------------------------------------------------------------
drop table ORDERS;
drop sequence seq_ord;

--주문관리(주문상세)
CREATE TABLE ORDERS(
    oID NUMBER(10) PRIMARY KEY, --주문아이디(번호)
    mID VARCHAR2(500) NOT NULL, --고객아이디
    --cID NUMBER(4) REFERENCES coupon(cID), --쿠폰아이디
    oRDATE DATE DEFAULT SYSDATE, --주문일
    oNAME VARCHAR2(100), --수령자
    oPHONE VARCHAR2(300), --수령자연락처
    oADDRESS VARCHAR2(500), --수령지주소
    oPOST VARCHAR2(10), --수령지우편번호
    oAMOUNT NUMBER(12), --오더총금액
    oPAYMENT NUMBER(1), --결제수단(1:현금, 2:카드, 3:카카오페이)
    oINVOICE NUMBER(10), --송장번호
    oDELIVERY NUMBER(1) --배송비(0:무료, 1:일반, 2:특수)
);

create sequence seq_ord  nocache nocycle;

INSERT INTO ORDERS(oID, mID, oNAME, oPHONE, oADDRESS, oPOST, oAMOUNT, oPAYMENT, oINVOICE, oDELIVERY) 
VALUES (seq_ord.nextval, 'a', '김철수', '010-1111-1111', '충청도', '172-45', 125000, 1, 4243, 0);
INSERT INTO ORDERS(oID, mID, oNAME, oPHONE, oADDRESS, oPOST, oAMOUNT, oPAYMENT, oINVOICE, oDELIVERY) 
VALUES (seq_ord.nextval, 'b', '2김철수', '010-2222-2222', '충청도', '72-48', 88000, 1, 4243, 0);
INSERT INTO ORDERS(oID, mID, oNAME, oPHONE, oADDRESS, oPOST, oAMOUNT, oPAYMENT, oINVOICE, oDELIVERY) 
VALUES (seq_ord.nextval, 'c', '3김철수', '010-3333-3333', '서울', '12-25', 355000, 1, 4243, 0);
INSERT INTO ORDERS(oID, mID, oNAME, oPHONE, oADDRESS, oPOST, oAMOUNT, oPAYMENT, oINVOICE, oDELIVERY) 
VALUES (seq_ord.nextval, 'c', '3김철수', '010-3333-3333', '서울', '12-25', 355000, 1, 4243, 0);
INSERT INTO ORDERS(oID, mID, oNAME, oPHONE, oADDRESS, oPOST, oAMOUNT, oPAYMENT, oINVOICE, oDELIVERY) 
VALUES (seq_ord.nextval, 'd', '4김철수', '010-4444-4444', '부산', '17-34', 25000, 1, 4243, 0);
INSERT INTO ORDERS(oID, mID, oNAME, oPHONE, oADDRESS, oPOST, oAMOUNT, oPAYMENT, oINVOICE, oDELIVERY) 
VALUES (seq_ord.nextval, 'e', '5김철수', '010-5555-5555', '강원도', '172-47', 125000, 1, 4243, 0);

--admin계정 주문정보(시퀀스6)
INSERT INTO ORDERS(oID, mID, oNAME, oPHONE, oADDRESS, oPOST, oAMOUNT, oPAYMENT, oINVOICE, oDELIVERY) 
VALUES (seq_ord.nextval, 'admin', '관리자', '010-admin-admin', '서울', '112-17', 253000, 1, 4243, 0);

select * from ORDERS

drop table ORDERS_DETAIL;
drop sequence seq_ordd;

--오더 디테일
CREATE TABLE ORDERS_DETAIL(
    odID NUMBER(10) PRIMARY KEY, --오더상세아이디
    oID NUMBER(10), --오더아이디
    pID NUMBER(4), --상품아이디
    odSIZE NUMBER(10), --상품사이즈
    odQTY NUMBER(3) --상품구매수량
);

create sequence seq_ordd  nocache nocycle;

INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 1, 2, 275, 2);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 2, 3, 250, 1);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 3, 5, 225, 1);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 3, 7, 280, 1);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 3, 3, 250, 3);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 3, 1, 245, 5);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 3, 2, 270, 3);

--admin계정 주문리스트 추가(기본데이터)
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 6, 1, 270, 2);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 6, 2, 275, 1);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 6, 3, 280, 2);
INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
VALUES (seq_ordd.nextval, 6, 4, 250, 1);

--테이블 여러개 사용 - 주문아이디(맴버아이디), 제품이름 가져오기
SELECT od.odID, o.mID, p.pNAME, od.odSIZE, od.odQTY
FROM ORDERS_DETAIL od, ORDERS o, PRODUCT p
WHERE od.oID = o.oID AND od.pID = p.pID
ORDER BY od.odID DESC

select * from ORDERS_DETAIL;

select * from ORDERS

SELECT *
FROM ORDERS
WHERE mID = 'c'

-- CartDB -----------------------------------------------------------------------------------------------------
select * from tab;
select * from cart;
drop table cart;

CREATE TABLE CART(
    cID NUMBER(10) PRIMARY KEY, --카트 넘버
    mID VARCHAR2(500) NOT NULL, --주문자
    pID NUMBER(4), --상품id
    pIMAGE1 VARCHAR2(4000), --이미지1
    pName VARCHAR2(100), --상품이름
    pPRICE NUMBER(10), --상품가격
    odSIZE NUMBER(10), --주문 사이즈   
   	odQTY NUMBER(3) DEFAULT 0, --주문수량
   	pDISCOUNT NUMBER(3) DEFAULT 0 --할인율
);

create sequence seq_cart nocache nocycle;
drop sequence seq_cart;

insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'aaa', 123,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CW7645-003/a430edfd-86a7-4d16-be67-5b5f012e1a6b_primary.jpg?gallery', '챌린저OG',109000, 280, 1);
insert into cart( cID, mID , pID,pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'aaa', 789,'https://static-breeze.nike.co.kr/kr/launch/cmsstatic/product/DA9784-001/3af7d41c-5434-4016-968b-4fae9c9c709c_primary.jpg?gallery', '오버브레이크',169000, 275, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'aaa', 54,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CQ9381-101/5d4d6fd5-b73e-47d7-bfbd-a8a35724ac9c_primary.jpg?gallery', '르브론 위트니스 5EP',119000, 260, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'a', 12,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/553558-130/d956bfe7-2d9b-4401-9df8-174e1f688e9d_first.jpg?gallery', '에어 조던 1 로우',119000, 260, 1);
insert into cart( cID, mID , pID,pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'b', 789,'https://static-breeze.nike.co.kr/kr/launch/cmsstatic/product/DA9784-001/3af7d41c-5434-4016-968b-4fae9c9c709c_primary.jpg?gallery', '오버브레이크',169000, 275, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'c', 54,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CQ9381-101/5d4d6fd5-b73e-47d7-bfbd-a8a35724ac9c_primary.jpg?gallery', '르브론 위트니스 5EP',119000, 260, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'd', 12,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/553558-130/d956bfe7-2d9b-4401-9df8-174e1f688e9d_first.jpg?gallery', '에어 조던 1 로우',119000, 260, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'e', 3,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/DB9990-100/8acf1503-df0b-4b83-8a14-ccece344f6e1_primary.jpg?gallery', '에어 줌 BB넥스트',219000, 260, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'y', 98,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CQ9283-001/5e363f8b-4dc0-42f4-bdc2-759754202e6c_primary.jpg?browse', '르브론 18',109000, 270, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'z', 43,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CI9949-006/a5505321-b8cd-46b8-be6d-5d1cbcc5ab5a_primary.jpg?gallery', 'KD13 EP',179000, 260, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'f', 98,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CQ9283-001/5e363f8b-4dc0-42f4-bdc2-759754202e6c_primary.jpg?browse', '르브론 18',109000, 270, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'f', 43,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CI9949-006/a5505321-b8cd-46b8-be6d-5d1cbcc5ab5a_primary.jpg?gallery', 'KD13 EP',179000, 260, 1);

insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'admin', 98,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CQ9283-001/5e363f8b-4dc0-42f4-bdc2-759754202e6c_primary.jpg?browse', '르브론 18',109000, 270, 1);
insert into cart( cID, mID , pID, pIMAGE1,  pName , pPRICE, odSIZE, odQTY)
values(seq_cart.nextval, 'admin', 43,'https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/CI9949-006/a5505321-b8cd-46b8-be6d-5d1cbcc5ab5a_primary.jpg?gallery', 'KD13 EP',179000, 260, 1);

-- PayDB -------------------------------------------------------
--(Pay DB는 따로 존재하지 않고 ORDERS/ORDERS_DETAIL을 사용합니다/ 해당 작업에 필요한 쿼리만 모아놓았습니다)-----------
select * from ORDERS_DETAIL;
select * from ORDERS;
drop table ORDERS_DETAIL;
drop table ORDERS;
drop sequence seq_ord;
drop sequence seq_ordd;

select *
from cart
join orders
on cart.mid like orders.mid;

INSERT INTO ORDERS_DETAIL(odID, oID, pID, odSIZE, odQTY) 
SELECT seq_ordd.nextval, oID, pID, odSIZE, odQTY
	FROM CART
	JOIN ORDERS
	ON CART.mID LIKE ORDERS.mID
	AND CART.mID LIKE 'c';

-- productDB -----------------------------------------------------------------------------------------------------
select * from tab;
select * from product;
drop table product;

SELECT * FROM PRODUCT ORDER BY PID DESC

--상품 등록
CREATE TABLE PRODUCT(
    pID NUMBER(4) PRIMARY KEY, --상품아이디
    pNAME VARCHAR2(100), --상품이름
    pBRAND VARCHAR2(100), --브랜드
    --카테고리1
    pPRICE NUMBER(10), --가격
    pDISCOUNT NUMBER(4) DEFAULT 0, --할인율
    pSTOCK NUMBER(3), --재고
    pIMAGE1 VARCHAR2(4000), --이미지1
    pIMAGE2 VARCHAR2(4000), --이미지2
    pIMAGE3 VARCHAR2(4000), --이미지3
    pDETAIL VARCHAR2(4000), --상세설명
    pRDATE DATE DEFAULT SYSDATE, --등록일
    pSELL NUMBER(3) DEFAULT 0 --판매수량
);

SELECT * FROM PRODUCT ORDER BY pSTOCK  

SELECT * FROM PRODUCT WHERE ROWNUM <= 12 ORDER BY PRDATE DESC

SELECT * FROM PRODUCT WHERE ROWNUM <= 12 ORDER BY pSELL DESC

SELECT * FROM PRODUCT WHERE PRDATE ORDER BY PRDATE DESC
SELECT * FROM PRODUCT WHERE ROWNUM <= 10 ORDER BY PRDATE DESC
SELECT * FROM PRODUCT WHERE pDISCOUNT > 0 

     
create sequence seq_pid  nocache nocycle;
drop sequence seq_pid;


INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '데이브레이크', '나이키', 119000, 99, '576351a3-e1bb-46ba-a263-60787c3d38de_primary.jpg'
, '3868b3a5-ac3a-44f3-8121-c16a1e4ef93c_4.jpg', 'fde915ce-9185-4bcf-97ed-9a95dc7386a4_2.jpg'
, '클래식 러닝화가 실루엣 전체에 레드와 블랙의 대담한 액센트로 모던함을 입었습니다. 절제된 그레이 소재는 텍스처를 더해주는 부드러운 스웨이드와 가죽 오버레이, 
그리고 살짝 가미된 데이브레이크 오리지널 버전이 지닌 빈티지 감성과 조화를 이룹니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '르브론18', '나이키', 239000, 89, '6209f5da-e0e7-4119-896b-a9b1619da951_primary.jpg'
, '53e5d102-1579-4d4e-9292-6e98531db849_4.jpg', '72ddf113-35e2-47e2-95d3-35fba75690d3_2.jpg'
, '르브론은 코트에서 질주하며 엄청난 힘을 발휘합니다. 르브론 18은 그의 능력을 십분 활용하면서 몸이 받는 스트레스 또한 줄일 수 있도록 디자인되었습니다. 발아래의 결합된 쿠셔닝이 그 누구도 막을 수 없는 그의 폭발적인 스피드에 힘을 실어 줍니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '에어조던1로우', '나이키', 119000, 79, 'aa8425a1-5604-4594-af44-ad1fe0b3af4c_primary.jpg'
, '671f77b1-b1ee-459f-811f-1b0c0c6c9806_4.jpg', 'c83d9f81-e8e8-47d5-9d9f-5308c77cc659_2.jpg'
, '1985년에 출시된 오리지널의 감성을 이어받은 에어 조던 1 로우는 친숙하면서도 참신한 느낌의 깔끔한 클래식 룩을 선보입니다. 아이코닉한 디자인을 더해 캐주얼 모드로 완성하여, 어디에나 잘 어울리고 스타일을 완성합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '에어조던9레트로', '나이키', 229000, 69, '815a1bea-33cf-425b-9f9d-5aa98605798e_primary.jpg'
, 'd17e3ee1-a4ad-4f48-8322-7f780a711b89_4.jpg', '17f757e4-fc29-4ed6-a5f5-cf1bdc5ab78c_2.jpg'
, '1985년에 출시된 오리지널의 감성을 이어받은 에어 조던 1 로우는 친숙하면서도 참신한 느낌의 깔끔한 클래식 룩을 선보입니다. 아이코닉한 디자인을 더해 캐주얼 모드로 완성하여, 어디에나 잘 어울리고 스타일을 완성합니다.', SYSDATE);


update product set pbrand='나이키' where pbrand is null;
update product set  pIMAGE1 = '6209f5da-e0e7-4119-896b-a9b1619da951_primary.jpg' 
SELECT * FROM PRODUCT WHERE pNAME LIKE '%에어%';
-- register -----------------------------------------------------------------------------------------
select * from tab;

drop table register;

create table register(
id varchar2(20) primary key,	--Email
pass varchar2(20) not null,		--password
name varchar2(20) not null,		--name
phone varchar2(20) not null		--phone
);

insert into register(id,pass,name,phone) values('test','1111','테스트','01055556666');

select * from register;

