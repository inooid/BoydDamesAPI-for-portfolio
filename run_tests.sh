function test_postgresql {
  pg_isready -h "${DB_PORT_5432_TCP_ADDR}" -U "${POSTGRES_USER}"
}

count=0
until ( test_postgresql )
do
  ((count++))
  if [ ${count} -gt 50 ]
  then
    echo "Services didn't become ready in time"
    exit 1
  fi
  echo "Postgres TRIES: ${count}"
  sleep 0.1
done

bundle exec rake db:create db:migrate
bundle exec rake
