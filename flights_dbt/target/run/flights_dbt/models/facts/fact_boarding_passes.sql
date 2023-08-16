
  
    

  create  table "flights_dbt_course"."flights_wh"."fact_boarding_passes__dbt_tmp"
  
  
    as
  
  (
    select  bp.*, tf.fare_conditions, tf.amount,
	   '2023-08-16 17:54:14' as dbt_time
from stg.ticket_flights as tf
inner join stg.boarding_passes as bp on tf.flight_id = bp.flight_id 
and bp.ticket_no =tf.ticket_no
  );
  