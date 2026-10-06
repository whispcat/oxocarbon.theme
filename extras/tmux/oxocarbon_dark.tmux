#!/usr/bin/env bash

# Oxocarbon colors for Tmux

set -g mode-style "fg=#78a9ff,bg=#393939"

set -g message-style "fg=#78a9ff,bg=#393939"
set -g message-command-style "fg=#78a9ff,bg=#393939"

set -g pane-border-style "fg=#393939"
set -g pane-active-border-style "fg=#78a9ff"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#78a9ff,bg=#262626"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#262626,bg=#78a9ff,bold] #S #[fg=#78a9ff,bg=#262626,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#262626,bg=#262626,nobold,nounderscore,noitalics]#[fg=#78a9ff,bg=#262626] #{prefix_highlight} #[fg=#393939,bg=#262626,nobold,nounderscore,noitalics]#[fg=#78a9ff,bg=#393939] %Y-%m-%d  %I:%M %p #[fg=#78a9ff,bg=#393939,nobold,nounderscore,noitalics]#[fg=#262626,bg=#78a9ff,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#262626,bg=#262626,nobold,nounderscore,noitalics]#[fg=#78a9ff,bg=#262626] #{prefix_highlight} #[fg=#393939,bg=#262626,nobold,nounderscore,noitalics]#[fg=#78a9ff,bg=#393939] %Y-%m-%d  %H:%M #[fg=#78a9ff,bg=#393939,nobold,nounderscore,noitalics]#[fg=#262626,bg=#78a9ff,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#d0d0d0,bg=#262626"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#d0d0d0,bg=#262626"
setw -g window-status-format "#[fg=#262626,bg=#262626,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#262626,bg=#262626,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#262626,bg=#393939,nobold,nounderscore,noitalics]#[fg=#78a9ff,bg=#393939,bold] #I  #W #F #[fg=#393939,bg=#262626,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#42be65]#[bg=#262626]#[fg=#262626]#[bg=#42be65]"
set -g @prefix_highlight_output_suffix ""
