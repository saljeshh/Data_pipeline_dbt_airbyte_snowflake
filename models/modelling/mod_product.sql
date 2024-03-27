
with distinct_product as (
    select 
        distinct product_name,
        product_state
    from {{ ref('stg_sales') }}
)

select 
    {{
        dbt_utils.generate_surrogate_key(['product_name'])
    }} as surrogate_product_id,
    product_name,
    product_state
from 
    distinct_product

