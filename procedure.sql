create or replace PROCEDURE procedure_maestro (par IN number)
  IS
  BEGIN
    FOR rec IN(
      SELECT DISTINCT pokemon.ID_POKEMON, pokemon.NOMBRE_POKEMON
      FROM pokemon, salvaje,pokedex
      WHERE pokemon.ID_POKEMON = salvaje.POKEMON_ID AND
            (par in (SELECT usuario.ID_USUARIO FROM usuario)) AND
            (
            (salvaje.ID_SALVAJE = pokedex.SALVAJE_ID AND pokedex.USUARIO_ID = par AND pokedex.ESTADO = 0 AND
             salvaje.POKEMON_ID NOT IN (SELECT salvaje.POKEMON_ID FROM pokedex,salvaje WHERE pokedex.USUARIO_ID = par AND
                                                                                             pokedex.SALVAJE_ID = salvaje.ID_SALVAJE AND
                                                                                             pokedex.ESTADO = 1)) 
            OR 
            (salvaje.ID_SALVAJE NOT IN (SELECT pokedex.SALVAJE_ID FROM pokedex WHERE par = pokedex.USUARIO_ID)
            ))
      )
    LOOP
      dbms_output.put_line(rec.ID_POKEMON || ',' || rec.NOMBRE_POKEMON);
  END LOOP;

  END procedure_maestro;