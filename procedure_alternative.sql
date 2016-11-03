create or replace PROCEDURE procedure_maestro_alternative (par IN number)
  IS
  BEGIN
    FOR rec IN(
      SELECT DISTINCT pokemon.ID_POKEMON, pokemon.NOMBRE_POKEMON
      FROM pokemon
      WHERE  (par in (SELECT usuario.ID_USUARIO FROM usuario)) AND
             (pokemon.ID_POKEMON IN 
              (SELECT id_pokemon FROM pokemon
              MINUS
              SELECT id_pokemon FROM
              (SELECT DISTINCT usuario_id, nombre_pokemon, id_pokemon, estado FROM pokedex
              INNER JOIN (SELECT nombre_pokemon, id_pokemon, id_salvaje FROM pokemon
              INNER JOIN salvaje ON pokemon_id = id_pokemon) ON id_salvaje = salvaje_id
              WHERE estado > 0)
              WHERE usuario_id = par))
      )
    LOOP
      dbms_output.put_line(rec.ID_POKEMON || ' , ' || rec.NOMBRE_POKEMON);
  END LOOP;

  END procedure_maestro_alternative;