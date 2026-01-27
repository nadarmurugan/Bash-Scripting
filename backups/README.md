Absolutely — here’s a **clean, professional, copy-paste ready README** with **ASCII banners + complete Bash script**. Perfect for **GitHub, LinkedIn posts, portfolios, and interviews** 💪🐧

---

```text
🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧
        BASH BACKUP & ROTATION SCRIPT
     Simple • Automatic • Beginner-Friendly
🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧🐧
```

# 🐧 Bash Backup & Rotation Script

🚀 **Simple Backup Automation for Linux**

A **beginner-friendly Bash script** that creates **timestamped ZIP backups** of a directory and **automatically rotates old backups** to save disk space.

Perfect for **Linux admins, DevOps freshers, interns, and automation practice**.

---

## 📌 Features

✅ Takes directory path as argument
✅ Creates ZIP backup with date & time
✅ Stores backups in the same directory
✅ Keeps only the **latest 3 backups**
✅ Automatically deletes old backups
✅ Safe, simple, and production-style logic

---

## 📂 Backup File Format

```text
backup_YYYY-MM-DD_HH-MM-SS.zip
```

### Example:

```text
backup_2026-01-27_14-30-12.zip
```

---

## 🛠️ Requirements

* Linux / Unix OS
* Bash shell
* `zip` package

### Install zip (if not installed)

```bash
sudo apt install zip -y
```

---

## 🚀 Usage

```bash
chmod +x backup.sh
./backup.sh /path/to/directory
```

### Example:

```bash
./backup.sh /var/www/html
```

---

## 🔄 Backup Rotation Logic

* Keeps **only latest 3 backups**
* Deletes older ZIP files automatically
* Prevents disk space overuse
* Sorted using timestamps (safe & reliable)

---

## 📜 backup.sh (Complete Script)

```bash
#!/bin/bash

# ===============================
# Bash Backup & Rotation Script
# Author: Jeymurugan Nadar
# ===============================

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

# Timestamp for backup file
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.zip"

# Create backup
zip -r "$BACKUP_FILE" "$SOURCE_DIR" >/dev/null

if [ $? -eq 0 ]; then
  echo "✅ Backup created: $BACKUP_FILE"
else
  echo "❌ Backup failed!"
  exit 1
fi

# Backup rotation - keep only last 3 backups
BACKUP_COUNT=$(ls -1 backup_*.zip 2>/dev/null | wc -l)

if [ "$BACKUP_COUNT" -gt 3 ]; then
  ls -1t backup_*.zip | tail -n +4 | xargs rm -f
  echo "🗑️ Old backups removed (keeping latest 3)"
fi

echo "🎉 Backup process completed successfully!"
```

---

## 👨‍💻 Author

**Jeymurugan Nadar**
DevOps & Linux Enthusiast | Fresher | Automation Learner

🔗 GitHub: [https://github.com/your-username](https://github.com/your-username)
🔗 LinkedIn: [https://www.linkedin.com/in/your-profile](https://www.linkedin.com/in/your-profile)
🔗 Portfolio: [https://your-portfolio-link](https://your-portfolio-link)

---

## ⭐ Why This Script?

This project demonstrates:

✔ Bash scripting fundamentals
✔ Argument validation
✔ Real-world automation logic
✔ Backup & rotation concept
✔ DevOps-ready scripting style

**Great for:**

* GitHub portfolios
* DevOps interviews
* Internship projects
* Linux practice

---

## 📜 License

Free to use for **learning, personal projects, and practice**.

---

```text
🚀 Want Upgrades?
────────────────
☑ Email alerts
☑ Cron job automation
☑ Logging support
☑ Dry-run mode
☑ Interview Q&A explanation

Just tell me 💪🐧
```

---

If you want, I can also:

* Convert this into a **GitHub repo structure**
* Add **cron job + log file**
* Create a **LinkedIn post version**
* Add **interview explanation notes**

Just say the word 🔥
