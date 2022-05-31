#!/bin/bash

if [[ "$(uname -s)" = "Darwin" ]]
then
  SUBLIME_BASE_PATH="$HOME/Library/Application*Support/Sublime*Text*3"
  echo
  echo "Installing Sublime Text 3 Custom Packages and Settings..."

  make_directories () {
    # Sublime Text will automatically make these directories upon first launch
    # But we're making changes prior to first launch

    if ! [ -d "$SUBLIME_BASE_PATH/Packages/User" ]
    then
      mkdir -p "$SUBLIME_BASE_PATH/Packages/User"
    fi

    if ! [ -d "$SUBLIME_BASE_PATH/Installed Packages" ]
    then
      mkdir -p "$SUBLIME_BASE_PATH/Installed Packages"
    fi
  }

  install_package_control () {
    if ! [ -f "$SUBLIME_BASE_PATH/Installed Packages/Package Control.sublime-package" ]
    then
      curl -o "$SUBLIME_BASE_PATH/Installed Packages/Package Control.sublime-package" \
        https://packagecontrol.io/Package%20Control.sublime-package
    else
      echo "skipping Package Control, already installed"
    fi
  }

  clone_repo () {
    local repo=$1 dir=$2

    if ! [ -d "$SUBLIME_BASE_PATH/Packages/$dir" ]
    then
      git clone "https://github.com/$repo" "$SUBLIME_BASE_PATH/Packages/$dir"
    else
      echo "skipping $dir, already cloned"
    fi
  }

  symlink_user_settings () {
    if [ -f "$SUBLIME_BASE_PATH/Packages/User/Preferences.sublime-settings" ]
    then
      cp "$SUBLIME_BASE_PATH/Packages/User/Preferences.sublime-settings" \
        "$SUBLIME_BASE_PATH/Packages/User/Preferences.sublime-settings-old"
      rm "$SUBLIME_BASE_PATH/Packages/User/Preferences.sublime-settings"
    fi

    ln -s ~/.dotfiles/sublime-text/Preferences.sublime-settings \
      "$SUBLIME_BASE_PATH/Packages/User/Preferences.sublime-settings"
  }

  make_directories
  install_package_control
  symlink_user_settings

  clone_repo 'SideBarEnhancements-org/SideBarEnhancements.git' 'SideBarEnhancements'
  clone_repo 'p3lim/sublime-highlight-trailing-whitespace' 'Highlight Trailing Whitespace'
  clone_repo 'slim-template/ruby-slim.tmbundle.git' 'ruby-slim.tmbundle'
  clone_repo 'glaucocustodio/rspec-buddy-for-sublime-text.git' 'RSpec Buddy'
  clone_repo "mattbanks/dotfiles-syntax-highlighting-st2.git" 'dotfiles-syntax-highlighting-st2'
else
  echo
  echo "Not macOS, skipping Sublime Text 3 Custom Packages and Settings..."
fi

exit 0
