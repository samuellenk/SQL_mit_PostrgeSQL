/*
 * Author: (C) Samuel Lenk
 * Project: SQL with PostgreSQL
 * Web: https://linux-trainings.de
 * Purpose: grant & revoke demo
 */

-- create user/role:
create role joe login password '1234';

-- table candidates for joe to work with
create table candidates (
	cid int not null generated by default as identity,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null,
	phone_number varchar null,
	birth_date date not null,
	qualifications text not null,
	constraint candidates_pk primary key (cid)
);

-- grant permissions:
grant select on candidates to joe;
grant insert, update, delete on candidates to joe;
grant all on all tables in schema "public" to joe;

-- show what permissions joe has currently
select * from information_schema.table_privileges where grantee = 'joe';

revoke all on candidates from joe;
revoke all on all tables in schema "public" from joe;

-- possible values for grant & revoke: 
-- select
-- insert
-- update
-- delete
-- truncate
-- references
-- trigger
-- create
-- connect
-- temporary
-- execute
-- usage
-- set
-- alter system
-- all
-- Documentation here: https://www.postgresql.org/docs/current/ddl-priv.html
