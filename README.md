# DevOps Linux Commands Task One
This repository contains essential Linux commands for beginner DevOps engineers.

## 📁 Structure
- `Class 1/` — Introductory commands
- `protected/` — (Ensure you have permissions to access this)

## 🛠 Commands Covered
- Creating users and groups
- Managing permissions
- Git basics
- Disk space analysis
- System monitoring

## Command Output
![Protected](./Class%201/assets/dev3.png)
![SystemInfo](./Class%201/assets/dev2.png)
![Hello](./Class%201/assets/dev1.png)

## ✅ How to Use
Clone the repo:
```bash
git clone https://github.com/Ciscoflash/devops_linux_commands.git
```

---

# Assessment Project - File Management & Bash Scripting

This project demonstrates fundamental Linux file operations and bash scripting automation skills for DevOps assessment.

## 📋 Project Overview

This assessment consists of two main parts:
1. **Manual CLI Commands** - Basic file and directory operations
2. **Bash Scripting** - Automation scripts for file management tasks

## 📁 Project Structure

```
assessment_project/
├── archive/           # Archived documentation files
│   ├── intro.txt
│   └── task_list.md
├── bash_scripting/    # Contains automation scripts
│   └── move_docs.sh
├── scripts/           # Executable scripts directory
│   └── run.sh
├── check_structure.sh # Project verification script
├── promote_files.sh   # File promotion automation script
└── README.md         # This file
```

## 🎯 Assessment Tasks Completed

### Part 1: Manual CLI Commands (Basic Tasks)

✅ **Project Structure Creation**
- Created `assessment_project` with required subdirectories: `docs/`, `src/`, `scripts/`, `archive/`

✅ **File Creation**
- Created documentation files in `docs/`:
  - `intro.txt`
  - `summary.txt` 
  - `todo.md`
- Created Python and shell files in `src/`:
  - `main.py`
  - `helper.py`
  - `run.sh`

✅ **File Operations**
- Moved `run.sh` from `src/` to `scripts/` directory
- Copied all `.txt` files from `docs/` to `archive/`
- Renamed `todo.md` to `task_list.md`
- Deleted `summary.txt` from `archive/`

✅ **Permission Management**
- Set executable permissions on all `.py` files
- Configured owner-only write permissions for files in `docs/`

### Part 2: Bash Scripting Tasks (Automation)

✅ **Script 1: move_docs.sh**
- **Purpose**: Move all files from `docs/` to `archive/` and delete the `docs/` folder
- **Location**: `bash_scripting/move_docs.sh`
- **Features**:
  - Directory existence validation
  - Empty directory checking
  - Error handling for file operations
  - Automatic cleanup of source directory

✅ **Script 2: promote_files.sh**
- **Purpose**: Find all files in `src/` and move them to `assessment_project/` root
- **Features**:
  - Source directory validation
  - Content verification before moving
  - Safe file movement with error checking
  - Automatic cleanup of empty source directory

## 🔧 Additional Tools

### Project Verification Script
**`check_structure.sh`** - Automated verification tool that:
- Counts Python (.py) files in the project
- Lists all top-level directories
- Identifies executable files with proper permissions

## 🚀 Usage Instructions

### Running the Verification Script
```bash
# Make executable and run
chmod +x check_structure.sh
./check_structure.sh
```

### Using the Automation Scripts
```bash
# Move documentation files to archive
chmod +x bash_scripting/move_docs.sh
./bash_scripting/move_docs.sh

# Promote files from src to project root
chmod +x promote_files.sh
./promote_files.sh
```

## ✨ Key Features

- **Error Handling**: All scripts include comprehensive error checking
- **Safety Checks**: Validation of directories and files before operations
- **Informative Output**: Clear status messages and progress indicators
- **Permission Management**: Proper file permission handling
- **Automated Cleanup**: Removal of empty directories after file operations

## 📊 Project Verification Results

Based on the latest verification:
- **Python Files**: 0 (moved as per requirements)
- **Top-Level Directories**: 3 (archive, bash_scripting, scripts)
- **Executable Files**: 6 (all scripts properly configured)

## 🔒 File Permissions

The project maintains proper Linux file permissions:
- Shell scripts: `-rwxr--r--` (755)
- Text files: `-rw-------` (600) for docs
- Archive files: `-rwx------` (700)

## 🎯 Learning Outcomes

This assessment demonstrates proficiency in:
- Linux command line operations
- File system navigation and manipulation
- Bash scripting and automation
- Error handling and validation
- Permission management
- Project structure organization

---
