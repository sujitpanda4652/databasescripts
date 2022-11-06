CREATE OR REPLACE TRIGGER t
  BEFORE
    INSERT OR
    UPDATE OF salary OR
    UPDATE OF EMPID OR
    DELETE
  ON employee
BEGIN
  CASE
    WHEN INSERTING THEN
      DBMS_OUTPUT.PUT_LINE('Inserting');
    WHEN UPDATING('salary') THEN
      DBMS_OUTPUT.PUT_LINE('Updating salary');
    WHEN UPDATING('EMPID') THEN
      DBMS_OUTPUT.PUT_LINE('Updating EMPID');
    WHEN DELETING THEN
      DBMS_OUTPUT.PUT_LINE('Deleting');
  END CASE;
END;
/

UPDATE Employee SET salary = salary + 500.00 WHERE empid = 10;
delete from employee where lastname = 'jayraj';
delete from employee where empid = 17;
rollback;
select *from employee;


