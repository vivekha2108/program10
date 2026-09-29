USE CollegeDB;

SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentName
FROM Student AS s
LEFT JOIN Department AS d
ON s.DepartmentID = d.DepartmentID;

SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentName
FROM Student AS s
RIGHT JOIN Department AS d
ON s.DepartmentID = d.DepartmentID;
