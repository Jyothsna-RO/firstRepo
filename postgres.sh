for db in $dbs; do
    psql -c "alter database $db owner to $user" $db;
done
