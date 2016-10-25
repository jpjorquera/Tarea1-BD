CREATE TABLE pokemon (
  id_pokemon  number NOT NULL,
  nombre_pokemon varchar(35) NOT NULL,
  tipo_pokemon varchar(45) NOT NULL,
  PS number,
  PE number,
  CONSTRAINT pokemon_pk PRIMARY KEY (id_pokemon)
);

CREATE TABLE ataques (
  id_ataque number NOT NULL,
  nombre_ataque varchar(45) NOT NULL,
  tipo_ataque varchar(45) NOT NULL,
  poder number NOT NULL,
  efectividad number NOT NULL,
  cantidad number NOT NULL,
  CONSTRAINT ataques_pk PRIMARY KEY (id_ataque)
);

CREATE TABLE usuario (
  id_usuario number NOT NULL,
  nombre_usuario varchar(45) NOT NULL,
  apellido_usuario varchar(70) NOT NULL,
  edad number,
  mail varchar(45),
  fecha_registro date,
  login varchar(45),
  /*pass password,*/
  CONSTRAINT usuario_pk PRIMARY KEY (id_usuario)
);

CREATE TABLE items (
  id_item number NOT NULL,
  nombre_item varchar(45),
  descripcion varchar(100),
  tipo_item varchar(45),
  CONSTRAINT items_pk PRIMARY KEY (id_item)
);

CREATE TABLE logros(
  id_logro number NOT NULL,
  nombre_logro varchar(45),
  puntos varchar(45),
  CONSTRAINT logros_pk PRIMARY KEY (id_logro)
);

CREATE TABLE adquisicion (
  logro_id number UNIQUE NOT NULL,
  usuario_id number UNIQUE NOT NULL,
  nivel number,
  CONSTRAINT fk_logros
    FOREIGN KEY (logro_id)
    REFERENCES logros(id_logro),
  CONSTRAINT fk_usuario_adquisicion
    FOREIGN KEY (usuario_id)
    REFERENCES usuario(id_usuario)
);

CREATE TABLE mochila (
  id_mochila number NOT NULL,
  usuario_id number UNIQUE NOT NULL,
  estado number(1),
  CONSTRAINT mochila_pk PRIMARY KEY (id_mochila),
  CONSTRAINT fk_usuario_mochila
    FOREIGN KEY (usuario_id)
    REFERENCES usuario(id_usuario)
);

CREATE TABLE slots (
  mochila_id number UNIQUE NOT NULL,
  item_id number UNIQUE NOT NULL,
  cantidad number,
  CONSTRAINT fk_items
    FOREIGN KEY (item_id)
    REFERENCES items(id_item),
  CONSTRAINT fk_mochila
    FOREIGN KEY (mochila_id)
    REFERENCES mochila(id_mochila)
);

CREATE TABLE salvaje (
  id_salvaje number NOT NULL,
  potenciador number,
  pokemon_id number UNIQUE NOT NULL,
  id_ataque_1 number NOT NULL,
  id_ataque_2 number NOT NULL,
  id_ataque_3 number NOT NULL,
  id_ataque_4 number NOT NULL,
  CONSTRAINT salvaje_pk PRIMARY KEY (id_salvaje),
  CONSTRAINT fk_ataque_1
    FOREIGN KEY (id_ataque_1)
    REFERENCES ataques(id_ataque),
  CONSTRAINT fk_ataque_2
    FOREIGN KEY (id_ataque_2)
    REFERENCES ataques(id_ataque),
  CONSTRAINT fk_ataque_3
    FOREIGN KEY (id_ataque_3)
    REFERENCES ataques(id_ataque),
  CONSTRAINT fk_ataque_4
    FOREIGN KEY (id_ataque_4)
    REFERENCES ataques(id_ataque),
  CONSTRAINT fk_pokemon
    FOREIGN KEY (pokemon_id)
    REFERENCES pokemon(id_pokemon)
);

CREATE TABLE pokedex (
  usuario_id number,
  salvaje_id number,
  estado number(1),
  CONSTRAINT fk_usuario_pokedex
    FOREIGN KEY (usuario_id)
    REFERENCES usuario(id_usuario),
  CONSTRAINT fk_salvaje
    FOREIGN KEY (salvaje_id)
    REFERENCES salvaje(id_salvaje)
);