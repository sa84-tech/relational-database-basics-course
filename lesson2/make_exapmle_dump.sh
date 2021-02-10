#!/bin/bash

mysqldump example > DUMP_example.sql
mysql -e "CREATE DATABASE IF NOT EXISTS sample"
mysql sample < DUMP_example.sql

