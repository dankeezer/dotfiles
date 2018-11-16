#!/bin/bash

read -p "About to install several Ruby versions, are you sure you want this? [y/N]" -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
  echo "Skipping Ruby downloads..."
fi

if [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Downloading all the Ruby versions, this'll take a while..."
  rbenv install 2.2.4
  rbenv install 2.4.1
  rbenv install 2.5.0
  rbenv global 2.2.4

  echo ""
  echo "ruby -v"
  ruby -v
  echo "This ^ ^ ^ should say 2.2.4"

  echo ""
  echo "RBENV_VERSION=2.4.1 ruby -v"
  RBENV_VERSION=2.4.1 ruby -v
  echo "This ^ ^ ^ should say 2.4.1"

  echo ""
  read -p "Versions look ok? [y/N]" -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    echo "Ok, you gotta troubleshoot that... Rerun this later."
  fi

  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    echo ""
    echo "Setting up bundler for each Ruby version..."
    gem install bundler -v 1.13.7
    RBENV=2.4.1 gem install bundler -v 1.13.7
    RBENV=2.5.0 gem install bundler -v 1.13.7
  fi
fi
