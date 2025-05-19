--view 
--views are like virtual tables
--syntax of creating a view 
--CREATE VIEW view_name AS SELECT
--CREATE a view called hr_employees
CREATE VIEW hr_employees AS
SELECT * FROM employee WHERE department = 'HR';

-- Fetch the data through view
SELECT * FROM hr_employees;

--Creating more views to save some query writing time
CREATE VIEW dept_wise_employee_count AS
SELECT department, COUNT(*) AS dept_emp_count
FROM employee GROUP BY department;

SELECT * FROM dept_wise_employee_count;

--Deleting couple of employees from employee table
--to demostrate views alwayys fetch the data
--from source table

DELETE FROM employee WHERE id = 1;
DELETE FROM employee WHERE id = 2;

-- Create a view with all the highest salaried persons from each department

CREATE VIEW max_salary_dept_wise AS
WITH cte AS(
    SELECT id, name, department, salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC)  AS rank_
    FROM employee WHERE salary IS NOT NULL
) SELECT * FROM cte WHERE rank_ = 1;

SELECT * FROM max_salary_dept_wise;

-- Deleting max_salary_dept_wise

DELETE FROM employee WHERE id = 44;

-- A view from a join
SELECT * FROM users;
SELECT * FROM star_rating;

--Theta join

CREATE VIEW user_star_rating AS
SELECT u.id, u.name, u.age, u.contest_rating, s.star FROM 
users u 
JOIN 
star_rating s
ON u.contest_rating BETWEEN s.start_ AND s.stop_;
--Fetch the data from view
SELECT * FROM user_star_rating;

--A view to check how many users fall under each star_rating
CREATE VIEW rating_users_count AS
SELECT s.star, COUNT(u.id) AS total_users
FROM 
star_rating s
LEFT JOIN
users u
ON u.contest_rating BETWEEN s.stop_ AND s.stop_
GROUP BY s.star
ORDER BY s.star;
--Fetch the data from view
SELECT * FROM rating_users_count;

--Types of views
-- 1. Updatable views
--  a. It must be created on a single table
--  b. The source query that constructs the view
--   should not contain DISTINCT, UNION, UNION ALL
--   INSERTCT, EXCEPT / MINUS
--  c. It should not be created using a JOIN
--  d. It should contain any single row or aggregate functions
--  e. It should not contain GROUP BY
-- Updatable views can be updated using the UPDATE query
-- When a view is UPDATED the under-lying source table data 
-- is updated
SELECT * FROM hr_employees;
UPDATE hr_employees SET gender = 'Male' WHERE id = 5; 

SELECT * FROM employee WHERE id = 5;

-- 2. Non updatable views

SELECT * FROM dept_wise_employee_count ;

UPDATE dept_wise_employee_count
SET department = 40
WHERE department = 'Operations';
-- SQL Error: ORA-01732: data manipulation operation not legal on this view
-- Uses of views
--1. Saving time for query writing
--2. Data hiding 
--3. Restricted Access

--Having multiple database users
--DBADMIN -> Students Employees
--Different data base users, provides
--each user with their own responsibilities

SELECT * FROM all_users;

-- COMMAND to check all the tables from current user
SELECT * FROM user_tables;

-- COMMAND to check all the tables from current user
SELECT table_name FROM user_tables;










--creating different data base users
--GRANT privileges to users created

SHOW user;

-- Inspecting the privileges SYSTEM is having
SELECT * FROM SESSION_PRIVS;

-- Creating a user called hdo - hr department operator
CREATE USER c##hdo IDENTIFIED BY 1234;

-- CHECK if the user is present in all users list
SELECT * FROM all_users;

--Granting privileges to created users
-- Syntax - GRANT privilegename TO user_name
GRANT CREATE SESSION TO c##hdo; 
GRANT ALTER SESSION TO c##hdo; 
GRANT CREATE TABLE TO c##hdo;

SHOW user;

SELECT * FROM hr_employees;

-- Giving access to hr_employees to c##hdo

GRANT SELECT ON system.hr_employees TO c##hdo;
--GRANT UPDATE ON system.hr_employees TO c##hdo;

-- # PL / SQL
--procedural language 
--Introduction to PL/SQL
--It allows us to wrote standard procedural code 
--It offers a way to seamlesly interact with
--SQL also
--Basic components of PL/SQL
--DECLARE section (optional)
--BEGIN section (mandatory)
--EXCEPT section (optional)
--DECLARE section we try to declare / initialize variable
--BEGIN section is going to contain the executable code
--EXCEPT section is used to raise exceptions
--printf(), print(), Syatem.out.println()
--DBMS_OUTPUT.PUT_LINE()

