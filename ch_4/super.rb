module M
  def report
    puts "now reporting from module M"
  end
end

class C
  include M
  def report
    puts "now reporting from class C"
    puts "about to call report from module M"
    super
    puts "back to report from Class C"
  end
end

c = C.new
c.report
