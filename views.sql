CREATE VIEW view_mochila AS
  SELECT usuario.ID_USUARIO, usuario.NOMBRE_USUARIO, items.NOMBRE_ITEM, slots.CANTIDAD
  FROM items,slots,mochila,usuario
  WHERE slots.CANTIDAD>0 AND
        items.ID_ITEM = slots.ITEM_ID AND
        usuario.ID_USUARIO = mochila.USUARIO_ID AND
        mochila.ID_MOCHILA = slots.MOCHILA_ID;

CREATE VIEW view_pokedex AS
  SELECT usuario.ID_USUARIO, usuario.NOMBRE_USUARIO, pokemon.NOMBRE_POKEMON, pokedex.ESTADO
  FROM usuario,pokedex,salvaje,pokemon
  WHERE usuario.ID_USUARIO = pokedex.USUARIO_ID AND
  		pokedex.SALVAJE_ID = salvaje.ID_SALVAJE AND
  		salvaje.POKEMON_ID = pokemon.ID_POKEMON;

CREATE VIEW view_logros AS
  SELECT usuario.ID_USUARIO, usuario.NOMBRE_USUARIO, logros.ID_LOGRO
  FROM logros,usuario,adquisicion
  WHERE usuario.ID_LOGRO = adquisicion.USUARIO_ AND
  		adquisicion.LOGRO_ID = logros.id_logro;

CREATE VIEW view_maestros AS
  SELECT usuario.ID_USUARIO, usuario.NOMBRE_USUARIO, logros.puntos
  FROM pokemon, salvaje, pokedex,usuario
  WHERE usuario.ID_USUARIO = pokedex.USUARIO_ID AND
  		(SELECT SUM(pokedex.ESTADO) FROM pokedex) = (SELECT poke_seq.NEXTVAL FROM dual)-1 AND
  		(ALTER SEQUENCE seq_name INCREMENT BY -1);