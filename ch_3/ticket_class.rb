class Ticket

  attr_accessor :price
  attr_reader :venue, :date

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def discount(percentage)
    @price = @price * (100 - percentage) / 100
  end

  def event
    "Can't really be defined yet..."
  end
end

th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
puts "We've created two tickets"
puts "The first is for #{th.venue} on #{th.date}."
puts "The second is for #{cc.venue} on #{cc.date}."
