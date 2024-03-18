-- b) Write an example PL/SQL block that inserts a new arbitrary row to the COUNTRIES table. 
--    The block should handle the exception DUP_VAL_ON_INDEX and OTHERS.
--    Run the block for different COUNTRY_ID and observe the cases when above exception occurs.

DECLARE
	c_id VARCHAR2(2);
BEGIN
	c_id := ''; -- change the country id here to run the block for different country id
	
	INSERT INTO COUNTRIES VALUES (c_id, 'BANGLADESH', 1 );
EXCEPTION
	WHEN DUP_VAL_ON_INDEX THEN
		DBMS_OUTPUT.PUT_LINE('GIVEN COUNTRY ID EXISTS ALREADY');
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('SOMETHING UNKNOWN HAPPENED');
END;
/