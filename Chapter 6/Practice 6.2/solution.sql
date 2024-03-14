-- a) Find those employees whose salary is higher than at least three other employees.
--    Print last names and salary of each employee. You cannot use join in the main query.
--    Use sub-query in WHERE clause only. You can use join in the sub-queries.

SELECT E1.LAST_NAME,E1.SALARY
FROM EMPLOYEES E1
WHERE 
(
	SELECT COUNT(*)
	FROM EMPLOYEES E2
	WHERE E2.SALARY < E1.SALARY
) >= 3;

-- b)  Find those departments whose average salary is greater than the minimum salary of all other departments.
--		 Print department names. Use sub-query. You can use join in the sub-queries.

SELECT (SELECT D.DEPARTMENT_NAME FROM DEPARTMENTS D WHERE D.DEPARTMENT_ID = E1.DEPARTMENT_ID) DEPARTMENT_NAME
FROM EMPLOYEES E1
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY E1.DEPARTMENT_ID
HAVING AVG(E1.SALARY) > ALL
(
	SELECT MIN(E2.SALARY)
	FROM EMPLOYEES E2
	WHERE E2.DEPARTMENT_ID <> E1.DEPARTMENT_ID
	GROUP BY E2.DEPARTMENT_ID
);

-- c) Find those department names which have the highest number of employees in service.
--    Print department names. Use sub-query. You can use join in the sub-queries.

SELECT (SELECT D.DEPARTMENT_NAME FROM DEPARTMENTS D WHERE D.DEPARTMENT_ID = E1.DEPARTMENT_ID) DEPARTMENT_NAME
FROM EMPLOYEES E1
WHERE E1.DEPARTMENT_ID IS NOT NULL
GROUP BY E1.DEPARTMENT_ID
HAVING COUNT(*) = 
(
	SELECT MAX(CNT)
	FROM 
	(
			SELECT COUNT(*) CNT 
			FROM EMPLOYEES E2
			GROUP BY E2.DEPARTMENT_ID
	)
);

-- d) Find those employees who worked in more than one department in the company.
--    Print employee last names. You cannot use join in the main query. Use sub-query.
--    You can use join in the sub-queries.

SELECT DISTINCT(SELECT E1.LAST_NAME FROM EMPLOYEES E1 WHERE E1.EMPLOYEE_ID = J.EMPLOYEE_ID) LAST_NAME
FROM JOB_HISTORY J
WHERE
(
	SELECT COUNT(DISTINCT(J2.DEPARTMENT_ID))
	FROM JOB_HISTORY J2
	WHERE J2.EMPLOYEE_ID = J.EMPLOYEE_ID
) > 1
 OR
(
	SELECT E2.DEPARTMENT_ID
	FROM EMPLOYEES E2
	WHERE E2.EMPLOYEE_ID = J.EMPLOYEE_ID
) <> ANY 
(
	SELECT J3.DEPARTMENT_ID
	FROM JOB_HISTORY J3
	WHERE J3.EMPLOYEE_ID = J.EMPLOYEE_ID
);

-- e) For each employee, find the minimum and maximum salary of his/her department.
--    Print employee last name, minimum salary, and maximum salary. Do not use sub-query in WHERE clause.
--    Use sub-query in FROM clause.

SELECT E.LAST_NAME,D.MAX_SAL,D.MIN_SAL
FROM EMPLOYEES E, (SELECT DEPARTMENT_ID,MAX(SALARY) MAX_SAL,MIN(SALARY) MIN_SAL FROM EMPLOYEES GROUP BY DEPARTMENT_ID) D
WHERE E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- f) For each job type, find the employee who gets the highest salary. Print job title and last name of the employee.
--    Assume that there is one and only one such employee for every job type.

SELECT (SELECT J.JOB_TITLE FROM JOBS J WHERE J.JOB_ID = E.JOB_ID) JOB_TYPE , E.LAST_NAME "EMPLOYEE LAST NAME"
FROM EMPLOYEES E
WHERE E.SALARY = 
(
	SELECT MAX(E2.SALARY)
	FROM EMPLOYEES E2
	WHERE E2.JOB_ID = E.JOB_ID
);