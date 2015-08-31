class MyNewException < Exception
end

begin
  puts "I'm about to raise an exception..."
  raise MyNewException
rescue MyNewException => e
  puts "Just raised exception: #{e}"
end

class InvalidLineError < StandardError
end

def line_from_file(filename, substring)
  fh = File.open(filename)
  line = fh.gets
  raise InvalidLineError unless line.include?(substring)
  return line

  rescue InvalidLineError
    puts "Invalid line!"
    raise
  ensure
    fh.close
end
