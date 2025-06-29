#!/bin/bash 

#--Configuration--
echo -n  "File structure setups"

SOURCE_DIR="$HOME/Documents/Devops/src"
DEST_DIR="$(pwd)/"

echo "$SOURCE_DIR this is the source dir"
echo "$DEST_DIR this is the dest dir"

#Check if source directory exist
echo "Checking if directory exist"
if [ ! -d "$SOURCE_DIR" ]; then 
 echo "Source Directory is empty"
else 
 echo "Source Direcotry exists."
fi

echo ""
echo "== Checking if directory is empty =="

if [ -d "$SOURCE_DIR" ]; then 
   if [ -z "$(ls -A "$SOURCE_DIR" 2>/dev/null)" ]; then 
    echo "Source directory $SOURCE_DIR is EMPTY"
    exit 1
   else 
    echo "Source directory $SOURCE_DIR has files/folder"
    echo "Contents:"
    ls -la "$SOURCE_DIR"
   fi
fi


#Moving all files from the source directory to the destination directory 
echo "Attempting to move all files to destination directory"
mv "$SOURCE_DIR"/* "$DEST_DIR"
echo "Files moved successfully from $SOURCE_DIR to $DEST_DIR"

echo ""
echo "Deleting the source directory"
rmdir $SROUCE_DIR
echo "Source directory deleted sucessfully"

#--End of assignment--"
echo "Automation completed successfully"


