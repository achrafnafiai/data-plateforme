
  
    
        create table bronze.ordres
      
      
    using parquet
      
      
      
      
      
    location 's3a://bronze/B01-marketing//ordres'
      

      as
      SELECT * FROM 
    parquet.`s3a://raw-data/informix/ordres/`

  