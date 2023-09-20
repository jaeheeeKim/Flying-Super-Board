# 🛹Flying-Super-Board
날아라슈퍼보드(보드게임 복합 커뮤니티 사이트)는 국비학원에서 진행한 팀프로젝트입니다.
어린 시절 즐겁게 보았던 만화를 떠올리며 즐겁게 프로젝트에 임하기 위해 정해진 이름입니다.

![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/5a0775de-a1c7-48a2-9cad-59d0e8b2ec2d)

---
## 🎲목차
### 1. 개요
### 2. 개발 환경
### 3. 담당 기능
### 4. 그 외 기능들
### 5. 배운점
---



## 1️⃣ 개요
- 개발 기간 : 1개월 3주
  - 설계 및 분석 : 2023.05.19 - 05.25
  - 기능 구현 : 2023.05.25 - 7.27
- 개발 인원 : 6명(팀원)
- 담당 역할
  - 쇼핑몰 사용자페이지(기여도 80%)
  - 쇼핑몰 DB 구성(기여도 90%)
  - 장바구니 및 주문결제(기여도 100%)

- 구성 설명
  - Spring Framework를 이용하여 Maven project로 제작된 보드게임 복합 커뮤니티
  - 관리자, 보드게임 정보, 쇼핑몰, 게시판, SNS 파트로 나누어 진행



## 2️⃣ 개발 환경
- **언어**
  - Java(JDK 1.8)
  - JSP
  - JavaScript
- **서버**
  - Apache Tomcat 9.0
  - AWS EC2
  - ubuntu
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



## 3️⃣ 담당 기능 
#### 1. 쇼핑몰 사용자 페이지 디자인
- jsp에서 **Bootstap5** 구성요소들을 이용해 디자인

#### 2. [쇼핑몰 메인]
- 인기상품 4개 판매순으로 조회
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/4d06d0b1-1ab5-4788-967f-06e6cee36208)

- 전체 보드게임 20/40/60개씩 조회
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/373374f6-15b8-4002-9de7-c0737ec7f19f)



#### 3. [상품 상세]
- 클릭된 상품에 대한 상세정보 조회 외 기능
  - **Ajax** 라이브러리를 이용한 **찜하기/해제** 기능과 **장바구니** 담기, **구매하기**
  - 하단 탭에서 페이징 처리된 **상품리뷰** 목록과 **문의내역** 조회
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/36b74a55-4b59-444e-b550-5694e2a80dd7)
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/9cd7127a-253b-44f8-a605-c3716c980f20)
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/c47c9cf2-3192-4ffd-b8af-45b598897fa1)



#### 3. [장바구니 및 주문결제] *한 페이지에 보이기 위해 1개의 상품만 노출
- 장바구니 목록 **조회** 및 **수정**, **삭제**
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/4eb6ba92-23ea-431e-8677-bca8365b7633)

- 주문결제 페이지 **쿠폰 적용**, **포인트 사용**, **배송지 관리 CRUD** 
![image](https://github.com/jaeheeeKim/Flying-Super-Board/assets/137701489/981f5f18-ece1-4cb5-82af-3a66bf05ef2b)





## 4️⃣ 개선해야 할 부분
## 5️⃣ 추가 학습
### AWS 클라우드를 이용한 배포
