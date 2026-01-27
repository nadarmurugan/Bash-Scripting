# 📂 Automated Directory Backup & Rotation Script

<p align="center">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
  <img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white" />
  <img src="https://img.shields.io/badge/DevOps-2496ED?style=for-the-badge&logo=azure-devops&logoColor=white" />
  <img src="https://img.shields.io/badge/Open_Source-61DAFB?style=for-the-badge&logo=github&logoColor=black" />
</p>

---

## 📝 Overview

This **Bash script** is a lightweight DevOps utility designed to automate the process of backing up critical directories. It doesn't just copy files; it compresses them and manages storage lifecycle through a built-in rotation policy.



### 🚀 Key Features
* **Smart Compression:** Uses `zip` to archive directories, saving significant disk space.
* **Unique Timestamps:** Every backup is labeled with `YYYY-MM-DD_HH-MM-SS` to prevent naming conflicts.
* **Auto-Rotation (Retention):** Automatically keeps only the **last 3 backups**, deleting the oldest ones to prevent storage overflow.
* **Safety Checks:** Includes validation logic to ensure the provided source path is a valid directory.

---

## 🛠️ Requirements

* **OS:** Linux / Unix-based system.
* **Utility:** `zip` installed (Install via `sudo apt install zip` if missing).

---

## 🚀 How to Use

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
    cd your-repo-name
    ```

2.  **Grant Execution Permission:**
    ```bash
    chmod +x backup.sh
    ```

3.  **Execute the Backup:**
    ```bash
    ./backup.sh /path/to/source_directory
    ```

---

## ⚙️ The Script Logic

1.  **Input Check:** Verifies if a directory path was passed as an argument.
2.  **Creation:** Runs `zip -r` on the source folder and generates a `.zip` file.
3.  **Cleanup:** Scans the backup directory, counts the files, and removes the $n-3$ oldest files.

---

## 🤝 Connect with Me

<p align="left">
<a href="https://linkedin.com/in/yourusername" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="yourusername" height="30" width="40" /></a>
<a href="https://github.com/yourusername" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/github.svg" alt="yourusername" height="30" width="40" /></a>
</p>

---

*Made with ❤️ for the DevOps Community.*
