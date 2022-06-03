{{ config(materialized='table') }}

select
    USER_TYPE,
    NAME,
    EMAIL,
    PASSWORD,
    USER_NAME

from DEV_CYBORG.CYB_STG_SCH.STG_USER