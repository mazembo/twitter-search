require 'twitter'
#require 'twitter-login'

client = Twitter::REST::Client.new do |config|
  config.consumer_key    = "PjRWIbHHcQ6YLLbCMwjM5NoHS"
  config.consumer_secret = "yGsm2W3sNPHE6Emfv6AdedyM4NT7I49pcn60pIIYS4KPMhVXl7"
end
client.user("mazembo")