select
  SALESTERRITORYKEY::varchar as salesterritory_nk,
  REGION::varchar            as region,
  COUNTRY::varchar           as country,
  "Group"::varchar           as territory_group
from BI_CLASS.RAW.SALES_TERRITORY_DATA