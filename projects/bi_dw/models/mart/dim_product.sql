select
  {{ dbt_utils.generate_surrogate_key(['product_nk']) }} as product_sk,
  product_nk, sku, product_name, color, model, subcategory, category,
  standard_cost, list_price
from {{ ref('stg_product') }}
