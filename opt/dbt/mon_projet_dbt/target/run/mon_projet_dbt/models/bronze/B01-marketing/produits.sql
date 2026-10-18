
  
    
        create table bronze.produits
      
      
    using parquet
      
      
      
      
      
    location 's3a://bronze/B01-marketing//produits'
      

      as
      SELECT * FROM 
    parquet.`s3a://raw-data/informix/produits/`

  