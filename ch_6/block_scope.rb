def block_scope_demo
  x = 100
  1.times do
    puts x
  end
end

def block_scope_demo2
  x = 100
  1.times do
    x = 200
  end
  puts x
end

def local_block_scope
  x = 100
  [1, 2, 3].each do |x|
    puts "paramter x is #{x}"
    x = 10 + x
    puts "x has been reassigned and is now #{x}"
  end
  puts "outside of the block, x is still #{x}"
end

def block_local_variable
  x = 100
  3.times do |i;x|
    x = i
    puts "local x redifined to #{x}"
  end
  puts "x outside block is now #{x}"
end

