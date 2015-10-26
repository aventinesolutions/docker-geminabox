#!/bin/zsh
unset GEM_HOME
source $APP_HOME/.rvm/scripts/rvm
rackup --host 0.0.0.0 --port 9292
