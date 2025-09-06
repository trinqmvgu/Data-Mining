select
  "SalesOrderLineKey"::varchar            as salesorderlinekey,
  "ResellerKey"::varchar                  as reseller_nk,
  "CustomerKey"::varchar                  as customer_nk,
  "ProductKey"::varchar                   as product_nk,
  "OrderDateKey"::varchar                 as order_date_key_raw,
  "DueDateKey"::varchar                   as due_date_key_raw,
  "ShipDateKey"::varchar                  as ship_date_key_raw,
  "SalesTerritoryKey"::varchar            as salesterritory_nk,
  "Order_Quantity"::number(18,0)          as order_qty,
  "Unit_Price"::number(18,4)              as unit_price,
  "Extended_Amount"::number(18,4)         as extended_amount,
  "Unit_Price_Discount_Pct"::number(18,6) as unit_price_discount_pct,
  "Product_Standard_Cost"::number(18,4)   as product_standard_cost,
  "Total_Product_Cost"::number(18,4)      as total_product_cost,
  "Sales_Amount"::number(18,4)            as sales_amount
from {{ source('raw','SALES_DATA') }}
