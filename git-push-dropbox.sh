#!/bin/bash

# Ścieżka do katalogu Dropbox
DROPBOX_DIR="/E:/Dropbox/test"

# Ścieżka do katalogu projektu Git
GIT_DIR="C:\Users\michal\Desktop\Frontend\Old Sailor Barber"

# Wykonaj komendę "git push"
git push

# Przenieś pliki do folderu Dropbox
rsync -av --exclude=".git" --delete $GIT_DIR/ $DROPBOX_DIR/
