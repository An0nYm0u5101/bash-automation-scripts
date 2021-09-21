#!/bin/bash

echo "
automated git cloning

1. Github
2. Gitlab"

read -p "Enter choice: " choice

github(){
	read -p "Author Username(Github): " username
	read -p "Repository Name(Github): " repository
    git clone "https://github.com/$username/$repository"
}

gitlab(){
	read -p "Author Username(Gitlab): " username
	read -p "Repository Name(Gitlab): " repository
	git clone "https://gitlab.com/$username/$repository"
}

if [[ $choice == "1" ]]; then
    github

elif [[ $choice == "2" ]] ; then
    gitlab
else
    echo "invalid choice: $choice"
fi
