
  
    
        create table bronze.clients
      
      
    using parquet
      
      
      
      
      
    location 's3a://bronze/B01-marketing//clients'
      

      as
      SELECT * FROM 
    parquet.`s3a://raw-data/informix/clients/`

  