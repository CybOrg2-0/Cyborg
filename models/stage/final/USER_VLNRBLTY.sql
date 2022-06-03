{{ config(materialized='table') }}

with data1 as (

    select 
    USER_NAME,
    CWE_NAME,
    DESCRIPTION,
    OWASP_CAT

    from DEV_CYBORG.CYB_STG_SCH.STG_USER_VLNRBLTY
)

select * from data1