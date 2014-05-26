require "rubygems"
require "twitter" # 4.8.1

twitter = Twitter::REST::Client.new(consumer_key: "PjRWIbHHcQ6YLLbCMwjM5NoHS", consumer_secret: "yGsm2W3sNPHE6Emfv6AdedyM4NT7I49pcn60pIIYS4KPMhVXl7")

results = twitter.search("#johannesburg")

results.each do |result|
     puts result.id
     puts result.user.screen_name
     puts result.user.location
     puts result.text
     puts result.created_at
     puts ((Time.now - result.created_at)/60).to_i

end

puts "This is the end of it all"
puts "the number of tweets is #{results.count}"

