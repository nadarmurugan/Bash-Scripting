# 🔥 Temp File Annihilator - Ultimate System Cleaner

<div align="center">

![Banner Animation](https://svg-banners.vercel.app/api?type=typeWriter&text1=🔥%20TEMP%20FILE%20ANNIHILATOR&text2=Zero%20Tolerance%20for%20Digital%20Clutter&width=1400&height=400)

![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Automation](https://img.shields.io/badge/Automation-FF6B6B?style=for-the-badge&logo=robot&logoColor=white)
![Warning](https://img.shields.io/badge/⚠️_EXTREME_CAUTION-FF0000?style=for-the-badge&logo=warning&logoColor=white)

**"When storage anxiety strikes, this script fights back!"**

</div>

---

## 📋 Table of Contents

- [✨ Features](#-features)
- [🎯 What It Does](#-what-it-does)
- [🚨 Warning](#-warning)
- [⚡ Quick Start](#-quick-start)
- [📜 Script](#-script)
- [⏰ Automation](#-automation)
- [🛡️ Safe Alternative](#️-safe-alternative)
- [📊 Monitoring](#-monitoring)
- [❓ FAQ](#-faq)
- [📝 License](#-license)

---

## ✨ Features

<div align="center">

| Feature | Description | Status |
|---------|-------------|--------|
| 🚀 **Instant Cleanup** | Removes all temp files in seconds | ✅ Working |
| ⏰ **Automated** | Schedule with cron for daily cleaning | ✅ Working |
| 📊 **Space Recovery** | Reclaims gigabytes of storage | ✅ Working |
| 🛡️ **Safe Mode** | Optional age-based deletion | ✅ Working |
| 📝 **Logging** | Detailed logs of all operations | ✅ Working |

</div>

## 🎯 What It Does

### Target Areas:
```bash
/tmp/*          # System temporary files
~/.cache/*      # User application caches
```

### Space Recovery Example:
```bash
📊 BEFORE:
├── /tmp:    2.4 GB
└── ~/.cache: 1.8 GB
Total: 4.2 GB

🎯 AFTER:
├── /tmp:    0.0 GB
└── ~/.cache: 0.0 GB
✅ Recovered: 4.2 GB!
```

## 🚨 Warning

<div align="center">

![Danger](https://img.shields.io/badge/█▒▒▒▒▒▒▒▒▒_CRITICAL_WARNING_▒▒▒▒▒▒▒▒▒█-FF0000?style=for-the-badge)

</div>

### ⚠️ **This script will delete:**
- All files in `/tmp/` (system temporary files)
- All files in `~/.cache/` (user cache files)
- **No confirmation asked!**
- **No recovery possible!**

### 🔴 **Potential Issues:**
- Applications may run slower on next launch
- Some apps might crash or lose session data
- Package managers need to re-download metadata
- Browser caches will be cleared

### ✅ **Safe Usage Guidelines:**
- Backup important data first
- Run during maintenance windows (2-5 AM)
- Close all applications before running
- Test in a safe environment first

## ⚡ Quick Start

### 1. Download & Install:
```bash
# Download the script
wget -O clean_temp.sh https://raw.githubusercontent.com/yourrepo/clean_temp/main/clean_temp.sh

# Make it executable
chmod +x clean_temp.sh
```

### 2. Test First (Dry Run):
```bash
# See what would be deleted
echo "Files in /tmp: $(find /tmp -type f 2>/dev/null | wc -l)"
echo "Files in cache: $(find ~/.cache -type f 2>/dev/null | wc -l)"
```

### 3. Run the Script:
```bash
# Execute with caution!
./clean_temp.sh
```

## 📜 Script

### **Main Script (Aggressive Cleaner):**
```bash
#!/bin/bash
# clean_temp.sh - Aggressive temporary file cleaner

echo "🔥 INITIATING TEMP FILE CLEANUP..."
echo "=================================="

# Store before state
BEFORE_TMP=$(find /tmp -type f 2>/dev/null | wc -l)
BEFORE_CACHE=$(find ~/.cache -type f 2>/dev/null | wc -l)

echo "📊 BEFORE:"
echo "  Files in /tmp:    $BEFORE_TMP"
echo "  Files in ~/.cache: $BEFORE_CACHE"
echo ""

# The cleanup (AGGRESSIVE MODE)
echo "🧹 CLEANING..."
rm -rf /tmp/* 2>/dev/null
rm -rf ~/.cache/* 2>/dev/null

# Store after state
AFTER_TMP=$(find /tmp -type f 2>/dev/null | wc -l)
AFTER_CACHE=$(find ~/.cache -type f 2>/dev/null | wc -l)

echo ""
echo "📊 AFTER:"
echo "  Files in /tmp:    $AFTER_TMP"
echo "  Files in ~/.cache: $AFTER_CACHE"
echo ""
echo "✅ CLEANUP COMPLETE!"
echo "🎉 Files removed: $((BEFORE_TMP + BEFORE_CACHE - AFTER_TMP - AFTER_CACHE))"
```

### **Script Breakdown:**
```bash
rm -rf /tmp/*          # Force delete everything in /tmp
2>/dev/null            # Suppress error messages
~/.cache/*             # User-specific cache directory
```

## ⏰ Automation

### **Daily Cleanup (2 AM):**
```bash
# Edit crontab
crontab -e

# Add this line for daily cleanup at 2 AM
0 2 * * * /path/to/clean_temp.sh >> /var/log/temp_clean.log 2>&1
```

### **Smart Cleanup (Only when disk > 80% full):**
```bash
# Smart cron job
0 * * * * [ $(df / --output=pcent | tail -1 | tr -dc '0-9') -gt 80 ] && /path/to/clean_temp.sh >> /var/log/temp_clean.log 2>&1
```

### **Weekly with Notification:**
```bash
# Every Sunday at 2 AM
0 2 * * 0 /path/to/clean_temp.sh && echo "Cleanup completed $(date)" | mail -s "Temp Cleanup Report" admin@example.com
```

## 🛡️ Safe Alternative

### **Safer Version (Age-based cleanup):**
```bash
#!/bin/bash
# safe_clean_temp.sh - Safer alternative

echo "🧹 SAFE TEMP CLEANUP STARTED..."
echo "================================"

# Clean files older than 7 days in /tmp
echo "Cleaning /tmp files older than 7 days..."
find /tmp -type f -mtime +7 -delete 2>/dev/null
echo "✅ /tmp cleanup complete"

# Clean files older than 30 days in cache
echo "Cleaning cache files older than 30 days..."
find ~/.cache -type f -mtime +30 -delete 2>/dev/null
echo "✅ Cache cleanup complete"

# Estimate freed space
echo ""
echo "🎉 Safe cleanup completed!"
```

### **Safer Cron Job:**
```bash
# Run safe version daily at 3 AM
0 3 * * * /path/to/safe_clean_temp.sh >> /var/log/safe_clean.log 2>&1
```

## 📊 Monitoring

### **Enhanced Script with Logging:**
```bash
#!/bin/bash
# clean_temp_logging.sh - With full monitoring

LOG_FILE="/var/log/temp_cleanup_$(date +%Y%m%d_%H%M%S).log"

{
    echo "🧹 TEMP CLEANUP REPORT"
    echo "======================"
    echo "Time: $(date)"
    echo "User: $(whoami)"
    echo "Host: $(hostname)"
    echo ""
    
    # Before cleanup
    echo "📊 BEFORE CLEANUP:"
    TMP_SIZE=$(du -sh /tmp 2>/dev/null || echo "0B")
    CACHE_SIZE=$(du -sh ~/.cache 2>/dev/null || echo "0B")
    echo "  /tmp size:    $TMP_SIZE"
    echo "  Cache size:   $CACHE_SIZE"
    echo ""
    
    # Perform cleanup
    echo "🧽 CLEANING..."
    rm -rf /tmp/* 2>/dev/null
    rm -rf ~/.cache/* 2>/dev/null
    echo "✅ Cleanup completed!"
    echo ""
    
    # After cleanup
    echo "📊 AFTER CLEANUP:"
    echo "  /tmp size:    $(du -sh /tmp 2>/dev/null || echo '0B')"
    echo "  Cache size:   $(du -sh ~/.cache 2>/dev/null || echo '0B')"
    
} | tee -a "$LOG_FILE"
```

## ❓ FAQ

### **Q: Will this break my system?**
**A:** No, but running applications might have issues. Run when few apps are active.

### **Q: How much space will I recover?**
**A:** Typically 500MB-5GB. Check with `du -sh /tmp ~/.cache` before running.

### **Q: Can I recover deleted files?**
**A:** No! Linux immediately reclaims the space. There's no "Recycle Bin".

### **Q: Is there a GUI alternative?**
**A:** Yes! Try `bleachbit`, `stacer`, or `sudo apt autoclean` for safer options.

### **Q: Should I run this on a server?**
**A:** Only during maintenance windows with proper backups. Use the "safe alternative" for servers.

## 🎯 When to Use

### ✅ **Good Times:**
- Before system backups
- During scheduled maintenance (2-5 AM)
- On CI/CD servers between builds
- When disk space is critically low (<5%)
- Before major system updates

### ❌ **Bad Times:**
- During business hours
- On production servers with active users
- When critical applications are running
- Without testing first
- Without backups

## 📝 License

```text
⚠️ DISCLAIMER: Use at your own risk!
This script is provided "AS IS" without warranty of any kind.
The author is not responsible for any data loss or system issues.

MIT License - You're free to use, modify, and distribute,
but please don't blame me if your system breaks! 😅
```

---

<div align="center">

## 🚀 Ready to Clean?

```bash
# One-liner to download and run (BE CAREFUL!)
curl -sL https://bit.ly/temp-cleaner | bash
```

![Final](https://svg-banners.vercel.app/api?type=rainbow&text1=Remember%3A%20With%20Great%20Power%20Comes%20Great%20Responsibility&text2=Backup%20First%20%7C%20Test%20First%20%7C%20Schedule%20Wisely&width=1200&height=150)

**⭐ Star this project if it saved your disk space! ⭐**

**Happy Cleaning! 🧹✨**

</div>

---

## 🔗 Quick Reference

### **Common Commands:**
```bash
# Check temp file sizes
du -sh /tmp ~/.cache

# Count temp files
find /tmp ~/.cache -type f 2>/dev/null | wc -l

# Safer alternatives
sudo apt autoclean          # Clean package cache
sudo apt autoremove         # Remove unused packages
sudo journalctl --vacuum-time=3d  # Clean old logs
```

### **Recovery Commands:**
```bash
# Check disk space before/after
df -h /

# Monitor cleanup logs
tail -f /var/log/temp_clean.log

# Check system status after cleanup
uptime
free -h
```

---

<div align="center">

**Made with ❤️ for Linux Admins who hate clutter**

**Remember: A clean system is a happy system!**

</div>
