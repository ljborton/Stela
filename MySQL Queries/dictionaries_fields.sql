select uuid_from_bin(id), keyword, type_code, type_value 
from dictionary  where 
 keyword in
 (
-- 'add_miunte',
-- 'article_template'
'categories',
-- 'comments_type',
-- 'country_code',
-- 'display_position',
-- 'email_content_type',
-- 'email_to_type',
-- 'email_url',
'key_words',
'operating',
-- 'order_by',
-- 'permission',
-- 'row_type',
-- 'series_default_img',
'series_groups',
-- 'size_panel'
-- 'style'
'subscription_env',
'survey',
-- 'target',
-- 'time_zone', 
'user_enabled',
-- 'user_portrait',
-- 'user_type',
'version'
-- 'yes_no'
 )




