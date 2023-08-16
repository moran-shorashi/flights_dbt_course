select *,
 '2023-08-16 14:31:02' as dbt_time
 from boarding_passes as bp
 inner join ticket_flights as tf on bp.flight_id =tf.flight_id