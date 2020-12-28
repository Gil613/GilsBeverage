# GilsBeverage

create table product(
filename varchar2(50),
pname nvarchar2(50),
pcontent nvarchar2(100),
ptype navarchar2(10),
capacity varchar2(10),
cost number
)

create table usertbl(
id nvarchar2(10) not null unique,
pwd nvarchar2(20) not null,
name nvarchar2(10) not null,
nickname nvarchar2(10) not null primary key,
birthy number not null,
birthm number not null,
birthd number not null,
ph1 number not null,
ph2 number not null,
ph3 number not null,
email nvarchar2(50) not null
);
