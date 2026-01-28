# 🚀 Aspiring Cloud & DevOps Engineer - Bash Scripting Repository

<h1 align="center" style="font-weight:bold;">
  ☁️ Cloud & DevOps Learning Journey | Bash Automation Hub
</h1>

<div align="center">
  <img src="https://svg-banners.vercel.app/api?type=glitch&text1=Aspiring%20CloudOps%20%26%20DevOps%20Engineer&text2=Learning%20in%20Public%20-%20Hands%20on%20Automation&width=1200&height=400" alt="DevOps Banner">
</div>

<div align="center">
  <br />
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" alt="Linux">
  <img src="https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash">
  <img src="https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white" alt="AWS">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker">
  <img src="https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white" alt="Kubernetes">
  <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git">
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  <img src="https://img.shields.io/badge/GitLab_CI-E24329?style=for-the-badge&logo=gitlab&logoColor=white" alt="GitLab CI">
  <img src="https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=prometheus&logoColor=white" alt="Prometheus">
  <img src="https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white" alt="Grafana">
</div>

---

## 👋 About Me & This Repository

**Hello! I'm Jeyamurugan Nadar** - an **Aspiring Cloud & DevOps Engineer** currently transitioning from PHP-MySQL development background into Cloud Infrastructure and Automation. I'm documenting my "Learning in Public" journey through hands-on scripts.

### 🎯 My Learning Goals
I'm actively learning and building projects in:
- **☁️ AWS Cloud Services** (EC2, S3, IAM, VPC, CloudFormation)
- **🐧 Linux System Administration & Bash Scripting**
- **🐳 Docker Containerization & Orchestration**
- **⚙️ Kubernetes Cluster Management**
- **🔄 CI/CD Pipelines** (GitLab CI, GitHub Actions, Jenkins)
- **📊 Monitoring & Observability** (Prometheus, Grafana, CloudWatch)
- **📝 Git, GitHub & GitLab** workflows
- **🤖 Infrastructure as Code & Automation**

**This repository** is my **hands-on learning lab** where I create practical Bash scripts as I master each technology. Each folder represents a new skill I'm acquiring.

---

## 📁 Repository Structure - My Learning Progress

```
bash-scripting/
│
├── 📂 backups/                           # ✅ CURRENTLY ACTIVE - First Project
│   ├── backup_with_rotation.sh          # My first production-grade script
│   ├── README.md                        # Detailed documentation
│   └── cron_examples.txt               # Scheduling examples
│
├── 📂 aws/                              # ⏳ Coming Soon - AWS Automation
│   └── (AWS CLI scripts for EC2, S3, IAM, CloudWatch)
│
├── 📂 docker/                           # ⏳ Coming Soon - Docker Automation
│   └── (Container management, image building, Docker Compose)
│
├── 📂 kubernetes/                       # ⏳ Coming Soon - K8s Automation
│   └── (Pod management, deployments, cluster operations)
│
├── 📂 monitoring/                       # ⏳ Coming Soon - Monitoring Scripts
│   └── (Prometheus metrics, Grafana dashboards, alerting)
│
├── 📂 ci-cd/                            # ⏳ Coming Soon - CI/CD Automation
│   └── (GitLab CI, Jenkins, GitHub Actions scripts)
│
└── 📂 linux-system-admin/               # ⏳ Coming Soon - Linux Admin
    └── (User management, security, updates, log analysis)
```

**Note:** Currently focused on **Phase 1: Bash Mastery**. I've started with backup automation and will add scripts for each technology as I progress through my learning roadmap.

---

## 🎯 Current Learning Focus & Timeline

### ✅ **Currently Working On: Phase 1 - Bash Foundations**
- 🔄 **Backup & Rotation Automation** (Completed first script ✓)
- 📚 **Advanced Bash Scripting** patterns and best practices
- 🐧 **Linux System Administration** core tasks
- ⏰ **Cron Job Scheduling** and automation

### 📅 **Learning Roadmap:**

| Phase | Technology | Status | Planned Scripts |
|-------|------------|--------|-----------------|
| **1** | **Bash & Linux** | ✅ Active | Backup scripts, system monitoring, log analysis |
| **2** | **AWS Cloud** | ⏳ Coming Soon | EC2 management, S3 backups, IAM user automation |
| **3** | **Docker** | ⏳ Coming Soon | Container cleanup, image management, Docker helpers |
| **4** | **Kubernetes** | ⏳ Coming Soon | Pod management, resource monitoring, K8s operations |
| **5** | **CI/CD** | ⏳ Coming Soon | GitLab CI pipelines, Jenkins automation, deployment |
| **6** | **Monitoring** | ⏳ Coming Soon | Prometheus exporters, Grafana dashboards, alerts |

---

## 🚀 Featured Project: Backup with Rotation

### 📁 `backups/backup_with_rotation.sh`

**🎯 What This Script Does:**
- Creates timestamped `.zip` backups of any directory
- Automatically rotates old backups (keeps last 3 by default)
- Includes comprehensive error handling
- Ready for cron job scheduling
- Production-grade with clean logging

**🛠️ Technologies Demonstrated:**
- ✅ Bash scripting fundamentals
- ✅ File system operations
- ✅ Date/time manipulation
- ✅ Conditional logic and loops
- ✅ Function definitions
- ✅ Exit codes and error handling

**📋 Usage:**
```bash
cd backups
chmod +x backup_with_rotation.sh
./backup_with_rotation.sh /path/to/your/directory
```

