# 📊 Log Analysis & Report Generator (Shell Script)

A simple yet powerful **Bash-based log analysis tool** that parses system logs and generates a structured report including error counts, critical events, and top error messages.

This project is designed for **system administrators** to quickly analyze logs and troubleshoot issues.

---

## 🚀 Features

* ✅ Validate input log file
* 📈 Count total log lines
* ❌ Count total ERROR occurrences
* 🚨 Extract CRITICAL events with line numbers
* 🔝 Identify top 5 repeated ERROR messages
* 📝 Generate a timestamped report file
* ⚡ Lightweight and fast (uses native Linux tools)

---

## 🧰 Tech Stack

* **Bash (Shell Scripting)**
* Linux utilities:

  * `grep`
  * `awk`
  * `sort`
  * `uniq`
  * `wc`
  * `basename`

---

## 📁 Project Structure

```
log_gen_report/
│── log_anal.sh        # Core analysis functions
│── log_report.sh      # Main script to generate report
|── log_generator.sh   # script to generate systemlogs.log file 
|── serverlogs 
       │── systemlogs.log     # Input log file (example)
       │── log_report_<date>.txt  # Generated reports
```

---

## ⚙️ Prerequisites

* Linux / Unix environment
* Bash shell
* Basic command-line utilities installed

---

## ▶️ Usage

### 1. Clone the repository

```bash
git clone https://github.com/rohit5126/shellscript.git
cd shellscript/log_gen_report
```

### 2. Make scripts executable

```bash
chmod +x log_anal.sh
chmod +x log_report.sh
```

### 3. Run the log_generator.sh  and log_report.sh

```bash

./log_generator.sh /home/ubuntu/shellscript/log_gen_report/serverlogs/systemlogs.log 250

Log file created at: /home/ubuntu/shellscript/log_gen_report/serverlogs/systemlogs.log with 250 lines.

```

```bash

./log_report.sh /home/ubuntu/shellscript/log_gen_report/serverlogs/systemlogs.log /home/ubuntu/shellscript/log_gen_report/archive/

ubuntu@ip-172-31-16-15:~/shellscript/log_gen_report$ ./log_report.sh /home/ubuntu/shellscript/log_gen_report/serverlogs/systemlogs.log /home/ubuntu/shellscript/log_gen_report/archive/
 
 
file exists working on analysis ...... 
--------------------------------------------------------------------------------------
 

report generated successfully and file stored in /home/ubuntu/shellscript/log_gen_report/serverlogs/log_report_2026-06-10.txt
backup generated successfully and stored in /home/ubuntu/shellscript/log_gen_report/archive/
log file removed successfully as backup is created
```

## It can be setup as a CronJob


## 📊 Sample Output

