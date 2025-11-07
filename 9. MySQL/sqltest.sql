use test;
-- 학생 테이블을 만들어서
create table alpacostudent(
	sid int not null, 
    sname varchar(10) not null
);
-- 학생 정철우, 김창용을 넣고
insert into alpacostudent(sid, sname) values (1,"정철우");
insert into alpacostudent(sid, sname) values (2,"김창용");
-- 조회한 다음에
select sid, sname
from alpacostudent;
-- 학생 정철우를 제거하자
set SQL_SAFE_UPDATES = 0; -- 세이프모드를 안쓰겠다.

delete 
from alpacostudent
where sname like '정철우';

select * 
from alpacostudent;