use IPL

Select * From IPL..Deliveries;

Select * From IPL..Matches

Select Top 20 *  From IPL..Deliveries;

Select Top 20 *  From IPL..Matches

Select * From IPL..Matches
where date = '2013-05-02';

Select * From IPL..Matches
where result_margin >= '100';

Select * From IPL..Matches
where result = 'tie'
order by date desc;

Select count(distinct city) as 'cities' From Matches;

Select city, Count(City) as Matches_Played from Matches group by city
order by Matches_Played Desc;

Select * From IPL..Matches
where city in ('Bangalore', 'Mumbai', 'Chennai')
order by city asc;


Select * From IPL..Deliveries where inning = '1'
order by bowler desc;

Select distinct batsman as Names_of_the_batsmen From Deliveries;

Select distinct bowler as Names_of_the_bowler From Deliveries;

Select count(distinct batsman) as Total_batsmen From Deliveries;

Select count(distinct bowler) as Total_Bowlers From Deliveries;

Select player_of_match, count(player_of_match) as Highest_MVP
from matches
group by player_of_match
having count(player_of_match) > 1
order by Highest_MVP desc;

Select winner, count(winner) as Highest_wins
from matches
group by winner
having count(winner) > 1
order by Highest_wins desc;

Select bowler, count(bowler) as Highest_delievry_by_a_player
from Deliveries
group by bowler
having count(bowler) > 1
order by Highest_delievry_by_a_player desc;
