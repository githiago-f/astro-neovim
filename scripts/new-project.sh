PROJECTS="$HOME/projects"

cmd=`printf "create\nrun" | fzf`

if echo $cmd | grep -qs 'run'; then
  echo "RUN"
else
  read -p "folder: " folder
  dir="$PROJECTS/$folder"
  mkdir $dir

  echo $dir
fi
