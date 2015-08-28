puts "Reading celsius value from temp.dat"
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file temp.out"
out = File.new("temp.out", "w")
out.puts fahrenheit
out.close

