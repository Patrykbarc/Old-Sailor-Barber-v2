#!/bin/bash

# Ścieżka do katalogu Dropbox
DROPBOX_DIR="/E:/Dropbox/test"

# Wykonaj komendę "git push"
git push

# Przenieś pliki do folderu Dropbox
rsync -av --exclude=".git" --delete $GIT_DIR/ $DROPBOX_DIR/
