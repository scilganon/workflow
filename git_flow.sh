#!/bin/sh

# add useful aliases for development
git config alias.create-feature "!git fetch --all && git checkout develop && git pull && git checkout -b"
git config alias.create-bugfix "!git fetch --all && git checkout release && git pull && git checkout -b"
git config alias.create-hotfix "!git fetch -all && git checkout master && git pull && git checkout -b"
