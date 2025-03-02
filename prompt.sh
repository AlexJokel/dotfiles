#!/bin/bash

__my_prompt() {
  local BLACK_FG="$(tput setaf 0)"
  local WHITE_FG="$(tput setaf 231)"
  local WHITE_BG="$(tput setab 231)"
  local  GRAY_FG="$(tput setaf 255)"
  local  GRAY_BG="$(tput setab 255)"
  local GREEN_BG="$(tput setab 156)"
  local GREEN_FG="$(tput setaf 156)"
  local  BLUE_BG="$(tput setab 153)"
  local  BLUE_FG="$(tput setaf 153)"
  local  PINK_BG="$(tput setab 224)"
  local  PINK_FG="$(tput setaf 224)"
  local    RESET="$(tput sgr0)"

  prompt_error_segment() {
    if [ "$1" = 0 ]; then
      echo "$WHITE_BG $WHITE_FG"
    else
      echo "$PINK_BG $PINK_FG"
    fi
  }

  right_side="\
$GREEN_FG$BLACK_FG$GREEN_BG ${debian_chroot:+($debian_chroot)}\u@\h $GREEN_BG\
$BLUE_FG$BLACK_FG$BLUE_BG \d \A $RESET$BLUE_FG"
  right_side_non_printable_count=59

  PS1="\
$(tput sc; printf "%*s" $(($(tput cols) + right_side_non_printable_count)) "$right_side"; tput rc)\
$(prompt_error_segment "$1")\
$GRAY_BG$BLACK_FG \w $RESET$GRAY_FG\
$RESET\n \$ "
}
