SELECT 
uuid_from_bin(id) as id, 
uuid_from_bin(user_id) as userid, 
created_at, environment, 
auto_renew_status, 
expires_date, 
product_id, 
order_number, 
is_trial_period, 
facility,
JSON_UNQUOTE(verification_response -> '$.is_in_intro_offer_period') as offer_period
FROM apple_receipts