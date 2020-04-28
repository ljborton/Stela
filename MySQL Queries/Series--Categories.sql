#a_id = series id, b_id = keyword id
#1 aid:seriesId,bid:keywordId,
#2 aid:seriesId bid:categoriesId,
#3 aid:seriesId bid:seriesGroupsId,
#4 aid:seriesid bid:creditorId,
#5 aid:keywordId bid: surveryId

select 
-- uuid_from_bin(mm.a_id), 
-- uuid_from_bin(mm.b_id), 
-- mm.flag, 
-- mm.created_at, 
-- mm.updated_at,
--  uuid_from_bin(s.id),
 s.title,
--  uuid_from_bin(d.id),
--  d.keyword,
-- d.type_code,
 d.type_value
from many_to_many mm
join series s
on uuid_from_bin(mm.a_id) = uuid_from_bin(s.id)
join dictionary d
on uuid_from_bin(d.id) = uuid_from_bin(mm.b_id)
where s.publish = 1 and
flag = 2