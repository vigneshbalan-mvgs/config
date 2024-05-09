#!/bin/bash

# Path to the saved tmux session state file
TMUX_SESSION_FILE="$HOME/.config/tmux/.tmux_session"

# Check if the session file exists and is not empty
if [ -s "$TMUX_SESSION_FILE" ]; then
    # Read each line from the session file
    while IFS= read -r line; do
        # Extract session_name, window_index, window_name, and pane_current_path from each line
        session_name=$(echo "$line" | awk '{print $1}')
        window_index=$(echo "$line" | awk '{print $2}')
        window_name=$(echo "$line" | awk '{$1=$2=""; print $0}' | sed 's/^ *//')
        pane_current_path=$(echo "$line" | awk '{$1=$2=$3=""; print $0}' | sed 's/^ *//')

        # Create or switch to the specified session
        tmux has-session -t "$session_name" 2>/dev/null || tmux new-session -d -s "$session_name"

        # Create or select the specified window within the session
        tmux select-window -t "$session_name:$window_index" || tmux new-window -t "$session_name:$window_index" -n "$window_name"

        # Send a command to the pane in the window (e.g., change directory)
        tmux send-keys -t "$session_name:$window_index" "cd $pane_current_path" Enter
    done < "$TMUX_SESSION_FILE"
else
    echo "No saved tmux session state found."
fi

