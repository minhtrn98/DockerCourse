FROM mcr.microsoft.com/mssql/server:2022-latest

COPY ./wait-and-run.sh /wait-and-run.sh
COPY ./CreateDatabaseAndSeed.sql /CreateDatabaseAndSeed.sql

CMD ["/bin/bash", "/wait-and-run.sh"]