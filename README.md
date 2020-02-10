The StarOS commands in this script can be found in on-line manuals from Cisco, for example in [StarOS Release 21.4/N5.7](https://www.cisco.com/c/en/us/td/docs/wireless/asr_5000/21-4_N5-7/RCR/21-4-N5-7-Change-Reference/21-4-N5-7-Change-Reference_chapter_01000011.html)

The shell script is written to automate the collection of stats and KPIs logs with timestamp. The data collection is performed with desired number of iterations and sleep time in between the iterations.  This saves you from sitting in front of terminal, transmitting the commands and closing or renaming the logs for next iteration, 
during bulk traffic from simulation tools like Landslide, Ixia, Aero flex etc.

This also allows you to perform desired filtering with Linux commands, once the information is collected from StarOS but prior to 
appending or creating the logs on Linux Jump Server.

The logs are saved with Jump Server time as StarOS timestamp may get removed after desired filtering.
