# Backup Script Project

This project includes a simple Bash script to automate backups on a Linux system.

## 🔧 What It Does

- Compresses a target directory into a `.tar.gz` file
- Saves the backup in a dedicated `backups` folder
- Includes a timestamp in the file name for easy tracking
- Designed to run daily using `cron`
- Uses a dedicated user (`backupuser`) to run the script securely

## 🚀 Usage

Run manually:

```bash
./backup.sh

