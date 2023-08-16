select ti.*, bo.book_date, bo.total_amount,
	   contact_data ->> 'email' as email,
	   contact_data ->> 'phone' as phone,
	   '2023-08-16 17:54:14' as dbt_time
from stg.tickets as ti
inner join stg.bookings as bo on ti.book_ref = bo.book_ref