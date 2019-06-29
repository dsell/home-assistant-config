#!/bin/bash

curl -X POST "http://192.168.1.107:12101/api/text-to-speech" -H  "accept: text/plain" -H  "Content-Type: text/plain" -d  "Checking configuration"
/usr/bin/hassio homeassistant check
if [ $? -ne "0" ] ; then
   curl -X POST "http://192.168.1.107:12101/api/text-to-speech" -H  "accept: text/plain" -H  "Content-Type: text/plain" -d  "Configuration Error detected.  Restart aborted."
else
   curl -X POST "http://192.168.1.107:12101/api/text-to-speech" -H  "accept: text/plain" -H  "Content-Type: text/plain" -d  "Configuration acceptable.  Performing system restart."
   /usr/bin/hassio homeassistant restart
fi
