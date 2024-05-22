#!/bin/bash

# Get the current power profile
current_profile=$(powerprofilesctl get)

# Set the icon based on the power profile
case "$current_profile" in
    "performance")
        icon=""  # Performance icon
        ;;
    "balanced")
        icon=""  # Balanced icon
        ;;
    "power-saver")
        icon=""  # PowerSaver icon
        ;;
    *)
        icon=""  # Default icon (Cancel or unknown)
        ;;
esac

echo "$icon"

