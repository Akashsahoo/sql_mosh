USE sql_invoicing;
select 
      c.state,
      c.city,
      sum(i.invoice_total) as total_sales
from invoices i 
join clients c
on i.client_id = c.client_id
group by city , state
order by total_sales desc