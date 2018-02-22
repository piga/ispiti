desc "This task is called by the Heroku scheduler add-on to protect my app from idle! Pings PING_URL to keep a dyno alive"
task :dyno_ping => :environment do
  require "net/http"
  
  if ENV['PING_URL']
    puts "Pinging #{ENV['PING_URL']}"
    uri = URI(ENV['PING_URL'])
    Net::HTTP.get_response(uri)
  end
end