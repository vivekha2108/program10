USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Electronics');

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(101, 'Arun', 1),
(102, 'Priya', 2),
(103, 'Karthik', NULL);

-- LEFT JOIN
SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentName
FROM Student s
LEFT JOIN Department d
ON s.DepartmentID = d.DepartmentID;

-- RIGHT JOIN
SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentName
FROM Student s
RIGHT JOIN Department d
ON s.DepartmentID = d.DepartmentID;
