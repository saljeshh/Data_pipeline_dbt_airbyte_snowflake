select 
    date_day as date,
    day_of_week,
    day_of_week_name as day_name,
    day_of_month,
    day_of_year,
    month_name,
    quarter_of_year,
    year_number as year,
    month_of_year as month_number


from {{ref('stg_date')}}