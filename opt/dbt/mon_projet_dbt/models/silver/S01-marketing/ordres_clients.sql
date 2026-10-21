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

SELECT
       nom, 
       prenom, 
       id_ordre, 
       id_client, 
       id_produit, 
       date_commande, 
       quantite, 
       montant 
 
FROM ordres_clients
