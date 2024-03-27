
with stage_one_customer as (
    select
        fs.*,
        dc.surrogate_customer_id
    from {{ ref('stg_sales') }} fs
    left join {{ ref('mod_customer') }} dc
    on fs.customer_name = dc.customer_name
), stage_two_product as (

    select 
        ff.*,
        dp.surrogate_product_id 
    from stage_one_customer as ff
    left join {{ ref('mod_product')}} as dp
    on ff.product_name = dp.product_name
)
-- Final 
select
    {{ dbt_utils.generate_surrogate_key(['st.surrogate_product_id', 'st.surrogate_customer_id']) }} as fact_id,
    st.selling_price,
    st.product_cost,
    st.quantity,
    st.surrogate_product_id,
    st.surrogate_customer_id,
    st.order_date,
    st.state
from stage_two_product as st 