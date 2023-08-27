--------------------------------------------------------------------------------
-- 과제 : 회원가입 DB 만들기
-- musthave 계정에서 실행
--------------------------------------------------------------------------------

-- 테이블 삭제
drop table homwork_member;

-- 회원가입 테이블 생성
create table homwork_member (
    id varchar2(50) not null,                   -- 아이디
    password varchar2(50) not null,             -- 비밀번호
    name varchar2(50) not null,                 -- 이름
    email varchar2(100) null,                   -- 이메일
    mailing varchar2(1) null,                   -- 이메일 수신여부
    zipcode varchar2(10) null,                  -- 우편번호
    addr1 varchar2(100) null,                   -- 주소
    addr2 varchar2(100) null,                   -- 상세주소
    mobile varchar2(50) null,                   -- 휴대전화
    sms varchar2(1) null,                       -- 문자 수신여부
    regidate date default sysdate not null,     -- 가입일
    primary key (id)
);

-- 회원 레코드 입력
insert into homwork_member values (
    'ninninanna', '1234', '닌니난나', 'ninninanna@naver.com', 'Y', '12345', 
    '성남시 중원구', '1109호', '010-1234-5678', 'N', sysdate
);
commit;


-- 회원 레코드 아이디 확인
select * from homwork_member where id='ninninanna';




























