CREATE TABLE tipo_usuario (

user_type_id INT PRIMARY KEY,
nombre_tipo_usuario VARCHAR(100)
);

CREATE TABLE ciudad(

ciudad_id INT PRIMARY KEY,
nombre VARCHAR(100),
codigo_postal VARCHAR(100)

);

CREATE TABLE usuario(

usuario_id INT PRIMARY KEY,
nombre VARCHAR(100),
apellido VARCHAR(100),
user_type_id INT,
condicion_especial VARCHAR(100),
ciudad_id INT,

FOREIGN KEY (user_type_id) REFERENCES tipo_usuario(user_type_id),
FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

CREATE TABLE empleado(

empleado_id INT PRIMARY KEY,
id_usuario INT,
cargo VARCHAR(100),
FOREIGN KEY (id_usuario) REFERENCES usuario(usuario_id)
);

CREATE TABLE departamento (

id_departamento INT PRIMARY KEY,
nombre VARCHAR(100)
);

CREATE TABLE empleado_departamento(

empleado_id INT,
id_departamento INT,
FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id),
FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

CREATE TABLE contacto (

id_contacto INT PRIMARY KEY,
id_usuario INT,
tipo_contacto VARCHAR(100),
contacto VARCHAR(100),
FOREIGN KEY (id_usuario) REFERENCES usuario(usuario_id)

);

CREATE TABLE notificacion (

id_notificacion INT PRIMARY KEY,
id_usuario INT,
id_contacto INT,
mensaje VARCHAR(100),
fecha_envio VARCHAR(100),
estado VARCHAR(100),
FOREIGN KEY (id_usuario) REFERENCES usuario(usuario_id),
FOREIGN KEY (id_contacto) REFERENCES contacto(id_contacto)

);

CREATE TABLE servicio(

id_servicio INT PRIMARY KEY,
nombre VARCHAR(100),
descripcion VARCHAR(100)
);

CREATE TABLE servicio_ofrecido (

id_servicio_ofrecido INT PRIMARY KEY,
id_servicio INT,
id_usuario INT,
estado VARCHAR(100),
FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio),
FOREIGN KEY (id_usuario) REFERENCES usuario(usuario_id)

);

CREATE TABLE turno(

id_turno INT PRIMARY KEY,
usuario_id INT,
empleado_id INT,
id_servicio INT,
fecha DATE,
hora_inicio TIME,
hora_fin TIME,
estado VARCHAR(100),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id),
FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio)
);
