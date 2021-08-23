for db in $dbs; do
    tables=`psql -qAt -c "select tablename from pg_tables where schemaname = 'public';" $db`

    for tbl in $tables; do
        psql -c "alter table \"$tbl\" owner to $user" $db;
    done;
done
done
done
