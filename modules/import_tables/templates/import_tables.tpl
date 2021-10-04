#!/bin/bash

${psql_connection_string} < modules/import_tables/artifacts/import_tables.sql
