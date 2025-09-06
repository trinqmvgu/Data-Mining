
  create or replace   view BI_CLASS.STAGING.stg_sales_territory
  
  
  
  
  as (
    select
  SALESTERRITORYKEY::varchar as salesterritory_nk,
  REGION::varchar            as region,
  COUNTRY::varchar           as country,
  "GROUP"::varchar           as territory_group
from BI_CLASS.RAW.SALES_TERRITORY_DATA
  );

