#!/bin/bash

join_rec() {
  f1=$1 
  f2=$2 
  shift 2 
  if [ $# -gt 0 ]
  then
    join "$f1" "$f2" | join_rec - "$@"
  else
    join "$f1" "$f2"
  fi
}
if [ $# -le 2 ]; then
    join_rec "$@"
fi