```
 ____________________________LOG_REPORT________________________________
--------date : 2026-06-10---------
---------------file name is systemlogs.log ----------
------------ Number of lines in the file is 250 /home/ubuntu/shellscript/log_gen_report/serverlogs/systemlogs.log-------------
 Total count for error logs in the file is :  51
    
-------------------------------------------------------------------------------------
 ------------ Top 5 ERROR messages -------------
     14       Disk full
     11       Failed to connect
     10       Out of memory
      8       Segmentation fault
      8       Invalid input
---------------------------------------------------------------------------------------------------------------

 Total number of Critical events with line number is listed below: 
      
Lno. Date       Time      Event      ID
17:2026-06-10 07:51:38 - 11688 - [CRITICAL]  
19:2026-06-10 07:51:38 - 8676 - [CRITICAL]  
22:2026-06-10 07:51:38 - 18993 - [CRITICAL]  
25:2026-06-10 07:51:38 - 8251 - [CRITICAL]  
29:2026-06-10 07:51:38 - 25945 - [CRITICAL]  
38:2026-06-10 07:51:38 - 10533 - [CRITICAL]  
47:2026-06-10 07:51:38 - 1505 - [CRITICAL]  
48:2026-06-10 07:51:38 - 4548 - [CRITICAL]  
54:2026-06-10 07:51:38 - 32482 - [CRITICAL]  
60:2026-06-10 07:51:38 - 10449 - [CRITICAL]  
63:2026-06-10 07:51:38 - 5699 - [CRITICAL]  
70:2026-06-10 07:51:38 - 2536 - [CRITICAL]  
71:2026-06-10 07:51:38 - 20793 - [CRITICAL]  
83:2026-06-10 07:51:38 - 7511 - [CRITICAL]  
84:2026-06-10 07:51:38 - 24094 - [CRITICAL]  
86:2026-06-10 07:51:38 - 28291 - [CRITICAL]  
97:2026-06-10 07:51:38 - 7020 - [CRITICAL]  
99:2026-06-10 07:51:38 - 28992 - [CRITICAL]  
100:2026-06-10 07:51:38 - 3424 - [CRITICAL]  
109:2026-06-10 07:51:38 - 5071 - [CRITICAL]  
111:2026-06-10 07:51:38 - 20662 - [CRITICAL]  
121:2026-06-10 07:51:38 - 27757 - [CRITICAL]  
127:2026-06-10 07:51:38 - 7882 - [CRITICAL]  
136:2026-06-10 07:51:38 - 20692 - [CRITICAL]  
137:2026-06-10 07:51:38 - 3097 - [CRITICAL]  
140:2026-06-10 07:51:38 - 15642 - [CRITICAL]  
143:2026-06-10 07:51:38 - 29852 - [CRITICAL]  
159:2026-06-10 07:51:38 - 4373 - [CRITICAL]  
166:2026-06-10 07:51:38 - 5822 - [CRITICAL]  
167:2026-06-10 07:51:38 - 31723 - [CRITICAL]  
170:2026-06-10 07:51:38 - 23209 - [CRITICAL]  
171:2026-06-10 07:51:38 - 28474 - [CRITICAL]  
173:2026-06-10 07:51:38 - 23676 - [CRITICAL]  
187:2026-06-10 07:51:39 - 16545 - [CRITICAL]  
192:2026-06-10 07:51:39 - 14621 - [CRITICAL]  
202:2026-06-10 07:51:39 - 9106 - [CRITICAL]  
209:2026-06-10 07:51:39 - 9287 - [CRITICAL]  
215:2026-06-10 07:51:39 - 7762 - [CRITICAL]  
217:2026-06-10 07:51:39 - 6239 - [CRITICAL]  
218:2026-06-10 07:51:39 - 14401 - [CRITICAL]  
226:2026-06-10 07:51:39 - 9801 - [CRITICAL]  
229:2026-06-10 07:51:39 - 28310 - [CRITICAL]  
231:2026-06-10 07:51:39 - 25512 - [CRITICAL]  
233:2026-06-10 07:51:39 - 8668 - [CRITICAL]  
236:2026-06-10 07:51:39 - 31438 - [CRITICAL]  
237:2026-06-10 07:51:39 - 11618 - [CRITICAL]  
245:2026-06-10 07:51:39 - 25099 - [CRITICAL]  
246:2026-06-10 07:51:39 - 14924 - [CRITICAL]
```

## 🧠 How It Works

### 🔹 `log_anal.sh`

Contains reusable functions:

* `inputval()` → Validates file input
* `errorcount()` → Counts occurrences of ERROR logs
* `criticalevent()` → Lists CRITICAL events with line numbers
* `topmess()` → Extracts top repeated ERROR messages
* `archive()` → take compressed backup of the log report file.
* `delete_log()` → deletes log file so that next day a new log file can be generate.

### 🔹 `log_report.sh`

Main execution script:

* Imports functions using `source`
* Generates report file with current date
* Captures:

  * File name
  * Total lines
  * Error count
  * Top messages
  * Critical events
* Saves output to:

```
/home/ubuntu/serverlog/log_report_<date>.txt
```

* takes backup of the report in:

```
/home/ubuntu/shellscript/log_gen_report/archive/
```

* deletes the log file

## 👨‍💻 Author

**Rohit**
🔗 GitHub: https://github.com/rohit5126



## ⭐ Support

If you find this project helpful, give it a ⭐ on GitHub!

---
