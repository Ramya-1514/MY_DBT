select 
--from raw orders 
o.order_id,
o.order_date,
o.ship_date,
o.ship_mode,
o.order_sell_price - o.order_cost_price as orderprofit ,
o.order_sell_price,
o.order_cost_price,
--from raw customer
c.customer_name,
c.segment,
c.country,
--from products 
p.category,
p.product_name,
p.sub_category
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c
on o.customer_id=c.customer_id
left join {{ ref('raw_product') }} as p
on o.product_id=p.product_id

