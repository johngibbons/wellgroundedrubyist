class Bicycle
  attr_reader :gears, :wheels, :seats, :pedals

  def initialize(gears = 2)
    @gears = gears
    @wheels = 2
    @seats = 1
    @pedals = 2
  end
end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
    @pedals = 4
  end
end

b = Bicycle.new
t = Tandem.new(2)

puts "A bike has #{b.seats} seat and #{b.pedals} pedals whereas a tandem bike " +
  "has #{t.seats} seats and #{t.pedals} pedals. Both have #{t.gears} gears."
