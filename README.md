# 🗄️ Bash Project – Backup Script by ORHAJAJ

This Bash script performs a **scheduled backup** of your files, compressing them into a timestamped `.tar.gz` archive inside a `backups/` folder.

---

## ✅ Features

- 📅 Automated backups via `cron`
- 🗃️ Creates compressed `.tar.gz` archive with timestamp
- 📂 Stores backups in `/home/youruser/backups`
- 🔐 Can be executed by a dedicated system user (`backupuser`)

---

## 🛠️ How to Use

1. Give execute permission:
   ```bash
   chmod +x backup.sh

