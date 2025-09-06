with src as (
  select
    "DateKey"::varchar        as date_key_raw,     -- 20170701
    "Date"::varchar           as date_text,        -- 7/1/2017
    "Month"::varchar          as month_text,       -- 2017 Jul
    "Full_Date"::varchar      as full_date_text,   -- 2017 Jul, 01
    "MonthKey"::varchar       as month_key_text,   -- 201707
    "Fiscal_Year"::varchar    as fiscal_year,
    "Fiscal_Quarter"::varchar as fiscal_quarter
  from {{ source('raw','DATE_DATA') }}
),
parsed as (
  select
    date_key_raw, date_text, month_text, full_date_text, month_key_text,
    fiscal_year, fiscal_quarter,
    coalesce(
      iff(regexp_like(date_key_raw,'^[0-9]{8}$'), to_date(date_key_raw,'YYYYMMDD'), null),
      try_to_date(date_text,'M/D/YYYY'),
      try_to_date(date_text,'M/D/YY'),
      try_to_date(full_date_text,'YYYY MON, DD'),
      try_to_date(month_text||', 01','YYYY MON, DD')
    ) as date_actual
  from src
)
select
  date_key_raw,
  date_actual,
  case when date_actual is not null then to_char(date_actual,'YYYYMMDD')
       when regexp_like(date_key_raw,'^[0-9]{8}$') then date_key_raw
       else null end                             as date_key,
  case when date_actual is not null then to_char(date_actual,'YYYYMM')
       when regexp_like(month_key_text,'^[0-9]{6}$') then month_key_text
       else null end                             as month_key,
  iff(date_actual is not null, to_number(to_char(date_actual,'YYYY')), null) as year_num,
  iff(date_actual is not null, to_number(to_char(date_actual,'MM')),   null) as month_num,
  iff(date_actual is not null, to_number(to_char(date_actual,'DD')),   null) as day_num,
  fiscal_year,
  fiscal_quarter,
  month_text    as month_label,
  full_date_text
from parsed
