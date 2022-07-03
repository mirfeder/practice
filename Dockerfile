FROM postgres:latest 
      ENV POSTGRES_USER data 
      ENV POSTGRES_PASSWORD data 
      ENV POSTGRES_DB database 
      WORKDIR /Users/miriam/projects/ruby/practice
      COPY starwars_postgres_create.sql /docker-entrypoint-initdb.d/ 