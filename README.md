Description
===========

Installs and configures x11vnc for virtual/remote desktop shared access using ssvnc or bVNC in AutoX mode.

Usage
=====

Since this cookbook is designed to be used on a shared system, it does not assume users can run /bin/su.

There is nothing to customize at the moment, however, there are a few prerequisites.

1) The following directive must be present in your /etc/sudoers config file:

<blockquote>
#includedir /etc/sudoers.d
</blockquote>


2) The path /usr/local/bin must appear first in the path of your users for added security. If it does, a wrapper
for x11vnc installed in /usr/local/bin by this cookbook ensures that users are queried for their UNIX
credentials by x11vnc upon connection. This avoids a graphical session hijack attack possibility using a race
condition (an attacker may try to connect to x11vnc before your VNC client (ssvnc or bVNC) has had a chance
to parse x11vnc's output for the PORT and connect to it.

Things will still work without this, but on a large shared system, it is not advisable.


3) Group nogroup must be present on the system to avoid the need to run /bin/su with a sudoers trick.
