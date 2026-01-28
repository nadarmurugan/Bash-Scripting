<h1 align="center" style="
  font-family: 'Segoe UI', 'Roboto', 'Arial', sans-serif;
  font-weight: 900;
  font-size: 48px;
  letter-spacing: 1px;
">
  🚀 Aspiring Cloud & DevOps Engineer – Bash Scripts
</h1>

<div align="center">
  <img src="https://svg-banners.vercel.app/api?type=glitch&text1=Bash%20Scripting%20&%20Automation&text2=Aspiring%20CloudOps%20Engineer&width=1200&height=400" alt="DevOps Banner">
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

## 🛠️ Current Project Status: **Phase 1 (Bash Mastery)**

I am currently focusing on core Linux automation. Each new script I learn will be categorized into its own folder.
This is looking very solid! It reads like a professional "DevOps Portfolio in Progress." I have refined the structure, added a more dynamic feel, and included those specific banners you wanted for the "Coming Soon" tech stack.

### 📂 Repository Structure
```bash
bash-scripting/
├── backup_with_rotations/   # ✅ CURRENTLY ACTIVE
│   ├── backup_with_rotation.sh
│   └── README.md
├── aws_automation/          # ⏳ Coming Soon... (EC2, S3, IAM)
├── monitoring_alerts/       # ⏳ Coming Soon... (Disk, CPU, Memory)
└── docker_utils/            # ⏳ Coming Soon... (Cleanup & Management)

```

---

## 🎯 Current Learning Focus & Timeline

I am currently a student building my skills in **CloudOps** and **DevOps**. I am following a structured path to master automation from the OS level up to the Cloud.

### ✅ **Active Focus: Phase 1 — Bash & Linux Foundations**

* 🔄 **Backup & Rotation Automation**: Mastering file-system management.
* 🐧 **Linux Admin**: User management, permissions, and process monitoring.
* ⏰ **Scheduling**: Using `crontab` for hands-off operational tasks.
* 🛡️ **Error Handling**: Writing robust scripts that don't fail in production.

---

### 📅 **The DevOps Growth Roadmap**

| Phase | Technology | Status | Key Scripts Planned |
| --- | --- | --- | --- |
| **1** | **Bash & Linux** | 🟢 Active | Backup scripts, log analysis, user audits |
| **2** | **AWS Cloud** | 🟡 Next Up | EC2 snapshots, S3 bucket syncing, IAM rotation |
| **3** | **Docker** | ⏳ Planned | Container cleanup, image pruning, Docker Compose helpers |
| **4** | **Kubernetes** | ⏳ Planned | K8s health checks, pod restarts, config audits |
| **5** | **CI/CD** | ⏳ Planned | GitLab CI/CD automation, GitHub Actions |
| **6** | **Monitoring** | ⏳ Planned | Prometheus metrics collection, Grafana alerts |

---



## 🚀 Featured Project: Backup with Rotation

### 📁 [Backup with Rotation Script]([https://github.com/nadarmurugan/Bash-Scripting/backups with rotations/])

This script solves a common real-world problem: **Disk space exhaustion due to unmanaged backups.**

**🎯 Core Functionality:**

* **Automated Compression:** Creates timestamped `.zip` archives of any source directory.
* **Smart Rotation:** Implements a retention policy (default: keeps last 3) to prevent storage overflow.
* **Validation:** Checks if the source directory exists before running to prevent errors.
* **Logging:** Provides clean, human-readable output for troubleshooting.

**🛠️ Skills Demonstrated:**

* ✅ Scripting Logic (Loops & Arrays)
* ✅ File System Operations
* ✅ Process Automation (Cron compatibility)
* ✅ Production-grade Error Handling

**📋 Quick Start:**

