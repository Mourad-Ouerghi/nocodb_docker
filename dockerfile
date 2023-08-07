FROM nocodb/nocodb:latest
COPY ./download_psql.sh ./
CMD ./download_psql
RUN PGPASSWORD=2duiLwGssWGjjdFtt8CifXZvmNthmd0h psql -h dpg-cj8g5bdjeehc73bvfefg-a.oregon-postgres.render.com -U ouerghi dbnocodb_jm22

