CREATE SEQUENCE user_seq START WITH 1;

CREATE OR REPLACE TRIGGER user_t 
BEFORE INSERT ON usuario
FOR EACH ROW
BEGIN
  SELECT user_seq.NEXTVAL
  INTO   :new.id_usuario
  FROM   dual;
  :new.fecha_registro := SYSDATE;
END;