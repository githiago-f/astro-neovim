projects=`fd -d 1 . ~/projects | grep -v 'key-secret'`
configs=`echo "hypr kitty nvim waybar wlogout ml4w ml4w-hyprland-settings" | tr ' ' '\n' | awk '{print ENVIRON["HOME"] "/.config/" $1}'`
echo `printf "$projects\n$configs" | fzf`

