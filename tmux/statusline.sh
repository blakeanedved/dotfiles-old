#!/bin/bash

# {{{ variables 
	session_icon="${TMUX_SESSION_ICON:-}"
	user_icon="${TMUX_USER_ICON:-}"
	time_icon="${TMUX_TIME_ICON:-}"
	date_icon="${TMUX_DATE_ICON:-}"
	cpu_icon="${TMUX_CPU_ICON:-}"

	theme_color="${TMUX_THEME_COLOR:-#87ceeb}"
	pane_color="${TMUX_PANE_COLOR:-colour238}"
	BG="${TMUX_BG_COLOR:-colour235}"
	FG="${TMUX_FG_COLOR:-colour241}"
	prefix_highlight_color="${TMUX_PREFIX_HIGHLIGHT_COLOR:-#e06c75}"
	bg2="${TMUX_BG2_COLOR:-colour237}"
	bg3="${TMUX_BG3_COLOR:-colour236}"
	fg1="$BG"
	bg1="$theme_color"
	fg2="$theme_color"
	fg3="$theme_color"

	user=$(whoami)
# }}}
# {{{ settings 
	tmux_set () {
		tmux set-option -gq "$1" "$2"
	}

	tmux_set @batt_icon_charge_tier8 ""
	tmux_set @batt_icon_charge_tier7 ""
	tmux_set @batt_icon_charge_tier6 ""
	tmux_set @batt_icon_charge_tier5 ""
	tmux_set @batt_icon_charge_tier4 ""
	tmux_set @batt_icon_charge_tier3 ""
	tmux_set @batt_icon_charge_tier2 ""
	tmux_set @batt_icon_charge_tier1 ""

	tmux_set @prefix_highlight_fg "$BG"
	tmux_set @prefix_highlight_bg "$prefix_highlight_color"
	tmux_set @prefix_highlight_show_copy_mode "on"
	tmux_set @prefix_highlight_copy_mode_attr "fg=$prefix_highlight_color,bg=$BG,bold"
	tmux_set @prefix_highlight_output_prefix "#[fg=$prefix_highlight_color]#[bg=$BG]#[bg=$prefix_highlight_color]#[fg=$BG] "
	tmux_set @prefix_highlight_output_suffix " #[fg=$prefix_highlight_color]#[bg=$BG]"


	tmux_set status-position top
	tmux_set status on
	tmux_set status-interval 1

	tmux_set status-fg "$FG"
	tmux_set status-bg "$BG"
	tmux_set status-attr none

	tmux_set status-left-length 150
	tmux_set status-left "#[fg=$fg1,bg=$bg1,bold] $user_icon $user@#h #[fg=$bg1,bg=$bg2,nobold]#[fg=$fg2,bg=$bg2] $session_icon #S #[fg=$bg2,bg=$BG]#{prefix_highlight}"

	tmux_set status-right-length 150
	tmux_set status-right "#[fg=$bg3,bg=$BG]#[fg=$fg3,bg=$bg3]  #{cpu_percentage} #[fg=$bg2,bg=$bg3]#[fg=$fg2,bg=$bg2] #{battery_icon_charge}  #{battery_percentage} #[fg=$bg1,bg=$bg2]#[fg=$fg1,bg=$bg1] $time_icon %T "

	# Window status
	tmux_set window-status-format " #I:#W#F "
	tmux_set window-status-current-format "#[fg=$bg2,bg=$BG]#[fg=$theme_color,bg=$bg2,bold] #I:#W#F #[fg=$bg2,bg=$BG,nobold]"

	# Window separator
	tmux_set window-status-separator ""

	# Window status alignment
	tmux_set status-justify centre

	# Current window status
	tmux_set window-status-current-statys "fg=$theme_color bg=$BG"

	# Pane border
	tmux_set pane-border-style "fg=$pane_border bg=default"

	# Active pane border
	tmux_set pane-active-border-style "fg=$theme_color bg=$BG"

	# Pane number indicator
	tmux_set display-panes-colour "$pane_border"
	tmux_set display-panes-active-colour "$theme_color"

	# Clock mode
	tmux_set clock-mode-colour "$theme_color"
	tmux_set clock-mode-style 24

	# Message
	tmux_set message-style "fg=$theme_color bg=$BG"

	# Command message
	tmux_set message-command-style "fg=$theme_color bg=$BG"

	# Copy mode highlight
	tmux_set mode-style "bg=$theme_color fg=$BG"
# }}}
