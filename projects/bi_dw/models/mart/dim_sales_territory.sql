select
  {{ dbt_utils.generate_surrogate_key(['salesterritory_nk']) }} as salesterritory_sk,
  salesterritory_nk, region, country, territory_group
from {{ ref('stg_sales_territory') }}
