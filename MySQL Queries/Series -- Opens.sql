#INCLUDES DUPLICATE OPENS BY ONE USER
select 
title, count(*)  
from series_open so
join series s on so.series_id = s.id
where s.publish = 1
group by s.title  
order by count(*) desc, title asc





    

