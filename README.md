# CMG_Spring

###Database Schema(Oracle)  
-member(회원정보)  
m_num number(3) primary key  
m_email  varchar2(30)  
m_pw  varchar2(12)  
  
-board(게시물)  
b_id number(5) primary key  
b_title varchar2(100)  
b_writer varchar2(30)  
b_date char(10)  
b_cnt number(5)  
r_time char(5)  
  
-reply(댓글)  
r_id number(5) primary key  
b_id number(5)  
r_text varchar2(300)  
r_writer varchar2(30)  
r_date char(10)  
r_time char(5)  
   
  
###Path  
메인 localhost  
이력서 localhost/resume  
자기소개서 localhost/introduce  
프로젝트 localhost/project  
게시판 localhost/board  
  
###View  
메인 index.jsp  
이력서 resume.jsp  
자기소개서 introduce.jsp  
프로젝트 project.jsp  
게시판 list.jsp  
회원가입 signup.jsp  
