--------------------------------------------------------------------------------
-- ���� : ȸ������ DB �����
-- musthave �������� ����
--------------------------------------------------------------------------------

-- ���̺� ����
drop table homwork_member;

-- ȸ������ ���̺� ����
create table homwork_member (
    id varchar2(50) not null,                   -- ���̵�
    password varchar2(50) not null,             -- ��й�ȣ
    name varchar2(50) not null,                 -- �̸�
    email varchar2(100) null,                   -- �̸���
    mailing varchar2(1) null,                   -- �̸��� ���ſ���
    zipcode varchar2(10) null,                  -- �����ȣ
    addr1 varchar2(100) null,                   -- �ּ�
    addr2 varchar2(100) null,                   -- ���ּ�
    mobile varchar2(50) null,                   -- �޴���ȭ
    sms varchar2(1) null,                       -- ���� ���ſ���
    regidate date default sysdate not null,     -- ������
    primary key (id)
);

-- ȸ�� ���ڵ� �Է�
insert into homwork_member values (
    'ninninanna', '1234', '�Ѵϳ���', 'ninninanna@naver.com', 'Y', '12345', 
    '������ �߿���', '1109ȣ', '010-1234-5678', 'N', sysdate
);
commit;


-- ȸ�� ���ڵ� ���̵� Ȯ��
select * from homwork_member where id='ninninanna';




























