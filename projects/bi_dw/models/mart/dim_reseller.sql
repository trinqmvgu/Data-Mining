select
  {{ dbt_utils.generate_surrogate_key(['reseller_nk']) }} as reseller_sk,
  reseller_nk, reseller_id, reseller_name, business_type,
  city, state_province, country_region, postal_code
from {{ ref('stg_reseller') }}
