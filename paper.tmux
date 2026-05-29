#!/usr/bin/env bash

PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

get_tmux_option() {
  local option=$1
  local default_value=$2
  local option_value=$(tmux show-option -gqv "$option")
  if [ -z "$option_value" ]; then
    echo "$default_value"
  else
    echo "$option_value"
  fi
}

main() {
  local theme=$(get_tmux_option "@paper_theme" "light")

  if [[ "$theme" == "light" ]]; then
    tmux set-option -gq @paper_purple "#945c5c"
    tmux set-option -gq @paper_green "#6a8038"
    tmux set-option -gq @paper_orange "#a87018"
    tmux set-option -gq @paper_yellow "#9a6510"
    tmux set-option -gq @paper_blue "#5a7f94"
    tmux set-option -gq @paper_gray "#d8c8ae"
    tmux set-option -gq @paper_background "#faf6f0"
    tmux set-option -gq @paper_foreground "#4a3728"

    tmux set-option -gq @paper_wisp_running_fg "#faf6f0"
    tmux set-option -gq @paper_wisp_running_bg "#5a7f94"
    tmux set-option -gq @paper_wisp_paused_fg "#faf6f0"
    tmux set-option -gq @paper_wisp_paused_bg "#a87018"
    tmux set-option -gq @paper_wisp_completed_fg "#faf6f0"
    tmux set-option -gq @paper_wisp_completed_bg "#6a8038"
    tmux set-option -gq @paper_wisp_inactive_fg "#4a3728"
    tmux set-option -gq @paper_wisp_inactive_bg "#d8c8ae"
  else
    tmux set-option -gq @paper_purple "#b57a7a"
    tmux set-option -gq @paper_green "#8ca558"
    tmux set-option -gq @paper_orange "#d4923a"
    tmux set-option -gq @paper_yellow "#c47f2c"
    tmux set-option -gq @paper_blue "#5a7f94"
    tmux set-option -gq @paper_gray "#3d2d22"
    tmux set-option -gq @paper_background "#2a1f1a"
    tmux set-option -gq @paper_foreground "#e8dcc8"

    tmux set-option -gq @paper_wisp_running_fg "#2a1f1a"
    tmux set-option -gq @paper_wisp_running_bg "#5a7f94"
    tmux set-option -gq @paper_wisp_paused_fg "#2a1f1a"
    tmux set-option -gq @paper_wisp_paused_bg "#d4923a"
    tmux set-option -gq @paper_wisp_completed_fg "#2a1f1a"
    tmux set-option -gq @paper_wisp_completed_bg "#8ca558"
    tmux set-option -gq @paper_wisp_inactive_fg "#e8dcc8"
    tmux set-option -gq @paper_wisp_inactive_bg "#3d2d22"
  fi

  tmux set-option -gq @paper_left_border "$(get_tmux_option "@paper_left_border" "")"
  tmux set-option -gq @paper_right_border "$(get_tmux_option "@paper_right_border" "")"
  tmux set-option -gq @paper_session_icon "$(get_tmux_option "@paper_session_icon" "◆")"
  tmux set-option -gq @paper_active_window_icon "$(get_tmux_option "@paper_active_window_icon" "●")"
  tmux set-option -gq @paper_inactive_window_icon "$(get_tmux_option "@paper_inactive_window_icon" "○")"

  tmux set-option -g window-status-separator " "

  tmux set-option -g window-status-current-style "fg=#{@paper_foreground},bg=#{@paper_gray}"
  tmux set-option -g window-status-style "fg=#{@paper_background},bg=default"

  tmux set-option -g window-status-format "#[fg=#{@paper_gray},bg=default]#{@paper_left_border}#[fg=white,bg=#{@paper_gray}]#{?#{!=:#{@paper_inactive_window_icon},}, #{@paper_inactive_window_icon},} #W #[fg=#{@paper_gray},bg=default]#{@paper_right_border}"
  tmux set-option -g window-status-current-format "#[fg=#{@paper_purple},bg=#{@paper_background}]#{@paper_left_border}#[fg=#{@paper_background},bg=#{@paper_purple}]#{?#{!=:#{@paper_active_window_icon},}, #{@paper_active_window_icon},} #W #[fg=#{@paper_purple},bg=#{@paper_background}]#{@paper_right_border}"

  tmux set-option -g status-left "#[bg=#{@paper_green},fg=#{@paper_background}]#{?#{!=:#{@paper_session_icon},}, #{@paper_session_icon},} #S #[fg=#{@paper_green},bg=default]#{@paper_right_border} "

  tmux set-option -g status-bg default
  tmux set-option -g status-style "bg=default,fg=#{@paper_foreground}"

  tmux set-option -g status-interval 1

  local fzf_bg=$(tmux show-option -gqv @paper_background)
  local fzf_fg=$(tmux show-option -gqv @paper_foreground)
  local fzf_gray=$(tmux show-option -gqv @paper_gray)
  local fzf_green=$(tmux show-option -gqv @paper_green)
  local fzf_yellow=$(tmux show-option -gqv @paper_yellow)
  local fzf_orange=$(tmux show-option -gqv @paper_orange)

  tmux set-environment -g FZF_DEFAULT_OPTS "--color=bg+:${fzf_gray},bg:${fzf_bg},spinner:${fzf_orange},hl:${fzf_green} --color=fg:${fzf_fg},header:${fzf_green},info:${fzf_yellow},pointer:${fzf_orange} --color=marker:${fzf_orange},fg+:${fzf_fg},prompt:${fzf_yellow},hl+:${fzf_green} --color=border:${fzf_gray},gutter:${fzf_bg} --prompt='› ' --pointer='▶' --marker='✓' --layout=reverse --height=60%"
}

main
