
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select salesorderlinekey
from BI_CLASS.DW.fct_sales
where salesorderlinekey is null



  
  
      
    ) dbt_internal_test