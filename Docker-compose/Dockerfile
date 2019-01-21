From ruby:2.5
RUN apt-get update && apt-get install -qq -y build-essential qt5-qmake qt5-default libqt5webkit5-dev wget nodejs libpq-dev postgresql-client-9.6 --fix-missing --no-install-recommends


WORKDIR /usr/local/www

ENV RAILS_ENV=production
RUN mkdir /redmine
WORKDIR /redmine

COPY ./app/Gemfile Gemfile
COPY ./app/Gemfile.lock Gemfile.lock
COPY app .
RUN bundle install
RUN gem install passenger
COPY ./Passengerfile.json .
RUN mkdir -p passengertmp
RUN mkdir -p /redmine/tmp/pids/


COPY init.sh ./
CMD ./init.sh
