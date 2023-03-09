drop table company cascade constraint;
drop table customer cascade constraint;
drop table carmodel cascade constraint;
drop table salesconsultant cascade constraint;
drop table transactions cascade constraint;
drop table stores cascade constraint;

create table company
(
cid int primary key,
cname varchar(20) unique,
cddress varchar(50),
cphone int
);

create table customer
(
cuid int primary key,
cuname varchar(20) unique,
cuaddress varchar(50),
cuphone int,
cuemail varchar(30)
);

create table carmodel
(
carid int primary key,
carname varchar(30),
cartype varchar(30),
carmodelname varchar(30),
cid int references company(cid)
);

create table salesconsultant
(
sname varchar(20),
scid int primary key,
sphone int,
saddress varchar(50),
sgender varchar(10),
sdob date,
sage int,
cid int references company(cid)
);

create table transactions
(
tid int primary key,
tdate date,
ttime int,
cid int references company(cid),
carid int references carmodel(carid),
scid int references salesconsultant(scid),
cuid int references customer(cuid)
);

create table stores
(
stname varchar(10),
staddress varchar(50),
stphone int,
stid int primary key,
cid int references company(cid)
);


insert into company  values('1001','MarutiSuzuki','#8 Vidyanagar Hubballi Karnataka','9905178965');
insert into company values('1002','Hyundai','#123 Ravinagar Banagalore Karnataka','9908989651');
insert into company values('1003','Toyota','#13 Gandhinagar Hubballi Karnataka','9907651968');
insert into company values('1004','Mahindra','#754 Gokul Road Mysore Karnataka','9905478950');
insert into company values('1005','Tata Motors','#43 Vidyanagar Gadag Karnataka','9908965008');

insert into customer  values('2001','Rakesh','#886 Vidyanagar Hubballi Karnataka','9917879685','rakeshhp@gmail.com');
insert into customer  values('2002','Ramesh','#4 Gokul Road Mysore  Karnataka','9900878965','rameshp@gmail.com');
insert into customer  values('2003','Raju','#13 Ravinagar Banagalore Karnataka','9917878987','raju@gmail.com');
insert into customer  values('2004','Rinku','#6 Vidyanagar Hubballi Karnataka','9917878954','rinkud@gmail.com');
insert into customer  values('2005','Reeta','#3 Gandhinagar Hubballi Karnataka','9918977896','reetanp@gmail.com');


insert into carmodel  values('3001','Mahindra Thar','SUV','Mahindra XUV700','1001');
insert into carmodel  values('3002','Hyundai Elantra','Sedan','Hyundai Venue','1002');
insert into carmodel  values('3003','Maruti Suzuki Omni','MPV','Maruti Suzuki Swift','1003');
insert into carmodel  values('3004','Ford Mustang','Coupe','Tata Nexon','1004');
insert into carmodel  values('3005','Mercedes-AMG SLC 43','Convertible','Renault Triber','1005');


insert into salesconsultant values('Arjun','4001','9564587254','#143 Ravinagar Banagalore  Karnataka','Male','30-jan-2002','19','1001');
insert into  salesconsultant values('Kiran','4002','9845632546','#4 Gokul Road Mysore  Karnataka','Male','27-jun-1990','21','1002');
insert into  salesconsultant values('Neel','4003','9845624157','#8 Vidyanagar Hubballi Karnataka','Male','14-jan-1989','32','1003');
insert into  salesconsultant values('Amit','4004','9853624756','#43 Vidyanagar Gadag Karnataka','Male','12-apr-1992','29','1004');
insert into  salesconsultant values('Kartik','4005','9635214896','#100 Vidyanagar Hubballi Karnataka','Male','14-jan-1988','31','1005');


insert into transactions values('5001','28-jan-2002','10','1001','3001','4001','2001');
insert into transactions values('5002','18-jan-1989','3','1002','3002','4002','2002');
insert into transactions values('5003','24-jan-1989','32','1003','3003','4003','2003');
insert into transactions values('5004','22-apr-1992','27','1004','3004','4004','2004');
insert into transactions values('5005','12-jan-1988','22','1005','3005','4005','2005');

insert into stores values('','#31 Ravinagar Banagalore Karnataka','9584526315','6001','1001');

select * from transactions


