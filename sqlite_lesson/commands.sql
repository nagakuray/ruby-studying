-- table
/*
integer
real
text
blob
null
*/

-- -- list tables
-- .tables
--
-- -- table structure
-- .schema

-- drop table if exists posts;
--
-- create table posts (
--   id integer primary key,
--   title varchar(255),
--   body text
-- );
--
--
-- -- insert irecordes
-- insert into posts (title,body) values ('title1','body1');
-- insert into posts (title,body) values (null,'title2','body2');
-- insert into posts (title,body) values ('title#','body3');
--
--
-- --select all recordes
-- select * from posts;
--
-- -- alter table posts rename to articles;
-- --
-- -- alter table articles add column email text ;
--
-- .schema


drop table if exists users;
create table users(
  id integer primary key,
  name text,
  score integer
);
insert into users (name,score) values
  ('taguchi',43),
  ('nagakuray',45),
  ('yuuichi',67),
  ('sato',77),
  ('makio',88),
  ('ohashi',null);

-- select * from users;
-- .headers on
-- select id, name from users;
-- select id,name as user_name from users;

-- .mode line
-- select * from users;
--
-- .mode csv
-- .mode html
-- .mode column
--
-- select * from users where score > 60;
--
-- select * from users where score >= 50 and score <= 80;
--
-- select * from users where score between 50 and 69;
--
-- select * from users where name in ('nagakuray','taguchi');
--
-- select * from users where score is not null;
-- select * from users where name = 'Taguchi';
--
-- select * from users where name glob '*I*';
-- select * from users where name glob '[a-m]*';

-- select * from users where name glob '*[%]';

-- select * from users where score is not null order by score;
-- select * from users where score is not null order by score desc;
--
-- select * from users where score is not null order by score desc limit 3;
-- select * from users where score is not null order by score desc limit 3 offset 2;

-- view
-- create view hiscore as select * from users order by score desc limit 5;
--
--   .tables
--   .schema
--
-- select * from hiscore;
-- drop view if exists hiscore;
--
-- .header on
-- .mode column
-- select id,name ,score + 10 as new_score from users;

select count(id),max(score),min(score),avg(score) from users;
-- select name ,length(name),upper(name),substr(name,2,3) from users;
--
-- select last_insert_rowid();
--
-- select random();

select * from users order by random() limit 3;



drop table if exists users;
create table users (
  id integer primary key,
  name text,
  score integer,
  team text
);


insert into users (name,score, team) values
  ('tacguchi',54,'team-A'),
  ('fkoji',80,'team-B'),
  ('tashiro',46,'team-B'),
  ('haayashi',65,'team-A'),
  ('sato',54,'team-C'),
  ('nagakuray',74,'team-C');

select team ,avg(score) from users group by team;

select team ,avg(score) from users group by team having avg(score) > 60;


select team ,avg(score) from users where score > 50 group by team having avg(score) > 60;

-- distinct
select distinct team from users;

-- case
select id ,name ,score,
  case
    when score > 70 then 'A'
    when score > 50 then 'B'
    else 'C'
  end as rank
from users;


select
  id , name ,team,
  case team
    when 'team-A' then 'Bears'
    when 'team-B' then 'Python'
    when 'tema-C' then 'Tiger'
    else 'nobody'
  end as mascot
from users;


-- update

update users set score = 0 ,name ='*' || name where score <60;
select * from users;

-- delete
delete from users where score = 0;


-- transaction
begin transaction;
update users set score = score-10 where name = 'fkoji';
update users set score = score+10 where name ='nagakuray';
commit;

begin transaction;
update users set score = score-10 where name = 'fkoji';
update users set score = score+10 where name ='nagakuray';

-- trigger
create table messsages (message);

create trigger new_winner update of score on users when score >100;
begin
  insert into messages(message) values(
    'name: ' || mew.name ||
    ' ' || olod.score ||
    '->' || new.score
  );
  end;

-- index
create index score_index on users(score);
create unique  index name_index on users(name);

drop index if exists score_index;
drop index if exists name_index;

.indices users;

--date time
select datetime('now','+09:00:00');
