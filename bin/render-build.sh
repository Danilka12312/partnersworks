#!/usr/bin/env bash
# exit on error
set -o errexit

# the current version of Nokogiri ships with incompatible libs
bundle config --local build.nokogiri --use-system-libraries
bin/rails credentials:edit (If you have EDITOR set in your $PATH)
or
EDITOR="nano" bin/rails credentials:edit (If you don't have EDITOR set in your $PATH)

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
