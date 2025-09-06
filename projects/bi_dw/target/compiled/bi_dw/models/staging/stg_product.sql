select
  "ProductKey"::varchar             as product_nk,
  SKU::varchar                      as sku,
  "Product"::varchar                as product_name,
  "Standard_Cost"::number(18,4)     as standard_cost,
  "Color"::varchar                  as color,
  "List_Price"::number(18,4)        as list_price,
  "Model"::varchar                  as model,
  "Subcategory"::varchar            as subcategory,
  "Category"::varchar               as category
from BI_CLASS.RAW.PRODUCT_DATA