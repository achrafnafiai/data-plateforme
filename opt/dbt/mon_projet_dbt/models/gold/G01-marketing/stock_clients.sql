{{ 
  config(
       materialized='incremental',
      incremental_strategy='append'
    )
}}

SELECT DISTINCT
      id_client
FROM {{ ref('g_clients') }}
