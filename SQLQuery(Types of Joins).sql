create Database ExerciseDb
use ExerciseDb
create table companyInfo
(CId int primary key,
CName nvarchar(50) not null unique)
insert into companyInfo values (1,'Samsung'),(2,'HP'),(3,'Apple'),(4,'Dell'),(5,'Toshiba')
insert into companyInfo (CId,CName) values (6,'Redmi') 
 
select * from companyInfo order by CId

create table productInfo
(PId int primary key identity (101,1 ),
PName nvarchar (50) not null,
 PPrice float,
 DepositDate  date,
 CId int)
 
insert into ProductInfo values ('Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values ('Laptop',35000.90,'12/12/2012',2)
insert into ProductInfo values ('Mobile',15000.90,'12/03/2012',2)
insert into ProductInfo values ('Laptop',135000.90,'12/12/2012',3)
insert into ProductInfo values ('Mobile',65000.90,'12/12/2012',3)
insert into ProductInfo values ('Laptop',35000.90,'12/12/2012',5)
insert into ProductInfo values ('Mobile',35000.90,'12/01/2012',5)
insert into ProductInfo values ('Earpod',1000.90,'12/01/2022',3)
insert into ProductInfo values ('Laptop',85000.90,'12/12/2021',6)
insert into ProductInfo values ('Mobile',55000.70,'12/12/2020',1)

select * from productInfo

--1.Show All Companies Name and their products detail
select c.CId,c.CName,p.PId,p.PName,p.pprice,p.DepositDate from companyInfo c left join ProductInfo p on c.CId=p.CId

--2.Show All Products Name and their respective company Name
select c.CName,p.PName from CompanyInfo c right join ProductInfo p on c.CId=p.CId

--3.Show all possible combinations of company and products
select CName,PId,PName,PPrice,DepositDate  from companyInfo cross join ProductInfo

 
