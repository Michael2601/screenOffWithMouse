# For run the programm 
1. Configured by notepad your device path in test.ps1
* See in device manager => device => properties => Details => Device instance path
2. Open bat file as administrator
3. Enter any character when screen On

# If screen locked when you run script
1. Open task manager as administrator
2. Open file option
3. Select "Run new task" option
4. Enter gpedit.msk and check "Create this task with administrative privileges" checkbox
5. Go to Administrative Templates => Control Panel => Personalization => Screen saver timeout
6. Check Enabled and set time in seconds.
7. Restart computer
