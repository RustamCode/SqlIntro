CREATE DATABASE Department

USE Department

CREATE TABLE Employee(
Id int primary key identity NOT NULL ,
FullName nvarchar(255) NOT NULL,
Age int CHECK(Age>0) NOT NULL,
Email nvarchar(50) NOT NULL UNIQUE,
Salary DECIMAL CHECK(300<Salary AND Salary<2000) NOT NULL
)
INSERT INTO Employee ( FullName , Age ,Email , Salary) values
('person1',15,'person1@gmail.com', 755.25),
('person2',20,'person2@gmail.com', 350.69),
('person3',25,'person3@gmail.com', 1000.45),
('person4',30,'person4@gmail.com', 1267.83),
('person5',35,'person5@gmail.com', 1894.64)

SELECT * FROM Employee
UPDATE [Employee]
SET [Salary] = 984.23
WHERE [Id] = 1

SELECT  FullName 'PersonName' , Age 'PersonAge' , Email 'PersonEmail', Salary 'PersonSalary'  FROM Employee 
WHERE Salary BETWEEN 500 AND 1500

SELECT * FROM Employee
ORDER BY Salary


