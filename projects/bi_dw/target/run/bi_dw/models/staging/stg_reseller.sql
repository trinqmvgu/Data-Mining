
  create or replace   view BI_CLASS.STAGING.stg_reseller
  
  
  
  
  as (
    select
  "ResellerKey"::varchar    as reseller_nk,
  "Reseller_ID"::varchar    as reseller_id,
  "Business_Type"::varchar  as business_type,
  "Reseller"::varchar       as reseller_name,
  "City"::varchar           as city,
  "State_Province"::varchar as state_province,
  "Country_Region"::varchar as country_region,
  "Postal_Code"::varchar    as postal_code
from BI_CLASS.RAW.RESELLER_DATA
  );

