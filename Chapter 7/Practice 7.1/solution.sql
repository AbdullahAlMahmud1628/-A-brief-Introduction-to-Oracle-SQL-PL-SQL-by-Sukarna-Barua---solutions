-- a)  Find EMPLOYEE_ID of those employees who are not managers. Use minus operator to perform this.

SELECT EMPLOYEE_ID "NOT MANAGERS"
FROM EMPLOYEES
MINUS
SELECT MANAGER_ID
FROM EMPLOYEES;

-- b)  Find last names of those employees who are not managers. Use minus operator to perform this.

SELECT E.LAST_NAME 
FROM EMPLOYEES E
WHERE E.EMPLOYEE_ID IN
( 
	SELECT EMPLOYEE_ID NOT_MANAGERS
	FROM EMPLOYEES
	MINUS
	SELECT MANAGER_ID
	FROM EMPLOYEES
);

 --c) Find the LOCATION_ID of those locations having no departments.
 
 SELECT LOCATION_ID 
 FROM LOCATIONS
 MINUS
 SELECT LOCATION_ID
 FROM DEPARTMENTS;