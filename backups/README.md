# 🚀 Automated Bash Backup & Lifecycle Management

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=auto&height=200&section=header&text=DevOps%20Automation&fontSize=70&animation=fadeIn" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
  <img src="https://img.shields.io/badge/Bash-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" />
  <img src="https://img.shields.io/badge/DevOps-2496ED?style=for-the-badge&logo=azure-devops&logoColor=white" />
  <img src="https://img.shields.io/badge/Automation-007ACC?style=for-the-badge&logo=github-actions&logoColor=white" />
  <img src="https://img.shields.io/badge/Open%20Source-61DAFB?style=for-the-badge&logo=github&logoColor=black" />
</p>

---

## 📌 Project Overview

This project is a **lightweight DevOps automation utility** written in **Bash** that:

- Backs up critical directories
- Compresses them automatically
- Applies a **retention (rotation) policy**
- Prevents disk space issues caused by unlimited backups

It is ideal for:
- Linux servers
- CI/CD pipelines
- Log management
- Entry-level DevOps practice projects

---

## 🎯 Why This Project Matters (DevOps Perspective)

In real-world DevOps environments:
- Logs grow fast
- Backups pile up
- Disk space failures cause downtime

This script behaves like a **Storage Lifecycle Manager**, similar to:
- S3 Lifecycle Rules
- Log rotation systems
- Artifact cleanup jobs in CI/CD

---

## ✨ Key Features

✅ Automated directory backup  
✅ ZIP compression to save space  
✅ Timestamp-based unique backups  
✅ Retention policy (keeps only last **3 backups**)  
✅ Safe validation checks  
✅ Simple, readable Bash logic  

---

## 🛠️ Requirements

- **OS:** Linux / Unix-based system
- **Shell:** Bash
- **Dependency:** `zip`

### Install zip (if not installed)
```bash
sudo apt update && sudo apt install zip -y
📂 Project Structure
.
├── backup.sh
└── README.md
🚀 Quick Start
1️⃣ Clone the Repository
git clone https://github.com/your-username/devops-backup-tool.git
cd devops-backup-tool
2️⃣ Give Execute Permission
chmod +x backup.sh
3️⃣ Run the Script
./backup.sh /path/to/your/directory
⚙️ How the Script Works (Simple Explanation)
🔹 Step 1: Input Validation
if [ ! -d "$1" ]; then
  echo "Error: Directory does not exist"
  exit 1
fi
✔ Ensures the provided argument exists
✔ Prevents accidental backups of invalid paths

🔹 Step 2: Timestamp Creation
TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')
✔ Generates a unique timestamp
✔ Prevents file overwrite
✔ Enables point-in-time recovery

🔹 Step 3: Directory Compression
zip -r backup_$TIMESTAMP.zip "$SOURCE_DIR"
✔ Recursively compresses the directory
✔ Saves disk space
✔ Creates portable backup files

🔹 Step 4: Backup Rotation (Retention Policy)
ls -t *.zip | tail -n +4 | xargs rm -f
✔ Keeps only latest 3 backups
✔ Automatically deletes older backups
✔ Prevents disk overflow

🔁 Backup Lifecycle Flow
Directory → ZIP Compression → Timestamped Backup
           ↓
   Backup Count > 3 ?
           ↓
   Oldest Backup Deleted
📈 Optimization Roadmap (Future Enhancements)
 Upload backups to AWS S3

 Slack / Discord webhook notifications

 AES encryption for sensitive backups

 Cron job scheduling

 Logging & error handling

 Configurable retention count

💡 Example Use Cases
Server log backups

Application artifact management

CI/CD build backups

Internship / fresher DevOps portfolio project

Linux automation practice

🤝 Contribute
Pull requests are welcome!

If you want to:

Improve error handling

Add cloud integration

Optimize Bash logic

Feel free to fork and contribute 🚀

👨‍💻 Author
Jeymurugan Nadar
DevOps & Cloud Enthusiast

<p align="left"> <a href="https://linkedin.com/in/yourusername" target="_blank"> <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/> </a> <a href="https://github.com/yourusername" target="_blank"> <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"/> </a> </p>
⭐ If you found this useful, give the repo a star!
Made with ❤️ for the DevOps community.
