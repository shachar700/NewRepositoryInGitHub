#!/bin/bash

# Set variables
SOURCE_DIR="$HOME/personal"
BACKUP_PREFIX="$HOME/backup_archive_"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
DEST_DIR="${BACKUP_PREFIX}${TIMESTAMP}"

# Create the backup
cp -r "$SOURCE_DIR" "$DEST_DIR"
echo "Backup created at $DEST_DIR"

# Keep only the latest 3 backups
echo "Cleaning up old backups..."
ls -dt ${BACKUP_PREFIX}* 2>/dev/null | tail -n +4 | xargs -r rm -rf

echo "Backup and cleanup completed."
