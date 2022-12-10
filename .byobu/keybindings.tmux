# vim-like pane resizing  
bind -r C-k resize-pane -U 10
bind -r C-j resize-pane -D 10
bind -r C-h resize-pane -L 10
bind -r C-l resize-pane -R 10

# vim-like pane switching
bind -r k select-pane -U 
bind -r j select-pane -D 
bind -r h select-pane -L 
bind -r l select-pane -R 

# and now unbind keys
unbind Up     
unbind Down   
unbind Left   
unbind Right  

unbind C-Up   
unbind C-Down 
unbind C-Left 
unbind C-Right
unbind-key -n C-a
unbind-key -n C-w
unbind-key -n C-b
set -g prefix ^B
set -g prefix2 F12
bind b send-prefix
