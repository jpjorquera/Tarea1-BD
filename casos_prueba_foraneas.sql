INSERT ALL
  INTO mochila (usuario_id) VALUES (1)
  INTO mochila (usuario_id) VALUES (2)
  INTO mochila (usuario_id) VALUES (3)
  INTO mochila (usuario_id) VALUES (4)
  INTO mochila (usuario_id) VALUES (5)
SELECT * FROM dual;

INSERT ALL
  INTO salvaje (pokemon_id, id_ataque_1, id_ataque_2) VALUES (4, 2, 1)
  INTO salvaje (pokemon_id, id_ataque_1) VALUES (4, 10)
  INTO salvaje (pokemon_id, id_ataque_1, id_ataque_2) VALUES (1, 1, 5)
  INTO salvaje (pokemon_id, id_ataque_1) VALUES (2, 7)
  INTO salvaje (pokemon_id, id_ataque_1, id_ataque_2, id_ataque_3, id_ataque_4) VALUES (3, 4, 6, 8, 10)
SELECT * FROM dual;

INSERT ALL
  INTO adquisicion (logro_id, usuario_id, nivel) VALUES (2, 2, 10)
  INTO adquisicion (logro_id, usuario_id, nivel) VALUES (2, 1, 10)
  INTO adquisicion (logro_id, usuario_id, nivel) VALUES (2, 5, 10)
  INTO adquisicion (logro_id, usuario_id, nivel) VALUES (1, 1, 20)
SELECT * FROM dual;

INSERT ALL
  INTO slots (mochila_id, item_id, cantidad) VALUES (1, 1, 10)
  INTO slots (mochila_id, item_id, cantidad) VALUES (1, 2, 10)
  INTO slots (mochila_id, item_id, cantidad) VALUES (1, 3, 10)
  
  INTO slots (mochila_id, item_id, cantidad) VALUES (2, 1, 50)
  INTO slots (mochila_id, item_id, cantidad) VALUES (2, 3, 49)
  
  INTO slots (mochila_id, item_id, cantidad) VALUES (3, 1, 1)
  INTO slots (mochila_id, item_id, cantidad) VALUES (3, 2, 1)
  INTO slots (mochila_id, item_id, cantidad) VALUES (3, 3, 1)
  
  INTO slots (mochila_id, item_id, cantidad) VALUES (4, 5, 100)
SELECT * FROM dual;

INSERT ALL
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (1, 1, 0)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (1, 2, 1)
  
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (2, 1, 1)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (2, 2, 1)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (2, 3, 1)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (2, 4, 1)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (2, 3, 0)
  
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (3, 1, 0)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (3, 3, 1)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (3, 4, 1)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (3, 5, 1)
  
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (4, 2, 1)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (4, 3, 0)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (4, 4, 0)
  
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (5, 3, 0)
  INTO pokedex (usuario_id, salvaje_id, estado) VALUES (5, 4, 0)
SELECT * FROM dual;