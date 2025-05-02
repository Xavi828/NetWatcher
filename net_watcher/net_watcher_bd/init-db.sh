#!/bin/bash
# Sobrescribe el archivo pg_hba.conf
cp /docker-entrypoint-initdb.d/custom_pg_hba.conf /var/lib/postgresql/data/pg_hba.conf