```bash
cd backup_with_rotations
chmod +x backup_with_rotation.sh
./backup_with_rotation.sh /var/www/html

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
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" width="60" height="60" alt="AWS"/>
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
---


## 🧠 Core DevOps & CloudOps Concepts I'm Mastering

I am focusing on mastering the fundamental pillars of DevOps to build a robust, production-ready skillset.


### <img src="[https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg](https://www.google.com/search?q=https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg)" width="30" height="30" /> **Linux & Scripting Foundations**

* **Automation:** Writing idempotent Bash scripts for repetitive operational tasks and scheduling via `Cron`.
* **Process Management:** Monitoring system resources (`top`, `htop`) and managing background services.
* **File System & Security:** Mastering Linux permissions, ownership, and SSH key-based authentication.
* **Networking:** Understanding the OSI model, CIDR notation, and managing firewalls with `iptables/ufw`.

### <img src="[https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original-wordmark.svg](https://www.google.com/search?q=https://cdn.jsdelivr.net/gh/devicons/devicon/icons/amazonwebservices/amazonwebservices-original-wordmark.svg)" width="35" height="35" /> **Cloud Infrastructure (AWS)**

* **Compute & Scaling:** Deploying EC2 instances with custom User Data and managing Auto-Scaling Groups.
* **Identity & Access (IAM):** Implementing the **Principle of Least Privilege** using Roles and Policies.
* **Storage:** Managing data persistence and lifecycle policies using S3, EBS, and EFS.
* **VPC Architecture:** Designing secure networks with Public/Private subnets, NAT Gateways, and Route Tables.

### <img src="[https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg](https://www.google.com/search?q=https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg)" width="30" height="30" /> <img src="[https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kubernetes/kubernetes-plain.svg](https://www.google.com/search?q=https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kubernetes/kubernetes-plain.svg)" width="30" height="30" /> **Containerization & Orchestration**

* **Docker:** Building optimized multi-stage `Dockerfiles` and managing image layers to reduce size.
* **Networking & Volumes:** Creating custom Docker networks and persistent data volumes for stateful apps.
* **Kubernetes:** Understanding Pod lifecycle, Deployments, Services, and Ingress.
* **GitOps:** Implementing declarative configuration management to maintain the "Desired State."

### <img src="[https://cdn.jsdelivr.net/gh/devicons/devicon/icons/gitlab/gitlab-original.svg](https://www.google.com/search?q=https://cdn.jsdelivr.net/gh/devicons/devicon/icons/gitlab/gitlab-original.svg)" width="30" height="30" /> <img src="[https://cdn.jsdelivr.net/gh/devicons/devicon/icons/prometheus/prometheus-original.svg](https://www.google.com/search?q=https://cdn.jsdelivr.net/gh/devicons/devicon/icons/prometheus/prometheus-original.svg)" width="30" height="30" /> <img src="[https://cdn.jsdelivr.net/gh/devicons/devicon/icons/grafana/grafana-original.svg](https://www.google.com/search?q=https://cdn.jsdelivr.net/gh/devicons/devicon/icons/grafana/grafana-original.svg)" width="30" height="30" /> **CI/CD & Observability**

* **Pipelines:** Automating Build-Test-Deploy cycles using GitLab CI and GitHub Actions.
* **Quality & Security:** Integrating **SonarQube** for code analysis and **Trivy** for vulnerability scanning.
* **Monitoring:** Collecting system/application metrics with Prometheus and building Grafana dashboards.
* **Alerting:** Setting up threshold-based alerts to detect and resolve issues quickly.

---








### 🐧 **Linux & Scripting Foundations**

* **Automation:** Writing idempotent Bash scripts for repetitive operational tasks and scheduling via `Cron`.
* **Process Management:** Monitoring system resources (`top`, `htop`) and managing background services.
* **File System & Security:** Mastering Linux permissions, ownership, and SSH key-based authentication.
* **Networking:** Understanding the OSI model, CIDR notation, and managing firewalls with `iptables/ufw`.

### ☁️ **Cloud Infrastructure (AWS)**

* **Compute & Scaling:** Deploying EC2 instances with custom User Data and managing Auto-Scaling Groups.
* **Identity & Access (IAM):** Implementing the **Principle of Least Privilege** using Roles and Policies.
* **Storage:** Managing data persistence and lifecycle policies using S3, EBS, and EFS.
* **VPC Architecture:** Designing secure networks with Public/Private subnets, NAT Gateways, and Route Tables.

### 🐳 **Containerization & Orchestration**

* **Docker:** Building optimized multi-stage `Dockerfiles` and managing image layers to reduce size.
* **Networking & Volumes:** Creating custom Docker networks and persistent data volumes for stateful apps.
* **Kubernetes:** Understanding Pod lifecycle, Deployments, Services (ClusterIP/NodePort), and Ingress.
* **GitOps:** Implementing declarative configuration management to maintain the "Desired State."

### 🔄 **CI/CD & Observability**

* **Pipelines:** Automating Build-Test-Deploy cycles using GitLab CI and GitHub Actions.
* **Quality & Security:** Integrating **SonarQube** for code analysis and **Trivy** for vulnerability scanning.
* **Monitoring:** Collecting system/application metrics with Prometheus and building Grafana dashboards.
* **Alerting:** Setting up threshold-based alerts to detect and resolve issues before they impact users.
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

