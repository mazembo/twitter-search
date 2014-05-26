def group_by_time(tweets)
  groups = tweets.group_by do |tweet|
    time_elapsed = ((Time.now - tweet.created_at)/60).to_i
    case time_elapsed
      when 1 .. 15 then
    end
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