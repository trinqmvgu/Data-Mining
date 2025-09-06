
  create or replace   view BI_CLASS.STAGING.stg_customer
  
  
  
  
  as (
    select
  "CustomerKey"::varchar    as customer_nk,
  "Customer_ID"::varchar    as customer_id,
  "Customer"::varchar       as customer_name,
  "City"::varchar           as city,
  "State_Province"::varchar as state_province,
  "Country_Region"::varchar as country_region,
  "Postal_Code"::varchar    as postal_code
from BI_CLASS.RAW.CUSTOMER_DATA
  );

