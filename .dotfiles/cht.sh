#!/bin/bash

# curl cht.sh/{language}/query+string
# curl cht.sh/{core-util}~{operation}

languages=`echo "golang lua java typescript nodejs python scala javascript" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if echo $languages | grep -qs $selected; then
  CHT_URL="cht.sh/$selected/$(echo $query | tr ' ' '+')"
else
  CHT_URL="cht.sh/$selected~$query"
fi

echo "$CHT_URL"
curl "$CHT_URL" & while [ : ]; do sleep 1; done

