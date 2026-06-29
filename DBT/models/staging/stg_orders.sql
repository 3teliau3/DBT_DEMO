with source as (
     select * from {{source('my_dbt_db', 'raw_orders') }}), 
renamed as (
    select
        customer as customer_id
    from source
)
select * from renamed