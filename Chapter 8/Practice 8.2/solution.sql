 -- a)  Update COMMISSION_PCT value to 0 for those employees who have NULL in that column.

    UPDATE EMPLOYEES
    SET COMMISSION_PCT = 0
    WHERE COMMISSION_PCT IS NULL;

-- b)  Update salary of all employees to the maximum salary of the department in which he/she works.

    UPDATE EMPLOYEES E1
    SET E1.SALARY =
    ( SELECT MAX(E2.SALARY)
        FROM EMPLOYEES E2
        WHERE E2.DEPARTMENT_ID = E1.DEPARTMENT_ID
    );

-- c)  Update COMMISSION_PCT to 𝑁 times for each employee where 𝑁 is the number of employees he/she manages.
--     When 𝑁 = 0, keep the old value of COMMISSION_PCT column.

    UPDATE EMPLOYEES E1
    SET E1.COMMISSION_PCT = E1.COMMISSION_PCT * (  SELECT COUNT(DISTINCT E2.EMPLOYEE_ID)
                                                   FROM EMPLOYEES E2
                                                   WHERE E2.MANAGER_ID = E1.EMPLOYEE_ID)
    WHERE (  SELECT COUNT(*)
            FROM EMPLOYEES E2
            WHERE E2.MANAGER_ID = E1.EMPLOYEE_ID) <> 0;

-- d) Update the hiring dates of all employees to the first day of the same year.
--    Do not change this for those employees who joined on or after year 2000.

    UPDATE EMPLOYEES
    SET HIRE_DATE = TRUNC(HIRE_DATE,'YEAR')
    WHERE HIRE_DATE < '01-JAN-2000';