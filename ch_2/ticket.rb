ticket = Object.new

def ticket.date
  "01/02/03"
end

def ticket.venue
  "Town Hall"
end

def ticket.event
  "Author's Reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, Row J, Seat 15"
end

def ticket.price
  5.50
end

puts "This ticket is for #{ticket.event}, at #{ticket.venue}.  " + 
  "The performer is #{ticket.performer}.  " + 
  "The seat is #{ticket.seat}, and it costs $#{"%.2f." % ticket.price}"

print "Information desired: "
request = gets.chomp

if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts "Sorry, the ticket doesn't have that property"
end
