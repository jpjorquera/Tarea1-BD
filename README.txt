Integrantes:
Jorge Ignacio Contreras Cabrera		201573547-6
Juan Pablo Jorquera Zapata		201573533-6

Aclaraciones:
- Para la password del usuario se usó un varchar(30).
- Para view_maestros y trigger_maestro asegurarse que el nombre del logro maestro pokemon sea 'maestro pokemon' tal cual.
- Al agregar a una mochila más de lo posible, se modifica la cantidad para que sólo se llene ésta.
- ** Modificación al modelo: se agregó un atributo ‘ocupados’ a mochila para llevar la cuenta del espacio usado en ella.
- Se modificaron los nombres de algunos atributos para evitar ambigüedades en nuestra base de datos como: nombre -> nombre_pokemon.
- Para procedure_maestro se requiere de dbms_output para ver la salida.