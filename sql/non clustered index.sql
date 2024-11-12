select * from ko

insert into ko(age) values
(45)

create nonclustered index nb
on ko(roll)

create index jk
on ko (roll )

create unique index rode5 on ko(roll desc)
sp_helpindex ko