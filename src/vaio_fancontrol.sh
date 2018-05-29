#!/bin/bash

echo "performance" | tee /sys/devices/platform/sony-laptop/thermal_control
echo "80" | tee /sys/devices/platform/sony-laptop/battery_care_limiter
