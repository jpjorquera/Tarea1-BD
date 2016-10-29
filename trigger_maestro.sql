CREATE OR REPLACE TRIGGER trigger_maestro 
  BEFORE INSERT OR UPDATE ON pokedex
  FOR EACH ROW
    DECLARE
      atrapados number;
      n_pokemones number;
      n_logro number;
      isMaster number;
      actual number;
    BEGIN
      SELECT total INTO atrapados FROM
      (SELECT usuario_id, SUM(estado) AS total FROM
      (SELECT DISTINCT usuario_id, id_pokemon, estado FROM pokedex
      INNER JOIN (SELECT id_pokemon, id_salvaje FROM pokemon
      INNER JOIN salvaje ON pokemon_id = id_pokemon) ON id_salvaje = salvaje_id
      WHERE estado > 0)
      GROUP BY usuario_id)
      WHERE usuario_id = :new.usuario_id;
      
      SELECT COUNT(*) INTO actual FROM pokedex
      WHERE usuario_id = :new.usuario_id AND estado > 1;
      IF (actual = 0) THEN
        atrapados := atrapados + 1;
      END IF;
      
      SELECT MAX(id_pokemon) INTO n_pokemones FROM pokemon;
      SELECT id_logro INTO n_logro FROM logros WHERE nombre_logro = 'maestro pokemon';
      SELECT COUNT(*) INTO isMaster FROM adquisicion WHERE logro_id = n_logro AND usuario_id = :new.usuario_id;
      IF (atrapados = n_pokemones AND (isMaster = 0)) THEN
        INSERT INTO adquisicion (logro_id, usuario_id) VALUES (n_logro, :new.usuario_id);
      END IF;
    END;