# 데이터베이스 접속
use test;

# player 테이블 조회
select *    -- 모든 컬럼에 대한 데이터 조회
from player;

#player 테이블에서 선수 이름과 키, 몸무게만 조회
select player_name, height, weight
from player;

#player 테이블에서 선수 이름과 키, 몸무게를 조회하는데 키가 170이상인 선수만 조회
select player_name, height, weight
from player
where height >= 170;

# player 테이블에서 선수 이름과 키, 몸무게를 조회하는데 포지션이 미드필더, 골키퍼인 선수만 조회
select player_name, height, weight
from player
where position in ("MF", "GK");

# player 테이블에서 선수 이름이 김씨 외자만 찾기
select player_name
from player
where player_name like "김_"; -- 와일드카드1

# player 테이블에서 선수 이름이 김으로 시작하는 모든 선수 찾기
select player_name
from player
where player_name like "김%"; -- 와일드카드2 모든패턴 검색 %




