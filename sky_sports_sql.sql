create database skysports;
use skysports;
select * from football1;

select * from football2;

#task   Write an sql query to show all the UNIQUE team names
 select distinct(team) from football1;

#task	Write an SQL query to show name of team which has rank 1 from group 7 
select team from football2
where `group`=7 and `rank`=1;

#task	Write an sql query to show count of all teams
select count(team) from football1;

#task 	Write an SQL query to show matches_played by each team
select  team , matches_played from football2;

#task	Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent
select team,(wins/matches_played)*100 from football2;

#task	Write an SQL query to show which team has maximum goals_scored and their count
select team, max(goals_scored) from football2
group by team
order by 2 desc limit 2;

#task  Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select round((draws/matches_played *100 ),2) from football2;

#task	 Write an SQL query to show which team has minimum goals_scored and their count
select team, min(goals_scored) from football2
group by team
order by 2 asc;

#task	 Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent
select team,(losses/matches_played)*100 as lossed_percent from football2
order by 2 asc;

#task	Write an SQL query to show the average goal_difference 
select avg(goal_difference) from football2;

#task	 Write an SQL query to show name of the team where points are 0 
select team from football2
where points=0;

#task	Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from football2
where expected_goal_scored<exp_goal_conceded;

#task	Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from football2
where exp_goal_difference between -0.5 and 0.5;

#task	Write an SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from football2
order by exp_goal_difference_per_90;

#task	Write an SQL query to show team which has maximum number of players_used
select team from football1
where players_used=(select max(players_used) from football1);

#task	Write an SQL query to show each team name and avg_age in ascending order by avg_age
select team ,avg_age from football1
group by 1,2
order by 2 asc;

#task	Write an sql query to show average possession of teams
select team,avg(possession) from football1
group by 1;

#task	Write a SQL query to show team which has played atleast 5 games
select team from football1
where games>=5;

#task	Write an SQL query to show all data for which minutes is greater than 600
select * from football1
where minutes>600;

#task	Write an SQL query to show team, goals, assists in ascending order by goals
select team, goals,assists from football1
order by 2 asc;

#task	Write an SQL query to show team, pens_made, pens_att in descending order by pens_made
select team,pens_made,pens_att from football1
order by 2 desc;

#task	Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 
select team,cards_yellow,cards_red from football1
where cards_red=1
order by 2 asc;

#task	Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 
select team, goals_per90, assists_per90, goals_assists_per90 from football1
order by 4 desc;

#task	Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 
select team,goals_pens_per90,goals_assists_pens_per90 from football1
order by 3 asc;

#task	Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 
select team,shots,shots_on_target,shots_on_target_pct from football1
where shots_on_target_pct<30
order by 4;

#task	Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team,shots_per90,shots_on_target_per90 from football1
where team='belgium';

#task	 Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from football1
order by 4 desc;

#task	Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 
select  team, errors, touches from football1
where errors=0 and touches<1500;

#task	Write an SQL query to show team, fouls which has maximum number of fouls
select team, max(fouls) from football1
group by team
order by 2 desc limit 1;
or
select team, fouls from football1
where fouls=(select max(fouls) from football1);


#task	Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team,offsides from football1
where offsides between 10 and 20;

#task	Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 
select team, aerials_won, aerials_lost, aerials_won_pct from football1
order by 4 desc;

#task	Write an SQL query to show number of teams each group has!
select `group`,count(team) from football2
group by 1;

#task	Write a SQL query to show team names group 6 has
select team from football2
where `group`=6;

#task	Write an SQL query to show Australia belongs to which group 
select `group` from football2
where team='australia';

#task	Write an SQL query to show group, average wins by each group 
select `group`,avg(wins) from football2
group by 1;

#task	Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored
select `group`,max(expected_goal_scored) from football2
group by 1
order by 2 ;

#task	Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 
select `group`,min(exp_goal_conceded) from football2
group by 1
order by 2 desc;

#task	Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90 
select `group`,avg(exp_goal_difference_per_90) from football2
group by 1
order by 2;

#task	Write an SQL query to show which team has equal number of goals_scored and goals_against 
select team from football2
where goals_scored=goals_against;

#task	Write an SQL query to show which team has maximum players_used 
select team , max(players_used) from football1
group by 1
order by 2 desc
limit 1;

#task	Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 
select team, players_used, avg_age, games, minutes from football1
where minutes between 200 and 500;

#task	Write an SQL query to show all data in ascending order BY points
select * from football2
order by points ;

#task	Write an SQL query to show ALL UNIQUE team in ascending order by team
select distinct(team) from football1
order by team;

#task	 Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 
select f2.`group`,avg(f1.avg_age) from football1 f1 join football2 f2
on f1.team=f2.team
group by 1
order by 2 desc;

#task	Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.
select f2.`group`,sum(f1.fouls) from football1 f1 join football2 f2
on f1.team=f2.team
group by 1
order by 2;

#task	Write an SQL query to show total number of games for each group and arrange it in descending order by games. 
select f2.`group`, sum(f1.games) from football1 f1 join football2 f2
on f1.team=f2.team
group by 1
order by 2 desc;

#task	Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 
select f2.`group`,sum(f1.players_used) from football1 f1 join football2 f2
on f1.team=f2.team
group by 1
order by 2;

#task	Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.
select f2.`group`,sum(f1.passes_offsides) from football1 f1 join football2 f2
on f1.team=f2.team
group by 1
order by 2;

#task	Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select f2.`group`,avg(f1.gk_passes_pct_launched) from football1 f1 join football2 f2
on f1.team=f2.team
group by 1
order by 2 desc;

#task	Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select f2.`group`,avg(f1.goals_per90) from football1 f1 join football2 f2
on f1.team=f2.team
group by 1
order by 2;
