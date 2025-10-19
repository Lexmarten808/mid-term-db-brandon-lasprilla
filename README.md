#  mid term Base de Datos – PostgreSQL + pgAdmin

Este proyecto implementa la creación y despliegue de una base de datos PostgreSQL utilizando contenedores Docker, junto con una interfaz gráfica en pgAdmin para la administración

##  Despliegue de la base de datos

##  Crear contenedor de PostgreSQL

Ejecutar el siguiente comando para crear y levantar el contenedor de PostgreSQL:

 docker run --name "nombre del contenedor" -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14

## Crear contenedor de pgAdmin

Ejecutar el siguiente comando para crear el contenedor con la interfaz web de pgAdmin:

docker run --rm -p 5050:80 --link "nombre del contenedor":"nombre del contenedor" -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar123" -d dpage/pgadmin4

## Acceder a pgAdmin

Abre el navegador y abre:

http://localhost:5050/login


Ingresar las credenciales definidas en las variables de entorno:

Correo: usuario@servilimar.com

Contraseña: limar123

Luego, conectar un nuevo servidor con los siguientes datos:

Host name / Address: "nombre del contenedor"

Port: 5432

Username: ulimar

Password: ex4men_db

## cree la base de datos con el nombre servilimar y ejecute las instrucciones ddl y dml

--------------------------------- AUTOR---------------------------------------

Brandon Lasprilla Aristizabal