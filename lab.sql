SELECT * FROM employee;
ALTER TABLE students RENAME COLUMN branch TO hobby;
INSERT INTO students VALUES(1, 'Harry', 25, 'Flying', 'Hogwarts');
INSERT INTO students VALUES(2, 'Emma watson', 27, 'Reading', 'Hogwarts');
INSERT INTO students VALUES(3, 'Sam williams', 30, 'Learning', 'Hogwarts');

CREATE TABLE science_stus(
    id INT PRIMARY KEY,
    name VARCHAR(10)
);
CREATE TABLE commerce_stus(
    id INT PRIMARY KEY,
    name VARCHAR(10)
);

INSERT INTO science_stus VALUES(101, 'Alice');
INSERT INTO science_stus VALUES(102, 'Bob');
INSERT INTO science_stus VALUES(103, 'Charlie');
INSERT INTO science_stus VALUES(104, 'David');
INSERT INTO commerce_stus VALUES(103, 'Charlie');
INSERT INTO commerce_stus VALUES(104, 'David');
INSERT INTO commerce_stus VALUES(105, 'Emma');
INSERT INTO commerce_stus VALUES(106, 'Frank');

SELECT * 
FROM science_stus
UNION
SELECT * FROM
commerce_stus;

SELECT * 
FROM science_stus
UNION ALL
SELECT * FROM
commerce_stus;

SELECT * 
FROM science_stus
INTERSECT
SELECT * FROM
commerce_stus;

SELECT * 
FROM science_stus
EXCEPT
SELECT * FROM
commerce_stus;

SELECT * FROM science_stus;
SELECT * FROM commerce_stus;

SELECT name, (SELECT AVG(salary) FROM employee) AS avg_salary FROM employee;
SELECT * FROM employee WHERE salary > (SELECT AVG(salary) FROM employee) ;

SELECT INSTR('Sanju','n') FROM dual;

CREATE TABLE stu(
    sid INT PRIMARY KEY,
    sname VARCHAR(20),
    sage INT
);

INSERT INTO stu VALUES(1, 'Alice', 19);
INSERT INTO stu VALUES(2, 'Bob', 20);
INSERT INTO stu VALUES(3, 'Charlie', 20);

CREATE TABLE cre(
    cid INT PRIMARY KEY,
    cname VARCHAR(20)
)
SELECT * FROM cre;

INSERT INTO cre(cid, cname) VALUES(101, 'C Language');
INSERT INTO cre(cid, cname) VALUES(102, 'C++');
INSERT INTO cre(cid, cname) VALUES(103, 'Python');

CREATE TABLE enrnts(
    sid INT REFERENCES stu(sid),
    cid INT,
    FOREIGN KEY (cid) REFERENCES cre(cid),
    enrol_date DATE DEFAULT SYSDATE,
    grade CHAR(1),
    price INT,
    PRIMARY KEY(sid, cid)
);

INSERT INTO enrnts(sid, cid, grade, price) VALUES(1, 101, 'A', 5000);
INSERT INTO enrnts(sid, cid, grade, price) VALUES(2, 103, 'B', 6000);
INSERT INTO enrnts(sid, cid, grade, price) VALUES(3, 101, 'C', 5000);
INSERT INTO enrnts(sid, cid, grade, price) VALUES(1, 102, 'D', 7000);

-- Trying to normalize the enrollment table (into 2NF)
-- move the price column into course table with data
-- step 1: Add price column to course table (cre)

ALTER TABLE cre ADD price INT;

-- step 2: Bringing exact relevant price to course table
SELECT DISTINCT cid, price FROM enrnts;
UPDATE cre c 
SET price = (SELECT price FROM (SELECT DISTINCT cid, price FROM enrnts) WHERE c.cid = cid);

SELECT * FROM cre;

-- step 3: Remove price column from enrollments
ALTER TABLE enrnts DROP COLUMN price;

SELECT * FROM enrnts;

CREATE TABLE emp(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    salary INT,
    d_id INT,
    d_name VARCHAR(10),
    d_hod VARCHAR(20)
);

INSERT INTO emp VALUES(1, 'Alice', 50000, 12, 'IT', 'ABC');
INSERT INTO emp VALUES(2, 'Bob', 60000, 44, 'DS', 'XYZ');
INSERT INTO emp VALUES(3, 'Charlie', 75000, 12, 'IT', 'ABC');
INSERT INTO emp VALUES(4, 'Diana', 55000, 42, 'AIML', 'PQR');
INSERT INTO emp VALUES(5, 'Eric', 45000, 12, 'IT', 'ABC');

CREATE TABLE new_emp AS
SELECT DISTINCT d_id, d_name, d_hod FROM emp;

SELECT * FROM new_emp;

DROP TABLE new_emp;








