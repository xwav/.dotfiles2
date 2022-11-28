#/bin/sh

status () { 

	echo -n "BAT: $(acpi | awk '{print $4}' | sed s/,//) | $(date '+%a %d-%m-%Y %H:%M')"
}

while :; do
	
	xsetroot -name "$(status)"
	sleep 60

done
