{{ config(materialized='table') }}

with data1 as (
    select
    URL,
    LABEL,
    RESULT,
    USER_NAME

    from DEV_CYBORG.CYB_STG_SCH.STG_USER_MAL_URL
)

select * from data1