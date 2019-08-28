export PGPASSWORD=postgres
psql -h localhost -p 5432 -d postgres -U postgres -f gb.sql -c 'gb2.sql'
