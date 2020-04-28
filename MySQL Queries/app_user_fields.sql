SELECT 
uuid_from_bin(au.id), 
au.subscription_status, 
au.auto_renew_status, 
au.comp, 
au.created_at, 
au.subscription_expires_at, 
au.email, 
au.facility,
uuid_from_bin(ar.id), 
uuid_from_bin(ar.user_id), 
ar.created_at, 
ar.environment, 
ar.auto_renew_status, 
ar.expires_date, 
ar.product_id, 
ar.order_number, 
ar.is_trial_period, 
ar.facility,
JSON_UNQUOTE(verification_response -> '$.is_in_intro_offer_period') as offer_period
FROM apple_receipts ar
join app_user au on uuid_from_bin(au.id) = uuid_from_bin(ar.user_id)
where date(ar.created_at) between '2019-08-03' and '2019-08-06'
and environment !='Sandbox'