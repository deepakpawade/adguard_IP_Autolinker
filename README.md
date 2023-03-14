## Follow these steps:

1. Go to Device Settings from Adguard dashboard.
2. Scroll down and copy the link mentioned below "You can also programmatically update your linked IP address by calling:"
    It should lool like this : 

    https://linkip.adguard-dns.com/linkip/\<deviceid>/\<somerandom_alphanumeric_characterstring>
3. In autolink.bat, replace the aguard_IP_connect_link string with the above link
4. You can replace the browser name on the same line. Just go to the original install folder of the browser and look up what the .exe is called.
5. Search Task Scheduler in windows and open it.
6. Click on Task Scheduler Library and From Actions, choose Create Task
7. Give any relevant name for the task.
8. Select Run only when user is logged on.
9. Go to Triggers -> New, From "Begin the Task" drop down, select "At log on" and press OK
10. Go to Actions -> New, From Action select Start a program and browse autolink.bat file from browser button. Click OK
11. Click OK on the Create Task window. 
12. Check if you see the new task in Task Scheduler Library. If you can, then its done. The sript will run after every login.