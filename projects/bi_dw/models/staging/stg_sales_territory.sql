select
  SALESTERRITORYKEY::varchar as salesterritory_nk,
  REGION::varchar            as region,
  COUNTRY::varchar           as country,
  "GROUP"::varchar           as territory_group
from {{ source('raw','SALES_TERRITORY_DATA') }}
