#!/bin/bash

# Define the database name and backup file name
db_name="sample_database"
backup_file="database_backup.sql"

# Take the backup using mysqldump
mysqldump -u kclalit64 -p password $db_name > $backup_file

# Compress the backup file
gzip $backup_file

