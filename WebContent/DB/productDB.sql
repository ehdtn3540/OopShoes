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
    pDETAIL CLOB, --상세설명
    pRDATE DATE DEFAULT SYSDATE, --등록일
    pSELL NUMBER(3) DEFAULT 0 --판매수량
);
create sequence seq_pid  nocache nocycle;
drop sequence seq_pid;
--나이키--
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE) 
VALUES (seq_pid.nextval, '데이브레이크', '나이키', 119000, 99, '576351a3-e1bb-46ba-a263-60787c3d38de_primary.jpg', '3868b3a5-ac3a-44f3-8121-c16a1e4ef93c_4.jpg', 'fde915ce-9185-4bcf-97ed-9a95dc7386a4_2.jpg', '클래식 러닝화가 실루엣 전체에 레드와 블랙의 대담한 액센트로 모던함을 입었습니다. 절제된 그레이 소재는 텍스처를 더해주는 부드러운 스웨이드와 가죽 오버레이, 그리고 살짝 가미된 데이브레이크 오리지널 버전이 지닌 빈티지 감성과 조화를 이룹니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE) 
VALUES (seq_pid.nextval, '르브론 18', '나이키', 239000, 89, '6209f5da-e0e7-4119-896b-a9b1619da951_primary.jpg', '53e5d102-1579-4d4e-9292-6e98531db849_4.jpg', '72ddf113-35e2-47e2-95d3-35fba75690d3_2.jpg', '르브론은 코트에서 질주하며 엄청난 힘을 발휘합니다. 르브론 18은 그의 능력을 십분 활용하면서 몸이 받는 스트레스 또한 줄일 수 있도록 디자인되었습니다. 발아래의 결합된 쿠셔닝이 그 누구도 막을 수 없는 그의 폭발적인 스피드에 힘을 실어 줍니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '에어 조던 7 레트로GC', '나이키', 255000, 79, '82167f80-fa7d-41c7-b9a9-611a12f314ec_primary.jpg', '1dc45f41-26a8-42a6-8068-0546a2ab9262_4.jpg', 'bed28f6d-dc12-44b7-af64-e9c05c2d1552_2.jpg', '중국의 특별한 순간을 축하하는 이 에어 조던 7 레트로 버전은 프리미엄 소재를 다양하게 사용했습니다. 발아래 전체적으로 적용된 에어 쿠셔닝은 신었을 때 반응성이 좋은 착화감을 제공합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '에어 조던 9 레트로', '나이키', 229000, 69, '815a1bea-33cf-425b-9f9d-5aa98605798e_primary.jpg', 'd17e3ee1-a4ad-4f48-8322-7f780a711b89_4.jpg', 'c83d9f81-e8e8-47d5-9d9f-5308c77cc659_2.jpg', '에어 조던 9는 특유의 대담한 실루엣과 전례 없는 출시 타이밍으로 유명세를 얻은 스니커즈입니다. 처음 대중에 선보였던 건 마이클 조던이 한창 성공 가도를 달리던 시기이나, 이 클래식 레트로 버전은 마이클 조던이 코트로 다시 화려하게 컴백한 모습을 지켜보았던 이들의 마음 한구석에 특별히 자리를 잡고 있습니다. 이 에디션은 화이트 컬러에 유니버시티 블루와 블랙 액센트가 돋보이는 디자인으로 출시됩니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '에어 조던 1 미드', '나이키', 139000, 100, '59ee1395-dc0c-4378-8a02-d6d28a3f4d8b_primary.jpg', '3a1a3402-2e2f-4166-a6f0-0ca115bc5723_4.jpg', '5bb4ce19-0955-4eb3-91b8-eb9f328f12ba_2.jpg', '최초의 AJ1에서 영감을 얻어 탄생한 에어 조던 1 미드는 1985년 이후 눈부시게 발전해온 조던 브랜드의 여정을 OG 팬들에게 소개합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '에어 조던 35SH', '나이키', 229000 , 100, '50bf7f1e-7333-45e7-8a3b-7f876e9be084_primary.jpg', '07c9ee6e-4945-419a-ae7d-c0e4b7eb9879_4.jpg', '8be02264-612d-4032-9195-657b5098d2bd_2.jpg', '지금의 여성은 그 어느 때보다 스포츠에서의 내러티브를 바꿀 수 있는 힘이 있습니다. 다양한 종목의 여성 운동선수들은 계속해서 사회 변화, 개혁 및 정의를 옹호하며 다음 세대가 이어받을 청사진을 만들고 있습니다. 플랫폼에 우뚝 서서 조던 브랜드를 표현하는 놀라운 여성들은 다양한 코트나 필드에 선 어린 소녀들에게 영감을 줍니다. 스포츠 안팎에서 여성의 힘을 기리는 에어 조던 XXXV 시스터후드는 게임을 이끌어 나가는 여성 운동선수의 커뮤니티를 상징합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '나이키 블레이저 미드 77 빈티지', '나이키', 119000  , 100, '27d641b7-49fa-47f9-a171-41acd135373f_primary.jpg', '819fb01e-e81d-412f-ad95-0568fd3673b9_4.jpg', '6d60661e-5865-4d30-a39d-5181a488dce3_2.jpg', '나이키 블레이저 미드 77 빈티지는 빈티지한 중창 마감 처리로 나이키 올드 스쿨 농구화의 느낌을 살렸으며, 마치 수년간 보관해온 듯한 룩을 연출합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '나이키 에어맥스 2X', '나이키', 109000 , 100, '224a0223-d963-41f1-af0b-9a2fc317f2ad_primary.jpg', 'bb271700-0d28-4559-b8d3-1453efe3305c_4.jpg', 'd34eb087-db4c-4719-b77e-0001462178db_2.jpg', '더블 스택 에어 쿠셔닝과 오픈 윈도우 및 미니멀한 갑피가 어우러진 나이키 에어맥스 2X는 스트리트 룩에 산뜻한 통기성을 불어넣어 줍니다. 카라와 설포에 더해진 패딩으로 편안함을 선사하며 무광택과 광택 마감 처리의 조합으로 오래 기억에 남는 뛰어난 표현력으로 DIY 룩을 완성해 줍니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '카이브리드 S2EP', '나이키', 127200 , 100, 'b4066bcc-fe16-4d0b-9a8e-2ac970dc850a_primary.jpg', '4597b43c-0e8d-410f-9b8c-b3e84ee8a3a4_4.jpg', '01aa38a2-4ee5-419f-b4ab-6cf1aa5a73b2_2.jpg', '카이브리드 S2 EP가 카이리 4, 5, 6 모델의 장점만을 모아, 경계를 부수고 뛰어넘는 혁신적인 농구화로 탄생했습니다. 이 제품은 경기 내내 가볍고 안정적인 핏이 특징입니다. 또한 부드러운 미드솔과, 카이리의 경기에 최적화된 줌 에어 유닛으로 민첩한 선수들이 반응성 뛰어난 플레이를 펼칠 수 있도록 지원합니다. 이번 EP 버전은 내구성이 탁월한 아웃솔을 특징으로 하여 야외 코트에 최적화되었습니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '르브론 17 "Fire Red"', '나이키', 228700 , 100, '50849168-8ebc-48ba-b2bd-9a0ebcfd8879_primary.jpg', '066691e3-43b0-4a53-8bb0-77028819290a_4.jpg', '9689811d-4dd6-4c64-92fb-657a699cf008_2.jpg', '르브론 17 FP 라인업은 르브론의 힘, 스피드와 함께 안정성과 지지력으로 코트를 장악하도록 돕습니다. 니트와 열 몰드 원사 소재의 조합으로 가볍고 우수한 내구성이 특징입니다. 결합된 쿠셔닝은 르브론이 긴 시즌 동안 파워를 발휘할 수 있도록 충격을 흡수해주고 반응성 있게 에너지를 반환해줍니다. FP 버전은 나이키 폼포짓 시리즈에서 영감을 받아 탄생했습니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '나이키 데이브레이크', '나이키', 119000  , 100, '989dec0a-0756-4aff-b1fa-2409388f69e2_primary.jpg', 'd9ff4a44-6a75-4d44-938b-b03f3e02a1a8_4.jpg', '0f189e6b-3ab0-4a9e-a597-35e72709d5cc_2.jpg', '1979년에 출시되었던 나이키 데이브레이크가 화려했던 과거를 재현합니다. 예전과 같은 고무 와플 밑창과 나일론 갑피로 진정한 빈티지 스타일을 즐겨보세요.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '나이키 에어맥스 2090 비트루', '나이키', 125300 , 100, 'acea65fa-7ec7-4e4d-b1e4-1a2d6674fb40_primary.jpg', 'daa5918a-97a1-4d95-a5cd-8f08c04cb81b_4.jpg', 'd5919195-cd15-4236-9811-2864a08db4bd_2.jpg', '나이키 에어맥스 2090 BETRUE와 함께 미래를 향해 나아가세요. 아이코닉한 에어맥스 90에서 영감을 얻은 대담하고 새로운 룩이 특징입니다. 성소수자 커뮤니티를 기념하는 가벼운 갑피에는 반투명 패브릭이 적용되어 있어, 안쪽에 자리한 프라이드(Pride) 컬러의 강렬한 감각을 드러냅니다. 비대칭 디자인, 장식 스티치, 시스루 TPU 힐 클립이 멋스럽고 모던한 스타일을 더하며, 매우 부드러운 나이키 에어가 당신의 여정을 부드럽게 지원합니다.', SYSDATE);

--리복--
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '직 키네티카 엣지', '리복', 149000 , 100, 'FX9664-01-08_320X320.jpg', 'FX9663-02-02_500X500.jpg', 'FX9663-02-05_500X500.jpg', '넘치는 자신감, 누구도 가지 않은 길을 선택하다. 트레일에서 영감을 받은 제품으로 언제 어디서나 완벽히 준비된 리복 스니커즈입니다. 러기그 디자인에 직물 갑피와 접지력이 뛰어난 러그 아웃솔을 적용했습니다. 플롯라이드 퓨얼 미드솔이 최상의 쿠션감을 선사하며 부드럽고 뛰어난 반응성의 폼을 감싸는 지그 에너지 쉘이 끊임 없는 안정감과 서포트를 제공합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '리복 로얄 브릿지', '리복', 63200 , 100, 'G57651-01-08_320X320.jpg', 'G57651-02-02_500X500.jpg', 'G57651-02-05_500X500.jpg', '레트로 느낌의 캐주얼한 편안함. 90년대 패브에서 영감을 얻은 이 신발은 가볍고 통기성이 좋아서 하루 종일 신을 수 있습니다. 올드스쿨 리복 스타일 직물 갑피는 레이어드 룩과 미들솔 브리지에 톡톡 튀는 컬러가 특징입니다. Ghillie 레이싱은 이 슈즈에 세련된 분위기를 더해줍니다. 플러시 폼 삭라이너와 쿠션으로 된 미들솔이 편안한 착용감을 제공합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '직 키네티카', '리복', 83400 , 100, 'FW5288-01-08_320X320.jpg', 'FW5288-02-02_500X500.jpg', 'FW5288-02-05_500X500.jpg', 'Zig Kinetic는 에너지를 비주얼로 표현한 컨셉에서 영감을 받았습니다. 폭발적 컬러로 매력을 배가합니다. 다양한 컬러를 배합한 디자인으로 지그재그 형태의 반투명 미드솔은 파격적이고 과감한 스타일을 연출합니다. 혁신적 기술력의 쿠셔닝으로 스프링처럼 탄력적인 반응성과 에너지 리턴을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '엘렉트로 3D LT', '리복', 89000 , 100, 'EG6304-01-08_320X320.jpg', 'EG6304-02-02_500X500.jpg', 'EG6304-02-05_500X500.jpg', '새롭게 태어난 90년대의 프로그레시브 러닝 스타일. 유선형 실루엣으로 오리지널 모델을 재해석한 미래적 감성의 여성 스니커입니다. 레이어링 형태의 갑피에 밝은 컬러를 더했습니다. 미드솔의 초경량 3D 폼이 편안한 착용감과 매끈한 룩을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '클래식 레더 레거시', '리복', 62300 , 100, 'FY7460-01-08_320X320.jpg', 'FY7460-02-02_500X500.jpg', 'FY7460-02-05_500X500.jpg', '이 신발은 80년대 러닝 스타일에서 영감을 얻어 제작되었습니다. 스플래터 효과 프린트의 기하학적인 미드솔은 강렬한 느낌을 선사합니다. 메쉬 모양의 아웃솔이 시그니처 스타일을 연출합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '리복 레거시 83', '리복', 99000 , 100, 'FY7322-01-08_320X320.jpg', 'FY7322-02-02_500X500.jpg', 'FY7322-02-05_500X500.jpg', '올드 스쿨과 뉴 스쿨의 만남. 지금 이 순간에 충실한 러닝 스타일의 리복 Legacy 83이 여성을 위해 새롭게 돌아왔습니다. 미드솔의 핀스트라이프 디테일로 현재 진형형인 레전드 모델을 새롭게 재해석합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '샤크노시스', '리복', 159000 , 100, 'EF3069-01-08_320X320.jpg', 'FV9284-02-02_500X500.jpg', 'FV9284-02-05_500X500.jpg', '90년대 바스켓볼의 귀환. 96년 발매된 샤킬 오닐의 시그니처 농구화에서 영감을 받은 미드컷 스니커즈로 가죽과 누벅 갑피 부분의 컬러웨이를 뒤집은 새로운 룩을 선보입니다. 가벼운 헥사라이트 쿠셔닝으로 하루 종일 편안합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Opening Ceremony 인스타펌프 퓨리 OG', '리복', 219000 , 100, 'FW2475-01-08_320X320.jpg', 'FW2475-02-02_500X500.jpg', 'FW2475-02-05_500X500.jpg', '패션브랜드 오프닝 세레모니와의 콜라보레이션. 보는 순간 러닝을 연상시키는 InstaPump Fury OG 슈즈가 현대적 감각의 스트릿 아이템으로 재탄생합니다. 강력한 탄성의 발수 나일론 갑피, 노출된 에어 펌프가 시대를 앞서는 룩을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'BBC 아이스크림 퀘스천 로우', '리복', 139000 , 100, 'FZ4341-01-08_320X320.jpg', 'FZ4341-02-02_500X500.jpg', 'FZ4341-02-05_500X500.jpg', '하이엔드 스트릿 웨어 브랜드, 빌리어네어 보이즈 클럽(Bilionaire Boys Club)과 리복의 콜라보레이션으로 탄생한 슈즈입니다. 스트릿과 코트 어디에서나 자신감 넘치는 Question Low 슈즈로, 앨런 아이버슨 컬렉션 스니커즈로 풀 그레인 가죽 갑피의 그래픽이 돋보이는 남성용 로우탑입니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '퀘스천 로우', '리복', 149000 , 100, 'FX4999-01-08_320X320.jpg', 'FX4999-02-02_500X500.jpg', 'FX4999-02-05_500X500.jpg', '스트릿과 코트 어디에서나 자신감 넘치는 Question Low 슈즈. 앨런 아이버슨 컬렉션 스니커즈로 풀 그레인 가죽 소재를 사용해 착용감이 부드럽습니다. 과감한 컬러 배치로 강렬한 애티튜드를 보여줍니다. 특유의 육각 쿠셔닝이 부드러운 착화감을 더합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'CL 레거시', '리복', 89000 , 100, 'FZ0812-01-08_320X320.jpg', 'FZ0812-02-02_500X500.jpg', 'FZ0812-02-05_500X500.jpg', '두려움은 온전히 당신의 선택이기에. Classic Leather Legacy로 당당한 스타일을 연출하세요. 그 어떤 타협도 없이, 레트로 감성과 미래적 감성을 모두 잡은 모던 스타일입니다. 톱니 형태의 엣지에 측면의 스트라이프가 리복의 뿌리를 드러냅니다. 청키 미드솔로 키와 스타일을 모두 한 단계 올려보세요. 이 정도면 완벽하죠?', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '펌프 코트 준지', '리복', 299000 , 100, 'H69059-01-08_320X320.jpg', 'H69059-02-02_500X500.jpg', 'H69059-02-05_500X500.jpg', '미래를 위한 레트로 스타일. 이 펌프 코트 슈즈는 디자이너 Juun.J와 협업하여 출시되지 않은 프로토타입에서 영감을 얻어 만들어졌습니다. 메탈릭한 마감과 프리미엄 소재가 룩을 완성시켜줍니다. 새롭게 디자인된 TPU 몰딩 피스가 Juun.J의 대표적인 스니커즈 스타일을 보여줍니다.', SYSDATE);

--반스--
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Vans x Anderson Paak Old Skool 올드스쿨', '반스', 99000 , 100, 'VN0A4U3B2TA1_VN0A4U3B2TA1_primary(4).jpg', 'VN0A4U3B2TA1_VN0A4U3B2TA1_02.jpg', 'VN0A4U3B2TA1_VN0A4U3B2TA1_05.jpg', '오, 예! 캘리포니아의 느긋한 라이프스타일의 대명사인 Vasn와 앤더슨 팩이 드디어 이번 시즌, 음악적으로 영감을 받은 풋웨어와 어패럴의 스페셜 컬렉션을 위해 협업했습니다. 캘리포니아 옥스나드의 해안가 출신인 앤디는 삶에 대한 엄청난 사랑을 모든 작품마다 불어넣는데, 이번 컬렉션에서도 물론 예외는 아닙니다. Vans x Anderson Paak Old Skool 올드스쿨은 Vans의 상징적인 사이드스트라이프 스케이트 슈즈에 질감이 살아있는 텍스타일 소재의 어퍼, 반복적인 마모를 견디도록 보강된 토캡, 안정감과 유연성을 위해 패딩 처리된 칼라 및 시그니처 고무 와플 아웃솔을 결합한 모델입니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '레트로 스포츠 스타일 36 STYLE 36', '반스', 75000 , 100, 'VN0A3DZ3VY11_VN0A3DZ3VY11_primary.jpg', 'VN0A3DZ3VY11_VN0A3DZ3VY11_02.jpg', 'VN0A3DZ3VY11_VN0A3DZ3VY11_05.jpg', '레트로 스포츠 Style 36 스타일 36은 Vans의 아이코닉한 사이드 스트라이프가 적용된 클래식 스케이트 슈즈입니다. 로우 탑 레이스업 형태로 내구성이 뛰어난 스웨이드, 캔버스 원단이 어퍼에 사용되었고, 반복적인 착용에도 견고한 형태를 유지하기 위해 토캡을 보강하였으며, 카라 부분에는 패드를 덧대 편안한 착용감을 제공합니다. Vans의 시그니처 와플솔이 적용되었습니다. (굽 높이: 3cm)', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '레오파드 Era 에라', '반스', 65000 , 100, 'VN0A5EFN5DQ1_VN0A5EFN5DQ1_primary.jpg', 'VN0A5EFN5DQ1_VN0A5EFN5DQ1_02.jpg', 'VN0A5EFN5DQ1_VN0A5EFN5DQ1_05.jpg', '레오파드 Era 에라는 가죽 소재의 남녀공용 스케이트 슈즈입니다. 에라는 스케이트보더가 스케이트를 위해 디자인한 최초의 슈즈였습니다. 1976년에 반스 #95라는 이름으로 처음 등장한 에라는 전설적인 지-보이즈(Z-Boys)를 통해 인기를 얻어 현재까지도 전 세계 스케이터, 서퍼 및 창의적인 사람들이 즐겨 신는 슈즈로 남아있습니다. 이번 시즌, 반스는 전설적인 클래식 에라의 실루엣에 현대적인 해석으로 새로운 힘을 불어넣습니다. 견고한 텍스타일 소재 어퍼, 메탈 아일렛, 지지력과 유연성을 위해 패딩 처리된 칼라, 그리고 시그니처 고무 와플 아웃솔을 적용했습니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Vans & MoMA SK8-Hi 스케이트-하이', '반스', 109000 , 100, 'VN0A4U3C22J1_VN0A4U3C22J1_primary(1).jpg', 'VN0A4U3C22J1_VN0A4U3C22J1_02.jpg', 'VN0A4U3C22J1_VN0A4U3C22J1_05.jpg', 'Vans와 뉴욕현대미술관(MoMA)이 협업하여, MoMA가 소장하고 있는 유명 아티스트의 작품을 풋웨어와 어패럴 컬렉션에 담았습니다. 뉴욕현대미술관과 Vans는 전세계적으로 창조적 자기표현과 개성을 고취하는 일에 대한 열정을 공유하고 있습니다. Vans & MoMA Sk8-Hi 스케이트-하이는 Vans의 전설적인 레이스-업 하이탑 스타일에 류보프 포포바(Lyubov Popova)의 아방가르드한 작품이 돋보이는 올오버 프린팅이 결합되었습니다. 또한, Vans & MoMA Sk8-Hi 스케이트-하이는 반복적인 마모를 견디도록 보강된 토캡과 안정감과 유연성을 위해 패딩 처리된 칼라, 시그니처 고무 와플 아웃솔이 특징입니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '퓨처 스탠다드 SK8-Hi 스케이트-하이', '반스', 95000 , 100, 'VN0A3WMB2QE1_VN0A3WMB2QE1_primary.jpg', 'VN0A3WMB2QE1_VN0A3WMB2QE1_02.jpg', 'VN0A3WMB2QE1_VN0A3WMB2QE1_05.jpg', 'Vans가 클래식 스케이트-하이 실루엣에 컴피쿠시 기술을 적용해 새로운 숨을 불어넣었습니다. 더 부드럽고 쿠션감 있는 아웃솔을 사용한 퓨처 스탠다드 SK8-Hi 스케이트-하이는 구름 위를 걷는 듯한 최상급의 핏감을 제공합니다. 신발의 전체적인 형태와 고무를 조화롭게 몰딩해 편안함과 그립력 모두를 제공하는 퓨처 스탠다드 SK8-Hi 스케이트-하이는 또한 고무 아웃솔을 사용해 훌륭한 내구성과 마찰력을 실현하며, 일체형 내부 구조에 아치형 서포트 기술을 더하고, 신발 내부 전체에 습기를 흡수하는 안감을 사용했습니다. 새롭게 구조화된 스웨이드 및 캔버스 소재의 어퍼로 설포 부분의 안정성에 집중한 퓨처 스탠다드 SK8-Hi 스케이트-하이는 Vans의 90년대 초반 스포츠 스타일의 레트로한 감각에 편안한 착화감을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'SK8-Hi 스케이트-하이 리이슈 CAP', '반스', 95000 , 100, 'VN0A3WM15FG1_VN0A3WM15FG1_primary.jpg', 'VN0A3WM15FG1_VN0A3WM15FG1_02.jpg', 'VN0A3WM15FG1_VN0A3WM15FG1_05.jpg', 'Vans가 클래식 스케이트-하이 실루엣에 컴피쿠시 기술을 적용해 새로운 숨을 불어넣었습니다. 더 부드럽고 쿠션감 있는 아웃솔을 사용한 퓨처 스탠다드 SK8-Hi 스케이트-하이는 구름 위를 걷는 듯한 최상급의 핏감을 제공합니다. 신발의 전체적인 형태와 고무를 조화롭게 몰딩해 편안함과 그립력 모두를 제공하는 퓨처 스탠다드 SK8-Hi 스케이트-하이는 또한 고무 아웃솔을 사용해 훌륭한 내구성과 마찰력을 실현하며, 일체형 내부 구조에 아치형 서포트 기술을 더하고, 신발 내부 전체에 습기를 흡수하는 안감을 사용했습니다. 새롭게 구조화된 스웨이드 및 캔버스 소재의 어퍼로 설포 부분의 안정성에 집중한 퓨처 스탠다드 SK8-Hi 스케이트-하이는 Vans의 90년대 초반 스포츠 스타일의 레트로한 감각에 편안한 착화감을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'SK8-Hi 스케이트-하이 고어-텍스', '반스', 139000 , 100, 'VN0A4VJD23G1_VN0A4VJD23G1_primary.jpg', 'VN0A4VJD23G1_VN0A4VJD23G1_02.jpg', 'VN0A4VJD23G1_VN0A4VJD23G1_07.jpg', '고어-텍스(Gore-Tex®)는 가혹한 기상 환경에서 보호 성능과 편안함을 극대화한 제품을 개발하기 위해 노력합니다. 고어-텍스® 패브릭으로 설계한 제품은 가혹한 환경으로부터 착용자를 보호하여 뛰어난 성능, 내구성, 통기성 및 방수성을 보장합니다. 고어-텍스®와 스웨이드 소재의 어퍼를 적용한 SK8-Hi 스케이트-하이 고어-텍스는 반복적인 마모를 견디기 위한 강화 토캡, 지지력과 유연성을 제공하는 패딩 처리된 칼라, 그리고 Vans의 시그니처 고무 와플 아웃솔을 적용했습니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Vans x Anderson Paak Old Skool 올드스쿨', '반스', 99000 , 100, 'VN0A4U3B2N91_VN0A4U3B2N91_primary.jpg', 'VN0A4U3B2N91_VN0A4U3B2N91_hover.jpg', 'VN0A4U3B2N91_VN0A4U3B2N91_05.jpg', '오, 예! 캘리포니아의 느긋한 라이프스타일의 대명사인 Vasn와 앤더슨 팩이 드디어 이번 시즌, 음악적으로 영감을 받은 풋웨어와 어패럴의 스페셜 컬렉션을 위해 협업했습니다. 캘리포니아 옥스나드의 해안가 출신인 앤디는 삶에 대한 엄청난 사랑을 모든 작품마다 불어넣는데, 이번 컬렉션에서도 물론 예외는 아닙니다. Vans x Anderson Paak Old Skool 올드스쿨은 Vans의 상징적인 사이드스트라이프 스케이트 슈즈에 질감이 살아있는 텍스타일 소재의 어퍼, 반복적인 마모를 견디도록 보강된 토캡, 안정감과 유연성을 위해 패딩 처리된 칼라 및 시그니처 고무 와플 아웃솔을 결합한 모델입니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '스웨이드 볼드 엔아이', '반스', 79000 , 100, 'VN0A3WLPEMI1_VN0A3WLPEMI1_primary(4).jpg', 'VN0A3WLPEMI1_VN0A3WLPEMI1_02.jpg', 'VN0A3WLPEMI1_VN0A3WLPEMI1_05.jpg', '현대적인 감각으로 새롭게 선보이는 스타일, 볼드 엔아이 Bold Ni 입니다. 업그레이드된 폭싱 테이프와 스웨이드 업퍼에 빈티지한 감성을 담은 볼드 엔아이는, 슬림하게 디자인된 T자 형태의 토 쉐이프 디자인, 업퍼와 대비되는 색상의 개성있는 스티칭, 텅 부분의 라벨을 과감하게 없앤 것이 특징입니다. 또한, 삭스라이너의 울트라쿠시 UltraCush 라이트를 적용하여, 더욱 편안한 착용감을 제공합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '애너하임 Old Skool 올드스쿨 36 DX', '반스', 95000 , 100, 'VN0A38G2U8R1_VN0A38G2U8R1_primary(4).jpg', 'VN0A38G2U8R1_VN0A38G2U8R1_02.jpg', 'VN0A38G2U8R1_VN0A38G2U8R1_05.jpg', '애너하임 Old Skool 올드스쿨 36 DX는 캘리포니아주 애너하임 지역에 위치한 Vans의 첫 번째 공장을 기념하기 위해 만든 모델입니다. 오리지널 올드스쿨의 디테일을 계승하는 동시에 업그레이드된 OrthoLite® 삭라이너 기술력으로 모던하고 편안한 착용감을 더했습니다. 애너하임 Old Skool 올드스쿨 36 DX는 오리지널 스타일 넘버와 컬러 팔레트 또는 기존에 사용된 프린트와 같은 초창기에 선보였던 오리지널 디테일, 높고 은은한 광택이 매력적인 폭싱 테이프, 면 소재 레이스, 오리지널 드릴 라이닝 웨이트, 스웨이드 및 텍스타일 소재의 어퍼 등을 적용하여 룩을 완성했습니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'SK8-Hi 스케이트-하이 리이슈 CAP', '반스', 95000 , 100, 'VN0A3WM16BT1_VN0A3WM16BT1_primary.jpg', 'VN0A3WM16BT1_VN0A3WM16BT1_03.jpg', 'VN0A3WM16BT1_VN0A3WM16BT1_05.jpg', 'DIY와 컷 앤 페이스트 방식(Cut-and-Paste: 이미지들을 자르고 결합하여 새로운 이미지를 창조하는 방식)으로 평범함의 경계를 넘어선 컷 앤 페이스트 컬렉션입니다. 컷 앤 페이스트 SK8-Hi 스케이트-하이 리이슈는 Vans의 가장 사랑받는 실루엣 중 하나이자 전설적인 하이 탑 실루엣에서 영감을 받은, 스케이트-하이 SK8-Hi 에 다양한 소재와 반스의 아이코닉한 체커보드 패턴, 그리고 스티치를 붙여넣었습니다. 사이드에는 지퍼를 더했으며, 어퍼는 스웨이드와 캔버스 피스를 활용하여 인사이드-아웃(inside-out) 느낌을 살렸습니다. 패드에는 카라를 덧대어 편안한 착용감을 제공합니다. Vans의 시그니처 와플 아웃솔이 적용되었습니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '애너하임 체커 콤보 SK8-Hi 스케이트-하이 38 DX', '반스', 99000 , 100, 'VN0A38GF2U71_VN0A38GF2U71_primary.jpg', 'VN0A38GF2U71_VN0A38GF2U71_02.jpg', 'VN0A38GF2U71_VN0A38GF2U71_05.jpg', '애너하임 체커 콤보 SK8-Hi 스케이트-하이 38 DX는 캘리포니아주 애너하임 지역에 위치한 Vans의 첫 번째 공장을 기념하기 위한 제품으로, 오리지널 Sk8-Hi 스케이트-하이의 디테일에 업그레이드된 오솔라이트(Ortholite®) 삭라이너 기술로 현대적인 착화감을 더했습니다. 애너하임 체커 콤보 SK8-Hi 스케이트-하이 38 DX는 오리지널 스타일 넘버와 컬러감이나 프린팅, 높고 은은한 광택이 돋보이는 폭싱 테이프, 면 소재의 신발끈, 오리지널 드릴 라이닝 웨이트, 스웨이드 및 섬유 소재의 어퍼로 룩을 완성합니다.', SYSDATE);

--아디다스--
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Y-3 시쿠 런', '아디다스', 549000 , 100, 'FX1414-01-01_320X320.jpg', 'FX1414-02-02_720X720.jpg', 'FX1414-02-05_720X720.jpg', '아디다스의 대담한 정체성을 담아낸 Y-3 슈즈를 만나보세요.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '슈퍼스타 W', '아디다스', 109000 , 100, 'FW3694-01-01_320X320.jpg', 'FW3694-02-02_720X720.jpg', 'FW3694-02-05_720X720.jpg', '한 가지로 정의할 수 없는 아이콘. 다양한 문화를 포용하는 50년 역사와 함께 그 어느때보다 강렬한 메시지를 전달하는 아디다스 슈퍼스타를 만나보세요. 컬러풀한 트레포일을 강조하는 깔끔하고 산뜻한 디자인의 러버 쉘토 슈즈입니다. 다양성과 관용을 상징하는 6가지 색상으로 모든 이를 위한 다채로운 룩을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '크레이지카오스 쉐도우', '아디다스', 99000 , 100, 'FX8894-01-01_320X320.jpg', 'FX8894-02-02_720X720.jpg', 'FX8894-02-05_720X720.jpg', '혼돈에서 영감을받은 디자인으로 일상을 흔들어보세요. 이 스니커즈는 혼합 된 소재, 레이어링 및 색상을 사용하여 클래식 한 러닝 룩에 신선한 스타일을 선보이고 있습니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '오즈위고', '아디다스', 129000 , 100, 'FV9656-01-01_320X320.jpg', 'FV9656-02-02_720X720.jpg', 'FV9656-02-05_720X720.jpg', '새로운 미래의 시작을 알린 전설적인 슈즈. 러닝화로 탄생한 아디다스 오즈위고의 혁신적인 스타일과 기능을 계승하는 초현대적인 슈즈입니다. 과거에서 부활한 오리지널 디자인과 독보적인 쿠셔닝으로 스트리트를 위한 우수한 편안함을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '나이트볼', '아디다스', 139000 , 100, 'FV4842-01-01_320X320.jpg', 'FV4842-02-02_720X720.jpg', 'FV4842-02-05_720X720.jpg', '코트와 스트리트를 지배하는 나만의 스타일. 농구에서 영감을 얻은 대담하고 스포티한 슈즈입니다. 어두운 곳에서도 시선을 사로잡는 반사 디테일이 강렬한 존재감을 발산합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, '니짜 X 디즈니 스포츠 구피', '아디다스', 69000 , 100, 'FW0645-01-01_320X320.jpg', 'FW0645-02-02_720X720.jpg', 'FW0645-02-05_720X720.jpg', '세계에서 가장 큰 스포츠 축제를 맞이하여 탄생한 콜라보레이션 슈즈를 만나보세요. 다양한 스포츠를 즐기는 역동적인 구피 프린트가 돋보이는 아디다스 니짜입니다. 클래식 벌커나이즈 디자인으로 편안한 착용감과 견고한 내구성을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'AH-05 HI 시유레이터 GTX', '아디다스', 329000 , 100, 'FY6856-01-01_320X320.jpg', 'FY6856-02-02_720X720.jpg', 'FY6856-02-05_720X720.jpg', '대담하고 우아한 미니멀리스트 디자인 철학을 녹여낸 아디다스 x HYKE 콜라보레이션 컬렉션을 만나보세요. 기존 스니커즈 형태를 새로운 차원으로 끌어올린 90년대 오리지널 SEEULATER 슈즈의 새로운 버전입니다. 아웃도어에서 영감을 얻은 독특한 디테일과 함께 두 브랜드의 협업을 상징하는 혁신적인 실루엣을 선보입니다. 단단한 핏을 더해주는 벨트와 버클, 방수 고어텍스 안감이 견고한 구조를 완성합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Y-3 노토마', '아디다스', 599000 , 100, 'FX1768-01-01_320X320.jpg', 'FX1768-02-02_720X720.jpg', 'FX1768-02-05_720X720.jpg', '기존의 인식을 바꾸는 과감한 접근. 클래식 스포츠웨어를 정교하게 재해석한 Y-3 컬렉션을 만나보세요. 깔끔하고 심플한 디자인이 돋보이는 매끈한 슈즈입니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Y-3 러너 4D', '아디다스', 699000 , 100, 'FX1058-01-01_320X320.jpg', 'FX1058-02-02_720X720.jpg', 'FX1058-02-05_720X720.jpg', '기존의 인식을 바꾸는 과감한 접근. 클래식 스포츠웨어를 정교하게 재해석한 Y-3 컬렉션을 만나보세요. 깔끔하고 심플한 디자인이 돋보이는 매끈한 슈즈입니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Y-3 유벤 미드', '아디다스', 399000 , 100, 'FX0568-01-01_320X320.jpg', 'FX0568-02-02_720X720.jpg', 'FX0568-02-05_720X720.jpg', 'Y-3 컬렉션의 신선하고 독창적인 하드우드 스타일을 담아낸 미드컷 슈즈를 만나보세요. 농구화 실루엣에서 진화한 미니멀리스트 디자인으로 심플하고 깔끔한 룩을 선사합니다. 대비색상의 뒤꿈치 디테일이 돋보이는 가죽 갑피가 부드러운 착용감을 제공합니다. 설포의 Y-3 로고가 절제된 액센트를 더해줍니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Y-3 히코', '아디다스', 399000 , 100, 'FX1752-01-01_320X320.jpg', 'FX1752-02-02_720X720.jpg', 'FX1752-02-05_720X720.jpg', '기존의 인식을 바꾸는 과감한 접근. 클래식 스포츠웨어를 정교하게 재해석한 Y-3 컬렉션을 만나보세요. 깔끔하고 심플한 디자인이 돋보이는 매끈한 슈즈입니다. 높은 굽의 두툼한 플랫폼이 대담하면서도 절제된 룩을 더해줍니다. 가죽 갑피가 부드러운 착용감을 선사합니다.', SYSDATE);
INSERT INTO PRODUCT(pID, pNAME, pBRAND, pPRICE, pSTOCK, pIMAGE1, pIMAGE2, pIMAGE3, pDETAIL, pRDATE)
VALUES (seq_pid.nextval, 'Y-3 가이와', '아디다스', 599000 , 100, 'FX0909-01-01_320X320.jpg', 'FX0909-02-02_720X720.jpg', 'FX0909-02-05_720X720.jpg', '기존의 인식을 바꾸는 과감한 접근. 클래식 스포츠웨어를 정교하게 재해석한 Y-3 컬렉션을 만나보세요. 깔끔하고 심플한 디자인이 돋보이는 매끈한 슈즈입니다.', SYSDATE);




