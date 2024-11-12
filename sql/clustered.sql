use nitin17
select * from golu

create clustered index ixx_fte_clustered on golu(age)
create clustered index ix_fte_clustered on golu(age desc,name asc)

drop index golu.ix_fte_clustered
sp_helpindex golu
----------------
