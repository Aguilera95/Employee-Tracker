DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;

CREATE TABLE department( 
department_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (30) NOT NULL
);

INSERT INTO department (name)
VALUES ("Sales"), ("Engineering"), ("Finance"), ("Legal");

CREATE TABLE role (
role_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
title VARCHAR (30) NOT NULL,
salary DECIMAL(10, 2) NOT NULL,
department_id INT,
CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(department_id) ON DELETE CASCADE
);
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Salesperson", 80000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 125000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Account Manager", 160000,3);
INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 120000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 250000, 4);
INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 190000, 4);

CREATE TABLE employee(
employee_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (30) NOT NULL,
last_name VARCHAR (30) NOT NULL,
role_id INT,
manager_id INT NULL,
CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(role_id) ON DELETE SET NULL,
CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(employee_id) ON DELETE CASCADE
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 1, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Miro", "Aguilera", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Luna", "Tuna", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ariel", "Austin", 4, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Brittany", "Anderson", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Dennice", "Marin", 6, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ("Valerie", "DeSousa", 7, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  ("Jessica", "Martinez", 8, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Justin", "Igna", 5, null);
INSERT INTO employee  (first_name, last_name, role_id, manager_id)
VALUES ("Cynthia", "Roche", 6, null);