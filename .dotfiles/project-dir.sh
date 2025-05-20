project=`fdfind -d 1 . ~/projects | grep -v 'key-secret' | fzf`
echo $project

