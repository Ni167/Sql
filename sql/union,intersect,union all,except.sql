use nitinn
-------------
create table football_player_detail
(id int identity,
name varchar (100),
email varchar (100)
)

insert into football_player_detail values
('nitin','nitin123@gmail.com'),
('vivek','vivek123@gmail.com'),
('ravi','ravi123@gmail.com'),
('raj','nitin123@gmail.com')

select * from football_player_detail
update football_player_detail set email='raj123@gmail.com' where id=4
--------------------------
create table hockey_player_detail
(id int identity,
name varchar (100),
email varchar (100)
)

insert into hockey_player_detail values
('sahil','sahil123@gmail.com'),
('sandesh','sandesh123@gmail.com'),
('tejas','tejas123@gmail.com'),
('raj','raj123@gmail.com')

select * from hockey_player_detail
-------------------
select name,email from football_player_detail
union
select name,email from hockey_player_detail

select * from football_player_detail
union all
select * from hockey_player_detail
-------------
select * from football_player_detail
intersect 
select * from hockey_player_detail
--------------
select * from football_player_detail
except
select * from hockey_player_detail