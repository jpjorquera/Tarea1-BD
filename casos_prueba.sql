INSERT ALL
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('bulbasaur', 'grass', 45, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('ivysaur', 'grass', 60, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('venusaur', 'grass', 80, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('charmander', 'fire', 39, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('charmeleon', 'fire', 58, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('charizard', 'fire', 78, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('squirtle', 'water', 44, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('wartortle', 'water', 59, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('blastoise', 'water', 79, 0)
  INTO pokemon (nombre_pokemon, tipo_pokemon, PS, PE) VALUES ('pikachu', 'thunder', 35, 0)
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
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('impactrueno', 'thunder', 40, 100, 30)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('lanzallamas', 'fire', 95, 100, 15)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('pistola agua', 'water', 40, 100, 25)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('latigo cepa', 'grass', 35, 100, 15)
  INTO ataques(nombre_ataque, tipo_ataque, efectividad, cantidad) VALUES ('rugido', 'normal', 100, 20)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('ascuas', 'fire', 40, 100, 25)
  INTO ataques(nombre_ataque, tipo_ataque, cantidad) VALUES ('neblina', 'ice', 30)
  INTO ataques(nombre_ataque, tipo_ataque, poder, efectividad, cantidad) VALUES ('corte', 'normal', 50, 95, 30)
  INTO ataques(nombre_ataque, tipo_ataque, efectividad, cantidad) VALUES ('cara susto', 'normal', 90, 10)
SELECT * FROM dual;

