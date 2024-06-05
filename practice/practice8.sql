-- 포켓몬 데이터 입력 쿼리
DROP DATABASE IF EXISTS pokemon; 
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon ( 
	number  int,
	name varchar(20), 
	type varchar(10), 
	attack int,
	defense int 
);
INSERT INTO mypokemon (number, name, type, attack, defense) 
VALUES (10, 'caterpie', 'bug', 30, 35),
	(25, 'pikachu', 'electric', 55, 40),
	(26, 'raichu', 'electric', 90, 55),
	(125, 'electabuzz', 'electric', 83, 57),
	(133, 'eevee', 'normal', 55, 50),
	(137, 'porygon', 'normal', 60, 70),
	(152, 'chikoirita', 'grass', 49, 65),
	(153, 'bayleef', 'grass', 62, 80),
	(172, 'pichu', 'electric', 40, 15),
	(470, 'leafeon', 'grass', 110, 130);
    
/*
MISSION
공격력과 방어력의 합이 120보다 크면 ‘very strong’, 90보다 크면 ‘strong’,
모두 해당 되지 않으면 ‘not strong’를 반환하는 함수 ‘isStrong’을 만들고 사용해주세요. 
조건1: attack과 defense를 입력값으로 사용하세요.
조건2: 결과값 데이터 타입은 VARCHAR(20)로 해주세요.
*/

set global log_bin_trust_function_creators=1;

delimiter //

create function isStrong(attack INT, defeisStrongnse INT)
	returns varchar(20)
begin
	declare a int;
    declare b int;
	declare grade varchar(20);
    
    set a = attack;
    set b = defense;
    
    select case
		when a + b > 120 then 'very strong'
        when a + b > 90 then 'strong'
        else 'not strong'
        end into grade;
        
    return grade;
end
//
delimiter ;    
    
SELECT name, isStrong(attack, defense) AS isStrong 
FROM mypokemon;