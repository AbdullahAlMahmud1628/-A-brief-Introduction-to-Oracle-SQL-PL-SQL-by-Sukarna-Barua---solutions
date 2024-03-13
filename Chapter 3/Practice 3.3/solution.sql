-- a) For all employees, find the number of years employed. Print first names
--    and number of years employed for each employee.

SELECT FIRST_NAME, TRUNC(MONTHS_BETWEEN(SYSDATE, HIRE_DATE)/12) "NUMBER OF YEARS EMPLOYED"
FROM EMPLOYEES;

-- b)  Suppose you need to find the number of days each employee worked during the first month of his joining.
--     Write an SQL query to find this information for all employees.

SELECT FIRST_NAME,(TRUNC(ADD_MONTHS(HIRE_DATE, 1),'MONTH') - HIRE_DATE) "DAYS IN FIRST MONTH"
FROM EMPLOYEES;