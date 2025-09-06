
  
    

create or replace transient table BI_CLASS.DW.dim_channel
    
    
    
    as (select
  md5(cast(coalesce(cast(channel as TEXT), '') as TEXT)) as channel_sk,
  channel
from (select distinct channel from BI_CLASS.STAGING.stg_sales_order)
    )
;


  