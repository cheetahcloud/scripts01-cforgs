# Admin scripts for HPE Stackato (Org & User generator)
## USAGE
- Create X users in single orgs & spaces (quota group: workshops)
```
edit create-orgs.sh

NAME_QUOTA="workshops"
NAME_DNS="lab.cheetah.ac"
sh create-orgs.sh
```

- Delete X users in single orgs & spaces (quota group: workshops)
```
edit delete-orgs.sh
MAX_ORGS=3
sh delete-orgs.sh
```