--PL//SQL code to print hello world on to the screen
SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello World');
END;
/

-- Using DECLARE section to declare variables
-- Variable declaration syntax
-- variable_name datatype
DECLARE
    num INT;
BEGIN 
    -- Assign a value to variable
    -- Assignment operator (:=)
    num := 10;
    DBMS_OUTPUT.PUT_LINE(num);
END;
/

-- Initializing variable during declaration
DECLARE 
    a INT := 10;
    name VARCHAR(50) := 'Pavan';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Number is : ' || a);
    DBMS_OUTPUT.PUT_LINE('Name is : ' || name);
END;
/

-- Doing computation in PL/SQL
-- To find out the square of a given number in PL/SQL
DECLARE 
    num INT;
    square INT;
BEGIN
    num := &num;
    -- Computing num square and storing square variable
    square := num * num;
    DBMS_OUTPUT.PUT_LINE('Square value is: ' || square);
END;
/

-- Write a PL/SQL Code to Find Area and perimeter of a square
DECLARE
    side INT := 5;
    area INT;
    perimeter INT;
BEGIN
    area := side * side;
    perimeter := 4 * side;
    DBMS_OUTPUT.PUT_LINE('Area is: ' || area);
    DBMS_OUTPUT.PUT_LINE('Perimeter is: ' || perimeter);
END;
/

-- DBMS_OUTPUT.PUT_LINE()
-- DBMS_OUTPUT.PUT()
BEGIN
    DBMS_OUTPUT.PUT('Hello ');
    DBMS_OUTPUT.PUT('World, ');
    DBMS_OUTPUT.PUT('This is Pavan.' );
    DBMS_OUTPUT.NEW_LINE();
    DBMS_OUTPUT.PUT('I work in Thub, ' );
    DBMS_OUTPUT.PUT('Which is located in Aditya' );
    DBMS_OUTPUT.NEW_LINE();
END;
/

-- CONDITIONAL STATEMENTS in PL/SQL
-- IF-THEN
-- IF-THEN-ELSE
-- IF-THEN-ELSIF-THEN-ELSE
-- CASE(In two different ways)

--IF-THEN
--syntax
--IF condition THEN code
--If the condition provided is true, then code fgets executed
--Every if statement must end with END IF
DECLARE
    age INT;
BEGIN
    age := &age;
    IF age > 18 THEN
        DBMS_OUTPUT.PUT_LINE('You can vote');
    END IF;
END;
/

--IF-THEN-ELSE
--syntax
--IF condition THEN code ELSE code END IF
DECLARE
    age INT;
BEGIN
    age := &age;
    IF age > 18 THEN
        DBMS_OUTPUT.PUT_LINE('You can vote');
    ELSE
        DBMS_OUTPUT.PUT_LINE('You cannot vote');
    END IF;
END;
/

-- PL/SQL code to find a number is even or odd
DECLARE
    num INT;
BEGIN
    num := &num;
    IF MOD(num, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is even');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is odd');
    END IF;
END;
/

-- Nested if else can also be written
BEGIN
    IF 10 > 20 THEN
        IF 20 > 10 THEN
            DBMS_OUTPUT.PUT_LINE('A');
        ELSE
            DBMS_OUTPUT.PUT_LINE('C');
        END IF;
    ELSE 
        DBMS_OUTPUT.PUT_LINE('B');
    END IF;
END;
/

BEGIN
    IF 10 < 20 THEN
        IF 20 < 10 THEN
            DBMS_OUTPUT.PUT_LINE('A');
        ELSE
            DBMS_OUTPUT.PUT_LINE('C');
        END IF;
    ELSE 
        DBMS_OUTPUT.PUT_LINE('B');
    END IF;
END;
/

-- MAX of three numbers
DECLARE
    a INT;
    b INT;
    c INT;
    max_of_three INT;
BEGIN
    a := &a;
    b := &b;
    c := &c;
    IF a > b THEN
        IF a > c THEN 
            max_of_three := a;
        ELSE
            max_of_three := c;
        END IF;
    ELSE 
        IF b > c THEN 
            max_of_three := b;
        ELSE
            max_of_three := c;
        END IF;
    DBMS_OUTPUT.PUT_LINE('Max of three: ' || max_of_three);
    END IF;
END;
/

-- ELSE IF, ELIF, ELSIF
-- MAX oF three using IF-THEN-ELSIF-THEN-ELSE
-- syntax
-- IF-THEN-ELSIF-THEN-ELSE END IF
DECLARE
    a INT;
    b INT;
    c INT;
    max_of_three INT;
BEGIN
    a := &a;
    b := &b;
    c := &c;
    IF a > b AND a > c THEN
        max_of_three := a;
    ELSIF b > a AND b > c THEN
        max_of_three := b;
    ELSE
        max_of_three := c;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Max of number: ' || max_of_three);
