-- Create Employee Table
CREATE TABLE employe (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    salary INT
);

-- Insert Employee Data
INSERT INTO employe VALUES
(1, 'Supriya', 101, 50000),
(2, 'Rahul', 102, 45000),
(3, 'Anjali', 101, 60000),
(4, 'Kiran', 103, 70000),
(5, 'Priya', 102, 55000);


-- Create Department Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Department Data
INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance');


-- SELECT Query
SELECT *
FROM employe;


-- WHERE Query
SELECT *
FROM employe
WHERE salary > 50000;


-- GROUP BY Query
SELECT department_id, AVG(salary)
FROM employe
GROUP BY department_id;


-- JOIN Query
SELECT 
    employees.emp_name,
    departments.department_name
FROM employe
JOIN departments
ON employe.department_id = departments.department_id;