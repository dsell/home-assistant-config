curl -X POST "http://192.168.1.107:12101/api/text-to-speech" -H  "accept: text/plain" -H  "Content-Type: text/plain" -d  "Checking configuration"
hassio homeassistant check
if [ $@ != "ok" ] ; then
curl -X POST "http://192.168.1.107:12101/api/text-to-speech" -H  "accept: text/plain" -H  "Content-Type: text/plain" -d  "Configuration Error detected.  Restart aborted."
else
curl -X POST "http://192.168.1.107:12101/api/text-to-speech" -H  "accept: text/plain" -H  "Content-Type: text/plain" -d  "Initiating ssytem restart."
hassio homeassistant restart
fi
