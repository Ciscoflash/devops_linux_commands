#!/bin/bash

#--Checking the structure of the the code base--
SOURCE_DIR=$(pwd)

#== Checking the source dir ==
echo "-- Running verification checklist on project: $SOURCE_DIR --"
echo ""

#--Print how many .py files are left

PY_FILE_COUNT=$( find $SOURCE_DIR -type f -name "*.py" | wc -l )
echo "[CHECK 1] Number of python (.py) files found: $PY_FILE_COUNT"
echo ""


#-- List all folders inside assessment_project
echo "[CHECK 2] Listing all the top level folders"
find "$SOURCE_DIR" -mindepth 1 -maxdepth 1 -type d
echo ""

# --Show which files are executable--
echo "[CHECK 3] Listing all executab;e files"
find "$SOURCE_DIR" -type f -exec ls -l {} \;
echo ""


echo "-- Verification Completed--"

