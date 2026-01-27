<h1 align="center" style="font-weight:1200;">
  🔥 DevOps Backup & Rotation Automation Script
</h1>


![DevOps Banner](https://svg-banners.vercel.app/api?type=glitch&text1=Backup%20Automation&text2=AWS%20%7C%20Linux%20%7C%20Bash%20%7C%20EC2&width=1200&height=300)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Automation](https://img.shields.io/badge/Automation-00B0FF?style=for-the-badge&logo=robot&logoColor=white)
![DevOps](https://img.shields.io/badge/DevOps-00A98F?style=for-the-badge&logo=azure-devops&logoColor=white)

## 📌 Author & Links
**Created by:** Jeyamurugan Nadar  
**GitHub:** @Jeyamurugan_Nadar (https://github.com/nadarmurugan)
**LinkedIn:** Jeyamurugan(https://linkedin.com/in/murugannadar)  

---

## 📖 Overview

This is a **production-grade backup automation script** designed for DevOps environments. It creates timestamped compressed backups of any directory and automatically rotates old backups, keeping only the last 3 versions. Perfect for **AWS EC2 instances**, **Linux servers**, and **CI/CD pipelines**.

![Automation Flow](https://svg-banners.vercel.app/api?type=typeWriter&text1=Backup%20→%20Compress%20→%20Rotate&text2=Full%20Automation%20Cycle&width=1000&height=200)

## 🚀 Features

### 🛡️ **Core Capabilities**
- ✅ **Timestamped Backups** - Each backup includes exact creation time
- ✅ **Automatic Compression** - Uses ZIP compression for space efficiency
- ✅ **Smart Rotation** - Keeps only last 3 backups (configurable)
- ✅ **Error Handling** - Comprehensive validation and error reporting
- ✅ **Silent Operation** - Clean output with minimal console noise

### 🏗️ **DevOps Ready**
- 🔄 **Cron Job Compatible** - Perfect for scheduled backups
- 📦 **Lightweight** - No external dependencies required
- 🔧 **Configurable** - Easy to modify for different retention policies
- 🐳 **Container Friendly** - Works in Docker and Kubernetes environments

---

## 📁 Script Details

### **File Structure**
```
backup-automation/
├── backup_script.sh      # Main backup script
├── README.md            # This documentation
└── backups/             # Generated backup directory
    ├── backup_2024-01-15_14-30-00.zip
    ├── backup_2024-01-16_14-30-00.zip
    └── backup_2024-01-17_14-30-00.zip
```

---

## 🛠️ Installation & Usage

### **1. Download Script**
```bash
wget https://raw.githubusercontent.com/yourusername/repo/main/backup_script.sh
chmod +x backup_script.sh
```

### **2. Basic Usage**
```bash
./backup_script.sh /path/to/your/directory
```

### **3. Real-World Examples**
```bash
# Backup web server content
./backup_script.sh /var/www/html

# Backup application logs
./backup_script.sh /var/log/app

# Backup database dumps
./backup_script.sh /opt/database/dumps
```

### **4. Schedule with Cron (Automation)**
```bash
# Edit crontab
crontab -e

# Add line for daily backup at 2 AM
0 2 * * * /path/to/backup_script.sh /var/www/html >> /var/log/backup.log 2>&1

# Add line for hourly backups
0 * * * * /path/to/backup_script.sh /home/user/data
```

---

## 🔍 Code Explanation

### **📝 Script Breakdown**

```bash
#!/bin/bash
# Shebang - Specifies Bash as interpreter
```

### **1️⃣ Function: display_usage()**
```bash
function display_usage {
    echo "Usage: $0 /path/to/source_directory"
}
```
**Purpose:** Shows help message when users provide incorrect arguments.

### **2️⃣ Input Validation**
```bash
if [ $# -eq 0 ] || [ ! -d "$1" ]; then
    echo "Error: Please provide a valid directory path"
    display_usage
    exit 1
fi
```
**DevOps Perspective:** 
- Validates user input before processing
- Prevents script failures in automated pipelines
- Returns proper exit codes (1 for error)

### **3️⃣ Function: create_backup()**
```bash
local timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
local backup_dir="${source_dir}/backup_${timestamp}"
```
**Timestamp Format:** `YYYY-MM-DD_HH-MM-SS` ensures:
- Chronological sorting
- No special characters for cross-platform compatibility
- Human-readable format

```bash
zip -r "${backup_dir}.zip" "$source_dir" >/dev/null
```
**Compression:**
- `-r` flag for recursive directory compression
- `>/dev/null` suppresses zip output (clean logs)
- Creates standard ZIP format for universal accessibility

### **4️⃣ Function: perform_rotation()**
```bash
local backups=($(ls -t "${source_dir}/backup_"*.zip 2>/dev/null))
```
**Sorting Logic:**
- `ls -t` lists files by modification time (newest first)
- `2>/dev/null` suppresses "no file found" errors
- Array stores all backup files in chronological order

```bash
if [ "${#backups[@]}" -gt 3 ]; then
    local backups_to_remove=("${backups[@]:3}")
```
**Rotation Logic:**
- Keeps last 3 backups (index 0,1,2)
- Removes everything from index 3 onward
- Configurable by changing the number '3'

---

## 🎯 DevOps Integration Scenarios

### **AWS EC2 Implementation**
```bash
# In EC2 User Data (runs on instance launch)
#!/bin/bash
yum install zip unzip -y
wget -O /usr/local/bin/backup.sh https://your-s3-bucket/backup_script.sh
chmod +x /usr/local/bin/backup.sh
echo "0 3 * * * root /usr/local/bin/backup.sh /opt/app" >> /etc/crontab
```

### **Docker Container Usage**
```dockerfile
COPY backup_script.sh /scripts/
RUN chmod +x /scripts/backup_script.sh
CMD ["/scripts/backup_script.sh", "/data"]
```

### **Jenkins Pipeline**
```groovy
pipeline {
    agent any
    stages {
        stage('Backup') {
            steps {
                sh '''
                    ./backup_script.sh ${WORKSPACE}
                    # Upload to S3
                    aws s3 cp backup_*.zip s3://backup-bucket/
                '''
            }
        }
    }
}
```

---

## ⚙️ Configuration Options

### **Modify Retention Policy**
Change the number in line 33:
```bash
# Current: Keep 3 backups
if [ "${#backups[@]}" -gt 3 ]; then

# Change to keep 7 backups (weekly retention)
if [ "${#backups[@]}" -gt 7 ]; then

# Change to keep 30 backups (monthly retention)
if [ "${#backups[@]}" -gt 30 ]; then
```

### **Change Compression Format**
Replace zip command for different formats:

**For Tar.GZ (Better Linux compression):**
```bash
tar -czf "${backup_dir}.tar.gz" "$source_dir" >/dev/null
```

**For Faster Compression:**
```bash
zip -rq "${backup_dir}.zip" "$source_dir"
```

---

## 📊 Monitoring & Logging

### **Add Enhanced Logging**
```bash
# Add to create_backup function
log_file="/var/log/backup_audit.log"
echo "$(date): Backup created - ${backup_dir}.zip (Size: $(du -h ${backup_dir}.zip | cut -f1))" >> $log_file
```

### **Monitoring Script**
```bash
#!/bin/bash
# monitor_backups.sh
BACKUP_DIR="/path/to/backups"
ALERT_THRESHOLD_DAYS=2

last_backup=$(find $BACKUP_DIR -name "*.zip" -type f -mtime -$ALERT_THRESHOLD_DAYS)
if [ -z "$last_backup" ]; then
    echo "ALERT: No backup in last $ALERT_THRESHOLD_DAYS days!" | mail -s "Backup Alert" admin@example.com
fi
```

---

## 🚨 Error Handling & Troubleshooting

### **Common Issues & Solutions**

| Error | Cause | Solution |
|-------|-------|----------|
| `Permission denied` | Incorrect file permissions | `chmod +x backup_script.sh` |
| `zip not found` | Zip utility not installed | `apt install zip` or `yum install zip` |
| `No such directory` | Invalid path provided | Verify directory exists |
| `Backup too large` | Insufficient disk space | Check available storage |

### **Debug Mode**
Add debug output by removing `/dev/null`:
```bash
# Change line 22 from:
zip -r "${backup_dir}.zip" "$source_dir" >/dev/null

# To:
zip -r "${backup_dir}.zip" "$source_dir"
```

---

## 🔄 Advanced Usage Examples

### **Multi-Directory Backup**
```bash
#!/bin/bash
# backup_multiple.sh
DIRECTORIES=("/var/www" "/etc" "/home")
for dir in "${DIRECTORIES[@]}"; do
    ./backup_script.sh "$dir"
done
```

### **Remote Backup to S3**
```bash
# Add to end of script
aws s3 cp "${backup_dir}.zip" s3://your-bucket/backups/
if [ $? -eq 0 ]; then
    echo "Backup uploaded to S3 successfully"
    # Optional: Remove local copy after upload
    rm -f "${backup_dir}.zip"
fi
```

---

## 📈 Performance Considerations

### **Optimization Tips**
1. **Exclude unnecessary files:**
```bash
zip -r "${backup_dir}.zip" "$source_dir" -x "*.log" "*.tmp" "cache/*"
```

2. **Parallel compression for large directories:**
```bash
tar cf - "$source_dir" | pigz -p 4 > "${backup_dir}.tar.gz"
```

3. **Incremental backups (advanced):**
```bash
rsync -av --link-dest="../backup_previous" "$source_dir" "$backup_dir"
```

---

## 🤝 Contributing

Found a bug or have a feature request? 
1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

---

## 📄 License

MIT License - See LICENSE file for details

---

## 🌟 Support

If this script helped you, please:
- ⭐ Star the repository
- 🔗 Share with your team
- 🐛 Report issues
- 💡 Suggest improvements

---

## 📞 Need Help?

![Support](https://svg-banners.vercel.app/api?type=origin&text1=DevOps%20Automation%20Experts&text2=Available%20for%20Consulting&width=1000&height=150)

**Contact:** murugannadar077@gmail.com  


---

*Last updated: January 2024*  
*Maintained with ❤️ for the DevOps community*

![Footer](https://svg-banners.vercel.app/api?type=rainbow&text1=Automate%20Everything&text2=Backup%20with%20Confidence&width=1200&height=100)
