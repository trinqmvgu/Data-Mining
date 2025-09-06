select
  {{ dbt_utils.generate_surrogate_key(['channel']) }} as channel_sk,
  channel
from (select distinct channel from {{ ref('stg_sales_order') }})
