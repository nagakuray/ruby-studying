
drop table if exists users;
create table users (
  id integer primary key,
  name text,
  age integer
  crated_at,
  updated_at
);

drop table if exists hoge;
create table hoge(
  name text,
  age integer
);

drop table if exists comments;
create table comments (
  id integer primary key,
  user_id integer,
  body text,
  created_at,
  updated_at
);
