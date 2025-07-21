# Base de Datos- Biblioteca MySQL
En este proyecto documentaré el proceso para realizar una base de datos en MySQL usando la herramienta MysSQL Workbench 

## Creando base de datos y tablas
- Usar la opcion nuevo esquema para crear una nueva base de datos que llamaré biblioteca:
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/new-schema.PNG">
</p>
<br>

- Creando la tabla editoriales:
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/tabla-editoriales.PNG">
</p>
Asigno un id entero autoincremental como llave primaria y las columnas nombre y país de tipo varchar.
<br>

- Tras crear la tabla y refrescar el panel de editoriales se puede visualizar la base de datos ya creada y la tabla editoriales.
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/visualizando.PNG">
</p>
<br>

- Creando la tabla categorias, le asigno un id entero autoincremental como llave primaria y un nombre de tipo varchar.
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/visualizando.PNG">
</p>
<br>

- Creando la tabla libros, le asigno un id entero autoincremental como llave primaria, un títutlo de tipo varchar, un año de publicación tipo YEAR, un isbn que es un id único que tiene cada libro y creo las columnas id-editorial y id-categorias que seran llaves foráneas que realicionaré con las otras tablas.
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/tabla-libros.PNG">
</p>
<br>

- Creando la tabla autores, le asigno un id entero autoincremental como llave primaria, un nombre, apellido y nacionalidad de tipo varchar.
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/tabla-autores.PNG">
</p>
<br>

- Creando la tabla libro-autor, le asigno un id entero autoincremental como llave primaria, un id para el libro y un id para el autorque seran llaves foráneas que realicionaré con las otras tablas.
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/tabla-libro-autor.PNG">
</p>
<br>

- Creando la tabla usuarios, le asigno un id entero autoincremental como llave primaria, un nombre, apellido, correo electrónico de tipo varchar y una fecha de registro de tipo default current_timestamp que será la fecha automática de cuando la persona se registro.
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/tabla-usuarios.PNG">
</p>
<br>

- Creando la tabla prestamos, le asigno un id entero autoincremental como llave primaria, un id de usuario, un id de libro, una fecha de prestamo de tipo date y not null ya que si se hizo el prestamo no puede estar vacia, una fecha de devolución de tipo date y un devuelto de tipo boolean que almacenare un valor falso o verdadero para saber si el libro o libros se encuentran disponibles.
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/tabla-prestamos.PNG">
</p>
<br>

- De esta forma se visualizan las tablas en la base de datos:
<p align="center">
	<img src="https://raw.githubusercontent.com/WilliamLopez663/Base-de-Datos---Biblioteca---MySQL/assets/main/images/visualización2.PNG">
</p>
<br>

## Creando conexiones entre tablas
- 
