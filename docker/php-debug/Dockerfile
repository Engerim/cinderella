FROM scoreya/php
MAINTAINER Alexander Miehe <thelex@beamscore.com>

RUN apt-get install -y php5-xdebug \
    && apt-get autoclean

ADD xdebug.ini /etc/php5/cli/conf.d/100-xdebug.ini
ADD xdebug.ini /etc/php5/fpm/conf.d/100-xdebug.ini
ADD xdebug /usr/local/bin/xdebug
RUN chmod +x /usr/local/bin/xdebug