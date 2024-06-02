/*
MISSION (1)
‘포켓몬’ (pokemon) 데이터베이스 안에 있는 ‘나의 포켓몬’ (mypokemon) 테이블과   ‘나의 새로운 
포켓몬’ (mynewpokemon) 테이블이 아래와 같이 될 수 있게 변경해 주세요.
※ 테이블을 새로 생성하지 말고, 기존의 테이블에서 변경해주세요!
쿼리 순서 (1 STEP당 1개의 쿼리를 만들어 주세요.)
STEP1. ‘mypokemon’ 테이블의 이름을 ‘myoldpokemon’으로 변경해 주세요.
STEP2. ‘myoldpokemon’ 테이블의 ‘name’ 컬럼의 이름을 ‘eng_name’으로 변경해 주세요. 
(컬럼 이름 : eng_nm, 데이터 타입 : VARCHAR(20))
STEP3. ‘mynewpokemon’ 테이블의 ‘name’ 컬럼의 이름을 ‘kor_name’으로 변경해 주세요. 
(컬럼 이름 : kor_nm, 데이터 타입 : VARCHAR(20))
*/
use pokemon;
alter table mypokemon rename myoldpokemon;
alter table myoldpokemon change column name eng_name VARCHAR(20);
alter table mynewpokemon change column name kor_name VARCHAR(20);

select * from myoldpokemon;
select * from mynewpokemon;

/*
MISSION (2)
‘pokemon’ 데이터베이스 안에 있는 ‘myoldpokemon’ 테이블은 값만 지우고, 
‘mynewpokemon’ 테이블은 전부 지워 주세요.
*/

truncate table myoldpokemon;
drop table mynewpokemon;