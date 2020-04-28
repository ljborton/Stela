#a_id = series id, b_id = keyword id
#1 aid:seriesId,bid:keywordId,
#2 aid:seriesId bid:categoriesId,
#3 aid:seriesId bid:seriesGroupsId,
#4 aid:seriesid bid:creditorId,
#5 aid:keywordId bid: surveryId

select 
uuid_from_bin(mm.a_id) as key_id, 
uuid_from_bin(mm.b_id) as survey_id, 
-- flag,
-- d1.keyword,
d1.type_value as key_type_value,
-- d2.keyword,
d2.type_value as survey_type_value
from many_to_many mm
join dictionary d1 on 
uuid_from_bin(mm.a_id) = uuid_from_bin(d1.id)
join dictionary d2 on uuid_from_bin(mm.b_id) = uuid_from_bin(d2.id)
where flag = 5
order by uuid_from_bin(a_id)