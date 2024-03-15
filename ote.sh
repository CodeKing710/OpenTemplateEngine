#!/bin/bash

# Auto garbage collection wrapper
__main() {
  # Config
  #local tabspace=`cat $(find -type f -name ote.cfg) | grep tabspace | cut -d '=' -f2`
  #local tabspace=`printf "%${tabspace}s"`

  # Main logic
  for file in $@; do
    while read line; do
      echo "Element: "
      echo "$line" | cut -d ' ' -f1
      echo "Attributes: "
      echo "$line" | cut -d ' ' -f2-
    done < $file
  done
}

# Run
__main $@

# Cleanup
unset __main
