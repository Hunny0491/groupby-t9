create table Cricket(
	p_id int primary key,
	player_name varchar(120),
	player_age int,
	team varchar(120),
	field varchar(120),
	stats int,
	batco varchar(120)
	)

insert into cricket(p_id,player_name,player_age,team,field,stats,batco) values(910201,'Virat_kohli',35,'INDIA','batter','80','MRF')

select * from cricket

copy cricket from 'E:\practicetask\task9\old.csv' delimiter ',' csv header
select * from cricket

	-- aggregators , where , having with group by --

	
select team, sum(player_age) from cricket 
	where stats >30 group by team


select team, max(stats) from cricket
	where batco ='MRF' 
	group by team


select team,sum(stats) as "statistics" from cricket 
	where player_age <50 group by team 
	order by team asc

	
select field,batco,min(player_age) as "p_age" from cricket 
	where stats between 30 and 50 
	group by field,batco 
	having max(player_age)>34 
	
   
select batco, sum(stats) from cricket
	where stats>35 
	group by batco 
	having sum(stats) >35

	
select team, avg(stats) as "p_stat", 
	min(player_age) as "p_age" from cricket
	where player_age > 22 
	group by team 
	having sum(stats) >25

	
select field, sum(stats) from cricket 
	where stats<40 
	group by field 
	having sum(stats) >40


select count(player_name) as "allover" from cricket 
	where team ='INDIA' 
	group by field ='batter' 

	
select batco, sum(stats) from cricket 
	where stats>30 
	group by batco 
	having sum(stats) >30 
	order by sum(stats) DESC


	

