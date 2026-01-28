CREATE DATABASE SCHOOL;

USE SCHOOL;

CREATE TABLE Teacher(
    tr_code INT PRIMARY KEY AUTO_INCREMENT,
    tr_name VARCHAR(50),
    tr_phone INT(30)
);

CREATE TABLE Students(
    adm_no INT PRIMARY KEY AUTO_INCREMENT,
    std_name VARCHAR(50),
    std_age INT(10)
);

CREATE TABLE Subject(
    sb_code INT PRIMARY KEY AUTO_INCREMENT,
    sb_name VARCHAR(50),
    sb_level VARCHAR(50),
    tr_code INT,
    FOREIGN KEY (tr_code) REFERENCES Teacher(tr_code)
);

-- Insert 10 Teachers
INSERT INTO Teacher (tr_name, tr_phone) VALUES 
('Alice Johnson', 711223344),
('Bob Smith', 722334455),
('Charlie Brown', 733445566),
('David Wilson', 744556677),
('Eva Davis', 755667788),
('Frank Miller', 766778899),
('Grace Lee', 777889900),
('Henry Ford', 788990011),
('Ivy Thomas', 799001122),
('Jack White', 700112233);

-- Insert 10 Students
INSERT INTO Students (std_name, std_age) VALUES 
('John Doe', 14),
('Jane Roe', 15),
('Sam Smith', 14),
('Sue Green', 16),
('Mike Blue', 15),
('Tom Red', 14),
('Ann Black', 16),
('Pat White', 15),
('Kim Gray', 14),
('Lee Brown', 15);

-- Insert 10 Subjects
INSERT INTO Subject (sb_name, sb_level, tr_code) VALUES 
('Mathematics', 'Form 1', 1),
('English', 'Form 1', 2),
('Kiswahili', 'Form 1', 3),
('Science', 'Form 2', 4),
('History', 'Form 2', 5),
('Geography', 'Form 3', 6),
('Physics', 'Form 3', 7),
('Chemistry', 'Form 4', 8),
('Biology', 'Form 4', 9),
('Computer Studies', 'Form 1', 10);

-- Create Enrollment Table (Linking Students and Subjects)
CREATE TABLE Enrollment(
    en_id INT PRIMARY KEY AUTO_INCREMENT,
    adm_no INT,
    sb_code INT,
    FOREIGN KEY (adm_no) REFERENCES Students(adm_no),
    FOREIGN KEY (sb_code) REFERENCES Subject(sb_code)
);

-- Insert 10 Enrollments
INSERT INTO Enrollment (adm_no, sb_code) VALUES
(1, 1), -- Student 1 takes Math
(1, 2), -- Student 1 takes English
(2, 1), -- Student 2 takes Math
(2, 3), -- Student 2 takes Kiswahili
(3, 4), -- Student 3 takes Science
(3, 5), -- Student 3 takes History
(4, 6), -- Student 4 takes Geography
(5, 7), -- Student 5 takes Physics
(6, 8), -- Student 6 takes Chemistry
(7, 9); -- Student 7 takes Biology
