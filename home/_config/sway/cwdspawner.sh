#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo 'NO ARGS!'
    exit 1
fi

pids="$( swaymsg -t get_tree |
  jq '.. | (.nodes? // empty)[] | select(.focused==true).pid? // empty' |
  xargs pstree -p | grep "\<tmux\>\|\<fish\>\|\<bash\>\|\<zsh\>\|\<sh\>" |
  grep -o '[0-9]*' | sort -h )"

paths="$( echo "$pids" | xargs pwdx 2> /dev/null )"

cwd="$( swaymsg -t get_tree |
  jq '.. | (.nodes? // empty)[] | select(.focused == true).pid? // empty' |
  xargs pstree -p | grep "\<tmux\>\|\<fish\>\|\<bash\>\|\<zsh\>\|\<sh\>" |
  grep -o '[0-9]*' | xargs pwdx 2> /dev/null | cut -f2- -d' ' |
  sort | tail -n 1 | tr -d '\n' )"

if [ -d "$cwd" ]; then
  $1 -D "$cwd" &
  disown
else
  $1 &
  disown
fi
