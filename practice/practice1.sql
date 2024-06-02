CREATE DATABASE pokemon;

use pokemon;
create table mypokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);

insert into mypokemon (number, name, type) values (10, "caterpie", "bug"),
	(25, "pikachu", "electric"), (133, "eevee", "normal");
    