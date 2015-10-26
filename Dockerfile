FROM aventinesolutions/archlinux-rvm

MAINTAINER Matthew Eichler <matthew.eichler@aventinesolutions.nl>

ENV APP_HOME /opt/rubie

ADD install_geminabox.sh $APP_HOME/install_geminabox.sh
ADD config.ru $APP_HOME/config.ru
ADD rackup.sh $APP_HOME/rackup.sh
RUN sudo chown -Rv rubie $APP_HOME/install_geminabox.sh \
        $APP_HOME/config.ru $APP_HOME/rackup.sh

USER rubie
WORKDIR $APP_HOME

RUN $APP_HOME/install_geminabox.sh 

CMD ["rackup"]
