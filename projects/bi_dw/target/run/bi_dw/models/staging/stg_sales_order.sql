
  create or replace   view BI_CLASS.STAGING.stg_sales_order
  
  
  
  
  as (
    select
  CHANNEL::varchar           as channel,
  SALES_ORDER::varchar       as sales_order,
  SALES_ORDER_LINE::varchar  as sales_order_line,
  SALESORDERLINEKEY::varchar as salesorderlinekey
from BI_CLASS.RAW.SALES_ORDER_DATA
  );

