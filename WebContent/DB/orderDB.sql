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

--오더 디테일
CREATE TABLE ORDERS_DETAIL(
    odID NUMBER(10) PRIMARY KEY, --오더상세아이디
    oID NUMBER(10), --주문아이디(번호)
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

--테이블 여러개 사용 - 주문아이디(맴버아이디), 제품이름 가져오기
SELECT od.odID, o.mID, p.pNAME, od.odSIZE, od.odQTY
FROM ORDERS_DETAIL od, ORDERS o, PRODUCT p
WHERE od.oID = o.oID AND od.pID = p.pID
ORDER BY od.odID DESC

select * from ORDERS_DETAIL;

select * from ORDERS

delete from ORDERS where oid = 8;

SELECT *
FROM ORDERS
WHERE mID = 'c'











SELECT od.odID, o.mID, p.pID, p.pNAME, p.pIMAGE1, od.odSIZE, od.odQTY
FROM ORDERS_DETAIL od, ORDERS o, PRODUCT p
WHERE od.oID = 6 AND o.mID = 'admin' AND od.pID = p.pID 
ORDER BY od.odID DESC