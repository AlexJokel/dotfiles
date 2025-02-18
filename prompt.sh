#!/bin/bash

BLACK_FG="\[$(tput setaf 0)\]"
GRAY_FG="\[$(tput setaf 255)\]"
GRAY_BG="\[$(tput setab 255)\]"
GREEN_BG="\[$(tput setab 156)\]"
GREEN_FG="\[$(tput setaf 156)\]"
BLUE_BG="\[$(tput setab 153)\]"
BLUE_FG="\[$(tput setaf 153)\]"
PINK_BG="\[$(tput setab 224)\]"
PINK_FG="\[$(tput setaf 224)\]"
RESET="\[$(tput sgr0)\]"

PS1="\
$PINK_BG \$(printf %3s \$?) $PINK_FG\
$GRAY_BG$BLACK_FG \w $GRAY_FG\
$GREEN_BG$BLACK_FG ${debian_chroot:+($debian_chroot)}\u@\h $GREEN_FG\
$BLUE_BG$BLACK_FG \d \A $RESET$BLUE_FG\
$RESET\n \$ "
