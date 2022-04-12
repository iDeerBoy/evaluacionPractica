create database evaluacionPractica

use evaluacionPractica

create table usuarios(
id int primary key auto_increment not null,
nombre varchar(100) not null,
email varchar(100) not null
)

create table notas(
id int primary key auto_increment not null,
id_usuarios int not null,
titulo varchar(100) not null,
fecha_creacion DATE NULL,
fecha_modificacion DATE NULL,
descripcion text not null,
importante tinyint not null,
foreign key(id_usuarios) references usuarios(id)
)

create table categorias (
id int primary key auto_increment not null,
nombre  varchar(100) not null
)

create table notas_categorias(
id int primary key auto_increment not null,
id_notas int not null,
id_categorias int not null,
foreign key(id_notas) references notas(id),
foreign key(id_categorias) references categorias(id)
)

insert into usuarios (nombre, email)
values ("Leanne Graham", "Sincere@april.biz"),
	("Ervin Howell", "Shanna@melissa.tv"),
	("Clementine Bauch", "Nathan@yesenia.net"),
	("Patricia Lebsack", "Julianne.OConner@kory.org"),
	("Chelsey Dietrich", "Lucio_Hettinger@annie.ca"),
	("Mrs. Dennis Schulist", "Karley_Dach@jasper.info"),
	("Kurtis Weissnat", "Telly.Hoeger@billy.biz"),
	("Nicholas Runolfsdottir V", "Sherwood@rosamond.me"),
	("Glenna Reichert", "Chaim_McDermott@dana.io"),
	("Clementina DuBuque", "Rey.Padberg@karina.biz")
	
/*select * from usuarios*/
	
insert into notas (id_usuarios, titulo, fecha_creacion, fecha_modificacion, descripcion, importante)
values (7, "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", now(), now(), "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", 0),
(7, "qui est esse", now(), now(), "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla", 1),
(2, "ea molestias quasi exercitationem repellat qui ipsa sit aut", now(), now(), "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut", 1),
(3, "eum et est occaecati", now(), now(), "ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit", 0),
(1, "nesciunt quas odio", now(), now(), "repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis possimus esse voluptatibus quis\nest aut tenetur dolor neque", 0),
(6, "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", now(), now(), "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto", 0),
(9,"qui est esse", now(), now(), "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla", 1),
(4,"ea molestias quasi exercitationem repellat qui ipsa sit aut", now(), now(), "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut", 1),
(5,"eum et est occaecati", now(), now(), "ullam et saepe reiciendis voluptatem adipisci\nsit amet autem assumenda provident rerum culpa\nquis hic commodi nesciunt rem tenetur doloremque ipsam iure\nquis sunt voluptatem rerum illo velit", 0),
(8,"nesciunt quas odio", now(), now(), "repudiandae veniam quaerat sunt sed\nalias aut fugiat sit autem sed est\nvoluptatem omnis possimus esse voluptatibus quis\nest aut tenetur dolor neque", 0)
	
/*select * from notas*/

insert into categorias (nombre)
values ("terror"),
("aventura"),
("suspenso"),
("romantico"),
("accion"),
("fantasia"),
("ciencia ficcion"),
("animacion"),
("infantil"),
("anime")

/*select * from categorias*/

insert into notas_categorias (id_notas, id_categorias)
values (1,10),
(2,9),
(3,8),
(4,7),
(5,6),
(6,5),
(7,4),
(8,3),
(9,2),
(10,1)

/*select * from notas_categorias*/

/*select usuarios.nombre, notas.titulo from usuarios inner join notas on notas.id_usuarios = usuarios.id*/
