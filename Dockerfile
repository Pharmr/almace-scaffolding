FROM ruby:2.5.7

ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH

RUN gem install rails bundler rake
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update -y && apt install -y nodejs npm yarn postgresql-client
RUN yarn -y install --check-files

COPY . .
RUN bundle install && yarn install
RUN npm i -g grunt-cli