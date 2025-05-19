CREATE TABLE employee (
    id NUMBER(5) PRIMARY KEY,
    name VARCHAR2(50),
    age INT,
    gender VARCHAR2(10),
    department VARCHAR2(20),
    salary INT,
    date_of_joining DATE,
    email VARCHAR2(100)
);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (1, 'John Doe', 29, 'Male', 'HR', 55000, TO_DATE('2021-04-15', 'YYYY-MM-DD'), 'john.doe@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (2, 'Jane Smith', 34, 'Female', 'SW', 62000, TO_DATE('2019-03-12', 'YYYY-MM-DD'), 'jane.smith@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (3, 'Sam Williams', NULL, NULL, 'Operations', 73000, TO_DATE('2020-06-25', 'YYYY-MM-DD'), 'sam.williams@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (4, 'Emily Brown', 30, 'Female', 'Testing', 67000, TO_DATE('2018-07-10', 'YYYY-MM-DD'), 'emily.brown@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (5, 'David Johnson', 32, NULL, 'HR', 75000, TO_DATE('2021-01-18', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (6, 'Sarah Lee', 27, 'Female', 'SW', 54000, TO_DATE('2022-09-05', 'YYYY-MM-DD'), 'sarah.lee@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (7, 'Michael Davis', NULL, NULL, 'Operations', 82000, TO_DATE('2018-12-20', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (8, 'Olivia Wilson', 25, 'Female', 'Testing', 66000, TO_DATE('2020-07-15', 'YYYY-MM-DD'), 'olivia.wilson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (9, 'James Martinez', 40, 'Male', NULL, 59000, TO_DATE('2015-01-05', 'YYYY-MM-DD'), 'james.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (10, 'Sophia Taylor', 26, 'Female', 'SW', 70000, TO_DATE('2021-03-09', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (11, 'William Anderson', 33, 'Male', 'Operations', NULL, TO_DATE('2021-06-18', 'YYYY-MM-DD'), 'william.anderson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (12, 'Lucas Thomas', 29, 'Male', 'Testing', 63000, TO_DATE('2020-02-25', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (13, 'Amelia Garcia', 31, 'Female', 'HR', 50000, TO_DATE('2019-11-05', 'YYYY-MM-DD'), 'amelia.garcia@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (14, 'Ethan White', 35, 'Male', NULL, NULL, TO_DATE('2020-03-25', 'YYYY-MM-DD'), 'ethan.white@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (15, 'Isabella Martinez', 32, 'Female', 'Testing', 64000, TO_DATE('2020-08-30', 'YYYY-MM-DD'), 'isabella.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (16, 'Daniel Lee', 28, 'Male', NULL, NULL, TO_DATE('2022-05-17', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (17, 'Charlotte Harris', 31, 'Female', 'Operations', 56000, NULL, 'charlotte.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (18, 'Henry Clark', 40, 'Male', 'HR', 80000, TO_DATE('2020-03-25', 'YYYY-MM-DD'), 'henry.clark@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (19, 'Mia Young', 26, 'Female', 'SW', 60000, TO_DATE('2022-11-10', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (20, 'Jacob Scott', 37, 'Male', 'Testing', 71000, TO_DATE('2018-04-05', 'YYYY-MM-DD'), 'jacob.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (21, 'Ella Adams', 27, 'Female', NULL, 54000, TO_DATE('2022-07-19', 'YYYY-MM-DD'), 'ella.adams@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (22, 'Aiden Robinson', 30, 'Male', 'SW', NULL, TO_DATE('2021-02-28', 'YYYY-MM-DD'), 'aiden.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (23, 'Lily Carter', 33, NULL, 'Operations', 75000, NULL, 'lily.carter@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (24, 'Benjamin Lewis', 37, NULL, 'Testing', 69000, TO_DATE('2020-09-10', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (25, 'Chloe Walker', 31, 'Female', 'HR', 64000, TO_DATE('2019-04-22', 'YYYY-MM-DD'), 'chloe.walker@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (26, 'Matthew Hall', NULL, NULL, 'SW', 72000, NULL, 'matthew.hall@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (27, 'Charlotte King', 32, 'Female', 'Operations', 78000, TO_DATE('2021-11-30', 'YYYY-MM-DD'), 'charlotte.king@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (28, 'Elijah Allen', 26, 'Male', 'HR', 58000, TO_DATE('2021-02-01', 'YYYY-MM-DD'), 'elijah.allen@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (29, 'Zoe Wright', 29, 'Female', 'Testing', 71000, TO_DATE('2020-09-14', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (30, 'Alexander Green', 41, 'Male', 'SW', 83000, NULL, 'alexander.green@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (31, 'Ava Mitchell', 26, 'Female', 'HR', 57000, TO_DATE('2022-08-19', 'YYYY-MM-DD'), 'ava.mitchell@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (32, 'Oliver Martin', NULL, 'Male', 'SW', 66000, TO_DATE('2021-01-11', 'YYYY-MM-DD'), 'oliver.martin@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (33, 'Amos Turner', 28, 'Male', NULL, NULL, TO_DATE('2022-04-22', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (34, 'Ruby Harris', 30, 'Female', 'Testing', 71000, NULL, 'ruby.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (35, 'Jack Carter', NULL, 'Male', 'SW', 75000, TO_DATE('2021-03-17', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (36, 'Liam Allen', 37, 'Male', 'Operations', 73000, TO_DATE('2022-07-10', 'YYYY-MM-DD'), 'liam.allen@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (37, 'Sophie Hill', 30, 'Female', 'HR', 56000, TO_DATE('2019-10-03', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (38, 'Charlie Scott', 29, 'Male', 'SW', 68000, TO_DATE('2021-05-09', 'YYYY-MM-DD'), 'charlie.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (39, 'Alice Young', 32, 'Female', 'Testing', NULL, TO_DATE('2020-12-25', 'YYYY-MM-DD'), 'alice.young@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (40, 'Daniel Young', 35, 'Male', 'Operations', 70000, TO_DATE('2021-11-11', 'YYYY-MM-DD'), 'daniel.young@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (41, 'Megan Mitchell', 28, 'Female', NULL, 55000, TO_DATE('2022-06-15', 'YYYY-MM-DD'), 'megan.mitchell@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (42, 'Lucas Rodriguez', 30, 'Male', NULL, 80000, TO_DATE('2021-01-20', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (43, 'Sophia Hernandez', 33, 'Female', 'HR', 75000, NULL, 'sophia.hernandez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (44, 'Evan Moore', 40, 'Male', 'Operations', 85000, TO_DATE('2018-09-21', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (45, 'Mason King', 35, 'Male', 'Testing', 67000, TO_DATE('2020-04-10', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (46, 'Jack Taylor', NULL, 'Male', NULL, 60000, NULL, 'jack.taylor@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (47, 'Grace Brown', 34, 'Female', 'SW', 69000, TO_DATE('2019-06-08', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (48, 'Benjamin Green', 38, NULL, 'Testing', 72000, TO_DATE('2021-02-10', 'YYYY-MM-DD'), 'benjamin.green@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (49, 'Mia Robinson', NULL, 'Female', 'HR', 71000, NULL, 'mia.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (50, 'Noah Wright', 31, 'Male', 'Operations', NULL, TO_DATE('2020-08-23', 'YYYY-MM-DD'), 'noah.wright@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (51, 'Lucas Walker', 29, 'Male', 'HR', 35000, TO_DATE('2021-11-05', 'YYYY-MM-DD'), 'lucas.walker@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (52, 'Megan Clark', 33, 'Female', 'Operations', 50000, TO_DATE('2019-02-15', 'YYYY-MM-DD'), 'megan.clark@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (53, 'James Turner', 40, 'Male', 'Testing', 55000, TO_DATE('2015-07-25', 'YYYY-MM-DD'), 'james.turner@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (54, 'Ava Martinez', 26, 'Female', 'SW', 48000, TO_DATE('2020-01-20', 'YYYY-MM-DD'), 'ava.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (55, 'Liam Johnson', 38, 'Male', NULL, 60000, TO_DATE('2022-08-05', 'YYYY-MM-DD'), 'liam.johnson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (56, 'Olivia Wright', 32, 'Female', 'HR', 42000, TO_DATE('2020-09-15', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (57, 'Mason Lee', 26, NULL, 'Operations', 35000, TO_DATE('2021-06-12', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (58, 'Sophia Young', 29, 'Female', 'SW', 55000, TO_DATE('2017-05-30', 'YYYY-MM-DD'), 'sophia.young@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (59, 'Jacob Wilson', 34, 'Male', 'HR', 50000, TO_DATE('2020-01-10', 'YYYY-MM-DD'), 'jacob.wilson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (60, 'Chloe Scott', 33, 'Female', 'Testing', 45000, TO_DATE('2021-02-25', 'YYYY-MM-DD'), 'chloe.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (61, 'William Harris', 38, 'Male', NULL, 75000, TO_DATE('2016-06-17', 'YYYY-MM-DD'), 'william.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (62, 'Amelia Moore', 30, 'Female', 'Operations', 55000, TO_DATE('2019-03-30', 'YYYY-MM-DD'), 'amelia.moore@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (63, 'Henry Green', 35, 'Male', 'SW', 70000, TO_DATE('2018-11-22', 'YYYY-MM-DD'), 'henry.green@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (64, 'Lily Adams', 29, NULL, 'HR', 41000, TO_DATE('2020-12-04', 'YYYY-MM-DD'), 'lily.adams@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (65, 'Noah Carter', 41, 'Male', 'Testing', 60000, TO_DATE('2015-09-12', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (66, 'Amos King', 27, 'Male', 'Operations', 50000, TO_DATE('2021-07-29', 'YYYY-MM-DD'), 'amos.king@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (67, 'Zoe Evans', 32, 'Female', 'SW', 65000, TO_DATE('2021-02-13', 'YYYY-MM-DD'), 'zoe.evans@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (68, 'Jacob Thomas', 28, 'Male', 'HR', 48000, TO_DATE('2021-06-06', 'YYYY-MM-DD'), 'jacob.thomas@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (69, 'Mia Jackson', 30, 'Female', 'Operations', 52000, TO_DATE('2022-02-10', 'YYYY-MM-DD'), 'mia.jackson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (70, 'Jack Davis', 36, 'Male', 'Testing', 35000, TO_DATE('2014-08-22', 'YYYY-MM-DD'), 'jack.davis@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (71, 'Ava Robinson', 27, 'Female', 'SW', 62000, TO_DATE('2021-10-19', 'YYYY-MM-DD'), 'ava.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (72, 'Benjamin Walker', 40, 'Male', 'Operations', 68000, TO_DATE('2019-11-07', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (73, 'Chloe Lee', 31, 'Female', 'HR', 56000, TO_DATE('2018-12-11', 'YYYY-MM-DD'), 'chloe.lee@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (74, 'Sophie Scott', 32, 'Female', 'Testing', 49000, TO_DATE('2020-03-01', 'YYYY-MM-DD'), 'sophie.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (75, 'Oliver Wilson', 33, 'Male', 'Operations', 63000, TO_DATE('2021-08-24', 'YYYY-MM-DD'), 'oliver.wilson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (76, 'Aiden Green', 30, NULL, 'HR', 47000, TO_DATE('2022-10-01', 'YYYY-MM-DD'), 'aiden.green@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (77, 'Emma Thomas', 29, 'Female', 'Testing', 50000, TO_DATE('2019-05-30', 'YYYY-MM-DD'), 'emma.thomas@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (78, 'Lucas Robinson', 30, 'Male', 'SW', 55000, TO_DATE('2022-03-18', 'YYYY-MM-DD'), 'lucas.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (79, 'Elijah White', 32, 'Male', 'HR', 49000, TO_DATE('2021-09-10', 'YYYY-MM-DD'), 'elijah.white@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (80, 'Oliver Harris', 28, 'Male', 'Operations', 55000, TO_DATE('2018-05-20', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (81, 'Emily Walker', 35, 'Female', 'Testing', 60000, TO_DATE('2020-06-01', 'YYYY-MM-DD'), 'emily.walker@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (82, 'Joshua Evans', 27, 'Male', 'SW', 58000, TO_DATE('2021-04-04', 'YYYY-MM-DD'), 'joshua.evans@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (83, 'Isabella Lee', 28, 'Female', 'Operations', 45000, TO_DATE('2022-11-30', 'YYYY-MM-DD'), 'isabella.lee@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (84, 'Zoe Walker', 31, 'Female', 'Testing', 62000, TO_DATE('2021-01-12', 'YYYY-MM-DD'), 'zoe.walker@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (85, 'Jack Harris', 40, 'Male', 'SW', 72000, TO_DATE('2015-04-20', 'YYYY-MM-DD'), 'jack.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (86, 'Emily Mitchell', 29, 'Female', 'Operations', 53000, TO_DATE('2019-09-11', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (87, 'Ava Wilson', 35, 'Female', 'Testing', 65000, TO_DATE('2020-04-16', 'YYYY-MM-DD'), 'ava.wilson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (88, 'Jacob Lewis', 33, 'Male', 'HR', 54000, TO_DATE('2021-05-15', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (89, 'Emma Turner', 36, 'Female', 'Operations', 69000, TO_DATE('2020-03-01', 'YYYY-MM-DD'), 'emma.turner@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (90, 'Ethan Scott', 28, 'Male', 'SW', 55000, TO_DATE('2021-07-12', 'YYYY-MM-DD'), 'ethan.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (91, 'Charlotte Anderson', 29, 'Female', 'HR', 35000, TO_DATE('2022-05-12', 'YYYY-MM-DD'), 'charlotte.anderson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (92, 'Liam Carter', 35, 'Male', 'SW', 48000, TO_DATE('2020-10-01', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (93, 'Mason Harris', 40, 'Male', 'Testing', 62000, TO_DATE('2018-04-15', 'YYYY-MM-DD'), 'mason.harris@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (94, 'Olivia Wilson', 30, 'Female', 'Operations', 53000, TO_DATE('2019-02-25', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (95, 'Benjamin Walker', 28, 'Male', 'SW', 47000, TO_DATE('2021-07-05', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (96, 'Sophia Lee', 33, 'Female', 'HR', 42000, TO_DATE('2019-11-13', 'YYYY-MM-DD'), 'sophia.lee@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (97, 'Lucas Evans', 30, NULL, 'Testing', 52000, TO_DATE('2021-06-22', 'YYYY-MM-DD'), 'lucas.evans@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (98, 'Lily Green', 34, 'Female', 'Operations', 65000, TO_DATE('2017-08-30', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (99, 'Henry Scott', 31, 'Male', 'Testing', 54000, TO_DATE('2020-03-17', 'YYYY-MM-DD'), 'henry.scott@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (100, 'Chloe Brown', 27, 'Female', 'HR', 48000, TO_DATE('2021-05-10', 'YYYY-MM-DD'), 'chloe.brown@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (101, 'James Johnson', 38, 'Male', 'SW', 70000, TO_DATE('2015-09-18', 'YYYY-MM-DD'), 'james.johnson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (102, 'Ava Robinson', 30, NULL, 'Testing', 46000, TO_DATE('2020-02-03', 'YYYY-MM-DD'), 'ava.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (103, 'Elijah Turner', 35, 'Male', 'Operations', 55000, TO_DATE('2021-08-09', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (104, 'Isabella Martinez', 32, 'Female', 'HR', 53000, TO_DATE('2021-06-22', 'YYYY-MM-DD'), 'isabella.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (105, 'Oliver Thomas', 27, 'Male', 'SW', 58000, TO_DATE('2019-01-25', 'YYYY-MM-DD'), 'oliver.thomas@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (106, 'Sophia Wilson', 33, 'Female', NULL, 52000, TO_DATE('2018-11-10', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (107, 'Aiden Clark', 29, NULL, 'Operations', 39000, TO_DATE('2019-07-19', 'YYYY-MM-DD'), 'aiden.clark@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (108, 'Madison Wright', 32, 'Female', 'HR', 48000, TO_DATE('2021-09-04', 'YYYY-MM-DD'), 'madison.wright@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (109, 'Samuel Rodriguez', 30, NULL, 'SW', 60000, TO_DATE('2020-12-13', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (110, 'Liam Davis', 34, 'Male', 'Testing', 48000, TO_DATE('2021-03-27', 'YYYY-MM-DD'), 'liam.davis@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (111, 'Ella Harris', 26, 'Female', 'Operations', 46000, TO_DATE('2021-01-15', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (112, 'Isaac Nelson', 40, 'Male', 'SW', 55000, TO_DATE('2017-05-22', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (113, 'Grace Martinez', 36, 'Female', 'HR', 61000, TO_DATE('2015-10-13', 'YYYY-MM-DD'), 'grace.martinez@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (114, 'Benjamin Carter', 28, NULL, 'Testing', 41000, TO_DATE('2020-08-11', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (115, 'Mia Robinson', 31, 'Female', 'HR', 58000, TO_DATE('2021-02-19', 'YYYY-MM-DD'), 'mia.robinson@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (116, 'Joshua Lee', 29, 'Male', 'SW', 49000, TO_DATE('2019-07-30', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (117, 'Chloe Davis', 27, 'Female', 'Operations', 45000, TO_DATE('2022-06-17', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (118, 'Jackson Harris', 33, 'Male', 'Testing', 50000, TO_DATE('2021-09-09', 'YYYY-MM-DD'), NULL);

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (119, 'Zoey Miller', 35, 'Female', NULL, 59000, TO_DATE('2018-12-01', 'YYYY-MM-DD'), 'zoey.miller@example.com');

INSERT INTO employee (id, name, age, gender, department, salary, date_of_joining, email) 
VALUES (120, 'Nathan Moore', 32, NULL, 'SW', 62000, TO_DATE('2020-04-13', 'YYYY-MM-DD'), 'nathan.moore@example.com');


SELECT id, name, MIN(salary), department FROM  employee
GROUP BY department;

WITH cte AS(
    SELECT department, MIN(salary) AS minsalary FROM employee
    GROUP BY department 
)
SELECT e.id, e.name, e.salary, c.department FROM 
cte c
JOIN
employee e
ON e.department = c.department
WHERE salary = minsalary;

DROP TABLE submissions cascade constraints;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    date_of_admission DATE,
    age INT,
    branch VARCHAR(20),
    college VARCHAR(20),
    gender VARCHAR(10),
    fee INT,
    email VARCHAR(100)
);

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';

INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(1, 'John Doe', '2023-08-01', 20, 'CSE', 'AEC', 'Male', 150000, 'john.doe@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(2, 'Jane Smith', NULL, 19, 'ECE', 'ACET', 'Female', 200000, 'jane.smith@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(3, 'Mike Johnson', '2024-01-15', 21, 'IT', 'ACOE', 'Male', NULL, 'mike.johnson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(4, 'Emily Davis', NULL, 18, NULL, 'AEC', 'Female', 120000, 'emily.davis@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(5, 'Chris Brown', '2022-06-10', NULL, 'EEE', NULL, 'Male', 180000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(6, 'Anna Taylor', '2023-09-12', 22, 'IoT', 'ACET', NULL, 140000, 'anna.taylor@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(7, 'James Wilson', NULL, NULL, 'MECH', 'AEC', 'Male', 220000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(8, 'Sophia Moore', '2024-03-01', 17, 'CSE', 'ACOE', 'Female', 170000, 'sophia.moore@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(9, 'Oliver Lee', '2023-07-20', 25, 'DS', 'AEC', NULL, NULL, 'oliver.lee@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(10, 'Isabella White', NULL, 23, 'AIML', 'ACET', 'Female', 230000, 'isabella.white@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(11, 'Liam Harris', '2023-05-14', 21, 'ECE', 'AEC', 'Male', 200000, 'liam.harris@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(12, 'Emma Clark', '2024-01-11', 19, NULL, 'ACOE', 'Female', 130000, 'emma.clark@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(13, 'Noah Lewis', NULL, 24, 'IT', 'ACET', 'Male', NULL, 'noah.lewis@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(14, 'Ava Hall', '2023-10-09', NULL, 'CSE', 'AEC', 'Female', 160000, 'ava.hall@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(15, 'Ethan Allen', '2022-12-25', 20, 'EEE', NULL, 'Male', 190000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(16, 'Sophia Scott', NULL, 18, 'IoT', 'ACET', NULL, 110000, 'sophia.scott@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(17, 'Mason Green', '2024-04-05', 23, 'MECH', 'AEC', 'Male', 240000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(18, 'Isabella Adams', NULL, 22, 'DS', 'ACOE', 'Female', NULL, 'isabella.adams@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(19, 'Logan Wright', '2023-08-18', 17, 'AIML', 'AEC', 'Male', 150000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(20, 'Mia King', '2023-09-22', NULL, 'ECE', 'ACET', 'Female', 180000, 'mia.king@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(21, 'Lucas Brown', '2024-02-10', 18, 'IT', 'AEC', 'Male', 150000, 'lucas.brown@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(22, 'Ella Watson', '2023-12-01', NULL, 'AIML', 'ACOE', 'Female', 210000, 'ella.watson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(23, 'Michael Young', '2023-07-15', 25, 'DS', 'ACET', 'Male', NULL, 'michael.young@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(24, 'Emma Hill', NULL, 21, 'CSE', 'AEC', NULL, 140000, 'emma.hill@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(25, 'Oliver Scott', '2023-05-22', 19, 'MECH', NULL, 'Male', 200000, 'oliver.scott@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(26, 'Sophia Adams', '2023-09-15', NULL, 'EEE', 'AEC', 'Female', 220000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(27, 'James Wilson', '2023-04-11', 23, 'IoT', 'ACET', NULL, 180000, 'james.wilson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(28, 'Isabella Moore', NULL, 20, 'ECE', 'ACOE', 'Female', NULL, 'isabella.moore@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(29, 'Benjamin Davis', '2023-11-20', 22, 'DS', 'AEC', 'Male', 250000, 'benjamin.davis@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(30, 'Emily Harris', '2024-03-02', NULL, 'CSE', 'ACET', 'Female', 170000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(31, 'Liam Thompson', '2023-08-22', 18, 'ECE', 'ACOE', 'Male', 180000, 'liam.thompson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(32, 'Charlotte Anderson', NULL, 23, 'IT', 'AEC', 'Female', 200000, 'charlotte.anderson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(33, 'William Baker', '2023-09-10', 24, 'AIML', 'ACET', 'Male', 150000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(34, 'Amelia Martinez', '2024-01-20', NULL, 'CSE', 'ACOE', 'Female', 190000, 'amelia.martinez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(35, 'Lucas Turner', '2023-06-18', 22, 'MECH', 'AEC', 'Male', 160000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(36, 'Harper Clark', NULL, 17, 'IoT', 'ACET', 'Female', 140000, 'harper.clark@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(37, 'Evelyn Campbell', '2024-03-15', 19, 'EEE', 'AEC', NULL, 220000, 'evelyn.campbell@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(38, 'Henry Sanchez', '2023-10-05', NULL, 'DS', 'ACET', 'Male', NULL, 'henry.sanchez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(39, 'Grace Diaz', '2023-08-30', 25, 'ECE', 'ACOE', 'Female', 240000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(40, 'Alexander Perez', NULL, 20, 'IT', 'AEC', 'Male', 180000, 'alexander.perez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(41, 'Sofia Ramirez', '2024-01-25', NULL, 'CSE', 'ACET', 'Female', 200000, 'sofia.ramirez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(42, 'Jackson Coleman', '2023-07-10', 21, 'MECH', 'ACOE', NULL, NULL, 'jackson.coleman@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(43, 'Ella Brooks', NULL, 23, 'AIML', 'AEC', 'Female', 170000, 'ella.brooks@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(44, 'Sebastian Watson', '2024-02-15', 18, 'DS', 'ACET', 'Male', 150000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(45, 'Mila Torres', '2023-09-25', NULL, 'EEE', 'ACOE', 'Female', 190000, 'mila.torres@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(46, 'David Reed', '2023-06-20', 17, 'IoT', 'AEC', 'Male', NULL, 'david.reed@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(47, 'Hannah Ward', NULL, 20, 'CSE', 'ACET', 'Female', 230000, 'hannah.ward@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(48, 'Ethan Gray', '2023-05-25', 19, 'ECE', 'ACOE', 'Male', 220000, 'ethan.gray@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(49, 'Maya Brooks', NULL, NULL, 'IT', 'AEC', 'Female', 150000, 'maya.brooks@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(50, 'James Cooper', '2024-02-05', 24, 'DS', 'ACET', 'Male', 190000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(51, 'Olivia Lopez', NULL, 18, 'CSE', 'ACOE', 'Female', 210000, 'olivia.lopez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(52, 'Michael Hughes', '2023-07-05', NULL, 'AIML', 'AEC', 'Male', 200000, 'michael.hughes@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(53, 'Sophia Sanders', NULL, 23, 'MECH', 'ACET', 'Female', 170000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(54, 'Lucas Ward', '2023-08-15', 21, 'IoT', 'ACOE', 'Male', 150000, 'lucas.ward@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(55, 'Emma Long', '2023-10-25', 19, 'EEE', 'AEC', 'Female', 140000, 'emma.long@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(56, 'Jack Hill', NULL, 25, 'DS', 'ACET', 'Male', NULL, 'jack.hill@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(57, 'Ava Simmons', '2023-11-05', NULL, 'CSE', 'ACOE', 'Female', 230000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(58, 'Liam Edwards', NULL, 20, 'ECE', 'AEC', 'Male', 200000, 'liam.edwards@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(59, 'Emily Morris', '2023-12-10', 18, 'IT', 'ACET', 'Female', 170000, 'emily.morris@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(60, 'Oliver Walker', '2024-01-18', 23, 'IoT', 'ACOE', NULL, 180000, 'oliver.walker@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(61, 'Amelia Turner', '2023-09-12', 22, 'AIML', 'AEC', 'Female', NULL, 'amelia.turner@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(62, 'Ethan Stewart', NULL, 17, 'CSE', 'ACET', 'Male', 210000, 'ethan.stewart@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(63, 'Mila Robinson', '2023-11-22', 19, 'DS', 'ACOE', 'Female', 190000, 'mila.robinson@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(64, 'Lucas Green', NULL, NULL, 'EEE', 'AEC', 'Male', 140000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(65, 'Sophia Harris', '2024-03-20', 21, 'ECE', 'ACET', 'Female', 230000, 'sophia.harris@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(66, 'Benjamin Diaz', '2023-06-15', 25, 'MECH', 'ACOE', 'Male', 220000, 'benjamin.diaz@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(67, 'Isabella James', NULL, 24, 'CSE', 'AEC', 'Female', 160000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(68, 'Liam Martinez', '2023-08-25', 18, 'IoT', 'ACET', 'Male', 150000, 'liam.martinez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(69, 'Emma Clark', '2024-02-28', 20, 'DS', 'ACOE', NULL, NULL, 'emma.clark@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(70, 'Noah White', '2023-07-18', 23, 'EEE', 'AEC', 'Male', 200000, 'noah.white@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(71, 'Mia Evans', '2024-04-01', 19, 'AIML', 'ACET', 'Female', 240000, 'mia.evans@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(72, 'Alexander Perez', '2023-09-12', 20, 'CSE', 'ACOE', 'Male', 210000, 'alexander.perez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(73, 'Charlotte Adams', NULL, 22, 'ECE', 'AEC', 'Female', 200000, 'charlotte.adams@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(74, 'Elijah King', '2023-11-05', NULL, 'IoT', 'ACET', 'Male', 150000, 'elijah.king@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(75, 'Avery Torres', '2024-01-10', 23, 'DS', 'ACOE', 'Female', 190000, 'avery.torres@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(76, 'William Baker', NULL, 18, 'EEE', 'AEC', 'Male', 140000, 'william.baker@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(77, 'Harper Phillips', '2023-12-20', 21, 'MECH', 'ACET', 'Female', 170000, 'harper.phillips@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(78, 'Daniel Scott', '2023-10-15', 24, 'AIML', 'ACOE', 'Male', 220000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(79, 'Ella Foster', NULL, NULL, 'CSE', 'AEC', 'Female', 160000, 'ella.foster@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(80, 'Henry Ramirez', '2023-07-25', 25, 'IoT', 'ACET', 'Male', 150000, 'henry.ramirez@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(81, 'Grace Rogers', '2024-03-05', 20, 'ECE', 'ACOE', 'Female', 200000, 'grace.rogers@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(82, 'Matthew Carter', NULL, 23, 'DS', 'AEC', 'Male', 190000, 'matthew.carter@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(83, 'Scarlett Bailey', '2023-06-10', 19, 'AIML', 'ACET', 'Female', 240000, 'scarlett.bailey@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(84, 'Logan Rivera', '2024-01-22', 22, 'CSE', 'ACOE', 'Male', 230000, 'logan.rivera@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(85, 'Victoria Reed', NULL, 18, 'IT', 'AEC', 'Female', 150000, 'victoria.reed@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(86, 'Samuel Lee', '2023-08-18', 20, 'EEE', 'ACET', 'Male', 140000, 'samuel.lee@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(87, 'Zoe Howard', '2024-02-10', 19, 'MECH', 'ACOE', 'Female', 170000, NULL);
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(88, 'David Bell', NULL, 24, 'AIML', 'AEC', 'Male', 220000, 'david.bell@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(89, 'Layla Hughes', '2023-09-10', 21, 'DS', 'ACET', 'Female', 190000, 'layla.hughes@example.com');
INSERT INTO student (id, name, date_of_admission, age, branch, college, gender, fee, email) VALUES
(90, 'Ethan Bennett', '2023-07-05', 23, 'ECE', 'ACOE', 'Male', 200000, 'ethan.bennett@example.com');

WITH cte AS(
    SELECT college, branch, COUNT(*)
    FROM student
    GROUP BY college, branch
    HAVING COUNT(*) >= 6
) 
SELECT college  FROM cte 
GROUP BY college
HAVING COUNT(college) >= 2;

CREATE TABLE users
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE challenges
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    score INT NOT NULL
);

CREATE TABLE submissions
(
    id INT PRIMARY KEY,
    status VARCHAR(30) NOT NULL,
    user_id INT REFERENCES users(id),
    challenge_id INT REFERENCES challenges(id),
    minute_of_submission INT NOT NULL
);



INSERT INTO users (id, name, age, email) VALUES (1, 'Aarav Sharma', 21, 'aarav.sharma@example.com');
INSERT INTO users (id, name, age, email) VALUES (2, 'Ishita Patel', 22, 'ishita.patel@example.com');
INSERT INTO users (id, name, age, email) VALUES (3, 'Rohan Verma', 20, 'rohan.verma@example.com');
INSERT INTO users (id, name, age, email) VALUES (4, 'Neha Kapoor', 23, 'neha.kapoor@example.com');
INSERT INTO users (id, name, age, email) VALUES (5, 'Vikram Joshi', 24, 'vikram.joshi@example.com');



INSERT INTO challenges (id, name, score) VALUES (1, 'Binary Search Mastery', 100);
INSERT INTO challenges (id, name, score) VALUES (2, 'Graph Theory Explorer', 200);
INSERT INTO challenges (id, name, score) VALUES (3, 'Dynamic Programming Wizard', 300);
INSERT INTO challenges (id, name, score) VALUES (4, 'Bit Manipulation Tricks', 100);
INSERT INTO challenges (id, name, score) VALUES (5, 'Sorting Algorithms Galore', 200);
INSERT INTO challenges (id, name, score) VALUES (6, 'Tree Traversal Adventures', 300);


INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (1, 'Success', 1, 2, 15);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (2, 'Fail', 2, 3, 40);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (3, 'Success', 3, 1, 50);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (4, 'Fail', 4, 5, 30);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (5, 'Success', 5, 6, 75);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (6, 'Success', 1, 4, 90);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (7, 'Fail', 2, 1, 110);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (8, 'Success', 3, 5, 22);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (9, 'Fail', 4, 2, 35);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (10, 'Success', 5, 3, 80);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (11, 'Success', 1, 6, 55);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (12, 'Fail', 2, 4, 100);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (13, 'Success', 3, 6, 45);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (14, 'Fail', 4, 3, 20);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (15, 'Success', 5, 1, 70);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (16, 'Fail', 1, 5, 25);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (17, 'Success', 2, 6, 95);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (18, 'Fail', 3, 4, 65);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (19, 'Success', 4, 1, 105);
INSERT INTO submissions (id, status, user_id, challenge_id, minute_of_submission) VALUES (20, 'Fail', 5, 2, 88);

DROP TABLE users CASCADE CONSTRAINTS;
CREATE TABLE users
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    contest_rating INT NOT NULL
);

-- drop table star_rating
CREATE TABLE star_rating 
(
    start_ INT NOT NULL,
    stop_ INT NOT NULL,
    star INT NOT NULL
);


-- TRUNCATE TABLE users;
INSERT INTO users (id, name, age, email, contest_rating) VALUES (1, 'Alice Johnson', 22, 'alice.johnson@email.com', 1250);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (2, 'Bob Williams', 24, 'bob.williams@email.com', 1750);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (3, 'Charlie Brown', 21, 'charlie.brown@email.com', 2005);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (4, 'David Smith', 23, 'david.smith@email.com', 2900);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (5, 'Eve Carter', 20, 'eve.carter@email.com', 1400);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (6, 'Frank White', 25, 'frank.white@email.com', 3250);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (7, 'Grace Hall', 27, 'grace.hall@email.com', 900);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (8, 'Henry Adams', 22, 'henry.adams@email.com', 1600);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (9, 'Ivy Scott', 19, 'ivy.scott@email.com', 2200);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (10, 'Jack Turner', 26, 'jack.turner@email.com', 1450);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (11, 'Katherine Lee', 21, 'katherine.lee@email.com', 3100);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (12, 'Liam Martin', 23, 'liam.martin@email.com', 1850);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (13, 'Mia Robinson', 24, 'mia.robinson@email.com', 2500);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (14, 'Nathan Walker', 22, 'nathan.walker@email.com', 1300);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (15, 'Olivia King', 20, 'olivia.king@email.com', 1750);
INSERT INTO users (id, name, age, email, contest_rating) VALUES (16, 'Paul Harris', 28, 'paul.harris@email.com', 2950);




INSERT INTO star_rating (start_, stop_, star) VALUES (0, 1399, 1);
INSERT INTO star_rating (start_, stop_, star) VALUES (1400, 1599, 2);
INSERT INTO star_rating (start_, stop_, star) VALUES (1600, 1799, 3);
INSERT INTO star_rating (start_, stop_, star) VALUES (1800, 1999, 4);
INSERT INTO star_rating (start_, stop_, star) VALUES (2000, 2199, 5);
INSERT INTO star_rating (start_, stop_, star) VALUES (2200, 2899, 6);
INSERT INTO star_rating (start_, stop_, star) VALUES (2900, 3500, 7);







