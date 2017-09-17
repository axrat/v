#!/bin/bash
export J_DIR="$(cd $(dirname $BASH_SOURCE); pwd)"
export J="${J_DIR}/import.sh"

load(){
  if [ $# -ne 1 ]; then
    echo "Require [Name]"
  else
    SCRIPT=$1.sh
    if [ -f "$SCRIPT" ]; then
       source $SCRIPT
    else
       echo "$SCRIPT not found."
    fi
  fi
}
loadx(){
  load $J_DIR/$1
}

loadx "for"
loadx "alias"
loadx var
loadx func
loadx git
loadx skel
loadx install
