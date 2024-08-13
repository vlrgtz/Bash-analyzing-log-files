# Bash-analyzing-log-files
Script investigating suspicious login attempts in main server through analyzing authentication logs stored in server.
Full assignment description: You are a Junior Security Analyst at Chase Bank, responsible for monitoring the bank's digital security infrastructure. Recently, you and your team have noticed an increase in suspicious login attempts on the main server. These incidents could indicate potential unauthorized access or brute-force attacks targeting customer accounts.

As part of the cybersecurity team, your task is to investigate these incidents by analyzing the authentication logs stored on the server. The log file (/var/log/auth_log.log) records all login attempts, and your job is to identify any entries that indicate suspicious login attempts.

Instructions: Run the script provided to create a auth_log file you will analyze. Develop a Bash script to analyze auth_log.logs. Your script should read through each line of the log file, searching for each keyword, which indicates potentially suspicious login attempts. if the line contains this keyword, write the line to a new file called suspicious_activity.log. This file will store all the entries that match the criteria. Automate the script to run daily.

Notes: 
study the script being copied into the shell script that creates the log
key words I identified to search "Failed password", "invalid user", "authentication failure", "error"

Using "IFS= read -r" so the script ensures that each line from the auth_log file is read and processed exactly as it appears, including any spaces or special characters. This is  important for log files!
while loop will read the auth_log.log line by line
for loop (inner) will set the condition that will check for the specified keywords identified above, and add to the output file that will hold all the failed login occurences


Command history
#Create the auth_log file using the provided script.

ubuntu@ip-172-31-94-73:~$ sudo nano auth_log_creation.sh - create and open the file where the script will exist
#copied pasted the content from the script provided from Kevin's Github repo, exited and saved.
ubuntu@ip-172-31-94-73:~$ chmod +x auth_log_creation.sh - make the script executable
chmod: changing permissions of 'auth_log_creation.sh': Operation not permitted
ubuntu@ip-172-31-94-73:~$ sudo chmod +x auth_log_creation.sh
ubuntu@ip-172-31-94-73:~$ sudo ./auth_log_creation.sh - command to run the script
Log file created at /var/log/auth_log.log

#Develop the Bash script to analyze the auth_log.


#Schedule the Bash script to run daily using cron.
