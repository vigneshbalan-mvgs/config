#!/bin/bash

set -e

SESSION_NAME="my_session"

# Check if session already exists
if ! tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    # Start a new tmux session if it doesn't exist
    tmux new-session -d -s "$SESSION_NAME"

    # Customize window names and setup panes
    tmux rename-window -t "$SESSION_NAME:0" 'Editor'
    tmux new-window -t "$SESSION_NAME:" -n 'Terminal'
    tmux send-keys -t "$SESSION_NAME:0" 'vim' Enter
    tmux send-keys -t "$SESSION_NAME:1" 'cd ~/Documents' Enter
fi

# Attach to the tmux session
tmux attach-session -t "$SESSION_NAME"

