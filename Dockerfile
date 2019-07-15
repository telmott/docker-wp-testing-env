FROM jihoun/php-node:with-mysql
MAINTAINER Telmo Teixeira <hi@telmoteixeira.com>

RUN npm i -g grunt-cli
RUN apt-get update
RUN apt-get install wget -y

CMD ["bash"]