#!/bin/bash

backup_directory() {
  local dir=$1
  local backup_name=$(basename "$dir")_$(date +%F).tar.gz

  tar -cvf "/tmp/$backup_name" "$dir"

  echo "Backup of $dir completed: $backup_name"
}

backup_directory "/opt/csk"
