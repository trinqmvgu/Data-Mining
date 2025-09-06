select
  md5(cast(coalesce(cast(reseller_nk as TEXT), '') as TEXT)) as reseller_sk,
  reseller_nk, reseller_id, reseller_name, business_type,
  city, state_province, country_region, postal_code
from BI_CLASS.STAGING.stg_reseller