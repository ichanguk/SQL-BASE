# mission1
CREATE DATABASE pokemon;

/*
MISSION (1)
‘포켓몬’ (pokemon) 데이터베이스와 ‘나의 포켓몬’ (mypokemon) 테이블을 만들고, 
캐터피, 피카츄, 이브이의 포켓몬 번호, 영문 이름, 타입 데이터를 넣어주세요.

쿼리 순서 (1 STEP당 1개의 쿼리를 만들어 주세요.)
STEP1. 포켓몬 데이터베이스를 만들어 주세요. (데이터베이스 이름 : pokemon)
STEP2. 포켓몬 데이터베이스 안에 나의 포켓몬 테이블을 만들어 주세요. (테이블 이름 : mypokemon)
이 때, 컬럼은 (1) 포켓몬 번호, (2) 포켓몬 영문 이름, (3) 포켓몬 타입, 총 3가지로 하고, 이름과 데이터 타입을 지정해 주세요. 
컬럼 이름 및 데이터 타입 : (1) number : INT, (2) name : VARCHAR(20), (3) type : VARCHAR(10)
STEP3. 포켓몬 테이블 안에 포켓몬 데이터를 각각의 로우로 넣어 주세요.
*/
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
/*
MISSION (2)
MISSION (1)에서 만든 ‘포켓몬’ (pokemon) 데이터베이스에 ‘나의 새로운 포켓몬’ (mynewpokemon) 테이블을 만들고,
포니타, 메타몽, 뮤의 포켓몬 번호, 이름, 타입 데이터를 넣어주세요. 

쿼리 순서 (1 STEP당 1개의 쿼리를 만들어 주세요.)
STEP1. 포켓몬 데이터베이스 안에 나의 새로운 포켓몬 테이블을 만들어 주세요. (테이블 이름 : mynewpokemon)
이 때, 컬럼은 (1) 포켓몬 번호, (2) 포켓몬 영문 이름, (3) 포켓몬 타입, 총 3가지로 하고, 이름과 데이터 타입을 지정해 주세요. 
컬럼 이름 및 데이터 타입 : (1) number : INT, (2) name : VARCHAR(20), (3) type : VARCHAR(10)
STEP2. ‘나의 새로운 포켓몬’ 테이블 안에 포켓몬 데이터를 각각의 로우로 넣어 주세요.
*/
create table mynewpokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);

insert into mynewpokemon (number, name, type) values (77, "포니타", "불꽃"),
	(132, "메타몽", "노말"), (151, "뮤", "에스퍼");
    
select * from mynewpokemon