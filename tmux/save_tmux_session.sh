#!/bin/bash

# Path to save the tmux session state
TMUX_SESSION_FILE="$HOME/.config/tmux/.tmux_session"

# Dump the tmux session state to the file
tmux list-windows -a -F "#{window_active} #{window_layout} #{window_name} #{pane_current_path}" > "$TMUX_SESSION_FILE"

