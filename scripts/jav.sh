#!/bin/bash 

if [ ! -f "pom.xml" ]; then
  echo "ERROR: no pom.xml on the root directory"
  exit 1;
fi

commands=`mvn help:describe -Dcmd=install | grep '^*' | tr '* ' ' '`
command=`printf "$commands" | fzf`
command="${command%%:*}"

mvn $command

