CREATE DATABASE Academy;

USE Academy;

CREATE TABLE Students (
    std_id INT PRIMARY KEY,
    std_name VARCHAR(50),
    major VARCHAR(50)
);

ALTER TABLE Students ADD Age INT;

ALTER TABLE Students MODIFY COLUMN std_name VARCHAR(100);

INSERT INTO Students(std_id, std_name, major, Age)
VALUES (1, 'Alice', 'Computer Science', 20),
       (3, 'Bob', 'Cloud Engineering', 22);

UPDATE Students
SET major = 'Linux Admin'
WHERE std_name = 'Bob';

DELETE FROM Students WHERE std_id = 1;

SELECT std_name FROM Students WHERE Age > 21

ALTER TABLE Students CHANGE COLUMN std_name st_name VARCHAR(100);

SELECT * FROM Students;