# SpiceWorks_test

Here is a link to my mock Puppet files/configs including apache_report.sh which generates reports for questions 1 and 2. I was honestly stumped on 3 and how I would script out something like that, however my usual path for metrics at that level would be either to install NewRelic or an ELK stack to watch the error log for key elements and use that platform for data analysis. Here is the original requirements list:

Write a simple Puppet module to install Apache from a package, configure a virtual host, and ensure the service is always running and starts up on boot. The virtual host should be for a site called test.example.com, which should contain a single 'index.html' of your choosing. Requests for test.example.com/test should redirect to test.example.com/index.html.
  
You have a log file containing 3 space-delimited columns: a datetime, a username, and a string representing an event.  All lines always have all 3 of the columns.  The datetimes span several days, are strictly in order, and are formatted as YYYY-MM-DDTHH:mm:ss, e.g. 2016-01-31T14:23:50.   The usernames which do not contain whitespace.  Events are strings with whitespace and may or may not be repeated among users.

Using a programming language of your choosing, write tools that perform each of the following tasks:
Efficiently print all users mentioned in the log.
Efficiently print each event in the log exactly once regardless of timestamp or associated user.
For each day (defined as midnight to midnight) and for each user, print the number of times each event occurred for each user.
