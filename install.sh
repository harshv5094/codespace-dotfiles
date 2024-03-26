#!/bin/bash

if [ -f "$HOME/.bash_aliases" ]; then
  rm .bash_aliases 
  cp .bash_aliases "$HOME"
else
  cp .bash_aliases "$HOME"
fi

if [ -f "$HOME/.gitconfig" ];then
  rm .gitconfig
  cp .gitconfig "$HOME"
else
  cp .gitconfig "$HOME"
fi

if command -v npm &> /dev/null; then
  npm i -g commitizen cz-conventional-changelog
fi