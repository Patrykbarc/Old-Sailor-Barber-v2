#!/bin/bash

# Ścieżka do katalogu Dropbox
# DROPBOX_DIR="/ścieżka/do/folderu/Dropbox"
DROPBOX_DIR="E:/Dropbox/test"

# Ścieżka do katalogu projektu Git
GIT_DIR=$(git rev-parse --show-toplevel 2>/C:/Users/michal/Desktop/Frontend/Old Sailor Barber)

# Sprawdzenie czy Git jest zainicjalizowany w aktualnym katalogu
if [[ $? != 0 ]]; then
  echo "Nie znaleziono katalogu projektu Git."
  exit 1
fi

# Przejście do katalogu projektu Git
cd $GIT_DIR

# Wykonanie pusha
git push

# Przeniesienie plików z projektu do Dropboxa
rsync -a --delete $GIT_DIR/ $DROPBOX_DIR/
