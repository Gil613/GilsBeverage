# GilsBeverage

~~~sql
create table product(
filename varchar2(50),
pname nvarchar2(50),
pcontent nvarchar2(100),
ptype navarchar2(10),
capacity varchar2(10),
cost number
)

CREATE TABLE USERTBL(
    ID NVARCHAR2(20) NOT NULL PRIMARY KEY,
    PWD NVARCHAR2(30) NOT NULL,
    NAME NVARCHAR2(10) NOT NULL,
    PHONE VARCHAR2(30),
    EMAIL NVARCHAR2(50) NOT NULL,
    REGDATE DATE DEFAULT SYSDATE
);

~~~
