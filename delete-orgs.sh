##DELETE X ORGS with the QUOTA PLAN IN STACKATO
#!/bin/sh

MAX_ORGS=3
NAME_ORG="ORG"
NAME_SPACE="DEV"
NAME_USER="USER"
PASSWORD="#HASHTAG"

for i in `seq $MAX_ORGS $max`
do
    ORG=$NAME_ORG$i
    echo "Deleting Org: "$ORG
    stackato delete-org $ORG --no-prompt -r
    
    USER=$NAME_USER$i
    echo "Deleting User:"$USER
    stackato delete-user $USER --no-prompt
    echo "DONE -----"
done