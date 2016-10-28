CREATE OR REPLACE TRIGGER trigger_mochila 
  BEFORE INSERT OR DELETE OR UPDATE ON slots
  FOR EACH ROW
    DECLARE
      used number;
      diff number;
      status number;
    BEGIN
      SELECT ocupados INTO used
      FROM mochila
      WHERE mochila.id_mochila = :old.mochila_id;
      IF INSERTING THEN
        IF (used + :new.cantidad > 100) THEN
          :new.cantidad := 100 - used;
          IF (:new.cantidad = 0) THEN
            raise_application_error( -20001, 'No se puede ingresar dicha cantidad');
          ELSE
            UPDATE mochila
              SET ocupados = 100,
                estado = 1
              WHERE mochila.id_mochila = :new.mochila_id;
          END IF;
        ELSIF (used + :new.cantidad = 100) THEN
          UPDATE mochila
              SET ocupados = 100,
                estado = 1
              WHERE mochila.id_mochila = :new.mochila_id;
        ELSE
          UPDATE mochila
            SET ocupados = ocupados + :new.cantidad
            WHERE mochila.id_mochila = :new.mochila_id;
        END IF;
      ELSIF UPDATING THEN
        diff := :new.cantidad - :old.cantidad;
        SELECT mochila.estado INTO status FROM mochila
        WHERE mochila.id_mochila = :new.mochila_id;
        IF  (used + diff > 100) THEN
          :new.cantidad := 100 - used + :old.cantidad;
          UPDATE mochila
            SET ocupados = 100,
              estado = 1
            WHERE mochila.id_mochila = :new.mochila_id;
        ELSIF ((used + diff = 100) AND (status != 1)) THEN
          UPDATE mochila 
          SET estado = 1,
          ocupados = 100
          WHERE mochila.id_mochila = :old.mochila_id;
        ELSE
          IF (status = 1) THEN
            UPDATE mochila 
              SET estado = 0
              WHERE mochila.id_mochila = :new.mochila_id;
          END IF;
          UPDATE mochila 
            SET ocupados = ocupados + diff
            WHERE mochila.id_mochila = :new.mochila_id;
        END IF;
      ELSE
        SELECT mochila.estado INTO status FROM mochila
        WHERE mochila.id_mochila = :old.mochila_id;
        IF (status = 1) THEN
          UPDATE mochila 
            SET estado = 0
            WHERE mochila.id_mochila = :old.mochila_id;
        END IF;
        UPDATE mochila
            SET ocupados = ocupados - :old.cantidad
            WHERE mochila.id_mochila = :old.mochila_id;
      END IF;
    END;