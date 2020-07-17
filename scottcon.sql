CREATE TABLE MP_BOARD(                          -- �Խñ� �ۼ�
    BNO NUMBER              NOT NULL,           -- �Խ��� ��ȣ
    TITLE VARCHAR2(100)     NOT NULL,           -- �Խ��� ����
    CONTENT VARCHAR2(2000)  NOT NULL,           -- �Խ��� ����
    WRITER VARCHAR2(100)    NOT NULL,           -- �ۼ���
    REGDATE DATE            DEFAULT SYSDATE,    -- �����
    PRIMARY KEY (BNO)                           -- �⺻Ű
);

CREATE SEQUENCE MP_BOARD_SEQ -- �Խ��� ��ȣ�� 1���� �ڵ����� ����
START WITH 1
INCREMENT BY 1;

INSERT INTO MP_BOARD(BNO, TITLE, CONTENT, WRITER)
    VALUES (MP_BOARD_SEQ.NEXTVAL, '����', '����', '�ӵ���');

SELECT * FROM MP_BOARD;


CREATE TABLE MP_REPLY(                          -- �Խñ� ���
    BNO NUMBER              NOT NULL,
    RNO NUMBER              NOT NULL,
    CONTENT VARCHAR2(1000)  NOT NULL,
    WRITER VARCHAR2(50)     NOT NULL,
    REGDATE DATE            DEFAULT SYSDATE,
    PRIMARY KEY(BNO, RNO)
);

ALTER TABLE MP_REPLY ADD CONSTRAINT MP_REPLY_BNO FOREIGN KEY(BNO)
REFERENCES MP_BOARD(BNO);

CREATE SEQUENCE MP_REPLY_SEQ
START WITH 1
MINVALUE 0;

INSERT INTO MP_REPLY(BNO, RNO, CONTENT, WRITER)
    VALUES(31, MP_REPLY_SEQ.NEXTVAL, 'test', 'writer');
    
SELECT RNO, CONTENT, WRITER, REGDATE
  FROM MP_REPLY
 WHERE BNO = 31;


CREATE TABLE MP_MEMBER (                        -- ȸ��(�α���, ȸ������)
    USERID      VARCHAR2(40)  NOT NULL,
    USERPASS    VARCHAR2(100) NOT NULL,
    USERNAME    VARCHAR2(40)  NOT NULL,
    REGDATEE    DATE          DEFAULT SYSDATE,
    PRIMARY KEY(USERID)
);

INSERT INTO MP_MEMBER(USERID, USERPASS, USERNAME)
    VALUES('asd', '123', '�ӵ���');
    
SELECT * FROM MP_MEMBER;


UPDATE MP_BOARD SET TITLE = '��ȣ 1��' WHERE BNO = 1;

DELETE FROM MP_BOARD WHERE BNO = 4;

COMMIT;