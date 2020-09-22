create table obd_admin(usid varchar2(20),pswd varchar2(20),usname varchar2(30));

insert into obd_admin values('obd','obd','Admin');

commit;

create table donors(usid varchar2(20),pswd varchar2(20),usname varchar2(25),addr varchar2(100),cno varchar2(10),emid varchar2(20),dor varchar2(10),bg varchar2(3));
create table events(eventid varchar2(10) primary key,descp varchar2(1000),edate varchar2(10),etime varchar2(10),location varchar2(150));
create table stock(eventid varchar2(20), did varchar2(20), bg varchar2(20), unts varchar2(20), primary key(eventid,did));