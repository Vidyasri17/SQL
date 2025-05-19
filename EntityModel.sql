CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

DROP TABLE employee;

INSERT INTO employee VALUES(1, 'Alice', 'alice@gmail.com');
INSERT INTO employee VALUES(2, 'Bob', 'bob@gmail.com');

CREATE TABLE dependent(
    dep_id INT, -- Partial key
    name VARCHAR(50),
    relation VARCHAR(50),
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id), -- Partial key 
    -- Composite primary key
    PRIMARY KEY(emp_id, dep_id) -- 2 1 (Father) 1st dependent of 2nd employee
);

INSERT INTO dependent(dep_id, name, relation, emp_id) VALUES(1, 'David', 'Father', 1);    
INSERT INTO dependent(dep_id, name, relation, emp_id) VALUES(2, 'Mary', 'Mother', 1);    

 DROP TABLE users;
 DROP table contest;
 DROP table challenge cascade constraints;
 DROP table submissions cascade constraints;

CREATE TABLE users(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    mail VARCHAR(100) NOT NULL
);

CREATE TABLE contests(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	date_of_conduction DATE
);

CREATE TABLE challenges(
    id INT PRIMARY KEY,
    contest_id INT REFERENCES contests(id),
    name VARCHAR(50) NOT NULL,
    score INT NOT NULL
);
-- Associative Entity (M: N relationship)
CREATE TABLE submissions(
    id INT PRIMARY KEY,  
    challenge_id INT REFERENCES challenges(id),
    user_id INT REFERENCES users(id),
    contest_id INT REFERENCES contests(id),
    submitted_on DATE,
    result_ INT
);

SELECT * FROM users;
SELECT * FROM contests;
SELECT * FROM challenges;
SELECT * FROM submissions;

SELECT u.id, u.name, s.id, s.challenge_id, s.result_
FROM
submissions s
JOIN 
users s
ON u.id = s.user_id
ORDER BY u.name;

SELECT c.id, c.name, count(*)
FROM
submissions s
JOIN 
challenges c
ON c.id = s.challenge_id
GROUP BY c.id, c.name;

SELECT u.name, c.name, con.name
FROM
submissions s JOIN  users u
ON u.id = s.user_id
JOIN challenges c
ON c.id = s.challenge_id
JOIN contests con 
ON s.contest_id = con.id;



