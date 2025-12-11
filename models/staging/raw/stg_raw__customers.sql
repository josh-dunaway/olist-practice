with 

source as (

    select * from {{ source('raw', 'customers') }}

),

renamed as (

    select
        -- primary key
        customer_id,
        --------------
        customer_zip_code_prefix AS zip_code_prefix,
        customer_city AS city,
        customer_state AS `state`

    from source

)

select * from renamed