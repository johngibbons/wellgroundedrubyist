class Bid
  include Comparable
  attr_accessor :estimate

  def <=>(other_bid)
    if self.estimate < other_bid.estimate
      -1
    elsif self.estimate > other_bid.estimate
      1
    else
      0
    end
  end
end


class Bid
  include Comparable
  attr_accessor :estimate

  def <=>(other_bid)
    self.estimate <=> other_bid.estimate #since both are integers or floats, punt to those spaceship methods
  end
end

bid1 = Bid.new
bid2 = Bid.new

bid1.estimate = 200
bid2.estimate = 150

if bid1 < bid2
  puts "Bid 1 is lower, it wins"
elsif bid2 < bid1
  puts "Bid 2 is lower, it wins"
else
  puts "The bids are the same"
end
