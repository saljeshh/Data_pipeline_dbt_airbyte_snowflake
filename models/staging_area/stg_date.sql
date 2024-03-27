

with dim_date as (
    {{ dbt_date.get_date_dimension("2022-01-01", "2025-01-01") }}
)

select * from dim_date