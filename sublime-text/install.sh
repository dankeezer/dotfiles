#!/bin/bash

if [[ "$(uname -s)" = "Darwin" ]]
then
  SUBLIME_BASE_PATH="$HOME/Library/Application\ Support/Sublime\ Text\ 3"
  echo
  echo "Installing Sublime Text 3 Custom Packages and Settings..."

  clone_repo () {
    local repo="https://github.com/$1" dir=$2

    if ! [ -d "$SUBLIME_BASE_PATH/Packages/$dir" ]
    then
      git clone "$repo" "$SUBLIME_BASE_PATH/Packages/$dir"
    else
      echo "skipping $dir, already cloned"
    fi
  }

  clone_repo 'SideBarEnhancements-org/SideBarEnhancements.git' 'SideBarEnhancements'
  clone_repo 'p3lim/sublime-highlight-trailing-whitespace' 'Highlight\ Trailing\ Whitespace'
  clone_repo 'slim-template/ruby-slim.tmbundle.git' 'ruby-slim.tmbundle'

  if ! [ -f "$SUBLIME_BASE_PATH/Installed\ Packages/Package\ Control.sublime-package" ]
  then
    sudo mkdir "$SUBLIME_BASE_PATH/Installed\ Packages"
    sudo curl -o "$SUBLIME_BASE_PATH/Installed\ Packages/Package\ Control.sublime-package" \
      https://packagecontrol.io/Package%20Control.sublime-package
  else
    echo "skipping Package Control, already installed"
  fi

	rm -rf "$SUBLIME_BASE_PATH/Packages/User"
	ln -s ~/.dotfiles/sublime/User/ "$SUBLIME_BASE_PATH/Packages/User"
else
  echo
  echo "Not macOS, skipping Sublime Text 3 Custom Packages and Settings..."
fi

exit 0