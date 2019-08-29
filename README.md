Welcome to treehouses
=====================

What is treehouses?
-------------------

treehouses is the name of our system allowing us to share our different learning platforms via the Rasperry Pi series of single-board computer devices.

Currently the Raspberry Pi models supported are: the zero W, the Pi 3, the Pi 3B+ and the Pi 4


Main system branches
--------------------

treehouses is constructed of several parts:

### builder

This is where our different images intended for the Raspberry Pi are being built.

### remote

Currently in remote, we are developing an app for Android devices which interact with the terminal of the Raspberry Pi.

### cli

cli is a platform by which we are scripting the different commands to be entered in the Raspberry Pi terminal

### rpi-couchdb

In this part, we are attempting to use CouchDB through Docker in order to be able to use it on the Raspberry Pi.

CouchDB is a single-node database which can be improved into a clustered database allowing the user to run single logical database server on any number of servers or virtual machines. It is built for servers (i.e. Raspberry Pi).

Docker packages up code and all its dependencies with the purpose to run application quickly and reliably through computing environments.

