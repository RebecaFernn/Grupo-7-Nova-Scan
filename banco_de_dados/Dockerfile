FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=urubu100
ENV MYSQL_DATABASE=novaScan
ENV MYSQL_USER=root

COPY ./Script_Novascan.sql/ /docker-entrypoint-initdb.d/

EXPOSE 3306