-- a) For all managers, find the number of employees he/she manages. Print the MANAGER_ID and total number of such employees.

SELECT MANAGER_ID, COUNT(*) "NUMBER OF EMPLOYEES"
FROM EMPLOYEES
WHERE MANAGER_ID IS NOT NULL
GROUP BY MANAGER_ID;

-- b)  For all departments, find the number of employees who get more than 30k salary. Print the DEPARTMENT_ID and total number of such employees.

SELECT DEPARTMENT_ID, COUNT(*) "NUMBER OF EMPLOYEES"
FROM EMPLOYEES
WHERE SALARY > 30000
GROUP BY DEPARTMENT_ID;

-- c) Find the minimum, maximum, and average salary of all departments except DEPARTMENT_ID 80.
--    Print DEPARTMENT_ID, minimum, maximum, and average salary. 
--    Sort the results in descending order of average salary first, then maximum salary, then minimum salary.
--    Use column alias to rename column names in output for better display.

SELECT DEPARTMENT_ID, MIN(SALARY) "MINIMUM SALARY" , MAX(SALARY) "MAXIMUM SALARY" , ROUND(AVG(SALARY),2) "AVERAGE SALARY" 
FROM EMPLOYEES
WHERE DEPARTMENT_ID <> 80
GROUP BY DEPARTMENT_ID
ORDER BY AVG(SALARY) DESC,MAX(SALARY) DESC,MIN(SALARY) DESC;
