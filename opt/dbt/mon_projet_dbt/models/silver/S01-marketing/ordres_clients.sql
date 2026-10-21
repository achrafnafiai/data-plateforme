WITH ordres_clients AS (
 
SELECT c.nom, 
       c.prenom, 
       o.id_ordre, 
       o.id_client, 
       o.id_produit, 
       o.date_commande, 
       o.quantite, 
       o.montant 
FROM {{ ref('ordres') }} o
LEFT JOIN {{ ref('clients') }} c
    ON o.id_client = c.id_client

)

SELECT * FROM ordres_clients
