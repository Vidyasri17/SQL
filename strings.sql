SELECT SUBSTR('Technical hub', 1, 1) || SUBSTR('Technical hub', -1, 1) AS first_and_last_characters FROM dual;

-- REPLACE (string, sub_string, new_string)

SELECT REPLACE('10-20-35', '-', ':') AS time FROM dual;
SELECT REPLACE('Oracle SQL SQL', 'SQL', 'Database') AS time FROM dual;
-- INSTR
SELECT INSTR('Oracle SQL', 'SQL') FROM dual;
SELECT INSTR('Oracle SQL', 'sql') FROM dual;
SELECT INSTR('Oracle SQL', 'SQL', 9) FROM dual;
SELECT INSTR('Oracle SQL', 'SQL', 8) FROM dual;
-- TRIM
SELECT TRIM('*' FROM '***SQL***') AS trimmed_string FROM dual; 
SELECT TRIM(' ' FROM '   SQL    ') AS trimmed_string FROM dual;
SELECT LENGTH(TRIM(' ' FROM '   SQL    ')) AS trimmed_string FROM dual; 
-- LPAD
SELECT LPAD('sql', 10, '*') AS paddes_string FROM dual;
SELECT LPAD('sql', 2, '*') AS paddes_string FROM dual;
SELECT LPAD('SQL', 10, 'XYZ') AS paddes_string FROM dual;

SELECT ABS(49.9), ABS(-49.9), ABS(-77.7), ABS(77.7) FROM dual;
SELECT CEIL(47.1), CEIL(49.9), CEIL(-45.6), CEIL(45.00) FROM dual;
SELECT FLOOR(47.1), FLOOR(49.9), FLOOR(-45.6), FLOOR(45.00) FROM dual;

SELECT ROUND(123.4567, 2) rounded_value,
       TRUNC(123.4567, 2) trunc_value FROM dual;








