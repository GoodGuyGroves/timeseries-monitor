## Timeseries Monitoring Tool


### Description

These tools will capture various metrics on a system and store the data as a timeseries. The scripts themselves shouldn't be doing all the work. It is intended that the sysadmin should choose which timeseries data to collect and add the corresponding script to a cronjob at the time interval that is required.

Bundled with this project are examples of how to visualise the collected data using GNUPlot. It is the hope that with this tool, sysadmins can eventually correlate error logs with this data to pinpoint issues.

These tools should also run extremely lightly on a system with no external dependencies (except for GNUPlot to visualise data) to not affect other running components or even show up on the radar of larger monitoring tools such as Nagios.


### Setup and Installation

* Download the whole project onto your target server
* Ensure all scripts are set to `chmod +x`
* Edit and run the `hiro-env` script to setup your environment
* Add the scripts you wish to use to your crontab


### Examples

Cron: */10 * * * * /opt/autopilot/timeseries-monitor/RAM/checkram >> /home/support/ramcheck.csv

Cron: */10 * * * * /opt/autopilot/timeseries-monitor/CPU/cpu_loadavg >> /home/support/cpu_loadavg.csv
