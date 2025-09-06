select
  date_key::varchar                        as date_key,
  date_actual                              as date,
  to_number(to_char(date_actual,'YYYY'))   as year_num,
  to_number(to_char(date_actual,'MM'))     as month_num,
  to_number(to_char(date_actual,'DD'))     as day_num,
  month_key::varchar                       as month_key,
  fiscal_year,
  fiscal_quarter,
  month_label,
  full_date_text
from BI_CLASS.STAGING.stg_date