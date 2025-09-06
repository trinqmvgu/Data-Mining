
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    salesorderlinekey as unique_field,
    count(*) as n_records

from BI_CLASS.DW.fct_sales
where salesorderlinekey is not null
group by salesorderlinekey
having count(*) > 1



  
  
      
    ) dbt_internal_test