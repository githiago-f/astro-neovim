files=`find . -iname '*.puml'`

function common_path() {
  local common="$1"
  shift

  for path in "$@"; do
    # Trim common until path starts with it
    while [[ "${path#"$common"}" == "$path" ]]; do
      common="$(dirname "$common")"
    done
  done

  echo $(dirname "$common")
}

function generate_images() {
  files_no_line=`echo $files | tr \n ' '`
  output=`java -jar /usr/local/puml/plantuml.jar $files`
  images=`find . -iname '*.png'`
}

WATCH_DIR=`common_path "${files[@]}"`

generate_images

echo "[info] watching puml files at $WATCH_DIR"
while [[ true ]]; do
  inotifywait -qmre close_write,create,delete --format '%w%f %e' "$WATCH_DIR" |
  while read -r file event; do
    clear
    sleep 1
    generate_images
  done
done

