{{ config(materialized='table') }}

select
    URL,
    LABEL,
    RESULT,
    ISSUE_TYPE,
    USER_NAME

from DEV_CYBORG.CYB_STG_SCH.STG_USER_MAL_URL