WITH nouveaux_clients AS (

SELECT * 

FROM {{ ref('ordres_clients') }}

)

SELECT c.* 

from nouveaux_clients c

LEFT ANTI JOIN gold.stock_clients s

ON c.id_client = s.id_client
