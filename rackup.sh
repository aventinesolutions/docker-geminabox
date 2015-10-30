#!/bin/zsh
source $APP_HOME/.rvm/scripts/rvm
sudo chmod -Rv 777 /data
rvm use 2.2.3@geminabox
rackup -s Thin --host 0.0.0.0 --port 9292
