#!/bin/bash

# Path to save the tmux session state
TMUX_SESSION_FILE="$HOME/.config/tmux/.tmux_session"

# Dump the tmux session state to the file
tmux list-sessions -F "#{session_name} #{window_index} #{window_name} #{pane_current_path}" > "$TMUX_SESSION_FILE"

