-- a)  In Oracle, there is a function TO_NUMBER that converts a VARCHAR2 value to a numeric value.
--     If the input to this function is not a valid number, then this function throws an exception. 
--     This is a problem in a SQL query because the whole query would not produce any result if one row generates an exception.
--     So, your job is to write a PL/SQL function ISNUMBER that receives an input VARCHAR2 value and 
--     checks whether the input can be converted to a valid number.
--     If the input can be converted to a valid number than ISNUMBER should return ‘YES’, otherwise ISNUMBER should return ‘NO’.


CREATE OR REPLACE FUNCTION ISNUMBER( num IN VARCHAR2) 
RETURN VARCHAR2 IS
	num_valid NUMBER;
BEGIN
	num_valid := TO_NUMBER(num);
	RETURN 'YES';
EXCEPTION
	WHEN INVALID_NUMBER THEN
		RETURN 'NO';
	WHEN VALUE_ERROR THEN
		RETURN 'NO';
	WHEN OTHERS THEN
		RETURN 'NO';
END;
/

-- b)  Write a trigger HELLO_WORLD6 that will run after a deletion operation on the STUDENTS table. The trigger should be a ROW LEVEL trigger.

CREATE OR REPLACE TRIGGER HELLO_WORLD6
AFTER DELETE 
ON STUDENTS
FOR EACH ROW 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('HELLO WORLD');
EXCEPTION
	WHEN OTHERS THEN 
		DBMS_OUTPUT.PUT_LINE('WHAT HAPPENED!');
END;
/

-- c) 
