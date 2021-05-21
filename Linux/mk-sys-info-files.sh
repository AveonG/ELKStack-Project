#!/bin/bash

# Make sure to execute file before running the script chmod +x ./(name of script).sh

#Create a new folder for each listed system data information in a backup directory
~/backup/{freemem,diskuse,openlist,freedisk}

#Prints and saves the information regarding free availbale memory on current system to a free memory text file
free -h > ~/backup/freemem/free_mem.txt

#Prints the disk usage output and saves it to a disk_usage text file
du -h > ~/backup/diskuse/disk_usage.txt

#Printing a report of all open files on the system and saves it to an open list text file
lsof > ~/backup/openlist/open_list.txt

#Prints and saves the free disk space information to a free disk text file
df -h > ~/backup/freedisk/free_disk.txt