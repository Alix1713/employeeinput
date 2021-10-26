DROP DATABASE IF EXISTS team_db;
CREATE DATABASE team_db;
USE team_db;

DROP TABLE IF EXISTS departments
CREATE TABLE departments(
  departmentName VARCHAR(30),
  department_id  INT
);

DROP TABLE IF EXISTS roles
CREATE TABLE roles(
  salary DECIMAL,
  jobTitle VARCHAR(30),
  REFERENCES departments(id),
  roles_id INT
);

DROP TABLE IF EXISTS employees
CREATE TABLE employees(
  id  INT PRIMARY KEY,
  firstName VARCHAR(30),
  lastName VARCHAR(30),
  department VARCHAR(30),
  manager_id INT,
  REFERENCES roles(id),

);








