UPDATE slots SET cantidad = 50 WHERE mochila_id = 2 AND item_id = 3;
UPDATE slots SET cantidad = 49 WHERE mochila_id = 2 AND item_id = 3;
DELETE FROM slots WHERE mochila_id = 2 AND item_id = 3;
INSERT INTO slots (mochila_id, item_id, cantidad) VALUES (2, 5, 10);
INSERT INTO slots (mochila_id, item_id, cantidad) VALUES (2, 4, 120);

EXECUTE procedure_maestro(1);

INSERT INTO pokedex (usuario_id, salvaje_id, estado) VALUES (3, 1, 1);

SELECT * FROM VIEW_POKEDEX;