# Application-Log_Backup_Script
A robust bash script to automatically backup, compress and delete old log files to manage storage effectively.

## Features
1. Automated Compressiion
2. Date based naming format
3. Source Clean-Up
4. Backup Pruning based on the creation date
5. Error handling: (To be implemented)

## Pre-requisite
1. Operating system: Linux (Tested on CentOS-Stream 10)
2. Utilities: tar, rm, find, date (These utilities are pre installed on almost all linux distributions)

## Installation
1. Clone repository
   ``` git clone https://github.com/Ruwanc/Application-Log_Backup_Script.git ```  
   ``` cd Application-Log_Backup_Script ```

3. Update the paths, backup pruning period
   Can use eny text editor which you prefered most. vi, vim, nano, etc.

5. Make script executable   
   ```bash chmod u+x application_log_backup.sh ```

## Usage
### Manually run the script
From the directory where the script resides, execute this command.  
```bash ./application_log_backup.sh ```

### Run using a cronjob.  
```bash crontab -e ```  
```bash 0 0 * * 6 /path/to/your_script/application_log_backup.sh ```
