FROM jihoun/php-node:with-mysql
MAINTAINER Telmo Teixeira <hi@telmoteixeira.com>

RUN npm i -g grunt-cli

CMD ["bash"]