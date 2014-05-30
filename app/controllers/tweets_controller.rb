class TweetsController < ApplicationController
  def index
    if params[:search].blank?
      flash[:notice] = 'You did not provide a search term'
      redirect_to :controller => 'search',:action => 'index'
    else
    client = Twitter::REST::Client.new(consumer_key: 'PjRWIbHHcQ6YLLbCMwjM5NoHS', consumer_secret: 'yGsm2W3sNPHE6Emfv6AdedyM4NT7I49pcn60pIIYS4KPMhVXl7')
    @tweets = client.search(params[:search])
    @groups = group_by_time(@tweets) #I group tweets according to time elapsed. I have two versions of the method

    end


    end


# Below is the first version. It is more elegant. However, I have to test whether it is not slower that the other
# def group_by_time(tweets)
#
#   ranges = [0..15, 16..60, 61..120, 121..100000000]
#   groups = tweets.group_by do |tweet|
#     ranges.find { |r| r.cover?(((Time.now - tweet.created_at) / 60).to_i) }
#   end
#   groups.values.map(&:size) + [tweets.count]
# end
# Below is an alternative implementation of group_by_time method.

private

  def group_by_time (tweets)
  counter = 0
  group_one = 0
  group_two = 0
  group_three = 0
  group_four = 0
  tweets.each do |tweet|
    counter += 1
    time_elapsed = ((Time.now - tweet.created_at)/60).to_i
    if Range.new(1, 15).include? (time_elapsed)
      group_one += 1
    elsif Range.new(16, 60).include?(time_elapsed)
      group_two += 1
    elsif Range.new(61, 120).include?(time_elapsed)
      group_three += 1
    else
      group_four += 1
    end

  end
  [group_one, group_two, group_three, group_four, counter]
end
end




