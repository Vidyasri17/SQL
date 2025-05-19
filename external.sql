-- 3A
CREATE TABLE course(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    validity VARCHAR(20) NOT NULL,
    instructor VARCHAR(50) NOT NULL
);

DROP TABLE course;

INSERT INTO course 
VALUES(1, 'C++', '6 months', 'Mr. Pavan');
INSERT INTO course 
VALUES(2,  'Java', '6 months', 'Mr. Venkatesh');

UPDATE course
SET validity = '1 year' 
WHERE id = 1;

ALTER TABLE course
ADD fee INT;

SELECT * FROM course;

--  3B
SET SERVEROUTPUT ON;
DECLARE 
    num INT;
    i INT := 2;
    flag BOOLEAN := TRUE;
BEGIN
    num := '&num';
    WHILE i <= SQRT(num) LOOP
        IF MOD(num, i) = 0 THEN
            flag := FALSE;
            EXIT;
        END IF;
        i := i + 1;
    END LOOP;
    IF flag THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a prime number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is not a prime number');
    END IF;
END;
/

-- 4A
CREATE TABLE students(
    id INT PRIMARY KEY,
    firstname VARCHAR(20),
    lastname VARCHAR(20),
    major VARCHAR(20),
    cgpa FLOAT
);

DROP TABLE students;

INSERT INTO students VALUES(1, 'Harry', 'Potter', 'AIML', 8.7);
INSERT INTO students VALUES(2, 'Ron', 'Weasley', 'IT', 8.0);
INSERT INTO students VALUES(4, 'Hermoine', 'Granger', 'AIML', 9.5);
INSERT INTO students VALUES(3, 'Genny', 'Weasley', 'CSE', 8.5);

SELECT * FROM students;

-- 1
SELECT firstname, lastname
FROM students
WHERE major IN ('AIML', 'IT');

-- 2
SELECT *
FROM students
WHERE cgpa  > ANY (SELECT cgpa FROM students WHERE major = 'AIML');

-- 3
SELECT S1.firstName, S1.lastName
FROM students S1
WHERE EXISTS (
    SELECT 1 FROM students S2
    WHERE S1.major = S2.major AND S1.id <> S2.id
);
-- OR
SELECT firstname, lastname
FROM students s1
WHERE EXISTS
(SELECT 1 FROM students s2 WHERE s1.major = s2.major AND s1.id != s2.id);

-- 4B
CREATE OR REPLACE FUNCTION factorial(num INT) 
RETURN INT AS
    i INT := 1;
    fact INT := 1;
BEGIN
    WHILE i <= num LOOP
        fact := fact * i;
        i := i + 1;
    END LOOP;
    RETURN fact;
END;
/

SELECT factorial(5) FROM dual;

-- 7A
SELECT count(salary) FROM employee;
SELECT count(*) FROM employee;
SELECT SUM(salary) FROM employee;

SELECT department, SUM(salary) 
FROM employee
GROUP BY department
HAVING SUM(salary) > 500000;

SELECT * FROM employee;

-- 7B
CREATE TABLE customer(
    Cid INT PRIMARY KEY,
    Cname VARCHAR(50),
    Address VARCHAR(50)
);

INSERT INTO customer VALUES(1, 'Harry', 'London');
INSERT INTO customer VALUES(2, 'Hermoine', 'London');

DECLARE
    CURSOR customer_cursor IS
        SELECT Cid, Cname, Address FROM CUSTOMER;
    c_id CUSTOMER.Cid%TYPE;
    c_name CUSTOMER.Cname%TYPE;
    c_address CUSTOMER.Address%TYPE;
BEGIN
    OPEN customer_cursor;
        LOOP
            FETCH customer_cursor INTO c_id, c_name, c_address;
            EXIT WHEN customer_cursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('ID: ' || c_id || ', NAME: ' || c_name || ', ADDRESS: ' || c_address);
        END LOOP;
    CLOSE customer_cursor;
END;
/

-- 8 A
CREATE TABLE product(
    price INT,
    product VARCHAR(50),
    category VARCHAR(50)
);
INSERT INTO product VALUES(3000, 'saree', 'Womenswear');
INSERT INTO product VALUES(1200, 'shoes', 'Menswear');
INSERT INTO product VALUES(500, 'Wand', 'Toys');
INSERT INTO product VALUES(2000, 'Dress', 'Womenswear');
INSERT INTO product VALUES(200, 'Belt', 'Menswear');
INSERT INTO product VALUES(500, 'Car', 'Toys');

SELECT * FROM product;

SELECT AVG(price), MAX(price), MIN(price)
FROM product;

SELECT COUNT(*)
FROM product;

SELECT AVG(price), category
FROM product
GROUP BY category
HAVING AVG(price) > 1000;
/

-- 8B
DECLARE
    num INT;
    temp INT := 0;
    dup INT;
    digit INT;
BEGIN
    num := '&num';
    dup := num;
    WHILE dup > 0 LOOP
        digit := MOD(dup, 10);
        dup := TRUNC(dup /10);
        temp := temp + (digit * digit * digit);
    END LOOP;
    IF temp = num THEN 
        DBMS_OUTPUT.PUT_LINE(num || ' is AN ARMSTRONG NUMBER');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is NOT AN ARMSTRONG NUMBER');
    END IF;
END;
/



