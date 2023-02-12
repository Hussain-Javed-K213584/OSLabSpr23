#! /bin/bash

# We will use mutt for mail transfer.

netstat > net_info.txt
cat net_info.txt
echo "Sending this info to k213584@nu.edu.pk"
sleep 2
echo "Mail sent" | mutt -s "Task_1 File" -a net_info.txt -- k213584@nu.edu.pk
