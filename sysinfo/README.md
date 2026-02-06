<h1 align="center"> 📊 System Information Reporting Script </h1>

<h1 align="center">
  <img src="https://svg-banners.vercel.app/api?type=glitch&text1=System%20Info%20Dashboard&text2=Linux%20%7C%20Monitoring%20%7C%20Automation&width=1200&height=300" alt="System Info Banner">
</h1>

<div align="center">
  
  ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
  ![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
  ![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
  ![Automation](https://img.shields.io/badge/Automation-00B0FF?style=for-the-badge&logo=automation&logoColor=white)
  ![Monitoring](https://img.shields.io/badge/Monitoring-FF6B6B?style=for-the-badge&logo=datadog&logoColor=white)

</div>

---

## 📋 Project Overview

This project provides a comprehensive **system information reporting script** (`sysinfo.sh`) that generates detailed reports about your Linux server's status. It's designed for **DevOps engineers**, **system administrators**, and **cloud engineers** who need quick insights into system health, resource usage, and configuration.

### 🎯 Key Features
* **Comprehensive System Reporting**: Covers user sessions, hardware specs, storage, network, and time information
* **Clean Visual Formatting**: Uses box-drawing characters for professional, readable output
* **Automation Ready**: Perfect for scheduled reporting via cron jobs
* **Lightweight & Portable**: Single Bash script with no external dependencies
* **Real-time Data**: Provides current system status at execution time

---

## 👤 Author
**Jeyamurugan Nadar** *Aspiring DevOps & Cloud Engineer*

<p align="left">
  <a href="https://github.com/nadarmurugan" target="_blank">
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  </a>
  <a href="https://linkedin.com/in/murugannadar/" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
  </a>
  <a href="mailto:murugannadar077@gmail.com">
    <img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email">
  </a>
</p>

---

## 🚀 Quick Start

### 📥 Installation

```bash
# 1. Download the script
curl -O https://raw.githubusercontent.com/yourusername/sysinfo/main/sysinfo.sh

# 2. Make it executable
chmod +x sysinfo.sh

# 3. Run it
./sysinfo.sh
```

### 📁 Script Structure
```
/home/john/
├── sysinfo.sh              # Main system information script
├── test_info/              # Generated reports directory
│   ├── sysinfo_2024-01-20_10-00-00.txt
│   ├── sysinfo_2024-01-21_10-00-00.txt
│   └── sysinfo_2024-01-22_10-00-00.txt
└── sysinfo.log             # Optional log file
```

---

## 📊 Sample Output Preview

```bash
========================================
          SYSTEM INFORMATION
========================================

╔═══════════════════════════════════════
║ USER & SESSION
╚═══════════════════════════════════════
User:       john
Shell:      /bin/bash
Directory:  /home/john
Users:      1
Last Login: Mon Jan 15 09:30:22 from 192.168.1.100

╔═══════════════════════════════════════
║ SYSTEM BASICS
╚═══════════════════════════════════════
Hostname:   ubuntu-server
OS:         Linux
Kernel:     5.15.0-91-generic
Arch:       x86_64
Uptime:     5 days, 3 hours, 15 minutes

╔═══════════════════════════════════════
║ HARDWARE
╚═══════════════════════════════════════
CPU Cores:  8
CPU Load:   0.25, 0.30, 0.35
Memory:     3.2Gi / 15Gi
Processes:  245

╔═══════════════════════════════════════
║ STORAGE
╚═══════════════════════════════════════
Root:       45% used
Home:       120GB free

╔═══════════════════════════════════════
║ NETWORK
╚═══════════════════════════════════════
Private IP: 192.168.1.50
Public IP:  203.0.113.45

╔═══════════════════════════════════════
║ TIME
╚═══════════════════════════════════════
Date:       2024-01-20
Time:       14:30:15
Timezone:   PST

========================================
            END OF REPORT
========================================
```

---

## ⚙️ Automation with Cron Jobs

### 📅 Scheduled Daily Reporting (10 AM)

Here's how to set up automatic daily system reports at 10:00 AM:

#### **Method 1: Basic Daily Report**
```bash
# 1. Create the output directory
mkdir -p /home/john/test_info

# 2. Edit crontab
crontab -e

# 3. Add this line for daily 10 AM execution
0 10 * * * /home/john/sysinfo.sh > /home/john/test_info/sysinfo_$(date +\%Y-\%m-\%d_\%H-\%M-\%S).txt
```

#### **Method 2: Enhanced with Logging**
```bash
# Create a wrapper script
cat > /home/john/run_sysinfo.sh << 'EOF'
#!/bin/bash
TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')
OUTPUT_DIR="/home/john/test_info"
LOG_FILE="/home/john/sysinfo.log"

# Create directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Run sysinfo and save to timestamped file
/home/john/sysinfo.sh > "$OUTPUT_DIR/sysinfo_$TIMESTAMP.txt"

# Log the execution
echo "[$TIMESTAMP] System report generated: $OUTPUT_DIR/sysinfo_$TIMESTAMP.txt" >> "$LOG_FILE"

# Optional: Cleanup old reports (keep last 30 days)
find "$OUTPUT_DIR" -name "sysinfo_*.txt" -mtime +30 -delete
EOF

# Make it executable
chmod +x /home/john/run_sysinfo.sh

# Add to crontab
crontab -e
# Add this line:
0 10 * * * /home/john/run_sysinfo.sh
```

#### **Method 3: Multi-schedule Configuration**
```bash
# For different schedule options:
crontab -e

# Daily at 10 AM
0 10 * * * /home/john/sysinfo.sh > /home/john/test_info/daily_$(date +\%Y-\%m-\%d).txt

# Every hour (for intensive monitoring)
0 * * * * /home/john/sysinfo.sh > /home/john/test_info/hourly_$(date +\%Y-\%m-\%d_\%H).txt

# Every Monday at 9 AM (weekly report)
0 9 * * 1 /home/john/sysinfo.sh > /home/john/test_info/weekly_$(date +\%Y-\%m-\%d).txt
```

#### **Method 4: With Email Notification**
```bash
# Install mailutils if needed
sudo apt-get install mailutils

# Create script with email notification
cat > /home/john/sysinfo_email.sh << 'EOF'
#!/bin/bash
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
REPORT_FILE="/home/john/test_info/sysinfo_$(date +\%Y-\%m-\%d_\%H-\%M-\%S).txt"

# Generate report
/home/john/sysinfo.sh > "$REPORT_FILE"

# Send email with attachment
echo "Daily system report attached" | mail -s "System Report - $TIMESTAMP" -A "$REPORT_FILE" admin@example.com

# Log the action
echo "[$TIMESTAMP] Report sent via email: $REPORT_FILE" >> /home/john/sysinfo.log
EOF

chmod +x /home/john/sysinfo_email.sh

# Schedule in crontab
0 10 * * * /home/john/sysinfo_email.sh
```

---

## 🔧 Advanced Configuration

### 📁 Custom Output Directory
Modify the script or wrapper to use different directories:

```bash
# In your cron job or wrapper script
OUTPUT_DIR="/var/log/system_reports"
mkdir -p "$OUTPUT_DIR"
/home/john/sysinfo.sh > "$OUTPUT_DIR/report_$(date +\%F_\%T).txt"
```

### 🔄 Rotation Policy
Add automatic cleanup to your cron job:

```bash
# Keep reports for 90 days
find /home/john/test_info -name "*.txt" -mtime +90 -delete

# Keep only last 50 reports
cd /home/john/test_info
ls -t sysinfo_*.txt | tail -n +51 | xargs rm -f
```

### 📈 Monitoring Integration
Pipe output to monitoring tools:

```bash
# Send to syslog
/home/john/sysinfo.sh | logger -t "sysinfo"

# Extract specific metrics for monitoring
/home/john/sysinfo.sh | grep "Memory:" | awk '{print $2}' > /tmp/memory_usage.txt
```

---

## 🐳 Docker Integration

### Dockerfile Example
```dockerfile
FROM alpine:latest

# Install dependencies
RUN apk add --no-cache bash coreutils procps curl

# Copy script
COPY sysinfo.sh /usr/local/bin/sysinfo.sh
RUN chmod +x /usr/local/bin/sysinfo.sh

# Create volume for reports
VOLUME /reports

# Run on container start
CMD ["/usr/local/bin/sysinfo.sh"]
```

### Docker Compose Setup
```yaml
version: '3.8'
services:
  sysinfo:
    build: .
    volumes:
      - ./test_info:/reports
    restart: unless-stopped
```

---

## 📡 AWS EC2 Integration

### User Data Script for EC2
```bash
#!/bin/bash
# EC2 User Data - runs on instance launch

# Update system
apt-get update -y

# Install dependencies
apt-get install -y curl

# Download sysinfo script
curl -o /usr/local/bin/sysinfo.sh https://raw.githubusercontent.com/yourusername/sysinfo/main/sysinfo.sh
chmod +x /usr/local/bin/sysinfo.sh

# Create reports directory
mkdir -p /var/log/system_reports

# Setup daily cron job
echo "0 10 * * * root /usr/local/bin/sysinfo.sh > /var/log/system_reports/sysinfo_\$(date +\\%Y-\\%m-\\%d).txt" >> /etc/crontab

# Optional: Upload to S3 daily
echo "0 11 * * * root aws s3 sync /var/log/system_reports/ s3://your-bucket/system-reports/\$(hostname)/" >> /etc/crontab
```

---

## 🔍 Troubleshooting

### Common Issues & Solutions

| Issue | Solution |
|-------|----------|
| **Permission denied** | `chmod +x sysinfo.sh` |
| **Cron not executing** | Check system logs: `grep CRON /var/log/syslog` |
| **No output in test_info** | Verify directory exists: `mkdir -p test_info` |
| **Incorrect time in reports** | Set timezone: `sudo timedatectl set-timezone Your/Timezone` |
| **Missing commands** | Install core utilities: `sudo apt-get install coreutils procps` |

### Debug Mode
```bash
# Add debugging to your cron job
0 10 * * * /home/john/sysinfo.sh > /home/john/test_info/output.txt 2>&1

# Check cron execution
tail -f /var/log/syslog | grep CRON
```

### Test Cron Syntax
```bash
# Test your cron expression
crontab -l

# Dry run your script
bash -x /home/john/sysinfo.sh
```

---

## 📈 Performance Monitoring Add-ons

### Extended Monitoring Script
```bash
#!/bin/bash
# enhanced_sysinfo.sh

# Include original sysinfo
/home/john/sysinfo.sh

echo ""
echo "╔═══════════════════════════════════════"
echo "║ ENHANCED METRICS"
echo "╚═══════════════════════════════════════"

# Disk I/O
echo "Disk I/O Stats:"
iostat -dx 1 1 | tail -n +4

# Top Processes
echo -e "\nTop 5 Processes by CPU:"
ps aux --sort=-%cpu | head -6

# Network Connections
echo -e "\nActive Connections:"
netstat -an | grep ESTABLISHED | wc -l
```

### Schedule Enhanced Monitoring
```bash
# Add to crontab for hourly enhanced reports
0 * * * * /home/john/enhanced_sysinfo.sh > /home/john/test_info/enhanced_$(date +\%Y-\%m-\%d_\%H).txt
```

---

## 🤝 Contributing

We welcome contributions! Here's how:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/improvement`)
3. **Commit** your changes (`git commit -am 'Add new feature'`)
4. **Push** to the branch (`git push origin feature/improvement`)
5. **Create** a Pull Request

### Areas for Contribution:
- Add more system metrics
- Create web dashboard interface
- Add cloud provider specific info (AWS, Azure, GCP)
- Develop alerting mechanisms
- Create Docker/containerized version

---

## 📄 License

MIT License - See [LICENSE](LICENSE) file for details.

---

## 🌟 Support

If this script helps you manage your systems better:

- ⭐ **Star** the repository
- 🔄 **Share** with your team
- 🐛 **Report** issues
- 💡 **Suggest** improvements

---

## 📞 Need Help?

**Jeyamurugan Nadar** *Aspiring DevOps & Cloud Engineer*

<p align="left">
  <a href="https://github.com/nadarmurugan" target="_blank">
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  </a>
  <a href="https://linkedin.com/in/murugannadar/" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
  </a>
  <a href="mailto:murugannadar077@gmail.com">
    <img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email">
  </a>
</p>

---

<h3 align="center">
  🚀 Pro Tip: Combine with other monitoring tools for complete visibility!
</h3>

<p align="center">
  <img src="https://svg-banners.vercel.app/api?type=rainbow&text1=System%20Health%20%7C%20Automated%20Reports%20%7C%20Daily%20at%2010%20AM&text2=Peace%20of%20Mind%20for%20DevOps%20Teams&width=1200&height=100">
</p>

---

## 📚 Additional Resources

### Useful Commands
```bash
# View all generated reports
ls -la /home/john/test_info/

# Check latest report
tail -f /home/john/test_info/$(ls -t /home/john/test_info/ | head -1)

# Monitor cron execution
tail -f /var/log/syslog | grep -i cron

# Check script execution time
time /home/john/sysinfo.sh
```

### Integration Ideas
- **Slack Notifications**: Pipe critical alerts to Slack webhook
- **Grafana Dashboard**: Parse reports and visualize trends
- **AWS CloudWatch**: Send metrics to CloudWatch for centralized monitoring
- **Prometheus**: Export metrics in Prometheus format

### Next Steps
1. Set up the cron job for daily 10 AM reports
2. Monitor the `test_info` directory for generated reports
3. Consider adding email notifications for critical thresholds
4. Integrate with your existing monitoring stack

---

**Happy Monitoring! 🎯**
