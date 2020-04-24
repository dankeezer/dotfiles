#!/bin/bash

if [[ "$(uname -s)" = "Darwin" ]]
then
  TYPORA_BASE_PATH="$HOME/Library/Application Support/abnerworks.Typora"
  echo
  echo "Installing Typora Custom Settings..."

  symlink_user_settings () {
    if [ -f "$TYPORA_BASE_PATH/themes/base.user.css" ]
    then
      cp "$TYPORA_BASE_PATH/themes/base.user.css" \
        "$TYPORA_BASE_PATH/themes/base.user.css-old"
      rm "$TYPORA_BASE_PATH/themes/base.user.css"
    fi

    ln -s ~/.dotfiles/typora/base.user.css \
      "$TYPORA_BASE_PATH/themes/base.user.css"
  }

  symlink_user_settings
else
  echo
  echo "Not macOS, skipping Typora Custom Settings..."
fi

exit 0
