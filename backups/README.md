# 🚀 Automated Bash Backup & Lifecycle Management

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=auto&height=200&section=header&text=DevOps%20Automation&fontSize=70&animation=fadeIn" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
  <img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" />
  <img src="https://img.shields.io/badge/Automation-007ACC?style=for-the-badge&logo=github-actions&logoColor=white" />
  <img src="https://img.shields.io/badge/DevOps-2496ED?style=for-the-badge&logo=azure-devops&logoColor=white" />
  <img src="https://img.shields.io/badge/Maintenance-FF69B4?style=for-the-badge&logo=buildkite&logoColor=white" />
</p>

---

## 🛠 Project Purpose

In a DevOps CI/CD pipeline, managing logs and artifacts is crucial. This script acts as a **Storage Lifecycle Manager**. It automates the backup of high-priority directories and implements a **Retention Policy** to ensure your server never runs out of disk space due to log-bloat or redundant backups.



---

## 💻 Technical Breakdown

The script is modularized into specialized functions to follow the **DRY (Don't Repeat Yourself)** principle:

### 1. Source Validation
The script first performs a conditional check `[ ! -d "$1" ]`. If the provided path isn't a directory or is missing, it terminates safely. This prevents the script from attempting to backup non-existent data.

### 2. Automated Compression
Using the `zip -r` command, the script recursively bundles the entire directory. 
* **Timestamping:** It uses `date '+%Y-%m-%d_%H-%M-%S'` to ensure every backup is unique down to the second, allowing for precise Point-in-Time recovery.

### 3. Retention & Rotation (The DevOps Way)
This is the most critical part of the automation:
* It stores all `.zip` files in an array.
* It sorts them by modification time (`ls -t`).
* If the count exceeds **3**, it slices the array and uses `rm -f` to purge the oldest versions.

---

## 🚀 Quick Start

### Prerequisites

Execution
Bash
# 1. Clone it
git clone [https://github.com/your-username/devops-backup-tool.git](https://github.com/your-username/devops-backup-tool.git)

# 2. Permissions
chmod +x backup.sh

# 3. Run
./backup.sh /your/target/directory

📈 Optimization Roadmap (CI/CD)
[ ] Add S3 Bucket integration for off-site storage.

[ ] Implement Discord/Slack Webhook notifications on success.

[ ] Add encryption for sensitive data backups.

🤝 Connect & Collaborate
<p align="left"> <a href="https://www.google.com/search?q=https://linkedin.com/in/yourusername"><img src="https://www.google.com/search?q=https://img.shields.io/badge/LinkedIn-0077B5%3Fstyle%3Dfor-the-badge%26logo%3Dlinkedin%26logoColor%3Dwhite" /></a> <a href="https://github.com/yourusername"><img src="https://www.google.com/search?q=https://img.shields.io/badge/GitHub-100000%3Fstyle%3Dfor-the-badge%26logo%3Dgithub%26logoColor%3Dwhite" /></a> </p>

Developed for efficiency, stability, and scale.
Make sure you have `zip` installed:
```bash
sudo apt update && sudo apt install zip -y