**⏰ Cron Automation Example:**
```bash
# Daily backup at 2 AM
0 2 * * * /path/to/backup_with_rotation.sh /var/www/html >> /var/log/backup.log 2>&1
```

---

## 🛠️ My Tech Stack & Learning Resources

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original.svg" width="60" height="60" alt="AWS"/>
        <br><strong>AWS Cloud</strong>
        <br>EC2, S3, IAM, VPC
      </td>
      <td align="center">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/bash/bash-original.svg" width="60" height="60" alt="Bash"/>
        <br><strong>Bash Scripting</strong>
        <br>Automation & CLI
      </td>
      <td align="center">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="60" height="60" alt="Docker"/>
        <br><strong>Docker</strong>
        <br>Containerization
      </td>
      <td align="center">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kubernetes/kubernetes-plain.svg" width="60" height="60" alt="Kubernetes"/>
        <br><strong>Kubernetes</strong>
        <br>Orchestration
      </td>
    </tr>
    <tr>
      <td align="center">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/gitlab/gitlab-original.svg" width="60" height="60" alt="GitLab"/>
        <br><strong>GitLab CI/CD</strong>
        <br>Pipelines
      </td>
      <td align="center">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/prometheus/prometheus-original.svg" width="60" height="60" alt="Prometheus"/>
        <br><strong>Prometheus</strong>
        <br>Monitoring
      </td>
      <td align="center">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/grafana/grafana-original.svg" width="60" height="60" alt="Grafana"/>
        <br><strong>Grafana</strong>
        <br>Visualization
      </td>
      <td align="center">
        <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" width="60" height="60" alt="Linux"/>
        <br><strong>Linux</strong>
        <br>System Admin
      </td>
    </tr>
  </table>
</div>

### 📚 Learning Resources I'm Using:
- **AWS Skill Builder** - Cloud fundamentals & certification prep
- **KodeKloud** - Hands-on Docker & Kubernetes labs
- **Linux Academy** - Bash scripting & system administration
- **GitLab Documentation** - CI/CD pipeline creation
- **Prometheus & Grafana** - Official documentation & tutorials
- **YouTube** - TechWorld with Nana, FreeCodeCamp, DevOps Journey

---

## 📈 My Learning Journey Timeline

```mermaid
timeline
    title My DevOps Learning Path
    section Phase 1 : Bash & Linux
        Q1 2024 : Bash Basics
        Q1 2024 : Linux System Admin
        Q1 2024 : Backup Automation
        Q2 2024 : Advanced Scripting
    section Phase 2 : Cloud & Containers
        Q2 2024 : AWS Fundamentals
        Q2 2024 : Docker Essentials
        Q3 2024 : Kubernetes Basics
        Q3 2024 : Cloud Automation
    section Phase 3 : DevOps Practices
        Q3 2024 : CI/CD Pipelines
        Q4 2024 : Monitoring Stack
        Q4 2024 : Infrastructure as Code
        Q4 2024 : Project Portfolio
```

---

## 🤝 How to Navigate This Repository

1. **Start with `backups/`** - My first complete project with detailed documentation
2. **Check commit history** - See my coding progress and learning milestones
3. **Each new folder** = A new technology I'm mastering
4. **Script comments** - Explain what I learned and why certain approaches were used
5. **README files** - Contain usage instructions and learning notes

---

## 💡 Why I'm Learning in Public

This repository serves as my **public learning journal** where I:
- **📝 Document** my DevOps learning journey from beginner to professional
- **🔧 Build** practical, reusable scripts that solve real problems
- **🎯 Create** portfolio projects for job applications and interviews
- **🤝 Share** knowledge with fellow aspiring DevOps engineers
- **📚 Track** my progress and celebrate learning milestones
- **💼 Demonstrate** hands-on skills to potential employers

---

## 🎓 For Fellow Aspiring DevOps Engineers

If you're also on this journey, here's my approach:
1. **Start small** - Master one technology at a time
2. **Build projects** - Create working scripts, not just tutorials
3. **Document everything** - Write READMEs and explain your code
4. **Share publicly** - GitHub is your DevOps portfolio
5. **Stay consistent** - Regular practice beats intensive cramming
6. **Connect with community** - Learn from others, share your wins

---

## 📞 Connect & Collaborate

**Jeyamurugan Nadar**  
*Aspiring Cloud & DevOps Engineer*  
*Transitioning from Web Development to Cloud Infrastructure*

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

I'm actively looking for:
- **👥 Mentorship** from experienced DevOps professionals
- **🤝 Collaboration** on open-source DevOps projects
- **💼 Opportunities** for internships or junior DevOps roles
- **📚 Study buddies** for AWS/Docker/K8s certifications

---

<div align="center">

## ⭐ Support My Journey

**"The journey of a thousand miles begins with a single script."**

If you find my learning journey helpful or inspiring, please give this repository a **star** ⭐!  
It motivates me to keep learning and sharing.

![Footer Banner](https://svg-banners.vercel.app/api?type=rainbow&text1=Learning%20→%20Building%20→%20Sharing&text2=From%20Beginner%20to%20DevOps%20Engineer&width=1200&height=150)

**Follow along as I progress from Bash basics to full-stack DevOps automation!**

</div>

---

**Last Updated:** March 2024 | **Current Focus:** Bash Scripting & Linux Automation  
**Next Milestone:** AWS CLI Automation Scripts
