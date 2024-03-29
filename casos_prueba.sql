INSERT ALL
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('bulbasaur', 'planta', 45, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('charmander', 'fuego', 39, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('squirtle', 'agua', 44, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('pikachu', 'trueno', 35, 0)
SELECT * FROM dual;

INSERT ALL
  INTO usuario (nombre_usuario, apellido_usuario, edad, mail, login, pass) VALUES ('Jorge', 'Contreras', 19, 'jorge.contrerasc@sansano.usm.cl', 'JorgeUSM', '1234hola')
  INTO usuario (nombre_usuario, apellido_usuario, edad, mail, login, pass) VALUES ('Juan Pablo', 'Jorquera', 24, 'juan.jorqueraz@sansano.usm.cl', 'JP', 'passFalsa123')
  INTO usuario (nombre_usuario, apellido_usuario, edad, mail, login, pass) VALUES ('Homero', 'Thompson', 45, 'homero@magios.com', 'ElLocoHomero', 'maggie')
  INTO usuario (nombre_usuario, apellido_usuario, edad, mail, login, pass) VALUES ('Pedro', 'Picapiedra', 48, 'pedro.picapiedra@bufalos.mojados.com', 'PPicapiedra', 'gazuNoExiste')
  INTO usuario (nombre_usuario, apellido_usuario, edad, mail, login, pass) VALUES ('Barney', 'Stinson', 28, 'bstinson@gnb.com', 'TedMosby', 'itslegendary')
SELECT * FROM dual;

INSERT ALL
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('placaje', 'normal', 35, 90, 35)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('impactrueno', 'trueno', 40, 100, 30)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('lanzallamas', 'fuego', 95, 100, 15)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('pistola agua', 'agua', 40, 100, 25)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('latigo cepa', 'planta', 35, 100, 15)
  INTO ataques(nombre_ataque, tipo_ataque, efectividad, cantidad) VALUES ('rugido', 'normal', 100, 20)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('ascuas', 'fuego', 40, 100, 25)
  INTO ataques(nombre_ataque, tipo_ataque, cantidad) VALUES ('neblina', 'hielo', 30)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('corte', 'normal', 50, 95, 30)
  INTO ataques(nombre_ataque, tipo_ataque, efectividad, cantidad) VALUES ('cara susto', 'normal', 90, 10)
SELECT * FROM dual;

INSERT ALL
  INTO items(nombre_item, descripcion, tipo_item) VALUES ('poke ball', 'A device for catching Pokemon. It is thrown like a ball at the target.', 'pokeballs')
  INTO items(nombre_item, descripcion, tipo_item) VALUES ('master ball', 'The best type of Ball. It will catch any wild Pokemon without fail.', 'pokeballs')
  INTO items(nombre_item, descripcion, tipo_item) VALUES ('potion', '	A spray-type medicine. It restores the HP of one Pokémon by just 20 points.', 'medicine')
  INTO items(nombre_item, descripcion, tipo_item) VALUES ('super potion', 'A spray-type medicine. It restores the HP of one Pokémon by 50 points.', 'medicine')
  INTO items(nombre_item, descripcion, tipo_item) VALUES ('rare candy', 'A candy that raises the level of a single Pokémon by one.', 'medicine')
SELECT * FROM dual;

INSERT ALL
  INTO logros(nombre_logro, puntos) VALUES ('maestro pokemon', 100)
  INTO logros(nombre_logro, puntos) VALUES ('logro de prueba', 50)
SELECT * FROM dual;