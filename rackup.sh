#!/bin/zsh
source $APP_HOME/.rvm/scripts/rvm
rvm use 1.9.3@geminabox
rackup -s Puma --host 0.0.0.0 --port 9292
