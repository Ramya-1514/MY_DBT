{{
    config(
        materialized='table'
    )
}}


select * from raw_dbt.DBT_SCHEMA.product