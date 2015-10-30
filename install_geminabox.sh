#!/bin/zsh
source $APP_HOME/.rvm/scripts/rvm
rvm gemset create geminabox
rvm use 2.2.3@geminabox
gem install thin geminabox
