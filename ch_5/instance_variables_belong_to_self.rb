class C
  puts "just inside class definition of C.  Here's self:"
  puts self
  @v = "I'm an instance variable at the top level of class body"
  puts "And here's the instance variable @v, belonging to #{self}:"
  puts @v

  def show_var
    puts "inside an instance method definition block.  here's self:"
    puts self
    puts "and here's the instance variable @v, belonging to #{self}:"
    puts @v
  end
end

c = C.new
c.show_var
