#!/bin/bash

hugo

cd ~/Code/mattiaspernhult.github.io

git checkout master

rm -rf *

cp -r ~/Code/pernhult-blog/* .

git add --all

git commit -m "Updates site `date`"

git push origin master
