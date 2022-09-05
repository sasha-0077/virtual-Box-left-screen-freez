# virtual-Box-left-screen-freez
solution for the left half of  Linux desktop becomes unresponsive to left mouse button clicks. 
Left-mouse button clicks do continue to work on the right half portion of the screen. 
Actually, it is not the entire left-half portion of the screen that is affected; more like approximately the left two/fifths (left 40%) portion of the entire screen. 
The screen.sh file will fix this problem when it appears.
Credit: ToneDef (https://www.virtualbox.org/ticket/16296#comment:8)
////////////////////////////////////////////////////////////////////

searched for the offending process:

$ ps aux | grep "VBoxClient --draganddrop" | grep "Sl"

and killed it; the mouse pointer left-clicking functionality immediately returned:

$ kill -15 <the pid number>

or in one command:

$ kill -15 $(ps aux | grep "VBoxClient --draganddrop" | grep "Sl" | awk '{print $2;}')

I then manually restarted the process:

$ /usr/bin/VBoxClient --draganddrop
