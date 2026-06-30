select
    o.customer_id
from {{ ref('stg_orders') }} as o
left join {{ ref('stg_customers') }} as c
    on o.customer_id = c.customer_id
where c.customer_id is null
  and o.customer_id is not null