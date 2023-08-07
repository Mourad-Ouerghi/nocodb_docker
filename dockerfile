FROM nocodb/nocodb:latest
RUN echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
RUN sudo apt-get update
RUN sudo apt-get -y install postgresql
RUN PGPASSWORD=2duiLwGssWGjjdFtt8CifXZvmNthmd0h psql -h dpg-cj8g5bdjeehc73bvfefg-a.oregon-postgres.render.com -U ouerghi dbnocodb_jm22

