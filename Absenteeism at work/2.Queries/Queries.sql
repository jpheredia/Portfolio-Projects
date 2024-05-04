-- create a join table
select * from Absenteeism_at_work$ as absw
left join compensation$ comp on absw.ID = comp.ID
left join Reasons$ as rs on absw.[Reason for absence] = rs.Number;

-- check the top 100 healtiests workers for the bonus
select top 100 * from Absenteeism_at_work$
where [Social drinker] = 0 and [Social smoker] = 0 and [Body mass index] <= 24.9 and [Absenteeism time in hours] <= (select avg ([Absenteeism time in hours]) from Absenteeism_at_work$)
order by [Social drinker], [Social smoker], [Body mass index], [Absenteeism time in hours];

--- check for non-smokers employees for compensation rate increase // compensation rate = $983.221 i.e. $0.68 per hour
select COUNT(*) as nonsmokers from Absenteeism_at_work$
where [Social smoker] = 0

select distinct(Seasons) from Absenteeism_at_work$

--- Final Query for Data Visualization
select 
absw.ID,
rs.Reason,
[Day of the week],
[Month of absence],
[Absenteeism time in hours],
case when [Month of absence] in (12,1,2) then 'Winter'
	when [Month of absence] in (3,4,5) then 'Spring'
	when [Month of absence] in (6,7,8) then 'Summer'
	when [Month of absence] in (9,10,11) then 'Fall'
	else 'Unknow' end as [Season Name],
Age,
[Body mass index],
case when [Body mass index] <18.5 then 'Underweight'
	when [Body mass index] between 18.5 and 25 then 'Healty'
	when [Body mass index] between 25 and 30 then 'Overweight'
	when [Body mass index] > 30 then 'Obese'
	else 'Unknow' end as [BMI Category],
[Social drinker],
[Social smoker],
[Work load Average/day ],
[Disciplinary failure]
from Absenteeism_at_work$ as absw
left join compensation$ comp on absw.ID = comp.ID
left join Reasons$ as rs on absw.[Reason for absence] = rs.Number;
