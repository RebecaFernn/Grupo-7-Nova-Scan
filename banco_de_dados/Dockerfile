FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=urubu100

COPY ./Script_Novascan.sql/ /docker-entrypoint-initdb.d/

EXPOSE 3306