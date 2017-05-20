##CREATE X ORGS with the QUOTA PLAN IN STACKATO
#!/bin/sh

MAX_ORGS=1 #HOW MANY USERS DO YOU WANT?
NAME_ORG="ORG"
NAME_SPACE="DEV"
NAME_USER="USER"
NAME_QUOTA="workshops" ##The quota has to be created manualy before.
NAME_DNS="lab.cheetah.ac" ##Email domain
PASSWORD="#HASHTAG"

for i in `seq $MAX_ORGS $max`
do
    ORG=$NAME_ORG$i
    echo "Creating Org: "$ORG
    stackato create-org $ORG --no-add-self --quota $NAME_QUOTA
    echo "Creating Space: "$NAME_SPACE
    stackato create-space $NAME_SPACE --organization $ORG --no-developer --no-manager
    
    USER=$NAME_USER$i
    echo "Creating User: "$USER
    stackato add-user $USER --email $USER@$NAME_DNS --passwd $PASSWORD --organization $ORG
    
    echo "Link the User "$USER" to the org "$ORG", space "$SPACE" with the role developer"
    stackato link-user-space $USER $NAME_SPACE --organization $ORG
    echo "DONE -----"
done