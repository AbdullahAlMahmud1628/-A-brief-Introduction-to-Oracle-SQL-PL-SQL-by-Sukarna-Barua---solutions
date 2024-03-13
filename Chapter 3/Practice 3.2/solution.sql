-- a) Print employee last name and number of days employed. Print the second information rounded up to 2 decimal places.

SELECT LAST_NAME, ROUND(SYSDATE - HIRE_DATE,2) "NUMBER OF DAYS EMPLOYED"
FROM EMPLOYEES;

-- b) Print employee last name and number of years employed. Print the second information truncated up to 3 decimal place.

SELECT LAST_NAME, TRUNC((SYSDATE - HIRE_DATE)/365, 3) "NUMBER OF YEARS EMPLOYED"
FROM EMPLOYEES;