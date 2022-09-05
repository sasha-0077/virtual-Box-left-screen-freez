#! /bin/bash
kill -15 $(ps aux | grep "VBoxClient --draganddrop" | grep "Sl" | awk '{print $2;}')
/usr/bin/VBoxClient --draganddrop
