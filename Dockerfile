FROM jihoun/php-node:with-mysql
MAINTAINER Telmo Teixeira <hi@telmoteixeira.com>

# Install grunt-cli.
RUN npm i -g grunt-cli
RUN apt-get update
RUN apt-get install wget -y

# Install google chrome.
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update
RUN apt-get install google-chrome-stable -y

# Install git.
RUN apt-get update
RUN apt-get apt-get install git -y

CMD ["bash"]