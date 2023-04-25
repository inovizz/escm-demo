#!/bin/bash

# Set up Git aliases
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.st status
git config --global alias.lg "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.df diff
git config --global alias.pullr "pull --rebase"
git config --global alias.pushr "push --force-with-lease"
git config --global alias.s "status -s"
