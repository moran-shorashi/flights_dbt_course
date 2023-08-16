select *, 
	   airport_name ->> 'en' as english_name,
	   airport_name ->> 'ru' as rusion_name,
	   city ->> 'en' as english_name2,
	   city ->> 'ru' as rusion_name2,
	   '2023-08-16 17:54:14' as dbt_time
from stg.airports_data