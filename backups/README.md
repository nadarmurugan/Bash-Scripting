🚀 Automated Bash Backup & Lifecycle Management
<p align="center"> <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" /> <img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" /> <img src="https://img.shields.io/badge/Automation-007ACC?style=for-the-badge&logo=github-actions&logoColor=white" /> <img src="https://img.shields.io/badge/Maintenance-FF69B4?style=for-the-badge&logo=buildkite&logoColor=white" /> </p>

🛠 Project Purpose
In modern DevOps environments, log-bloat and unmanaged artifacts are "silent killers" of disk space. This script serves as a Storage Lifecycle Manager. It automates the compression of high-priority directories and enforces a strict Retention Policy, ensuring your CI/CD pipelines or production servers remain lean and stable.

📂 The Script (backup.sh)
Copy the code below into a file named backup.sh:

Bash
#!/bin/bash

# ==============================================================================
# DEVOPS BACKUP & ROTATION SCRIPT
# ==============================================================================
# Description: Compresses a directory and maintains only the last 3 backups.
# Usage: ./backup.sh <path_to_directory>
# ==============================================================================

SOURCE_DIR=$1
BACKUP_DIR="./backups"
TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')
RETENTION_COUNT=3

# 1. Validation: Ensure the user provided a directory
if [ -z "$SOURCE_DIR" ]; then
    echo "❌ Error: No directory specified."
    echo "Usage: $0 /path/to/source"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Error: Directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# 2. Preparation: Create backup folder if it doesn't exist
mkdir -p "$BACKUP_DIR"

# 3. Compression: Generate the zip file
BACKUP_NAME="backup_$TIMESTAMP.zip"
echo "📦 Starting backup of: $SOURCE_DIR"

zip -r "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR" > /dev/null

if [ $? -eq 0 ]; then
    echo "✅ Backup completed: $BACKUP_NAME"
else
    echo "❌ Backup failed!"
    exit 1
fi

# 4. Lifecycle Management: Rotate old backups (Keep only last 3)
echo "🔄 Running retention policy (Keeping last $RETENTION_COUNT backups)..."

# List files by time (newest first), skip the first 3, and remove the rest
ls -t "$BACKUP_DIR"/backup_*.zip | tail -n +$((RETENTION_COUNT + 1)) | xargs -r rm -f

echo "✨ Storage optimized. Maintenance complete."
💻 Technical Breakdown
The script follows the DRY (Don't Repeat Yourself) principle and implements industry-standard error handling:

1. Source Validation
Using [ ! -d "$1" ], the script verifies the target exists before proceeding. This prevents the "empty archive" bug and ensures your automation doesn't fail silently.

2. Point-in-Time Recovery
By using date '+%Y-%m-%d_%H-%M-%S', every backup is unique to the second. This allows DevOps engineers to roll back to specific moments during an incident.

3. Automated Rotation (The "DevOps" Way)
Manual cleanup is a liability. The script uses a combination of ls -t (sort by time) and tail to identify and rm files that fall outside the retention window. This keeps your /var/log or /data partitions from hitting 100% utilization.

🚀 Quick Start
Prerequisites
Ensure you have zip installed on your Linux machine:

Bash
sudo apt update && sudo apt install zip -y
Execution
Bash
# 1. Give execution rights
chmod +x backup.sh

# 2. Run the backup
./backup.sh /your/target/directory
📈 Optimization Roadmap
[ ] Cloud Integration: Add aws s3 cp to move backups to off-site storage.

[ ] Monitoring: Integrate Slack/Discord webhooks for success/failure alerts.

[ ] Security: Implement gpg encryption for sensitive data backups.

🤝 Connect & Collaborate
<p align="left"> <a href="https://linkedin.com/in/yourusername"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" /></a> <a href="https://github.com/yourusername"><img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" /></a> </p>

Developed for efficiency, stability, and scale.