END;
/

-- CASE (switch case)
-- 1. Simple CASE (operators on value look up)
-- syntax
-- CASE variable
    -- WHEN value1 THEN statement1
    -- WHEN value2 THEN statement2
    -- ....
    -- ELSE statements
DECLARE
    num INT;
BEGIN
    num := &num;
    CASE num
        WHEN 1 THEN DBMS_OUTPUT.PUT_LINE('Monday');
        WHEN 2 THEN DBMS_OUTPUT.PUT_LINE('Tuesday');
        WHEN 3 THEN DBMS_OUTPUT.PUT_LINE('Wednesday');
        WHEN 4 THEN DBMS_OUTPUT.PUT_LINE('Thursday');
        WHEN 5 THEN DBMS_OUTPUT.PUT_LINE('Friday');
        ELSE DBMS_OUTPUT.PUT_LINE('Invalid Option');
        
    END CASE;
END;
/

-- 2. Searching CASE (Operators on condition(s))
DECLARE
    salary INT;
BEGIN
    salary := &salary;
    CASE
        WHEN salary > 50000 THEN DBMS_OUTPUT.PUT_LINE('High paid');
        WHEN salary BETWEEN 30000 AND 50000 THEN DBMS_OUTPUT.PUT_LINE('Medium paid');
        ELSE DBMS_OUTPUT.PUT_LINE('Low paid');
    END CASE;
END;
/

-- Loops (Iterative statements)

--Three types of loops
--1. BASIC loop (do-while in C)
-- Runs infinite times unless you specify EXIT WHEN statement
-- syntax
-- LOOP
    -- code
    -- EXIT WHEN condition
DECLARE
    i INT := 1;
BEGIN 
    LOOP
        DBMS_OUTPUT.PUT_LINE('Number: ' || i);
        i := i + 1;
        EXIT WHEN i = 11;
    END LOOP;
END;
/

DECLARE
    i INT := 10;
BEGIN 
    LOOP
        DBMS_OUTPUT.PUT_LINE('Number: ' || i);
        i := i - 1;
        EXIT WHEN i = 0;
    END LOOP;
END;
/

-- Factors of num
DECLARE
    num INT;
    i INT := 1;
BEGIN 
    num := &num;
    LOOP
        IF MOD(num, i) = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Factor: ' || i);
        END IF;
        i := i + 1;
        EXIT WHEN i = num + 1;
        
    END LOOP;
END;
/

-- Find the count of Factors of given number 
DECLARE
    num INT;
    i INT := 1;
    factor_count INT := 0;
BEGIN 
    num := &num;
    LOOP
        IF MOD(num, i) = 0 THEN
            factor_count := factor_count + 1;
        END IF;
        i := i + 1;
        EXIT WHEN i = num + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Factor count: ' || factor_count);
END;
/

--2. WHILE loop (while loop in C)

DECLARE
    i INT := 1;
BEGIN
    WHILE i < 11 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;
/

-- Count of Factors of num
DECLARE
    num INT;
    i INT := 1;
    cnt INT := 0;
BEGIN 
    num := &num;
    WHILE i < num + 1 LOOP
        IF MOD(num, i) = 0 THEN
            cnt := cnt + 1;
        END IF;
        i := i + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Factor count: ' || cnt);
END;
/

--3. FOR loop (for loop in C)
-- Works on range of values
-- FOR loop_variable IN start..stop LOOP
    -- code
-- END LOOP

-- Printing numbers from 1 to 10 using for loop
SET SERVEROUTPUT ON;
BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('Number: ' || i );
    END LOOP;
END;
/

-- Reverse order
SET SERVEROUTPUT ON;
BEGIN
    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('Number: ' || i );
    END LOOP;
END;
/

-- DBMS_OUTPUT.PUT
-- buffer: accumulates all the string from PUT
BEGIN
    DBMS_OUTPUT.PUT('Hi all ');
    DBMS_OUTPUT.PUT('I am pavan ');
    DBMS_OUTPUT.PUT('from Tehnical Hub.');
    DBMS_OUTPUT.NEW_LINE(); -- prints accumulated string
END;
/

-- Nested loops
--* * * * *
--* * * * *
--* * * * *
--* * * * *
--* * * * *
BEGIN
    FOR i IN 1..5 LOOP
        FOR j IN 1..5 LOOP
            DBMS_OUTPUT.PUT('* ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE();
    END LOOP;
END;
/

-- Using for loop to print the numbers in reverse order
BEGIN
    FOR i IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('Number : ' || i);
    END LOOP;
END;
/

