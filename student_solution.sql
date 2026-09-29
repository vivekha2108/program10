USE CollegeDB;

SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentName
FROM Student s
LEFT JOIN Department d
ON s.DepartmentID = d.DepartmentID;

SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentName
FROM Student s
RIGHT JOIN Department d
ON s.DepartmentID = d.DepartmentID;
