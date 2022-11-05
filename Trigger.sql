 
select * from employee;

desc employee;

INSERT INTO JUNE22_SUJIT.EMPLOYEE (EMPID,LASTNAME,FIRSTNAME,ADDRESS,CITY,SALARY) VALUES (21,'XXYYkjhgjh','AABBdfgg','SAMPLEgff','VIZAGgf','15000');

CREATE TABLE auditTable(
    id   NUMBER(10)    NOT NULL,
    updated_at DATE NOT NULL,
    operation VARCHAR2(8) NOT NULL
);

desc auditTable;

select * from auditTable;

CREATE OR REPLACE TRIGGER JUNE22_SUJIT.employeeTrigger
AFTER INSERT  ON JUNE22_SUJIT.EMPLOYEE
BEGIN
  INSERT INTO JUNE22_SUJIT.auditTable(id,updated_at,operation) values (audit_seq.NEXTVAL,SYSDATE,'INSERT');
END;

DROP TRIGGER employeeTrigger;

CREATE SEQUENCE audit_seq START WITH 1;
