select
  {{ dbt_utils.generate_surrogate_key(['customer_nk']) }} as customer_sk,
  customer_nk, customer_id, customer_name,
  city, state_province, country_region, postal_code
from {{ ref('stg_customer') }}
