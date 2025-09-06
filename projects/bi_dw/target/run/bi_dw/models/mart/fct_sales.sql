
  
    

create or replace transient table BI_CLASS.DW.fct_sales
    
    
    
    as (with s as (
  select s.*, so.channel, so.sales_order, so.sales_order_line
  from BI_CLASS.STAGING.stg_sales s
  left join BI_CLASS.STAGING.stg_sales_order so
    on so.salesorderlinekey = s.salesorderlinekey
)
select
  s.salesorderlinekey,

  od.date_key as order_date_key,
  dd.date_key as due_date_key,
  sd.date_key as ship_date_key,

  dp.product_sk,
  dc.customer_sk,
  dr.reseller_sk,
  dst.salesterritory_sk,
  dch.channel_sk,

  s.sales_order,
  s.sales_order_line,

  s.order_qty,
  s.unit_price,
  s.extended_amount,
  s.unit_price_discount_pct,
  s.product_standard_cost,
  s.total_product_cost,
  s.sales_amount,
  (s.sales_amount - s.total_product_cost) as gross_profit
from s
left join BI_CLASS.DW.dim_product         dp  on dp.product_nk         = s.product_nk
left join BI_CLASS.DW.dim_customer        dc  on dc.customer_nk        = s.customer_nk
left join BI_CLASS.DW.dim_reseller        dr  on dr.reseller_nk        = s.reseller_nk
left join BI_CLASS.DW.dim_sales_territory dst on dst.salesterritory_nk = s.salesterritory_nk
left join BI_CLASS.DW.dim_channel         dch on dch.channel           = s.channel
left join BI_CLASS.DW.dim_date            od  on od.date_key           = s.order_date_key_raw
left join BI_CLASS.DW.dim_date            dd  on dd.date_key           = s.due_date_key_raw
left join BI_CLASS.DW.dim_date            sd  on sd.date_key           = s.ship_date_key_raw
    )
;


  