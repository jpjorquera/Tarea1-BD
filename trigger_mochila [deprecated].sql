CREATE OR REPLACE TRIGGER trigger_mochila 
  BEFORE INSERT OR DELETE OR UPDATE ON slots
  FOR EACH ROW
    DECLARE
      new_quant number;
      old_quant number;
      diff number;
      status number(1);
    BEGIN
      new_quant := :new.cantidad;
      SELECT SUM (slots.cantidad) INTO old_quant FROM slots
      WHERE slots.mochila_id = :new.mochila_id;
      IF INSERTING THEN
        IF (new_quant + old_quant > 100) THEN
          raise_application_error( -20001, 'Cantidad a ingresar mayor a 100');
        ELSIF (new_quant + old_quant = 100) THEN
          UPDATE mochila 
            SET estado = 1
            WHERE mochila.id_mochila = :new.mochila_id;
        END IF;
      ELSIF UPDATING THEN
        diff := new_quant - :old.cantidad;
        SELECT mochila.estado INTO status FROM mochila
        WHERE mochila.id_mochila = :old.mochila_id;
        IF  old_quant + diff > 100 THEN
          raise_application_error( -20001, 'Cantidad a ingresar mayor a 100');
        ELSIF old_quant + diff = 100 AND status != 1 THEN
          UPDATE mochila SET estado = 1
          WHERE mochila.id_mochila = :old.mochila_id;
        ELSIF old_quant + diff < 100 AND status = 1 THEN
          UPDATE mochila SET estado = 0
          WHERE mochila.id_mochila = :old.mochila_id;
        END IF;
      END IF;
    END;