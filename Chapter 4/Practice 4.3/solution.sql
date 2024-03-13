-- a) Find number of employees in each salary group. Salary groups are considered as follows. 
--    Group 1: 0k to <5K,Group 2: 5k to <10k,Group 3: 10k to <15k, and so on.

SELECT (TRUNC(SALARY/5000) + 1) "GROUP", COUNT(*) "NUMBER OF EMPLOYEES"
FROM EMPLOYEES
GROUP BY TRUNC(SALARY/5000)
ORDER BY TRUNC(SALARY/5000) ASC;

-- b) Find the number of employees that were hired in each year in each job type. Print year, job id, and total employees hired.

SELECT TO_CHAR(HIRE_DATE,'YYYY') YEAR, JOB_ID, COUNT(*) "NUMBER OF EMPLOYEES"
FROM EMPLOYEES
GROUP BY TO_CHAR(HIRE_DATE,'YYYY'),JOB_ID;