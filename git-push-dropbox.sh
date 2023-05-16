#!/bin/bash

# Przesuń do katalogu zawierającego repozytorium git
cd "/Desktop/Frontend/Old Sailor Barber"

# Wykonaj komendę git push
git push

# Przesuń pliki do folderu Dropbox
dropbox upload "/Desktop/Frontend/Old Sailor Barber" "/E:/Dropbox/test"
