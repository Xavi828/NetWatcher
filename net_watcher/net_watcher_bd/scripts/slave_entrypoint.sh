#!/bin/bash
set -e

if [ ! -f "$PGDATA/standby.signal" ]; then
  echo "Esperando al master..."
  until pg_isready -h net_watcher_db_master -p 5432 -U replicator; do
    sleep 2
  done

  echo "Borrando datos existentes del slave..."
  rm -rf "$PGDATA"/*

  echo "Clonando desde el master con pg_basebackup..."
  pg_basebackup -h net_watcher_db_master -D "$PGDATA" -U replicator -R --slot=replication_slot

  echo "Ajustando permisos..."
  chown -R postgres:postgres "$PGDATA"
fi

echo "Iniciando PostgreSQL en modo réplica..."
exec docker-entrypoint.sh postgres

