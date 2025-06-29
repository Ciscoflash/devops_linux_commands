#!/bin/bash

# --- Automated Backup Script ---

# --Configuration--
# The Directory you want to backup
 SOURCE_DIR="$HOME/Documents/punch"

# The Secure location where the backups will be stored
 BACKUP_DIR="$HOME/Documents/Devops/Class2/var/backups"

# The filename for the backup with a timestamp
 TIMESTAMP=$(date +"%Y-%m-%d-%H-%M-%S")
 BACKUP_FILE_NAME="my-devops-app-backup-$TIMESTAMP.tar.gz"

# The full path for the final backup file.
  DEST_FILE="$BACKUP_DIR/$BACKUP_FILE_NAME"

# -- Script Logic --

# 1. Check if the source directory exists.
  if [ ! -d "$SOURCE_DIR" ]; then 
  echo "Error: Source directory $SOURCE_DIR does not exist."
  exit 1 # Exit with an error code
  fi

# 2. Inform the user we are starting the backup.
  echo "Starting backup of $SOURCE_DIR to $DEST_FILE"

# 3. Create the backup archive.
  sudo tar -czpf "$DEST_FILE" "$SOURCE_DIR"

# 4. Check if the backup was successful.
  if [ $? -eq 0 ]; then
  echo "Backup created successfully!"
  else
  echo "Error: Backup failed."
  exit 1
  fi
# 5. Set strict permissions on the backup file.
   #  Only the owner has permission to read/write
    sudo chmod 600 $DEST_FILE

# 6. List the contents of the backup directory to verify.
  echo ""
  echo "Current backups:"
  ls -lht "$BACKUP_DIR"

# --END of script
