# 🐧 Bash Backup & Rotation Script

====================================
🚀 Simple Backup Automation for Linux  
====================================

A beginner-friendly Bash script that creates timestamped ZIP backups of a given directory and automatically rotates old backups to save disk space.

---

## 📌 What This Script Does

✅ Takes a directory path as input  
✅ Creates a ZIP backup with date & time  
✅ Stores backups in the same directory  
✅ Keeps only the **latest 3 backups**  
✅ Deletes older backups automatically  

Perfect for **Linux admins, DevOps beginners, and automation practice**.

---

## 🛠️ Usage

```bash
chmod +x backup.sh
./backup.sh /path/to/directory
📌 Example:

./backup.sh /var/www/html

📂 Backup Naming Format
backup_YYYY-MM-DD_HH-MM-SS.zip


Example:

backup_2026-01-27_14-30-12.zip

🔄 Backup Rotation Logic

Keeps only the latest 3 backups

Automatically removes older ZIP files

Prevents disk space overuse

📦 Requirements

Linux / Unix system

bash

zip installed

Install zip (if needed):

sudo apt install zip -y

👨‍💻 Author

Jeymurugan Nadar

🔗 GitHub: https://github.com/your-username

🔗 LinkedIn: https://www.linkedin.com/in/your-profile

🔗 Portfolio: https://your-portfolio-link

⭐ Why This Script?

This script demonstrates:

Bash functions

Argument validation

Automation logic

Real-world DevOps use case

Great for portfolios, interviews, and learning shell scripting.

📜 License

Free to use for learning and personal projects.


---

### 🔧 Want upgrades?
I can add:
- Email alerts
- Cron job setup
- Logging support
- Dry-run mode
- Interview explanation version

Just tell me 💪🐧
