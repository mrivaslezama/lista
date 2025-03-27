#!/usr/bin/env bash

set -o errexit

bundle install 
yarn install #if you are using yarn.
/bin/rails db:migrate RAILS_ENV=production
/bin/rails assets:precompile RAILS_ENV=production
/bin/rails assets:clean
