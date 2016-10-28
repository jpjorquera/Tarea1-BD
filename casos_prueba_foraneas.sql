INSERT ALL
  INTO mochila (usuario_id) VALUES (1)
  INTO mochila (usuario_id, estado) VALUES (2, 1)
  INTO mochila (usuario_id) VALUES (3)
SELECT * FROM dual;

INSERT ALL
  INTO slots (mochila_id, item_id, cantidad) VALUES (1, 1, 10)
  INTO slots (mochila_id, item_id, cantidad) VALUES (3, 2, 50)
  INTO slots (mochila_id, item_id, cantidad) VALUES (3, 3, 50)
SELECT * FROM dual;

INSERT ALL
  INTO adquisicion (logro_id, usuario_id, nivel) VALUES (1, 1, 20)
SELECT * FROM dual;

INSERT INTO salvaje (id_salvaje, pokemon_id, id_ataque_1) VALUES (1, 1, 1);
INSERT INTO salvaje (id_salvaje, pokemon_id, id_ataque_1) VALUES (2, 3, 1);
INSERT INTO salvaje (id_salvaje, pokemon_id, id_ataque_1, id_ataque_2, id_ataque_3, id_ataque_4) VALUES (3, 2, 1, 2, 3, 4);
INSERT INTO salvaje (id_salvaje, pokemon_id, id_ataque_1) VALUES (4, 4, 5);
INSERT INTO salvaje (id_salvaje, pokemon_id, id_ataque_1) VALUES (5, 5, 1);
INSERT INTO salvaje (id_salvaje, pokemon_id, id_ataque_1) VALUES (6, 2, 1);
INSERT INTO salvaje (id_salvaje, pokemon_id, id_ataque_1) VALUES (7, 6, 4);