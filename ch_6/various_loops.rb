n = 0

loop do
  n = n + 1
  break if n > 9
end

n = 0

loop do
  n = n + 1
  next unless n==10
  break
end

n = 0

while n < 11
  n = n + 1
end

n = 10

#won't print because condition at top
while n < 10
  puts n
end

#will print once before failure since while at bottom
begin
  puts n
end while n < 10

n = 1

until n > 10
  puts n
  n = n + 1
end

n = 1
n = n + 1 until n == 10

n = 1
n += 1 until true #won't run since condition is true

# will run once since condition is at end
n = 1
begin
  n += 1
end until true

class Temperature
  def self.c2f(c)
    c * 9/5 + 32
  end
end

celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

for c in celsius
  puts "celsius #{c} is equal to fahrenheit #{Temperature.c2f(c)}"
end
