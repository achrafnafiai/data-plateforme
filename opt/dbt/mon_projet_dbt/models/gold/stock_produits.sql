{{
  
 config(
   matrialized = 'incrimental'
   startegy_incrimental = 'append'
 )

}}

SELECT 
   id_produits
FROM {{ ref('g_prouit') }}
