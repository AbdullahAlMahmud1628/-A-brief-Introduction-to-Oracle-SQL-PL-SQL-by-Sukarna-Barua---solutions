-- a) Print the commission_pct values of all employees whose commission is at least 20%. Use NVL function.

SELECT NVL(COMMISSION_PCT,0) COMMISSION
FROM EMPLOYEES
WHERE NVL(COMMISSION_PCT,0) >= 0.2;

-- b) Print the total salary of an employee for 5 years and 6 months period. Print all employee last names along with this salary information.
--    Use NVL function assuming that salary may contain NULL values.

SELECT LAST_NAME, NVL(SALARY,0) * (5 * 12 + 6) * (NVL(COMMISSION_PCT,0) + 1) SALARY
FROM EMPLOYEES;