create database SANA
go
use SANA
go

--Tables create
CREATE TABLE Customer  
(  
 id_General int IDENTITY(1,1) not null, 
 Id_Customer int not null primary key,
 F_Name varchar (20),  
 L_Name varchar(30),
 EUser char(1),  
 Email varchar(50),
 Address varchar(50)
 );  
  CREATE TABLE orders (
	id_General int IDENTITY(1,1) not null, 
	Id_Orders int not null primary key
 );
 CREATE TABLE Custom_Orders  
(  
 id_General int IDENTITY(1,1) not null, 
 FkId_Customer int not null,
 FkId_Orders int not null,
 GenerationDate datetime,
 primary key(FkId_Customer,FkId_Orders)
 );

    CREATE TABLE Products  
(  
 id_General int IDENTITY(1,1) not null, 
 Id_Product int not null primary key,
 Description varchar(50) not null,
 Price money
 ); 
  CREATE TABLE Orders_Products  
(  
 id_General int IDENTITY(1,1) not null, 
 FkId_Products int not null,
 FkId_Orders int not null,
 amount int,
 primary key(FkId_Products,FkId_Orders)
 );  
 
     CREATE TABLE Category  
(  
 id_General int IDENTITY(1,1) not null, 
 Description varchar(50) not null,
 Id_Category int not null primary key,
 );
   CREATE TABLE Products_Category  
(  
 id_General int IDENTITY(1,1) not null, 
 FkId_Products int not null,
 FkId_Category int not null,
 primary key(FkId_Products,FkId_Category)
 );
  go
  --Fk create
  ALTER TABLE Custom_Orders
ADD CONSTRAINT Fk_Custom_Orders  
FOREIGN KEY (FkId_Customer) REFERENCES Customer (Id_Customer)
go
  ALTER TABLE Custom_Orders
ADD CONSTRAINT Fk_Orders_Customer  
FOREIGN KEY (FkId_Orders) REFERENCES orders (Id_Orders)
go
  ALTER TABLE Orders_Products
ADD CONSTRAINT Fk_Orders_Products  
FOREIGN KEY (FkId_Orders) REFERENCES orders (Id_Orders)
go
  ALTER TABLE Orders_Products
ADD CONSTRAINT Fk_Products_Orders  
FOREIGN KEY (FkId_Products) REFERENCES Products (Id_Product)
go
  ALTER TABLE Products_Category
ADD CONSTRAINT Fk_Products_Category  
FOREIGN KEY (FkId_Products) REFERENCES Products (Id_Product)
go
  ALTER TABLE Products_Category
ADD CONSTRAINT Fk_Category_Products 
FOREIGN KEY (FkId_Category) REFERENCES Category (Id_Category)
go

---Create data base




--drop database SANA

