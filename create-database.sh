#!/bin/bash
set -e

if [[ $CREATE_DB ]]; then
echo "****** CREATING DATABASE ******"
psql -U postgres <<- EOSQL
   CREATE DATABASE $CREATE_DB ENCODING 'UTF8';
EOSQL
echo ""
echo "****** DATABASE CREATED ******"
fi
