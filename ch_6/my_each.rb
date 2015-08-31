class Array
  def my_each
    c = 0
    until c == size 
      yield(self[c])
      c+=1
    end
    self
  end
end

#class Array
#  def my_each
#    size.my_times do |i|
#      yield self[i]
#    end
#    self
#  end
#end

class Integer
  def my_times
    a = 0
    arr = []
    until a == self
      arr = arr << a
      a += 1
    end
    arr.my_each {|i| yield i}
  end
end

5.my_times {|i| puts "iterating #{i}"}
