CREATE DATABASE HOSPITAL;

USE HOSPITAL;

CREATE TABLE Doctors(
    dr_id INT PRIMARY KEY,
    dr_name VARCHAR(50),
    dr_number INT(20),
    dpmt VARCHAR(40)
);

CREATE TABLE patients(
    p_id INT PRIMARY KEY,
    p_name VARCHAR(30),
    p_number INT(20)
);

CREATE TABLE appointment(
    app_date DATE,
    dr_id INT,
    FOREIGN KEY (dr_id) REFERENCES Doctors(dr_id)
);

INSERT INTO Doctors(dr_id, dr_name, dr_number, dpmt)
VALUES (2, 'Morris Munene', 0713252345, 'Regestration');


SELECT * FROM Doctors;