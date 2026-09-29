USE CollegeDB;

-- LEFT JOIN
SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentID,
    d.DepartmentName
FROM Student s
LEFT JOIN Department d
ON s.DepartmentID = d.DepartmentID;

-- RIGHT JOIN
SELECT
    s.StudentID,
    s.StudentName,
    d.DepartmentID,
    d.DepartmentName
FROM Student s
RIGHT JOIN Department d
ON s.DepartmentID = d.DepartmentID;
