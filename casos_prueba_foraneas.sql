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