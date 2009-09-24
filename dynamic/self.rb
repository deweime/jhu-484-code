require 'introspect'

def show_self(s)
   puts "self is #{s}"
   puts Introspect.hierarchy_pretty(s)
   puts "\n"
end

# At top-level, self is 'main'
puts "At top-level"
show_self(self)

# Inside class definition, self is the class object itself
# same thing with a Module definition
class C
  puts "In Class Definition"
  show_self(self)
  
  def mi
    puts "In Instance Method"
    show_self(self)
  end
  
  def self.m
    puts "In Class Method"
    show_self(self)
  end
  
end

puts "Back at top-level"
show_self(self)

puts "Created object from class C\n"
c=C.new
puts "object is #{c}\n"
puts "\n"

# Self is the object itself (instance of C) while in the method invocation
c.mi

# Self is the class object while in the method invocation
C.m

puts "Creating and using method object"
m = c.method(:mi)
m.call


  