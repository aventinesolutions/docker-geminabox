FROM aventinesolutions/archlinux-rvm

MAINTAINER Matthew Eichler <matthew.eichler@aventinesolutions.nl>

ENV APP_HOME /opt/rubie

ADD install_geminabox.sh $APP_HOME/install_geminabox.sh

USER rubie
WORKDIR $APP_HOME
CMD ["/bin/zsh"]

RUN $APP_HOME/install_geminabox.sh 
