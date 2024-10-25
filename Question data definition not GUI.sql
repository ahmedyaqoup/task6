--1--Create a table named "Employees" with columns for ID (integer), Name (varchar), and Salary (decimal).
Create table Employees(
ID int Not null ,
Name varchar(50),
salary decimal(10,2)
)
--2--Add a new column named "Department" to the "Employees" table with data type varchar(50).
 Alter table Employees
 ADD Department varchar(50)
--3--Remove the "Salary" column from the "Employees" table.
 Alter table Employees
 Drop column salary 
 --4--Rename the "Department" column in the "Employees" table to "DeptName".
  EXEC sp_rename 'Employees.Department', 'DeptName', 'COLUMN'
  --5--Create a new table called "Projects" with columns for ProjectID (integer) and ProjectName (varchar).
  Create table projects(
  project_Id int not null,
  project_Name varchar(50)
  )
  --6--Add a primary key constraint to the "Employees" table for the "ID" column.
 Alter Table Employees
 Add primary key (ID) 
 --7--Create a foreign key relationship between the "Employees" table (referencing "ID") and the "Projects" table (referencing "ProjectID").
 Alter table dbo.projects
 Add emp_id int
 foreign key (emp_id) references dbo.Employees(ID)
 --8--Remove the foreign key relationship between "Employees" and "Projects."
 Alter table projects
 Drop FK__projects__emp_id__4AB81AF0
 

 --9--Add a unique constraint to the "Name" column in the "Employees" table.
 Alter table Employees
 ADD unique (name)

 --10--Create a table named "Customers" with columns for CustomerID (integer), FirstName (varchar), LastName (varchar), and Email (varchar), and Status (varchar).
 create table Customers(
 Customer_ID int not null,
 FirstName varchar(50),
 LastName varchar(50),
 Email varchar(50),
 Status varchar(50)
 )
  --11--Add a unique constraint to the combination of "FirstName" and "LastName" columns in the "Customers" table.
  Alter table Customers
  ADD unique (FirstName,LastName)

  --12--Add a default value of 'Active' for the "Status" column in the "Customers" table, where the default value should be applied when a new record is inserted.
  Alter table Customers
  ADD default 'Active' for Status

 --13--Create a table named "Orders" with columns for OrderID (integer), CustomerID (integer), OrderDate (datetime), and TotalAmount (decimal).
  create table Orders(
  order_ID int not null,
  customer_ID int, 
  order_date datetime ,
  totalAmount decimal (10,2)
  )

  --14--Add a check constraint to the "TotalAmount" column in the "Orders" table to ensure that it is greater than zero.
   Alter table Orders
   add check (totalAmount>0)
  --15--Create a schema named "Sales" and move the "Orders" table into this schema.
  create schema sales
 Alter schema sales 
 transfer dbo.Orders



  --16--Rename the "Orders" table to "SalesOrders."
  EXEC sp_rename 'Orders','SalesOrders'
   
 