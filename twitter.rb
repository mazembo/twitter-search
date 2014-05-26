require 'twitter'

puts "Greetings, World!"
puts "Checkpoint 1"
client = Twitter::REST::Client.new do |config|
  config.consumer_key    = "PjRWIbHHcQ6YLLbCMwjM5NoHS"
  config.consumer_secret = "yGsm2W3sNPHE6Emfv6AdedyM4NT7I49pcn60pIIYS4KPMhVXl7"
#  config.oauth_token = "xxxxxxx" #removed for posting
#  config.oauth_token_secret = "xxxxxxx" #removed for posting
end
Twitter.verify_credentials
puts "Checkpoint 2"