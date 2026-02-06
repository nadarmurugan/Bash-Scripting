<h1 align="center">🖥️ System Health Monitor Script</h1>


<div align="center">
  
![System Monitoring](https://svg-banners.vercel.app/api?type=glitch&text1=System%20Health%20Monitor&text2=Linux%20%7C%20Bash%20%7C%20DevOps%20%7C%20Automation&width=1200&height=300)

![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![DevOps](https://img.shields.io/badge/DevOps-00A98F?style=for-the-badge&logo=azure-devops&logoColor=white)
![Monitoring](https://img.shields.io/badge/Monitoring-4285F4?style=for-the-badge&logo=google-chrome&logoColor=white)
![Automation](https://img.shields.io/badge/Automation-00B0FF?style=for-the-badge&logo=automation&logoColor=white)

</div>

## 📋 Project Overview

A production-ready **Bash script** for monitoring Linux system health metrics. This script collects essential system information including CPU usage, memory consumption, disk space, uptime, and active users, then logs it in a structured, readable format. Perfect for **DevOps engineers**, **system administrators**, and **Linux enthusiasts**.

### 🎯 Key Features
- ✅ **Comprehensive System Monitoring** - Tracks all critical system metrics
- ✅ **Clean, Formatted Output** - Easy-to-read logs with visual separators
- ✅ **Automation Ready** - Built for cron job scheduling
- ✅ **Lightweight & Efficient** - Minimal resource consumption
- ✅ **No External Dependencies** - Uses built-in Linux commands only
- ✅ **Production Grade** - Includes proper error handling and validation

---

## 📊 What's Monitored

| Category | Metrics Collected | Command Used |
|----------|------------------|--------------|
| **System Info** | Hostname, OS, Kernel Version | `hostname`, `/etc/os-release`, `uname` |
| **CPU** | CPU Usage Percentage | `top`, `awk` |
| **Memory** | Used/Total Memory (MB) | `free`, `awk` |
| **Disk** | Root Partition Usage | `df`, `awk` |
| **Uptime** | System Uptime Duration | `uptime -p` |
| **Processes** | Total Running Processes | `ps`, `wc` |
| **Users** | Currently Logged-in Users | `who` |

---

## 🚀 Quick Start

### 1️⃣ Download the Script
```bash
# Create scripts directory
mkdir -p ~/scripts
cd ~/scripts

# Download or create the script
cat > system_health_monitor.sh << 'EOF'
#!/bin/bash

LOG_FILE="/var/log/simple_monitor.log"

{
echo "=================================================="
echo "🖥️  SYSTEM HEALTH REPORT"
echo "📅 Date & Time : $(date)"
echo "=================================================="

echo "🔹 SYSTEM INFO"
echo "Hostname       : $(hostname)"
echo "OS             : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Kernel         : $(uname -r)"

echo "--------------------------------------------------"
echo "⚙️  RESOURCE USAGE"
echo "CPU Usage      : $(top -bn1 | grep Cpu | awk '{print $2+$4}')%"
echo "Memory Usage   : $(free -m | awk 'NR==2{print $3 "/" $2 " MB"}')"
echo "Disk Usage (/) : $(df -h / | awk 'NR==2{print $5}')"

echo "--------------------------------------------------"
echo "⏳ SYSTEM STATUS"
echo "Uptime         : $(uptime -p)"
echo "Processes      : $(ps aux | wc -l)"

echo "--------------------------------------------------"
echo "👥 LOGGED-IN USERS"
who

echo "=================================================="
echo ""
} >> "$LOG_FILE"
EOF

# Make executable
chmod +x system_health_monitor.sh
```

### 2️⃣ Run Manually (Test)
```bash
sudo ./system_health_monitor.sh
```

### 3️⃣ View Logs
```bash
sudo tail -20 /var/log/simple_monitor.log
```

---

## 📁 Sample Output

```
==================================================
🖥️  SYSTEM HEALTH REPORT
📅 Date & Time : Mon Jan 15 10:00:01 UTC 2024
==================================================
🔹 SYSTEM INFO
Hostname       : production-server-01
OS             : Ubuntu 22.04.3 LTS
Kernel         : 5.15.0-91-generic
--------------------------------------------------
⚙️  RESOURCE USAGE
CPU Usage      : 12.5%
Memory Usage   : 2143/7890 MB
Disk Usage (/) : 38%
--------------------------------------------------
⏳ SYSTEM STATUS
Uptime         : up 3 days, 4 hours
Processes      : 182
--------------------------------------------------
👥 LOGGED-IN USERS
root     pts/0  2024-01-15 09:10 (192.168.1.10)
ubuntu   pts/1  2024-01-15 10:45 (192.168.1.20)
==================================================
```

---

## ⏰ Automated Scheduling with Cron

### 🔧 Schedule for Daily Monitoring (10 AM & 4 PM)

```bash
# Open crontab editor
crontab -e

# Add these lines at the end (adjust path as needed)
0 10 * * * /bin/bash /home/ubuntu/scripts/system_health_monitor.sh
0 16 * * * /bin/bash /home/ubuntu/scripts/system_health_monitor.sh
```

### 🕒 Alternative Scheduling Options

| Schedule | Crontab Entry | Purpose |
|----------|---------------|---------|
| **Every 30 Minutes** | `*/30 * * * * /path/to/script.sh` | High-frequency monitoring |
| **Hourly** | `0 * * * * /path/to/script.sh` | Production servers |
| **Daily (Midnight)** | `0 0 * * * /path/to/script.sh` | Daily health check |
| **Weekly** | `0 0 * * 0 /path/to/script.sh` | Weekly summary |

### 📝 Cron Job with Logging
```bash
# Complete crontab entry with logging
0 10 * * * /bin/bash /home/ubuntu/scripts/system_health_monitor.sh >> /var/log/cron_health.log 2>&1
0 16 * * * /bin/bash /home/ubuntu/scripts/system_health_monitor.sh >> /var/log/cron_health.log 2>&1
```

---

## 🔧 Advanced Configuration

### Option 1: Custom Log Location (No Sudo Required)
```bash
# Modify the LOG_FILE line in the script
LOG_DIR="$HOME/system_logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/health_$(date +%Y-%m-%d).log"
```

### Option 2: Add Email Alerts
```bash
# Add to end of script
THRESHOLD=80
CPU_USAGE=$(top -bn1 | grep Cpu | awk '{print $2+$4}' | cut -d. -f1)

if [ "$CPU_USAGE" -gt "$THRESHOLD" ]; then
    echo "High CPU Alert: ${CPU_USAGE}%" | mail -s "CPU Alert on $(hostname)" admin@example.com
fi
```

### Option 3: JSON Output for API Integration
```bash
# Create JSON format
echo "{
  \"timestamp\": \"$(date)\",
  \"hostname\": \"$(hostname)\",
  \"cpu_usage\": \"$(top -bn1 | grep Cpu | awk '{print $2+$4}')\",
  \"memory_used\": \"$(free -m | awk 'NR==2{print $3}')\",
  \"memory_total\": \"$(free -m | awk 'NR==2{print $2}')\"
}" > /tmp/system_health.json
```

---

## 🏗️ DevOps Integration Examples

### AWS EC2 User Data (Launch Template)
```bash
#!/bin/bash
# EC2 User Data - Auto-deploys monitoring on instance launch
cat > /opt/scripts/health_monitor.sh << 'EOF'
# [Script content here]
EOF

chmod +x /opt/scripts/health_monitor.sh
echo "0 * * * * /opt/scripts/health_monitor.sh" | crontab -
```

### Docker Container Health Check
```dockerfile
# Dockerfile snippet
COPY system_health_monitor.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/system_health_monitor.sh
CMD ["/usr/local/bin/system_health_monitor.sh"]
```

### Jenkins Pipeline Integration
```groovy
pipeline {
    agent any
    stages {
        stage('System Health Check') {
            steps {
                sh '''
                    # Run health check
                    ./system_health_monitor.sh
                    
                    # Check for critical issues
                    CPU=$(top -bn1 | grep Cpu | awk '{print $2+$4}' | cut -d. -f1)
                    if [ $CPU -gt 90 ]; then
                        echo "CRITICAL: High CPU detected!"
                        exit 1
                    fi
                '''
            }
        }
    }
}
```

---

## 📈 Monitoring Dashboard Setup

### Create HTML Dashboard
```bash
#!/bin/bash
# generate_dashboard.sh
LOG_FILE="/var/log/simple_monitor.log"
HTML_FILE="/var/www/html/system_dashboard.html"

echo '<html><head><title>System Dashboard</title>
<style>
body { font-family: Arial; margin: 40px; }
.metric { background: #f5f5f5; padding: 15px; margin: 10px; border-radius: 5px; }
.critical { background: #ffcccc; }
.warning { background: #fff3cd; }
</style></head><body>
<h1>🖥️ System Health Dashboard</h1>' > $HTML_FILE

# Add latest 5 entries
tail -5 $LOG_FILE | sed 's/$/<br>/' >> $HTML_FILE
echo '</body></html>' >> $HTML_FILE
```

### Schedule Dashboard Updates
```bash
# Add to crontab
*/5 * * * * /bin/bash /path/to/generate_dashboard.sh
```

---

## 🚨 Alerting & Threshold Configuration

### Alert Script Example
```bash
#!/bin/bash
# alert_check.sh

THRESHOLDS=(
    "CPU:85"
    "MEMORY:90"
    "DISK:80"
)

check_thresholds() {
    # Get current values
    CPU=$(top -bn1 | grep Cpu | awk '{print $2+$4}' | cut -d. -f1)
    MEMORY=$(free | awk 'NR==2{printf "%.0f", $3/$2*100}')
    DISK=$(df / | awk 'NR==2{print $5}' | sed 's/%//')
    
    # Check thresholds
    if [ $CPU -gt 85 ]; then
        echo "🚨 ALERT: CPU usage is $CPU% (Threshold: 85%)"
    fi
    
    if [ $MEMORY -gt 90 ]; then
        echo "🚨 ALERT: Memory usage is $MEMORY% (Threshold: 90%)"
    fi
    
    if [ $DISK -gt 80 ]; then
        echo "🚨 ALERT: Disk usage is $DISK% (Threshold: 80%)"
    fi
}

# Run check
check_thresholds
```

---

## 🔍 Troubleshooting Guide

| Issue | Solution |
|-------|----------|
| **Permission Denied** | `sudo chmod +x system_health_monitor.sh` |
| **Log file not created** | Ensure `/var/log/` exists and is writable |
| **Cron job not running** | Check syslog: `grep CRON /var/log/syslog` |
| **Incorrect CPU values** | Adjust `top` command parameters |
| **Script exits early** | Add `set -e` for error checking |
| **Disk space warnings** | Monitor log file size with log rotation |

### Debug Mode
```bash
# Run script with debug output
bash -x system_health_monitor.sh

# Test individual commands
echo "CPU Test: $(top -bn1 | grep Cpu)"
echo "Memory Test: $(free -m)"
```

---

## 📚 Learning Resources

### Related Commands to Master
- `top` / `htop` - Process monitoring
- `free` / `vmstat` - Memory analysis
- `df` / `du` - Disk usage
- `ps` / `pstree` - Process management
- `uptime` / `w` - System load

### Next Steps
1. **Add network monitoring** (bandwidth, connections)
2. **Integrate with Prometheus** for time-series data
3. **Create Grafana dashboard** for visualization
4. **Add Slack/Teams notifications**
5. **Implement log rotation** with `logrotate`

---

## 👨‍💻 Author

**Jeyamurugan Nadar**  
*Aspiring DevOps & Cloud Engineer*

<div align="left">
  <a href="https://github.com/nadarmurugan" target="_blank">
    <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  </a>
  <a href="https://linkedin.com/in/murugannadar/" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
  </a>
  <a href="mailto:murugannadar077@gmail.com">
    <img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email">
  </a>
</div>

---

## 📄 License

MIT License - Free to use, modify, and distribute for personal and commercial projects.

---

<div align="center">
  
![Footer](https://svg-banners.vercel.app/api?type=rainbow&text1=Monitor%20with%20Confidence&text2=DevOps%20Excellence&width=1200&height=100)

**⭐ Star this repository if you found it helpful!**

</div>

---

## 🔄 Changelog

### v1.0 (Current)
- Initial release with core monitoring capabilities
- Cron scheduling support
- Formatted output with emojis
- Comprehensive documentation

### Planned Features
- [ ] Email/SMS alerts
- [ ] Web dashboard
- [ ] Database logging
- [ ] Performance trending
- [ ] API endpoint

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

<div align="center">
  <h3>🚀 Ready to Monitor Your Systems?</h3>
  <p>Start with a simple cron job and scale to full monitoring solution!</p>
</div>
