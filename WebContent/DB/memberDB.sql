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

INSERT INTO MEMBER(mID, mPW, mNAME, mPHONE) 
VALUES ('c', 'c', 'c', '010-cccc-cccc');


select * from MEMBER;
--회원탈퇴 복구
UPDATE MEMBER 
SET mDROP=0
WHERE mID='c'

UPDATE MEMBER 
SET mADMIN=1
WHERE mID='admin'


SELECT * FROM MEMBER WHERE MID='admin' AND MPW=2