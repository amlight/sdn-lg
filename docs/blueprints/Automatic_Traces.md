# Automated trace paths with alarms

The goals of automating traces are:

* detect changes in circuits;

* compare real paths with paths that should be followed based on flows installed.

To achieve these goals, the application needs to:

* receive a list of circuits installed;

* receive a list of VIP circuits;

* run traces in control plane for all circuits every *n* seconds and alarm if 
  the packages does not arrive in the desired location or if the path changed
  from previous run;

* run traces in data plane for VIP circuits every *m* seconds and alarm if the
  package does not arrive in the desired location or if the path is different
  from the one obtained in control plane trace.

## Requisits

1. It is necessary to use some kind of scheduler to run the tasks. 
   There are some options for this:

   * use system’s crontab (tasks would have to run as processes, possibly not a
     good idea);

   * use some existing python library;

   * write our own scheduler;

   * wait for Kytos scheduler.

   * suggestion: use some existing python library. I tested `APScheduler`
   and it seems to do the job quite well.

2. How is the list of circuits received? That list needs to be stored somewhere
   (memory, database, file system?)

3. Interval between traces should be set in settings file.

4. How will the alarms work?
   * slack;
   * e-mail;
   * Zabbix?
