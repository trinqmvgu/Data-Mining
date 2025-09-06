select
  md5(cast(coalesce(cast(salesterritory_nk as TEXT), '') as TEXT)) as salesterritory_sk,
  salesterritory_nk, region, country, territory_group
from BI_CLASS.STAGING.stg_sales_territory