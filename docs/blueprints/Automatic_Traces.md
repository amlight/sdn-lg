# Automated trace paths with alarms

The goals of automating traces are:

* detect changes in circuits;

* compare real paths with paths that should be followed based on flows installed.

To achieve these goals, the application needs to:

* receive a list of circuits installed;

* receive a list of VIP circuits;

* run traces in control plane for all circuits every *n* seconds and alarm if the
  packages does not arrive in the desired location or if the path changed from previous run;

* run traces in data plane for VIP circuits every *m* seconds and alarm if the package
  does not arrive in the desired location or if the path is different from the one obtained
  in control plane trace.

## Background

It is necessary to use some kind of scheduler to run the tasks. There are some options for this:

* use system’s crontab (tasks would have to run as processes, possibly not a good idea);

* use some existing python library;

* write our own scheduler;

* wait for Kytos scheduler.

Suggestion: use some existing python library; I have tested `APScheduler` and it seems to do the
job quite well.
