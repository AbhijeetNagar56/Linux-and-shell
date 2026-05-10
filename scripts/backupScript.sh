#!/bin/bash
SOURCE_DIR="./from"
BACKUP_DIR="./to"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/backup_$DATE.tar.gz $SOURCE_DIR

echo "Backup created at $BACKUP_DIR/backup_$DATE.tar.gz"