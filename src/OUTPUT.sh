export PGPASSWORD=postgres
CSVCNT=`wc -l Listofstores.sql | cut -d " " -f 1`
echo "CSV COUNT: $CSVCNT"

psql -h localhost -p 5432 -d postgres -U postgres -f Listofstores.sql
CNT=`psql -h localhost -p 5432 -d postgres -U postgres -t -q -c 'select count(*) from justice.leauge;'`
echo "COUNT: $CNT"
CNT=${CNT//[[:space:]]/}

echo "count after trim: $CNT"
