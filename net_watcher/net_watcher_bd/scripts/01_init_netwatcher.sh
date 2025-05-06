#!/bin/bash
set -e

# Valores por defecto si no están definidos
REPLICATOR_USER="${REPLICATOR_USER:-replicator}"
REPLICATOR_PASSWORD="${REPLICATOR_PASSWORD:-replicator_password}"
REPLICATION_SLOT="${REPLICATION_SLOT:-replication_slot}"
NETWATCHER_DB="${NETWATCHER_DB:-netwatcher}"

echo "Esperando que PostgreSQL arranque..."
until psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "SELECT 1;" > /dev/null 2>&1; do
  echo "Esperando a que el servidor esté listo..."
  sleep 2
done

echo "Creando usuario $REPLICATOR_USER si no existe..."
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -tc "SELECT 1 FROM pg_roles WHERE rolname='${REPLICATOR_USER}'" | grep -q 1 || \
  psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "CREATE ROLE ${REPLICATOR_USER} WITH REPLICATION LOGIN ENCRYPTED PASSWORD '${REPLICATOR_PASSWORD}';"

echo "Creando replication slot '${REPLICATION_SLOT}'..."
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "SELECT * FROM pg_create_physical_replication_slot('${REPLICATION_SLOT}');" || true

echo "Ejecutando SQL: creación de base y usuarios..."
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f /scripts/02_init_base.sql

echo "Ejecutando SQL: creación de tabla y permisos..."
psql -U "$POSTGRES_USER" -d "$NETWATCHER_DB" -f /scripts/03_init_schema.sql

echo "Todo listo."
