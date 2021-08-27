[source](https://www.git-tower.com/learn/git/faq/change-author-name-email/)

# Git command in the shell

```
user@device:~$ git filter-branch -f --env-filter '
WRONG_EMAIL="<wrong email>"
NEW_NAME="<user name>"
NEW_EMAIL="<correct email>"

if [ "$GIT_COMMITTER_EMAIL" = "$WRONG_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$NEW_NAME"
    export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$WRONG_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$NEW_NAME"
    export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
```

