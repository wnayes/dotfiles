#!/bin/bash

healthy='#859900'
low='#B58900'
discharge='#DC322F'

capacity=( $(</sys/class/power_supply/BAT0/capacity) )
if (($capacity <= 25));
then
  capacityColor=$low
else
  capacityColor=$healthy
fi

status=( $(</sys/class/power_supply/BAT0/status) )
if [[ "$status" = "Discharging" ]]
then
  statusColor=$discharge
  status="D"
else
  statusColor=$healthy
  status="U"
fi

echo "<span foreground='$capacityColor'>$capacity%</span> <span foreground='$statusColor'>$status</span>"

