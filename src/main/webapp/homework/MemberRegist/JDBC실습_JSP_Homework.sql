--------------------------------------------------------------------------------
-- ȸ������ DB ����
-- musthave �������� ����
--------------------------------------------------------------------------------

drop table homwork_member;

-- ȸ������ ���̺� �����
create table homwork_member (
    id varchar2(50) not null,                   -- ���̵�
    password varchar2(50) not null,             -- ��й�ȣ
    name varchar2(50) not null,                 -- �̸�
    email varchar2(100) null,                   -- �̸���
    zipcode varchar2(10) null,                  -- �����ȣ
    addr1 varchar2(100) null,                    -- �ּ�
    addr2 varchar2(100) null,                    -- ���ּ�
    mobile varchar2(50) null,                   -- �޴���ȭ
    regidate date default sysdate not null,     -- ������
    primary key (id)
);






























