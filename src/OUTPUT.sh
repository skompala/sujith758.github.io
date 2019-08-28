export PGPASSWORD=postgres
psql -h localhost -p 5432 -d postgres -U postgres -f listofstores.sql
psql -h localhost -p 5432 -d postgres -U postgres -c 'select city,count(*) from justice.leauge group by city'
