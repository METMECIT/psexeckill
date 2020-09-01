# psexeckill

Many malicious actors use psexec to install malware.

Scans for running psexec process every five seconds (this could be changed to one second), sends email to alert IT department it is running, and then kills any running cmd and psexec processes. 

How to use

Add to every windows device.

1. add PS.ps1 to C:\scripts (or adjust folder name in both files then save there)
2. Import PS.xml to task scheduler in a random folder.
