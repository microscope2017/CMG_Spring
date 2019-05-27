# CMG_Spring  
  
==================  
#### Server OS : Windows10  
#### Language : JAVA 1.8  
#### Framework : Spring 4.3.7  
#### WAS : Tomcat 8.5  
#### build tool : maven 4.0.0  
#### DB : Oracle 11g EX  
#### ORM : mybatis 3.4.6  
==================  
  
### Database Schema(Oracle)  
-member(회원정보)  
m_num number(3) primary key  
m_email  varchar2(30)  
m_pw  varchar2(12)  
  
-board(게시물)  
b_id number(5) primary key  
b_title varchar2(100)  
b_writer varchar2(30)  
b_date date  
b_cnt number(5)  
  
-reply(댓글)  
r_id number(5) primary key  
b_id number(5)  
r_text varchar2(300)  
r_writer varchar2(30)  
r_date date
  
### View  
-main 
메인 home.jsp  
이력서 resume.jsp  
자기소개서 introduce.jsp
  
-login  
회원가입 signup.jsp  
로그인 signin.jsp  
  
-board  
게시판 boardlist.jsp
게시글 등록 regist.jsp  
게시글 수정 modify.jsp  
게시글 read.jsp  

