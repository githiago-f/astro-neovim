read -p "stage: " stage

COMMAND="sls deploy --stage $stage --verbose"

$COMMAND

