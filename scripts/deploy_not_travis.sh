#!/bin/bash

# Building
echo -e "\e[1m\e[7m\e[32mBuilding the project...\e[0m"
hugo

# Add changes to git.
echo -e "\e[1m\e[7m\e[32mCommitting updates to source branch...\e[0m"
git add -A

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin source

echo -e "\e[1m\e[7m\e[32mPushing the changes to master branch...\e[0m"
echo -e "\e[1m\e[7m\e[32mUpdating the website...\e[0m"
git subtree push --prefix=public https://github.com/MattiasPernhult/mattiaspernhult.github.io master
