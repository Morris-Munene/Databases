-- 1. Setup
DROP DATABASE IF EXISTS SCRD;
CREATE DATABASE SCRD;
USE SCRD;

-- 2. Create Tables
CREATE TABLE Student(
    std_ID INT PRIMARY KEY,
    std_Name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(50),
    addres VARCHAR(100),
    std_age INT
);

CREATE TABLE Course(
    crs_ID INT PRIMARY KEY,
    crs_Name VARCHAR(50),
    crs_Code VARCHAR(50),
    crs_level VARCHAR(50)
);

CREATE TABLE Enrollment(
    er_ID INT PRIMARY KEY,
    std_ID INT,
    crs_ID INT,
    er_semister VARCHAR(50),
    er_date DATE,
    FOREIGN KEY (std_ID) REFERENCES Student(std_ID),
    FOREIGN KEY (crs_ID) REFERENCES Course(crs_ID)
);

-- 3. Insert 5 Students
INSERT INTO Student(std_ID, std_Name, phone, email, addres, std_age) VALUES 
(101, 'Mark Sternly', '0729142632', 'marksternly@gmail.com', 'P.O BOX 234-60200 Meru', 19),
(102, 'Chris Muguna', '0756323145', 'chrismuguna@gmail.com', 'P.O BOX 453-50600 Nyeri', 25),
(103, 'Jeffson Thuo', '0117728392', 'thuojeffson@gmail.com', 'P.0 Box 244-52211 Thika', 23),
(104, 'Morris Kaberis', '0720004537', 'morriskabe@gmail.com', 'P.O Box 245-54225 Mombasa', 20),
(105, 'Sizza Omondi', '011223342', 'sizzaomondi@gmail.com', 'P.O BOX 435-5322 Nakuru ', 21);

-- 4. Insert 5 Courses
INSERT INTO Course(crs_ID, crs_Name, crs_Code, crs_level) VALUES
(1, 'Information Technology', 'IT-001', 'Diploma'),
(2, 'Computer Applications', 'CA-002', 'Degree'),
(3, 'Software Engineering', 'SE-003', 'Masters'),
(4, 'AI Robotics', 'AR-004', 'Degree'),
(5, 'Bio Electronics', 'BE-005', 'Ph.D');

-- 5. Insert 5 Enrollments (Linking them)
INSERT INTO Enrollment(er_ID, std_ID, crs_ID, er_semister, er_date) VALUES
(1, 101, 3, 'Year 1 Semester 1', '2020-04-01'),
(2, 102, 1, 'Year 3 Semester 2', '2023-07-01'),
(3, 103, 2, 'Year 2 Semester 1', '2024-05-03'),
(4, 104, 4, 'Year 1 Semester 1', '2024-05-03'),
(5, 105, 5, 'Year 4 Semester 2', '2023-06-03');

-- 6. Verification Query
SELECT 
    S.std_Name AS 'Student', 
    C.crs_Name AS 'Enrolled In', 
    E.er_semister AS 'Current Semester'
FROM Enrollment E
JOIN Student S ON E.std_ID = S.std_ID
JOIN Course C ON E.crs_ID = C.crs_ID;

SELECT * FROM Enrollment WHERE std_ID = 101;