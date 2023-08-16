
with time_flight as ( 
		select *, 
		actual_arrival-actual_departure as flight_duration,
		scheduled_arrival-scheduled_departure as scheduled_flight_duration
		from stg.flights as fl
		)
select *,
case when flight_duration > scheduled_flight_duration then 'longer'
	 when flight_duration < scheduled_flight_duration then 'shorter'
	 when flight_duration = scheduled_flight_duration then 'as expected'
	 else null
	 end as time_expectation,
	   '{{ run_started_at.strftime("%Y-%m-%d %H:%M:%S") }}' as dbt_time
from time_flight