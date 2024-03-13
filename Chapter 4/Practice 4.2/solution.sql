-- a) Find for each department, the average salary of the department.
--    Print only those DEPARTMENT_ID and average salary whose average salary is at most 50k.

SELECT DEPARTMENT_ID, ROUND(AVG(SALARY),2) "AVERAGE SALARY"
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) <= 50000;