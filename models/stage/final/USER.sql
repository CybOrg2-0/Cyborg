{{ config(materialized='table') }}

with data1 as (
    select 
    USER_NAME,
    USER_TYPE,
    NAME,
    EMAIL,
    PASSWORD
    from DEV_CYBORG.CYB_STG_SCH.STG_USER

),

 data2 as (
     select  
     USER_NAME,
     ISSUE_TYPE,
     DEVICE_TYPE,
     OS_NAME_VERSION,
     ANTIMALWARE

     from DEV_CYBORG.CYB_STG_SCH.STG_USER_VLNRBLTY
 ),

  final as (
      select 
      data1.USER_NAME,
      data1.USER_TYPE,
      data1.NAME,
      data1.EMAIL,
      data1.PASSWORD,
      data2.ISSUE_TYPE,
      data2.DEVICE_TYPE,
      data2.OS_NAME_VERSION,
      data2.ANTIMALWARE

      from data1 
       left join data2 using (USER_NAME) 
  )

 select * from final