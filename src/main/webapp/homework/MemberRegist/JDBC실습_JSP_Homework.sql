--------------------------------------------------------------------------------
-- 회원가입 DB 연동
-- musthave 계정에서 실행
--------------------------------------------------------------------------------

drop table homwork_member;

-- 회원가입 테이블 만들기
create table homwork_member (
    id varchar2(50) not null,                   -- 아이디
    password varchar2(50) not null,             -- 비밀번호
    name varchar2(50) not null,                 -- 이름
    email varchar2(100) null,                   -- 이메일
    zipcode varchar2(10) null,                  -- 우편번호
    addr1 varchar2(100) null,                    -- 주소
    addr2 varchar2(100) null,                    -- 상세주소
    mobile varchar2(50) null,                   -- 휴대전화
    regidate date default sysdate not null,     -- 가입일
    primary key (id)
);






























