DROP database IF EXISTS entregable;
CREATE DATABASE if not exists entregable;
USE entregable;

CREATE TABLE `usuarios` (
	`id` INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
   `nombre` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL
);

CREATE TABLE `categorias` (
   `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `nombre` VARCHAR(100) NOT NULL
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha_update` DATE,
   `descripcion` TEXT NOT NULL,
   `usuario_id` INT,
   `fecha_borrado` DATE,
    FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`)
);

CREATE TABLE `categorias_notas` (
   `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   `categoria_id` INT,
   `notas_id` INT,
   FOREIGN KEY (`categoria_id`) REFERENCES `categorias`(`id`),
   FOREIGN KEY (`notas_id`) REFERENCES `notas`(`id`)
);


insert into usuarios (id, nombre, email) values (1, 'test1', 'test1@hotmail.com');
insert into usuarios ( nombre, email) values ('test2', 'test2@hotmail.com');
insert into usuarios ( nombre, email) values ('test3', 'test3@hotmail.com');
insert into usuarios ( nombre, email) values ('test4', 'test4@hotmail.com');
insert into usuarios ( nombre, email) values ('test5', 'test5@hotmail.com');
insert into usuarios ( nombre, email) values ('test6', 'test6@hotmail.com');
insert into usuarios ( nombre, email) values ('test7', 'test7@hotmail.com');
insert into usuarios ( nombre, email) values ('test8', 'test8@hotmail.com');
insert into usuarios ( nombre, email) values ('test9', 'test9@hotmail.com');
insert into usuarios ( nombre, email) values ('test10', 'test10@hotmail.com');

INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (1, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (2, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (3, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (4, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (5, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (6, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (7, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (8, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (9, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');
INSERT INTO notas (id, titulo, descripcion , fecha_creacion , fecha_update , fecha_borrado , usuario_id) VALUES (10, 'Título', 'Texto', '2018-10-10', '2018-10-10','2018-10-10', '1');

insert into categorias (id, nombre) values (1, 'testCategoria');
insert into categorias (nombre) values ('testCategoria');
insert into categorias (nombre) values ( 'testCategoria');
insert into categorias (nombre) values ('testCategoria');
insert into categorias (nombre) values ('testCategoria');
insert into categorias (nombre) values ('testCategoria');
insert into categorias (nombre) values ('testCategoria');
insert into categorias (nombre) values ('testCategoria');
insert into categorias (nombre) values ('testCategoria');
insert into categorias (nombre) values ('testCategoria');

INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('1', '1', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('2', '2', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('3', '3', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('4', '4', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('5', '5', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('6', '6', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('7', '7', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('8', '8', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('9', '9', '1');
INSERT INTO categorias_notas (id, notas_id, categoria_id) VALUES ('10', '10', '1');