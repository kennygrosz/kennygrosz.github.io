#!/bin/bash

git filter-branch --env-filter '
if [ "$GIT_COMMITTER_EMAIL" = "kennygros@gmail.com" ] 
then
	export GIT_COMMITTER_NAME="Kenny Groszman"
	export GIT_COMMITTER_EMAIL="kennygrosz@gmail.com" 
fi 
if [ "$GIT_AUTHOR_EMAIL" = "kennygros@gmail.com" ] 
then
	export GIT_AUTHOR_NAME="Kenny Groszman"
	export GIT_AUTHOR_EMAIL="kennygrosz@gmail.com"
	A
fi
' --tag-name-filter-cat -- --branches --tags
