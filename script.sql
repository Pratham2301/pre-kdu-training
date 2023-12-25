-- mysql -u root -p 
-- admin
-- source C:\Users\Prathamesh\OneDrive\Desktop\KICKDRUM\PRE KDU\submissions\pre-kdu-training\script.sql


-- to clear screen
\! cls


-- to view dbs
SHOW DATABASES;



-- Create a database named “employee”
CREATE DATABASE employee;
-- OUTPUT:
-- Query OK, 1 row affected (0.03 sec)

USE employee
-- Database changed

-- Create the following tables inside the “employee” database
-- department (department_id, department_name)
-- department_id is the primary key
CREATE TABLE department
(
    department_id int NOT NULL,
    department_name varchar(255) NOT NULL,
    CONSTRAINT PK_ID PRIMARY KEY(department_id)
);
-- Query OK, 0 rows affected (0.07 sec)



-- Create the following tables inside the “employee” database
-- employee (employee_id, employee_name, salary,department_id)
-- employee_id is the primary key
-- department_id is the foreign key that refers to department_id in the department table
CREATE TABLE employee
(
    employee_id int NOT NULL,
    employee_name varchar(255) NOT NULL,
    salary int NOT NULL,
    department_id int NOT NULL,

    CONSTRAINT PK_ID PRIMARY KEY(employee_id),

    CONSTRAINT FK_DEPT_ID FOREIGN KEY (department_id) REFERENCES department(department_id)

);
-- Query OK, 0 rows affected (0.04 sec)


-- To view both tables
SHOW TABLES;
-- +--------------------+
-- | Tables_in_employee |
-- +--------------------+
-- | department         |
-- | employee           |
-- +--------------------+
-- 2 rows in set (0.00 sec)


-- inserting data into department table
INSERT INTO department VALUES (1, "CSE");
INSERT INTO department VALUES (2, "MECH");
INSERT INTO department VALUES (3, "CIVIL");
INSERT INTO department VALUES (4, "IT");
-- Query OK, 1 row affected (0.00 sec) * 4


-- inserting data into employee table
INSERT INTO employee VALUES (1, "Employee_1_cse", 50000, 1);
INSERT INTO employee VALUES (2, "Employee_2_cse", 60000, 1);
INSERT INTO employee VALUES (3, "Employee_3_civil", 40000, 3);
INSERT INTO employee VALUES (4, "Employee_4_mech",45000, 2);
-- Query OK, 1 row affected (0.00 sec) * 4



-- SELECT * FROM department;
-- +---------------+-----------------+
-- | department_id | department_name |
-- +---------------+-----------------+
-- |             1 | CSE             |
-- |             2 | MECH            |
-- |             3 | CIVIL           |
-- |             4 | IT              |
-- +---------------+-----------------+
-- 4 rows in set (0.00 sec)


-- SELECT * FROM employee;
-- +-------------+------------------+--------+---------------+
-- | employee_id | employee_name    | salary | department_id |
-- +-------------+------------------+--------+---------------+
-- |           1 | Employee_1_cse   |  50000 |             1 |
-- |           2 | Employee_2_cse   |  60000 |             1 |
-- |           3 | Employee_3_civil |  40000 |             3 |
-- |           4 | Employee_4_mech  |  45000 |             2 |
-- +-------------+------------------+--------+---------------+
-- 4 rows in set (0.00 sec)




-- Write Queries for the following
-- Print employee_id, employee_name and department_name
SELECT e.employee_id, e.employee_name, d.department_name
FROM employee as e
JOIN department as d
ON e.department_id = d.department_id;
-- +-------------+------------------+-----------------+
-- | employee_id | employee_name    | department_name |
-- +-------------+------------------+-----------------+
-- |           1 | Employee_1_cse   | CSE             |
-- |           2 | Employee_2_cse   | CSE             |
-- |           3 | Employee_3_civil | CIVIL           |
-- |           4 | Employee_4_mech  | MECH            |
-- +-------------+------------------+-----------------+
-- 4 rows in set (0.00 sec)




-- Write a Query that prints all the employees and their salaries in descending order of their salary
SELECT employee_name, salary
FROM employee
ORDER BY salary DESC;
-- +------------------+--------+
-- | employee_name    | salary |
-- +------------------+--------+
-- | Employee_2_cse   |  60000 |
-- | Employee_1_cse   |  50000 |
-- | Employee_4_mech  |  45000 |
-- | Employee_3_civil |  40000 |
-- +------------------+--------+
-- 4 rows in set (0.00 sec)




-- Write a Query that prints the average salary of employees in each department with the department name
SELECT d.department_name, e.average_salary
FROM department as d
JOIN 
(
    SELECT department_id, AVG(salary) as average_salary
    FROM employee
    GROUP BY(department_id)
) as e
ON e.department_id = d.department_id;

-- +-----------------+----------------+
-- | department_name | average_salary |
-- +-----------------+----------------+
-- | CSE             |     55000.0000 |
-- | MECH            |     45000.0000 |
-- | CIVIL           |     40000.0000 |
-- +-----------------+----------------+
-- 3 rows in set (0.01 sec)