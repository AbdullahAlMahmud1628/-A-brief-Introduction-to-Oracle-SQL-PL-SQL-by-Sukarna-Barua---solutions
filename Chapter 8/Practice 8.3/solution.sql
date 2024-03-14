-- a) Delete those employees who earn less than 5k.

    DELETE FROM EMPLOYEES
    WHERE SALARY < 5000;

-- b)  Delete those locations having no departments.

    DELETE FROM locations
    WHERE LOCATION_ID IN (SELECT LOCATION_ID FROM locations MINUS SELECT LOCATION_ID FROM departments);

-- c)  Delete those employees from the EMPLOYEES table who joined before the year 1997

    DELETE FROM EMPLOYEES
    WHERE HIRE_DATE < '01-JAN-1997';