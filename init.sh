#!/bin/bash

RAILS_ENV=production

RAILS_ENV=$RAILS_ENV bundle exec rake db:migrate
RAILS_ENV=$RAILS_ENV bundle exec rake db:seed

RAILS_ENV=$RAILS_ENV bundle exec rake assets:clean
RAILS_ENV=$RAILS_ENV bundle exec rake assets:precompile

passenger start
#TMPDIR=passengertmp passenger-config restart-app /adaa
