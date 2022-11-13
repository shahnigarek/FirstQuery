--TASK-1
Create Database Company
Use Company
Create Table Employees  (
Id int identity primary key,
Name nvarchar(100) Not Null,
Surname nvarchar(100) Not Null,
Position nvarchar(100) Not Null,
Salary money Not Null
)
Insert Into Employees 
Values
('Lisa','Clark','Vice President',60.000),
('David','Thomas','Direktor',30.0000),
('Joseph','Cooper','Manager',10.000)

Select AVG(Salary) FROM Employees

Select MAX(Salary) FROM Employees

Select MIN(Salary) FROM Employees

Select * From Employees Where Salary >(Select Avg(Salary) from Employees )


--TASK-2
Create Database Market 
Use Market
Create Table Products (
Id int identity primary key,
Name nvarchar(100) Not Null,
Price money Not Null
)

Alter Table Products Add Brand nvarchar(100) 

Insert Into Products Values
('Duz',5.60 ,N'AzəriDuz'),
(N'Şokolad',1.59 ,'Alpen Gold'),
('Un',1.20 ,'Bismak'),
('Makaron',0.89 ,'Ankara'),
(N'Kərə Yağı',15.90 ,'WestGold'),
('Çay',11.01 ,N'Azərçay'),
('Yuyucu Toz',18.79 ,'Ariel'),
(N'Meyvə Şirəsi',1.45 ,'Sonti'),
('Kofe',8.29 ,'Jacobs'),
('Pendir',12.90 ,'Hermano')

Truncate Table Products


Select * FROM Products where Price < (Select AVG(Price) From Products)

Select * FROM Products where Price > 10

Select Name + '  '+ Brand AS ProductInfo  FROM Products where LEN(Brand) > 5


--TASK-3
Use Market
Create Table Employees(
    Id int identity primary key,
	FullName nvarchar(100) Not Null Check(LEN(FullName) > 3),
	Email nvarchar(100) Not Null Unique,
	Salary money Not Null Check(Salary > 0)
)
Create Table Departments(
 Id int identity primary key,
 Name nvarchar(100) Not Null Check(LEN(Name) > 2)
 )

Alter Table Employees Add DepartmentId int Not Null Foreign Key References Departments(Id)