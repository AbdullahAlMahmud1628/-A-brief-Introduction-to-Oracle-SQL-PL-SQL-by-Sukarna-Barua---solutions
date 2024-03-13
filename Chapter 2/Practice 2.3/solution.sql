-- a)  Select names, salary, and commissions of all employees of job type 'AD_PRES'. Sort the result in ascending order of commission and then descending order of salary

SELECT (FIRST_NAME || ' ' || LAST_NAME) NAME,SALARY,COMMISSION_PCT "COMMISSIONS" 
FROM EMPLOYEES
WHERE JOB_ID LIKE 'AD_PRES'
ORDER BY COMMISSION_PCT ASC, SALARY DESC;

-- b) Retrieve all country names in lexicographical ascending order.

SELECT COUNTRY_NAME 
FROM COUNTRIES
ORDER BY COUNTRY_NAME ASC;