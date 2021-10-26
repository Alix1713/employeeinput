
SELECT title, firstName, lastName
FROM department
INNER JOIN employee ON department.employee_Id = employee.id;

SELECT title, firstName, lastName
FROM department
LEFT JOIN department ON department.employee_Id = employee.id;


