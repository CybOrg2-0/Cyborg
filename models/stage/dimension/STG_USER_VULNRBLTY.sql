{{ config(materialized='table') }}

select
    USER_NAME,
    CWE_NAME,
    DESCRIPTION,
    OWASP_CAT,
    ISSUE_TYPE,
    DEVICE_TYPE,
    OS_NAME_VERSION,
    ANTIMALWARE

from DEV_CYBORG.CYB_STG_SCH.STG_USER_VLNRBLTY