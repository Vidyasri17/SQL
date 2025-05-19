--Triggers 
--Triggers in PL/SQl are stored procedures that
--are automatically fired upon some DML actions
--UPDATE / INSERT / DELETE
--Triggers are of two types
--1. Statement level Trigger (Executes once per statement)
--2. Row level Trigger (Executes once per a row)
--Using Triggers we can,
--1. Automatically calculate some values based on others
--2.Used to do logging 
--3. Used to validate the data before insertion
-- Triggers can be fired in two ways
-- 1. Before the execution of DML command
-- 2. After the execution of DML command
--
--


--syntax of writing a trigger:
--
--CREATE OR TRIGGER trigger_name
--[BEFORE | AFTER] [INSERT | UPDATE] 
--ON table_name
--[FOR EACH ROW] --> Optional, only use for row level triggers
--DECLARE
--        --> declare your variable
--BEGIN
--        --> write executable code
--END;

CREATE OR REPLACE TRIGGER sample_trigger
BEFORE UPDATE ON employee
BEGIN
    DBMS_OUTPUT.PUT_LINE('Trigger is fired');
END;
/

-- Writing a trigger that prints 'Triggers is fired'
-- whenever there is an update taking palce on employee

SET SERVEROUTPUT ON;

SELECT * FROM employee;
UPDATE employee SET age = 30 WHERE id = 46;

CREATE OR REPLACE TRIGGER row_trigger
BEFORE UPDATE ON employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Trigger is fired');
END;
/

UPDATE employee SET gender = 'Male' WHERE id = 3;

UPDATE employee SET department = 'SW' WHERE id = 41;

UPDATE employee SET date_of_joining = TO_DATE('17-03-2025', 'DD-MM-YYYY') 
WHERE date_of_joining IS NULL;

-- Computing age from dob
-- before inserting the data
-- into employee table

CREATE TABLE dummy_employee(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    salary INT,
    dob DATE,
    age INT
);

CREATE OR REPLACE TRIGGER calc_emp_age
BEFORE INSERT ON dummy_employee
FOR EACH ROW
BEGIN
    :NEW.age := FLOOR(MONTHS_BETWEEN(SYSDATE, :NEW.dob) / 12);
END;
/

INSERT INTO dummy_employee(id, name, salary, dob) VALUES(1, 'Alice', 50000, TO_DATE('12-08-1997', 'DD-MM-YYYY'));
INSERT INTO dummy_employee(id, name, salary, dob) VALUES(2, 'Bob', 45000, TO_DATE('12-12-2001', 'DD-MM-YYYY'));

SELECT * FROM dummy_employee;

CREATE TABLE student_fees(
    id INT,
    name VARCHAR(20),
    fees INT,
    spc_fee INT
);

-- Trigger to calculate special fees (spc_fee) IN student fees
CREATE OR REPLACE TRIGGER special_fee
BEFORE INSERT ON student_fees
FOR EACH ROW
BEGIN
    :NEW.spc_fee := :NEW.fees / 10;
END;
/

INSERT INTO student_fees(id, name, fees) VALUES(1, 'Harry', 50000);
INSERT INTO student_fees(id, name, fees) VALUES(2, 'Hermoine', 55000);
INSERT INTO student_fees(id, name, fees) VALUES(3, 'Ron', 75000);

SELECT * FROM student_fees;

-- Keep the track of changes whenever the employee 
-- salary is updated in employee table

CREATE TABLE salary_log_table(
    e_id INT,
    old_sal INT,
    new_sal INT,
    updated_date DATE DEFAULT SYSDATE
);

-- Trigger that inserts a new row
-- salary_log_table whenever there is a update
-- operation takes place on employee table
CREATE OR REPLACE TRIGGER emp_sal_change
AFTER UPDATE ON employee
FOR EACH ROW
BEGIN
    -- Pseudo records
    -- :NEW :OLD
    INSERT INTO salary_log_table(e_id, old_sal, new_sal) VALUES(:NEW.id, :OLD.salary, :NEW.salary); 
END;
/













