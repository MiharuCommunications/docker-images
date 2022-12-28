apt-get update
apt-get install libmysqlclient-dev
apt-get install libsqlite3-dev
apt-get install libpq-dev

bundle update rubocop
bundle install --without development test
# bundle exec rake redmine:plugins NAME=redmineup_tags RAILS_ENV=production
