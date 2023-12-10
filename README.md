# 🛹Flying-Super-Board
FSB(보드게임 복합 커뮤니티 사이트)는 국비학원에서 진행한 팀프로젝트입니다.

![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/82445a8a-d0fd-40d1-a556-d7d18e8a32d5)

---
## 🎲목차
### 1. 개요
### 2. 개발 환경
### 3. DB 설계도 
### 4. 담당 기능
### 5. 개선해야 할 부분
---

### 1️. 개요
- 개발 기간 : 1개월 3주
  - 설계 및 분석 : 2023.05.19 - 05.25
  - 기능 구현 : 2023.05.25 - 7.20
- 개발 인원 : 6명(팀원)
- 담당 역할
  - 쇼핑몰 사용자페이지(기여도 80%)
  - 쇼핑몰 DB 구성(기여도 90%)
  - 장바구니 및 주문결제(기여도 100%)
  - 리뷰게시판 및 문의게시판(기여도 80%)

- 구성 설명
  - Spring Framework를 이용하여 Maven project로 제작된 보드게임 복합 커뮤니티
  - 관리자, 보드게임 정보, 쇼핑몰, 게시판, SNS 파트로 나누어 진행

### 2️. 개발 환경
- **언어**
  - Java(JDK 1.8)
  - JSP
  - JavaScript
- **서버**
  - Apache Tomcat 9.0
- **프레임워크**
  - Spring
  - MyBatis 3.2.3
- **DB**
  - Oracle
- **IDE**
  - Spring Tool Suite
  - sqldeveloper
- **라이브러리**
  - BootStrap
  - jQquery
  - Ajax
- **API** : Naver/Kakao Login API

### 3️. DB 설계도

<div align="center"><쇼핑몰 DB></div>
  
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/b5a14c79-5cf2-4a39-86aa-c453f071cb4e)

<div align="center"><쇼핑몰 마이페이지 DB></div>
  
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/bf7e41e1-c426-4366-8b36-b91acc4287e5)



### 4️. 담당 기능 
#### 1. 쇼핑몰 사용자 페이지 디자인
- jsp에서 **Bootstap5** 구성요소들을 이용해 디자인

#### 2. [쇼핑몰 메인]
- 인기상품 4개 판매순으로 조회
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/0679e880-1f0e-4e3c-85f1-facffda2038c)
- 전체 보드게임 20/40/60개씩 조회
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/f0bf95b2-80e1-4d0d-b6c2-bdf6875ba22a)

#### 3. [상품 상세]
- 클릭된 상품에 대한 상세정보 조회 외 기능
  - **Ajax** 라이브러리를 이용한 **찜하기/해제** 기능과 **장바구니** 담기, **구매하기**
  - 하단 탭에서 페이징 처리된 **상품리뷰** 목록과 **문의내역** 조회
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/70650ba3-046a-4420-b42a-8103edd4bf9a)
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/5b4621cc-f477-4760-a125-d36d27178d28)
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/ea3377d9-e641-4774-954f-2e2fa06b277e)

#### 4. [장바구니 및 주문결제] *한 페이지에 보이기 위해 1개의 상품만 노출
- 장바구니 목록 **조회** 및 **수정**, **삭제**
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/7c9fcc5a-f0b1-4c60-8d3d-e8c02c3f02bc)
- 주문결제 페이지 **쿠폰 적용**, **포인트 사용**, **배송지 관리 CRUD** 
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/df811e80-13ad-49ed-9817-d9b6a7e5149a)

#### 5. [마이페이지]
- **주문 목록**에서 **주문 상세 내역** 확인 가능
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/48b90e91-942b-4390-a1fc-449f23517ea5)
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/57bbe7fd-ce21-4722-a9e2-ffb112bda087)
- 주문 상세 내역에서 **리뷰 작성**하며 이미지 첨부 가능
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/6a333d3f-f3b5-4c98-8439-4e49d65219b8)

### 5️. 개선해야 할 부분
- 효율적인 설계를 위해 개발 전 단계에서 기능들을 상세하게 분석
- 쇼핑몰페이지 속도 측정하여 개선
- 사용자 입장에서 구매하고 싶고 편리한 웹페이지를 구현하도록 연구
- 서비스 개발의 핵심인 보안을 고려한 개발
