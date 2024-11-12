use nitin

create table xx
(name varchar (100),
roll int identity(1,5))

select * from xx

alter table xx add roll_id int identity

insert into xx values
('mnoi',598)
('Goip'),
('Nitesh'),
('Ntiin'),
('Shyam'),
('Gopi'),
('Dev')

set identity_insert xx on 


set identity_insert xx off

drop table xx

insert into xx(name,roll) values('sf',789)