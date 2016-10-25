CREATE SEQUENCE item_seq START WITH 1;

CREATE OR REPLACE TRIGGER item_t 
BEFORE INSERT ON items
FOR EACH ROW
BEGIN
  SELECT item_seq.NEXTVAL
  INTO   :new.id_item
  FROM   dual;
END;