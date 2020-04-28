select max(temp.display_start_at) as last_date, temp.sctitle, temp.stitle from 
(SELECT display_start_at, sc.title as sctitle, s.title as stitle
from series_chapter sc join series s on s.id = sc.series_id  
where display_start_at < now()
	and s.publish = 1
group by s.title, display_start_at, sc.title
order by s.title, display_start_at desc, sc.title desc)
as temp
group by temp.stitle
order by  max(temp.display_start_at) desc
