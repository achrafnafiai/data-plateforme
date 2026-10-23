WITH ordres_clients AS (

SELECT 
       c.nom, 
       c.prenom, 
       o.id_produit, 
       o.date_commande, 
       o.quantite, 
       o.montant
       p.nom_produit,
       p.categorie,
       p.stock
 
FROM {{ ref('ordres') }} o
LEFT JOIN {{ ref('clients') }} c
    ON o.id_client = c.id_client
 LEFT JOIN {{ ref('produits') }}
    ON o.id_produit = p.id_produit

)
SELECT * FROM ordres_clients
