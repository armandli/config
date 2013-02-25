#!/bin/bash

function cd {
  if [ $# -lt 1 ]; then
    builtin cd
  elif [ $# -eq 1 ]; then
    builtin cd "$1"
  else
    cd_arg_1="$1"
    shift
    "$@" "$cd_arg_1"
  fi
}
