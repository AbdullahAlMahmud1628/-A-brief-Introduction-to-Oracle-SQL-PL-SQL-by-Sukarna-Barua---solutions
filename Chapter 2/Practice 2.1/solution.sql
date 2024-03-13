-- a) Write an SQL query to retrieve all country names.

SELECT COUNTRY_NAME "COUNTRY NAME"
FROM COUNTRIES;

-- b)  Write an SQL query to retrieve all job titles.

SELECT JOB_TITLE "JOB TITLES"
FROM JOBS;

-- c) Write an SQL query to retrieve all MANAGER_IDs

SELECT DISTINCT(MANAGER_ID) "MANAGER ID"
FROM EMPLOYEES 
WHERE MANAGER_ID IS NOT NULL;

-- d) Write an SQL query to retrieve all city names. Remove duplicate outputs.

SELECT DISTINCT(CITY)
FROM LOCATIONS;

-- e) Write an SQL query to retrieve LOCATION_ID, ADDRESS from LOCATIONS table.
--    The ADDRESS should print each location in the following format: STREET_ADDRESS, CITY, STATE_PROVINCE, POSTAL_CODE.

SELECT LOCATION_ID, (STREET_ADDRESS || ', ' || CITY || ', ' || STATE_PROVINCE || ', ' || POSTAL_CODE) "ADDRESS"
FROM LOCATIONS;