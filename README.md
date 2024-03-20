# InstanceSpawn
#### An Instance Spawn Engine for Stand-alone Servers

![Main Page](https://raw.githubusercontent.com/gregorplop/InstanceSpawn/main/images/instancespawn.PNG)

### A library to launch and maintain a group of command line argument-configured server instances

+ Define command line arguments for each individual instance.
+ Typically, assign each server instance a different listen port.
+ Simultaneously launch the collection of instances as child processes.
+ Set automatic restarts of instances that terminate (crash?)
+ Get notified if an instance is down (run out of auto-restarts)
+ Get notified if all instances terminated.
+ Forcefully Terminate all instances.

### A harness application to demonstrate use of InstanceSpawn
+ A GUI application, built and tested on Windows 10 and Linux Debian 12.
+ Source code is the simple tutorial to integrate InstanceSpawn to your solution.
+ Tested with [DummyWebApp](https://github.com/gregorplop/DummyWebApp)

### Ideas for solutions based on InstanceSpawn
+ Service app that reads a configuration file and spawns server instances at system startup.
+ Mechanism inside each server instance that monitors its own memory usage and auto-terminates instance when above a threshold, knowing that InstanceSpawn will launch a new instance.
