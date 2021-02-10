#!/bin/bash

mysqldump mysql help_keyword --where="help_keyword_id < 100" > DUMP_help_keyword.sql

