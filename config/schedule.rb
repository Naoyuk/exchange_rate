set :output, "log/crontab.log"
set :environment, ENV['RAILS_ENV']

every 1.hour do
  rake "exchange:fetch"
end
