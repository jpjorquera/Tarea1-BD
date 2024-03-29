CREATE SEQUENCE poke_seq START WITH 1;

CREATE OR REPLACE TRIGGER poke_t 
BEFORE INSERT ON pokemon
FOR EACH ROW
BEGIN
  SELECT poke_seq.NEXTVAL
  INTO   :new.id_pokemon
  FROM   dual;
END;