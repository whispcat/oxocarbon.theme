#!/usr/bin/env bash

# Oxocarbon colors for Tmux

set -g mode-style "fg=#0f62fe,bg=#d0d0d0"

set -g message-style "fg=#0f62fe,bg=#d0d0d0"
set -g message-command-style "fg=#0f62fe,bg=#d0d0d0"

set -g pane-border-style "fg=#d0d0d0"
set -g pane-active-border-style "fg=#0f62fe"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#0f62fe,bg=#f2f2f2"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#f2f2f2,bg=#0f62fe,bold] #S #[fg=#0f62fe,bg=#f2f2f2,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#f2f2f2,bg=#f2f2f2,nobold,nounderscore,noitalics]#[fg=#0f62fe,bg=#f2f2f2] #{prefix_highlight} #[fg=#d0d0d0,bg=#f2f2f2,nobold,nounderscore,noitalics]#[fg=#0f62fe,bg=#d0d0d0] %Y-%m-%d  %I:%M %p #[fg=#0f62fe,bg=#d0d0d0,nobold,nounderscore,noitalics]#[fg=#f2f2f2,bg=#0f62fe,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#f2f2f2,bg=#f2f2f2,nobold,nounderscore,noitalics]#[fg=#0f62fe,bg=#f2f2f2] #{prefix_highlight} #[fg=#d0d0d0,bg=#f2f2f2,nobold,nounderscore,noitalics]#[fg=#0f62fe,bg=#d0d0d0] %Y-%m-%d  %H:%M #[fg=#0f62fe,bg=#d0d0d0,nobold,nounderscore,noitalics]#[fg=#f2f2f2,bg=#0f62fe,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#37474f,bg=#f2f2f2"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#37474f,bg=#f2f2f2"
setw -g window-status-format "#[fg=#f2f2f2,bg=#f2f2f2,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#f2f2f2,bg=#f2f2f2,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#f2f2f2,bg=#d0d0d0,nobold,nounderscore,noitalics]#[fg=#0f62fe,bg=#d0d0d0,bold] #I  #W #F #[fg=#d0d0d0,bg=#f2f2f2,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#ff6f00]#[bg=#f2f2f2]#[fg=#f2f2f2]#[bg=#ff6f00]"
set -g @prefix_highlight_output_suffix ""
