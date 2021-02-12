#!/usr/bin/env basht init


echo $1 >>  mkdir cis-241

cd cis-241

git init

mkdir bin include lib share man info

echo "Name">> README.md

touch .gitignore

git add -all

git commit -m "Create initial structure.
