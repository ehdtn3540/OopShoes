select * from tab;

drop table register;

create table register(
id varchar2(20) primary key,	--Email
pass varchar2(20) not null,		--password
name varchar2(20) not null,		--name
phone varchar2(20) not null		--phone
);

insert into register(id,pass,name,phone) values('test','1111','테스트','01055556666');

select * from register;


