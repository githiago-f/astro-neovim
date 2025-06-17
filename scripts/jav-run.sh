#!/bin/bash

BACK=`pwd`
if [ -d "target/classes" ]; then
  echo 'go to target/classes'
  cd target/classes
fi

classes=`find . | grep '.class$' | sed 's/\.\///g' | tr '/' '.' | sed 's/.class//g'`
echo "$(printf "$classes")"
selected=`printf "$classes" | fzf`

java $selected
cd $BACK

