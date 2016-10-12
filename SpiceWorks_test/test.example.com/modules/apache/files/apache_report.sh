#!/bin/bash

# This script reports on events/users in a given Apache log file

count_users ()
{
    awk -F' ' '{print$2}' /var/log/apache2/access.log | uniq -u > /var/log/apache2/count_users.log
}

print_events ()
{
    cut -d' ' -f3- /var/log/apache2/access.log | uniq -u > /var/log/apache2/count_users.log
}

count_users
print_events
