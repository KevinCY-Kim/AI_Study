use test;

select *
from player;

-- 학원강의
create table alpacolecture(
lecture_no int primary key auto_increment,
lecture_name varchar(20) not null
);

-- 컬럼 추가
alter table alpacolecture add lecture_time int;

-- 컬럼 삭제
alter table alpacolecture drop column lecture_time;

-- 컬럼 타입 수정 변경
alter table alpacolecture modify lecture_name varchar(100);

-- 컬럼명 변경
alter table alpacolecture rename column lecture_name to lec_name;

-- 학원학생
create table alpacostudent(
sid int unique auto_increment,
sname varchar(20) not null primary key,
email varchar(20) not null,
lecture_no int not null,
constraint alpa_FK foreign key (lecture_no) references alpacolecture(lecture_no)
);

insert into alpacolecture (lecture_name) values ("마스터과정");

insert into alpacostudent values ("스파이", "test@naver.com", 2);

insert into alpacostudent values ("홍길동", "test@naver.com", 2);

select * from alpacolecture;

select *
from player;

-- 김태호의 position을 FW로 바꿔보자.
update player
set position = "FW" -- 식별자로 수정하는 것이 목표
where player_id = "2000001";

select * from player;

-- 김태호를 삭제
delete
from player
where player_id = "2000001";

select * from player;

-- 선수의 키와 몸무게 출력
select player_name, weight, height
from player;

-- 선수의 키와 몸무게를 한글로 출력
select player_name, weight as "몸무게", height as "키"
from player;

-- 선수의 키와 몸무게를 더하고 "몸무게와키"로 컬럼명 출력
select player_name, weight+height as "몸무게와키"
from player;

-- 선ㅅ이름, 키에 CM 붙여서 출력
select player_name, concat(height, "CM")
from player;

-- 키가 180이상이면서(AND), 몸무게가 80이상인 선수들의 이름 출력
select player_name
from player
where height >= 180
or weight >= 80;

-- 키가 180이거나, 몸무게가 80이상인 선수들의 이름 출력
select player_name
from player
where height >= 180
or weight >= 80;

-- 이름이 김민성 인 사람 출력
select player_name
from player
where player_name like "김민성";

-- 이름이 김씨 외자 인 사람 출력
select player_name
from player
where player_name like "김_";

-- 이름이 김씨인 사람 출력 (2 ~ 10 관계 없이)
select player_name
from player
where player_name like "김%";

-- 민　들어가는 사람 출력
select player_name
from player
where player_name like "%민%";

-- 포지션의　유니크값　출력해보기
select distinct position
from player;


