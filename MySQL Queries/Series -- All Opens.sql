select sc.opens_count, s.title from series_count sc
join series s on sc.series_id = s.id
where publish = 1
order by sc.opens_count desc

