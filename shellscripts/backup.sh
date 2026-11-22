#!/bin/bash
# Author: Your Name
# Description: Creates a compressed timestamped backup archive of a given folder.

# 1. Check if argument is provided
if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SRC_DIR="$1"

# 2. Check if the provided folder exists
if [ ! -d "$SRC_DIR" ]; then
    echo "Error: Directory '$SRC_DIR' does not exist."
    exit 1
fi

# 3. Create backup destination directory
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="backup_$TIMESTAMP.tar.gz"
DEST_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

# 4. Create compressed tar archive
tar -czf "$DEST_PATH" -C "$(dirname "$SRC_DIR")" "$(basename "$SRC_DIR")"

# 5. Get file size and print success message
FILE_SIZE=$(du -sh "$DEST_PATH" | awk '{print $1}')
echo "Success: Backup created at $DEST_PATH (Size: $FILE_SIZE)"

# 6. Append log entry
LOG_FILE="$BACKUP_DIR/backup.log"
echo "[$(date)] SUCCESS: Backup of '$SRC_DIR' saved as $ARCHIVE_NAME ($FILE_SIZE)" >> "$LOG_FILE"
