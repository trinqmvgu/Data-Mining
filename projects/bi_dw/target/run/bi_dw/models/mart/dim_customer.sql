
  
    

create or replace transient table BI_CLASS.DW.dim_customer
    
    
    
    as (select
  md5(cast(coalesce(cast(customer_nk as TEXT), '') as TEXT)) as customer_sk,
  customer_nk, customer_id, customer_name,
  city, state_province, country_region, postal_code
from BI_CLASS.STAGING.stg_customer
    )
;


  