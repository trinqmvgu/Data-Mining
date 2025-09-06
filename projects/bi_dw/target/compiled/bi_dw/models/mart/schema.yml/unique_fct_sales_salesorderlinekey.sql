
    
    

select
    salesorderlinekey as unique_field,
    count(*) as n_records

from BI_CLASS.DW.fct_sales
where salesorderlinekey is not null
group by salesorderlinekey
having count(*) > 1


