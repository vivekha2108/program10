USE CollegeDB;

-- Create Course table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);

-- Insert Course records
INSERT INTO Course (CourseID, CourseName, Credits) VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);

-- Create Enrollment table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT
);

-- Insert Enrollment records
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);

-- LEFT JOIN
SELECT
    Course.CourseID,
    Course.CourseName,
    Enrollment.EnrollmentID,
    Enrollment.StudentID
FROM Course
LEFT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID
ORDER BY Course.CourseID, Enrollment.EnrollmentID;

-- RIGHT JOIN
SELECT
    Course.CourseID,
    Course.CourseName,
    Enrollment.EnrollmentID,
    Enrollment.StudentID
FROM Course
RIGHT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID
ORDER BY Enrollment.EnrollmentID;

