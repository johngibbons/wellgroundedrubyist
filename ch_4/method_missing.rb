o = Object.new

def o.method_missing(m, *args)
  puts "you can't call #{m} on this object, please try again"
end

o.blah
