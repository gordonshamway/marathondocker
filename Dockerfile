FROM microsoft/mssql-server-linux:latest

MAINTAINER Stefan Buchholz <stefan.buchholz@rheindata.com>

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Password1

COPY ./entrypoint.sh /
COPY ./setup.sql /

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
