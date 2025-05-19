--Only one column in your table can be IDENTITY
--IDENTITY can be applied on numeric types only
--START value will be 1, INCREMENT values will be 1
DROP TABLE student;
CREATE TABlE student{
    GENERATED AS IDENTITY id INT PRIMARY KEY,
    name varchar(20) NOT NULL
);

INSERT INTO student(name) VALUES('Alice');

CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    salary INT NOT NULL,
    joining_date DATE
);

DROP TABLE employee;

SELECT value FROM nls_session_parameters WHERE parameter = 'NLS_DATE_FORMAT';

INSERT INTO employee VALUES(1, 'Alice', 50000, '02-JAN-25');
INSERT INTO employee VALUES(2, 'Bob', 45000, '23-JAN-23');
INSERT INTO employee VALUES(3, 'Charlie', 30000, '02-DEC-25');
INSERT INTO employee VALUES(4, 'David', 35000, '17-01-0022');
-- Changing current nls date format
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YYYY';

SELECT * FROM employee;
