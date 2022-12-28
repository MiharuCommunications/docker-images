bundle exec rake redmine:plugins NAME=redmineup_tags RAILS_ENV=production
bundle exec rake redmine:plugins:migrate RAILS_ENV=production

cp /home/redmine/data/files/mailer.rb /home/redmine/redmine/app/models/

