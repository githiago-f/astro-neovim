project=`fd -d 1 . ~/projects | grep -v 'key-secret' | fzf`
echo $project

