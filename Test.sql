CREATE DATABASE TestDB;

USE TestDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate) VALUES
(1, 'John', 'Doe', '2020-01-15'),
(2, 'Jane', 'Smith', '2019-03-22'),
(3, 'Jim', 'Brown', '2021-07-30');

SELECT * FROM Employees;

