-- a)  Print hire dates of all employees in the following formats: 
--    (i) 13th February, 1998 (ii) 13 February, 1998.

-- (i) 
SELECT TO_CHAR(HIRE_DATE,'ddth Month, YYYY') HIRE_DATE
FROM EMPLOYEES;

-- (ii)
select TO_CHAR(HIRE_DATE,'DD Month, YYYY') HIRE_DATE
FROM EMPLOYEES;