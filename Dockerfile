FROM postgis/postgis:13-3.1-alpine
ADD create-database.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/create-database.sh
