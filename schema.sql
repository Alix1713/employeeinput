DROP DATABASE IF EXISTS team_db;
CREATE DATABASE team_db;

USE team_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE title (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  salary DECIMAL,
  jobTitle VARCHAR(30),
  title_id INT,
  FOREIGN KEY (title_id) REFERENCES department(id)
  ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(30),
  lastName VARCHAR(30),
  department VARCHAR(30),
  employee_id INT,
  title_id INT,
   FOREIGN KEY (title_id) REFERENCES title(id)
  ON DELETE SET NULL
);







