CREATE OR REPLACE VIEW view_atrapados AS 
  SELECT usuario_id, SUM(estado) AS total FROM
      (SELECT DISTINCT usuario_id, id_pokemon, estado FROM pokedex
      INNER JOIN (SELECT id_pokemon, id_salvaje FROM pokemon
      INNER JOIN salvaje ON pokemon_id = id_pokemon) ON id_salvaje = salvaje_id
      WHERE estado > 0)
      GROUP BY usuario_id
  ORDER BY usuario_id;