#!/bin/bash

# A script tp mobe files from ../docs to ../archive and delete ./docs

# -- Configuration --
SCRIPT_DIR="$HOME/Documents/Devops"
PROJECT_DIR="$SCRIPT_DIR/assessment_project"
SOURCE_DIR="$PROJECT_DIR/docs"
DEST_DIR="$PROJECT_DIR/archive"

echo "=== Move Docs Script ==="
echo "Script directory: $SCRIPT_DIR"
echo "Project directory: $PROJECT_DIR"
echo "Source directory: $SOURCE_DIR"
echo "Destination directory: $DEST_DIR"
echo ""

# --Check the directories exist--
if [ ! -d "$SOURCE_DIR" ]; then 
  echo "Error: Sourc directory '$SOURCE_DIR' not found."
exit 1 # Exit with an error code
fi

# --Check if destination directory exist else throw exception--
if [ ! -d "$DEST_DIR" ]; then
echo "Error: Destination directory '$DEST_DIR' not found."
exit 1 #Exit with error code
fi

#-- Move all files from sourc to destination directory.--
echo "Moving files from $SOURCE_DIR to $DEST_DIR"

echo "Files to move:"
    ls -la "$SOURCE_DIR"
    echo ""

mv "$SOURCE_DIR"/* "$DEST_DIR"/

#--Checking of files are successfully--
if [ -z "$(ls -A $SOURCE_DIR)" ]; then 
echo "Files moved successfully. Deleting the empty '$SOURCE_DIR' folder."
rmdir "$SOURCE_DIR"
else
echo "Error: Could not move all files from '$SOURCE_DIR' to '$DEST_DIR', folder will not be deleted."
exit 1
fi

echo "Task Completed."
