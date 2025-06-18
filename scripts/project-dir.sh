if command -v fd &> /dev/null; then
  find_p="fd"
elif command -v fdfind &> /dev/null; then
  find_p="fdfind"
else
  find_p="find"
fi

project=`$find_p -d 1 . ~/projects | grep -v 'key-secret' | fzf`
echo $project

