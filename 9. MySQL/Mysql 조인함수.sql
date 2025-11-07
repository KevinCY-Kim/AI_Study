-- =====================================
-- 이중 조인
select p.player_name, t.team_name -- 선수테이블에서 선수이름, 팀 테이블에서 팀이름
from player as p, team as t -- 선수테이블을 p라고, 팀테이블을 t라고 엘리아스
where p.team_id = t.team_id; -- 엮는 기준

-- 3중 조인
select p.player_name, t.team_name, s.stadium_name
from player as p, team as t, stadium as s
where p.team_id = t.team_id
and t.stadium_id = s.stadium_id;

-- 아래 설명 : player 기준 조인, 몸무게 70이상만 팀마다 집계, 선수 수로 내림차순
select p.team_id, t.team_name, count(p.player_id)
from player as p 
				left join 
						 team as t
	 on p.team_id = t.team_id
where p.weight >= 70
group by team_id
order by count(p.player_id) desc;

-- ==============================================
-- 서브쿼리: SQL문 안에 또 다른 SQL문을 넣는것


-- 1. where절에서 서브쿼리
select *
from player     -- n개가 서브쿼리에서 추출되기 때문에 동등연산자 하면 안되고 in 연산자를 해야함
                -- player_name in ["김현", "김훈", "김진"]
where player_name in (select player_name
					  from player
                      where player_name like "김_") -- 서브쿼리에서 김 외자 선수만 뽑음
and height >= 180;

-- 2. from 절에서 서브쿼리
-- 쿼리의 결과를 테이블로 쓰는거임.
select player_name, weight, height, team_name
from (select player_name, team_id, weight, height
	  from player
	  where player_name like "김_"
      and height >= 180) as temp, team as t
where temp.team_id = t.team_id;




