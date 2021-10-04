#!/bin/bash

${psql_connection_string} < artifacts/create_tables.sql
