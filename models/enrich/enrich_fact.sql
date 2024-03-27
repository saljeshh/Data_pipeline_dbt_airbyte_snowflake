select 
    mf.*, 
    (selling_price - product_cost) as margin,
    (margin * quantity) as profit,
    (profit * 5)/100 as tax_5_percent
from 
    {{ ref('mod_fact') }} mf