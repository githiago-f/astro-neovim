PROJECTS="$HOME/projects"

cmd=`printf "create\nrun" | fzf`

if echo $cmd | grep -qs 'run'; then
  read -p "command: " command
  echo $command
else
  read -p "folder: " folder
  dir="$PROJECTS/$folder"
  mkdir $dir

  echo $dir
fi
