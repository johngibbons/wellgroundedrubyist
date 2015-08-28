obj = Object.new

puts "The id of this object is #{obj.object_id}."

str = "Strings are objects too, and this is a string!"

puts "The id of the string object is #{str.object_id}."

puts "And the id of the integer 100 is #{100.object_id}."

puts "The id of 100 is still #{100.object_id}."

a = Object.new

b = a

puts "a's id is #{a.object_id} whereas b's id is #{b.object_id}."
