-- a) Write a PL/SQL block that will print ‘Happy Anniversary X’ for each employee X whose hiring date is today. Use cursor FOR loop for the task.

BEGIN
	FOR R IN (SELECT * FROM EMPLOYEES)
	LOOP
	IF TO_CHAR(R.HIRE_DATE,'DD-MM') = TO_CHAR(SYSDATE,'DD-MM') THEN
		DBMS_OUTPUT.PUT_LINE('Happy Anniversary ' || R.FIRST_NAME); 
	END IF; 
END LOOP;
END;
/
