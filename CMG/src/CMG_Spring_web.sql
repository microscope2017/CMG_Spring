create sequence seq_member_num;
create table member(
	m_num number(3) primary key,
	m_email varchar2(30),
	m_pw varchar2(12)
);

create sequence seq_board_id;
create table board(
	b_id number(5) primary key,
	b_title varchar2(100),
	b_text varchar2(1000),
	b_writer varchar2(30),
	b_date char(10),
	b_cnt number(5),
	b_time char(5)
);

create sequence seq_reply_id;
create table reply(
	r_id number(5) primary key,
	b_id number(5),
	r_text varchar2(300),
	r_writer varchar2(30),
	r_date char(10),
	r_time char(5)
);