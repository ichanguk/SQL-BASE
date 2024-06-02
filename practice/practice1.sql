# mission1
CREATE DATABASE pokemon;

use pokemon;
create table mypokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);

insert into mypokemon (number, name, type) values (10, "caterpie", "bug"),
	(25, "pikachu", "electric"), (133, "eevee", "normal");

select * from mypokemon;    

# mission2
create table mynewpokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);

insert into mynewpokemon (number, name, type) values (77, "포니타", "불꽃"),
	(132, "메타몽", "노말"), (151, "뮤", "에스퍼");
    
select * from mynewpokemon