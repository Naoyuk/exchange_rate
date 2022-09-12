# frozen_string_literal: true

set :output, 'log/crontab.log'
set :environment, ENV['RAILS_ENV']
env :PATH, ENV['PATH']
set :job_template, "/bin/zsh -l -c ':job'"
job_type :rake,
         'export PATH="$HOME/.rbenv/bin:$PATH"; eval "$(rbenv init -)"; cd :path && RAILS_ENV=:environment bundle exec rake :task :output'

every 1.hour do
  rake 'fetch'
end
