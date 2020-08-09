#!/bin/sh

cd ~/src/linux/;
time git stash --include-untracked;
time git remote show origin;
time git remote show kernel;
time git pull --rebase kernel master --strategy-option=theirs;
time git push origin --all --force;
