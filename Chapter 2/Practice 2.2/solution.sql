-- a) Select names of all employees who have joined before January 01, 1998.

SELECT (FIRST_NAME || ' ' || LAST_NAME) NAME 
FROM EMPLOYEES
WHERE HIRE_DATE < '01-JAN-1998';

-- b) Select all locations in the following countries: Canada, Germany, United Kingdom.

SELECT * 
FROM LOCATIONS
WHERE COUNTRY_ID IN ('CA','DE','UK');

-- c) Select first names of all employees who do not get any commission.

SELECT FIRST_NAME "FIRST NAME"
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL;

-- d) Select first names of employees whose last name starts with an 'a'.

SELECT FIRST_NAME "FIRST NAME"
FROM EMPLOYEES
WHERE LOWER(LAST_NAME) LIKE 'a%';

-- e) Select first names of employees whose last name starts with an 's' and ends with an 'n'.

SELECT FIRST_NAME "FIRST NAME"
FROM EMPLOYEES
WHERE LOWER(LAST_NAME) LIKE 's%n';

-- f) Select all department names whose MANAGER_ID is 100.

SELECT DEPARTMENT_NAME 
FROM DEPARTMENTS
WHERE MANAGER_ID = 100;

-- g) Select all names of employees whose job type is 'AD_PRES' and whose salary is at least 23000.

SELECT (FIRST_NAME || ' ' || LAST_NAME) NAME
FROM EMPLOYEES
WHERE JOB_ID LIKE 'AD_PRES' AND SALARY >= 23000;

-- h)  Select names of all employees whose last name do not contain the character 's'.

 SELECT (FIRST_NAME || ' ' || LAST_NAME) NAME
 FROM EMPLOYEES
 WHERE LOWER(LAST_NAME) NOT LIKE '%s%';
-- i)  Select names and COMMISSION_PCT of all employees whose commission is at most 0.30.

SELECT (FIRST_NAME || ' ' || LAST_NAME) NAME,COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT <= 0.30 OR COMMISSION_PCT IS NULL;

-- j)  Select names of all employees who have joined after January 01, 1998.

SELECT (FIRST_NAME || ' ' || LAST_NAME) NAME
FROM EMPLOYEES
WHERE HIRE_DATE > '01-JAN-1998';

-- k)  Select names of all employees who have joined in the year 1998.

SELECT (FIRST_NAME || ' ' || LAST_NAME) NAME
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '01-JAN-1998' AND '31-DEC-1998';