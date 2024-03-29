CREATE SEQUENCE salvaje_seq START WITH 1;

CREATE OR REPLACE TRIGGER salv_t
BEFORE INSERT ON salvaje
FOR EACH ROW
BEGIN
  SELECT salvaje_seq.NEXTVAL
  INTO   :new.id_salvaje
  FROM   dual;
END;