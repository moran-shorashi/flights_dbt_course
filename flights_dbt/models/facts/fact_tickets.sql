
select ti.*, bo.book_date, bo.total_amount,
	   contact_data ->> 'email' as email,
	   contact_data ->> 'phone' as phone,
	   '{{ run_started_at.strftime("%Y-%m-%d %H:%M:%S") }}' as dbt_time
from stg.tickets as ti
inner join stg.bookings as bo on ti.book_ref = bo.book_ref