#!/bin/zsh
source $APP_HOME/.rvm/scripts/rvm
rvm install 1.9.3
rvm use 1.9.3
rvm gemset create geminabox
rvm use 1.9.3@geminabox
gem install puma geminabox
