require "rubygems"
require "twitter" # 4.8.1

twitter = Twitter::REST::Client.new(consumer_key: "PjRWIbHHcQ6YLLbCMwjM5NoHS", consumer_secret: "yGsm2W3sNPHE6Emfv6AdedyM4NT7I49pcn60pIIYS4KPMhVXl7")

5.times do |count|
  puts "request #{count+1}"

  # first get 10 tweets
  tweets = twitter.user_timeline("torial", count: 10, )

  puts tweets
  tweets.each {|tweet| puts tweet.text}



  # second get oembed for first tweet
  twitter.oembed(tweets.first.id, align: 'center')

  sleep 0.5
end