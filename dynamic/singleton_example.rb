class SingeltonExample
   def method1
     puts "method1"
   end
end

s=SingeltonExample.new
s2=SingeltonExample.new

s.method1
s2.method1

def s.method2
  puts "method2"
end

s.method2
s2.method2