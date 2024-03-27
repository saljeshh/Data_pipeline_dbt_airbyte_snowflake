{{
    config(
        materialized = "view"
    )
}}

with distinct_customer as (
    select 
        distinct customer_name as customer_name 
    from {{ ref('stg_sales') }}
)

select 
    {{
        dbt_utils.generate_surrogate_key(['customer_name'])
    }} as surrogate_customer_id,
    customer_name
from 
    distinct_customer

