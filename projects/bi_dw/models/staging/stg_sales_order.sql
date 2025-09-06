select
  CHANNEL::varchar           as channel,
  SALES_ORDER::varchar       as sales_order,
  SALES_ORDER_LINE::varchar  as sales_order_line,
  SALESORDERLINEKEY::varchar as salesorderlinekey
from {{ source('raw','SALES_ORDER_DATA') }}
