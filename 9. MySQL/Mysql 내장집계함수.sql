use test;

select *
from player;

set SQL_SAFE_UPDATES = 0; -- delete / update 가능하게 safe mode 끔
set AUTOCOMMIT = 0; -- 자동저장 off
commit; -- 저장

delete from player where player_name = "정호곤";

select * from player; -- 유동우 사라졌다.

rollback; -- 마지막 commit 시점으로 다시 돌아감

select * from player; -- 유동우 다시 살아났다.

-- =========================================
select * from player; -- 정호곤 / 최경훈
commit;

delete from player where player_name="정호곤";

savepoint A; -- 정호곤이 사망한 시점

delete from player where player_name="최경훈";

savepoint B; -- 최경훈이 사망한 시점

rollback to A; -- 정호곤만 사망한 시점으로 돌아감.

select * from player; -- 최경훈 살아났음

-- =========================================
select *
from player
where weight between 70 and 90; -- 70이상 90이하

select *
from player
where position in ("DF","FW"); -- DF나 FW가 포지션인 

select *
from player
where e_player_name is null; -- eplayer_name이 null인

select *
from player
where not e_plyaer_name is null; -- eplayer_name이 null이 아닌

-- ==================================================
-- 키가 180 이상이면 장신
-- 키가 170 이상이면 일반
-- 키가 160 이상이면 단신

-- 나와야 하는 컬럼은 이름/키/기준
select player_name as "이름", height as "키", case
						    when height >= 180
								then "장신"
							when height >= 170
								then "일반"
                            when height >= 160
								then "단신"
							else "기타"
                            end as 기준
from player;

-- 집계함수, 팀마다 선수 몇명임?
select team_id, count(player_name), sum(weight),
			avg(weight), max(weight), min(weight),
            variance(weight), std(weight)         
from player
group by team_id;
having count(player_name) >= 10 -- 선수인원이 10명 미만인 팀만,

-- 팀마다 몸무게가 70이상인 선수들이 각각 몇명인지 카운트 집계하고,
-- 10명 미달인 팀은 제외해라, 그리고 카운트 집계숫자 기준으로 내림차순하고
-- 상위 3개만 남겨라

select team_id, count(player_id), avg(weight)
from player
where weight >= 70
group by team_id
having count(player_id) > 10
order by count(player_id) desc -- 이중 정렬 방법 (디폴트 오름차순...asc)
limit 3; -- 상위 3개 head(3)

-- 키가 180 이상인 선수들만 팀마다 집계를 하라.
-- 이때 집계 숫자가 5이상인 팀만 남겨라
-- 2번째 컬럼도 출력해야하는데... 평균 키를 출력해라
-- 선수 숫자를 내림차순, 평균키를 오름차순으로 정렬해라..
-- 상위 2개만 잘라라.
select team_id, count(player_id), avg(height)
from player
where height >= 180
group by team_id
having count(player_id) > 5
order by count(player_id) desc, count(height)
limit 2;

























