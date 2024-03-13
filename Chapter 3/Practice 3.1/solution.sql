-- a) Print the first three characters and last three characters of all country names. Print in capital letters.

SELECT UPPER(SUBSTR(COUNTRY_NAME,1,3)) FIRST_3,UPPER(SUBSTR(COUNTRY_NAME,LENGTH(COUNTRY_NAME)-2)) LAST_3
FROM COUNTRIES;

-- b) Print all employee full names (first name followed by a space then followed by last name).
--    All names should be printed in width of 60 characters and left padded with '*' symbol for names less than 60 characters.

SELECT LPAD(CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME),60,'*') "LEFT PADDED NAME"
FROM EMPLOYEES;

-- c) Print all job titles that contain the text 'manager'.

SELECT JOB_TITLE
FROM JOBS
WHERE INSTR(LOWER(JOB_TITLE),'manager') <> 0;