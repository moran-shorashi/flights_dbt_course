
  
    

  create  table "flights_dbt_course"."flights_wh"."dim_aircraft__dbt_tmp"
  
  
    as
  
  (
    select ad.*, se.seat_no, se.fare_conditions,
case when ad.range > 5600 then 'high'
	 when ad.range < 5600 then 'low'
	 end as range_mode,
ad.model -> 'en' as Model_English,
ad.model -> 'ru' as Model_Russian,
'2023-08-16 17:54:14' as dbt_time
from stg.aircrafts_data as ad 
inner join stg.seats as se on ad.aircraft_code = se.aircraft_code
  );
  