# 📂 Automated Directory Backup & Rotation Script

<p align="center">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
  <img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" />
  <img src="https://img.shields.io/badge/DevOps-2496ED?style=for-the-badge&logo=azure-devops&logoColor=white" />
  <img src="https://img.shields.io/badge/Open_Source-61DAFB?style=for-the-badge&logo=github&logoColor=black" />
</p>

---

## 📝 Overview

This **Automated Directory Backup & Rotation Script** is a lightweight **DevOps utility** written in **Bash**.  
It automates directory backups by compressing data and managing storage efficiently using a built-in **backup rotation policy**.

This project demonstrates **real-world Linux automation**, commonly used in **production servers and DevOps environments**.

---

## 🚀 Key Features

- 📦 **Smart Compression**  
  Archives directories using `zip` to reduce disk usage.

- 🕒 **Timestamped Backups**  
  Each backup is uniquely named using `YYYY-MM-DD_HH-MM-SS`.

- 🔄 **Automatic Rotation (Retention Policy)**  
  Keeps **only the latest 3 backups**, automatically deleting older ones.

- 🛡️ **Safety Checks**  
  Validates user input and ensures the source directory exists.

---

## 🛠️ Requirements

- **Operating System:** Linux / Unix-based  
- **Shell:** Bash  
- **Utility:** `zip`

### Install zip (if missing)
```bash
sudo apt install zip -y
🚀 How to Use
1️⃣ Clone the Repository
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
2️⃣ Give Execute Permission
chmod +x backup.sh
3️⃣ Run the Script
./backup.sh /path/to/source_directory
Example
./backup.sh /var/www/html
📂 Backup File Format
backup_YYYY-MM-DD_HH-MM-SS.zip
Example
backup_2026-01-27_14-30-12.zip
⚙️ Script Logic (How It Works)
Argument Validation
Ensures a directory path is provided and exists.

Backup Creation
Compresses the target directory into a ZIP file with a timestamp.

Rotation Policy
Counts existing backups and deletes older files, keeping only the latest 3.

📜 backup.sh – Complete Script
#!/bin/bash

# ======================================
# Automated Directory Backup Script
# Author: Jeymurugan Nadar
# ======================================

# Check if directory argument is provided
if [ -z "$1" ]; then
  echo "❌ Error: Please provide a directory path"
  echo "Usage: ./backup.sh /path/to/directory"
  exit 1
fi

SOURCE_DIR="$1"

# Check if directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "❌ Error: Directory does not exist!"
  exit 1
fi

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.zip"

# Create backup
zip -r "$BACKUP_FILE" "$SOURCE_DIR" > /dev/null

if [ $? -eq 0 ]; then
  echo "✅ Backup created successfully: $BACKUP_FILE"
else
  echo "❌ Backup failed"
  exit 1
fi

# Rotation logic - keep only latest 3 backups
BACKUP_COUNT=$(ls -1 backup_*.zip 2>/dev/null | wc -l)

if [ "$BACKUP_COUNT" -gt 3 ]; then
  ls -1t backup_*.zip | tail -n +4 | xargs rm -f
  echo "🗑️ Old backups removed (keeping latest 3)"
fi

echo "🎉 Backup process completed!"
🎯 Why This Project Matters
This script demonstrates:

Bash scripting fundamentals

Linux file system automation

Backup & retention strategies

DevOps-style problem solving

💡 Ideal for:

DevOps fresher portfolios

Linux practice projects

Internship & interview discussions

GitHub profile enhancement

🤝 Connect with Me
<p align="left"> <a href="https://linkedin.com/in/yourusername" target="blank"> <img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" height="30" width="40" /> </a> <a href="https://github.com/yourusername" target="blank"> <img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/github.svg" height="30" width="40" /> </a> </p>
📜 License
This project is open-source and free to use for learning and personal projects.

🚀 Future Enhancements
⏰ Cron job automation

📝 Logging support

📧 Email alerts

🧪 Dry-run mode

🎤 Interview explanation notes

Made with ❤️ for the DevOps community 🐧⚙️
