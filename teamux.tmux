#!/usr/bin/env bash

#!/bin/bash

# Set default terminal
tmux set -g default-terminal "screen-256color"

# Set pane border style
tmux set -g pane-border-style fg='#fbfada'

# Set message and status styles
tmux set -g message-style bg='#436850',fg='#fbfada'
tmux set -g status-style bg='#436850',fg='#fbfada'
tmux set -g status-interval 1

# Set status-left
tmux set -g status-left "#[bg=#ADBC9F]#[fg=#12372A]#{?client_prefix,#[fg=#f3eeea],}  #[bg=#436850]#[fg=#ADBC9F]#[fg=#fbfada]  [#S] "
tmux set -g status-left-length 120

# Set window status
tmux setw -g window-status-style fg='#fbfada',bg=default
tmux setw -g window-status-current-style fg='#fbfada',bg='#12372A'

tmux setw -g window-status-current-format "#[fg=#436850]#[bg=#12372A] #[fg=#fbfada]#[bg=#12372A] [#I] #W #[fg=#12372A]#[bg=#436850]"
tmux setw -g window-status-format "#[fg=#436850]#[bg=#a3b493]#[fg=#12372A]#[bg=#a3b493] [#I] #W #[fg=#a3b493]#[bg=#436850]"
tmux setw -g window-status-separator ""

# Set status-right
tmux set -g status-right '#[fg=#2f4938,bg=#436850]#[bg=#2f4938] #(gitmux -cfg ./.gitmux.conf "#{pane_current_path}")'
tmux set -ga status-right '#[fg=#12372A,bg=#2f4938]#[fg=#fbfada,bg=#12372A] %I:%M %p'
