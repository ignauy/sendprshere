#!/bin/bash
year=$(date +"%Y")
cd sendprshere/
for i in {1..5};
do
  git checkout -b "$year-0$i.txt"
  echo "$year-0$i.txt" > "$year-0$i.txt"
  git add .
  git commit -m "$year-0$i.txt"
  git checkout master
  git push --set-upstream origin "$year-0$i.txt"
done