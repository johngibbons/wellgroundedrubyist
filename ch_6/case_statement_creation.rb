class Ticket
  attr_accessor :venue, :date

  def initialize(venue, date)
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.venue == other_ticket.venue
  end
end

ticket1 = Ticket.new("Red Rocks", "11/12/13")
ticket2 = Ticket.new("Pepsi Center", "01/01/13")
ticket3 = Ticket.new("Red Rocks", "12/23/13")

puts "Ticket 1 is for an event at #{ticket1.venue}"

case ticket1
when ticket2
  puts "Ticket 2 is at the same venue as ticket 1"
when ticket3
  puts "Ticket 3 is at the same venue as ticket 1"
else
  puts "No match found"
end
