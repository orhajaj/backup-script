#!/bin/bash

source_dir="/home/or/project_backup"
backup_dir="/home/or/backups"
backup_file="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$backup_dir"
tar -czf "$backup_dir/$backup_file" "$source_dir"

echo "Backup completed: $backup_dir/$backup_file"

