The StarOS commands in this script can be found in on-line manuals from Cisco, for example in StarOS Release 21.4/N5.7
The shell script was written to automate the collection of stats and KPIs and save them in logs with timestamp. The data collection
is performed with desired number of iterations and sleep time between the iterations
This saves you from sitting in front of terminal, transmitting the commands and closing or renaming the logs for next iteration 
during bulk traffic from simulation tools like Landslide, Ixia, Aero flex etc.
This also allows you to perform desired filtering with Linux commands, once the information is collected from StarOS but prior to 
appending or creating the logs on Linux Jump Server.
The logs are saved with Jump Server time as timestamp may get removed from StarOS data after desired filtering.