drop table foo if exists;
drop table bar if exists;
drop table mumble if exists;
drop procedure MySpProc if exists;
drop procedure MyOtherSpProc if exists;
drop procedure MyLastProc if exists;
drop procedure NullCompoundProc if exists;
drop procedure SimpleCompoundProc if exists;

create table foo (intval integer not null, strval varchar(20), primary key(intval));
partition table foo on column intval;
create table bar (intval integer not null, strval varchar(20), primary key(intval));
partition table bar on column intval;
create table mumble (intval integer not null, strval1 varchar(20), strval2 varchar(20), primary key(intval));
partition table mumble on column intval;
create procedure MySpProc partition on table foo column intval as select strval from foo where intval = ?;
create procedure MyOtherSpProc partition on table bar column intval as select strval from bar where intval = ?;
create procedure MyLastProc partition on table mumble column intval as insert into mumble values (?, ?, ?);
create procedure from class compound.NullCompoundProc;
create procedure from class compound.SimpleCompoundProc;
