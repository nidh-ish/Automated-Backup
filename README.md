# Automated-Backup
Automated file backup in Linux using Crontab Scheduler.

- There are two files: backup.sh and delete\_backup.sh
- backup.sh backup's folders/files into a backup folder
- delete\_backup.sh deletes backup files after a certain period of time(to be specified by the user).

Using Crontab Scheduler

- Run the following command:
    ```crontab -e```
- Chose your favuorite editor.
- Now add these two lines at the end of the file:
    ```0 12 * * * p1
       0 12 * * * p2 ```
Here, p1 is the path of the file backup.sh and p2 is the path of the file delete\_backup.sh
Here, `0 12 * * *` stands for 0 Minute-12 Hour-Every day-Every month-Every day of the week.
