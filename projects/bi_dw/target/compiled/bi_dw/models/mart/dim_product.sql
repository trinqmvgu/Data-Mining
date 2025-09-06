select
  md5(cast(coalesce(cast(product_nk as TEXT), '') as TEXT)) as product_sk,
  product_nk, sku, product_name, color, model, subcategory, category,
  standard_cost, list_price
from BI_CLASS.STAGING.stg_product