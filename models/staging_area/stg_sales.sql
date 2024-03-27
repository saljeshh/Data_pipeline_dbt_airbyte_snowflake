select
    product_id,
    product_name,
    product_state,
    selling_price,
    product_cost,
    quantity,
    customer_name,
    order_date,
    city,
    state 
from 
    {{ source('src_sales','raw_product') }}