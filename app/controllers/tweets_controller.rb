class TweetsController < ApplicationController
  def index
    if params[:search].blank?
      redirect_to :controller => 'search',:action => 'index', :notice => 'You did not provide a search term'
    else
    client = Twitter::REST::Client.new(consumer_key: "PjRWIbHHcQ6YLLbCMwjM5NoHS", consumer_secret: "yGsm2W3sNPHE6Emfv6AdedyM4NT7I49pcn60pIIYS4KPMhVXl7")
    @tweets = client.search(params[:search])


    end

    #below I group tweets in terms of time tweeted
     @groups = group_by_time(@tweets)
    end


#
 def group_by_time(tweets)
   @counter = 0
   @group_one = 0
   @group_two = 0
   @group_three = 0
   @group_four = 0
   tweets.each do |tweet|
      @counter += 1
      time_elapsed = ((Time.now - tweet.created_at)/60).to_i
      if Range.new(1, 15).include? (time_elapsed)
        @group_one += 1
      elsif Range.new(16, 60).include?(time_elapsed)
           @group_two += 1
      elsif Range.new(61, 120).include?(time_elapsed)
             @group_three += 1
      else
              @group_four += 1
      end

      end
   [@group_one, @group_two, @group_three, @group_four, @counter]
      end
   end




