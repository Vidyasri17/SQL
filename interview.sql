CREATE TABLE employee(
    emp_ID INT PRIMARY KEY,
    name VARCHAR(20),
    age INT,
    salary INT
);
DROP TABLE employee;

INSERT INTO employee VALUES(1, 'PAVAN', 28, 50000);
INSERT INTO employee VALUES(2, 'KIRAN', 30, 45000);
INSERT INTO employee VALUES(3, 'ASHOK', 30, 55000);
INSERT INTO employee VALUES(4, 'ARUNA', 25, 30000);
INSERT INTO employee VALUES(5, 'SAI KALA', 25, 30000);

SELECT * FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee)
FETCH FIRST ROWS ONLY;

SELECT * FROM employee;

