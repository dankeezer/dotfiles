#!/bin/bash

echo "Installing Sublime Text 3 Custom Packages and Settings..."

if [[ "$(uname -s)" = "Darwin" ]]
then
	curl -o /Users/$(whoami)/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package https://packagecontrol.io/Package%20Control.sublime-package

	git clone https://github.com/SideBarEnhancements-org/SideBarEnhancements.git /Users/$(whoami)/Library/Application\ Support/Sublime\ Text\ 3/Packages/SideBarEnhancements
	git clone https://github.com/p3lim/sublime-highlight-trailing-whitespace /Users/$(whoami)/Library/Application\ Support/Sublime\ Text\ 3/Packages/Highlight\ Trailing\ Whitespace
	git clone https://github.com/slim-template/ruby-slim.tmbundle.git /Users/$(whoami)/Library/Application\ Support/Sublime\ Text\ 3/Packages/ruby-slim.tmbundle

	rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
	ln -s ~/.dotfiles/sublime/User/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

fi

exit 0