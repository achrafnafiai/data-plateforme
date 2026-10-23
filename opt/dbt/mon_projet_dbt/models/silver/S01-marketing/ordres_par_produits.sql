WITH ordres_produit(

select 
       o.id_ordre,
       o.id_client, 
       o.id_produit, 
       o.date_commande, 
       o.quantite,
       o.montant,
       p.nom_produit,
       p.categorie,
       p.stock

FROM {{ ref('ordres') }} o

LEFT JOIN {{ ref('produits') }} p

ON o.id_produit = p.id_produit

)

select 
       id_ordre,
       id_client, 
       id_produit, 
       date_commande, 
       quantite,
       montant,
       nom_produit,
       categorie,
       stock 

FROM ordres_produit 



 
