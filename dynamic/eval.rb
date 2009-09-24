# eval code examples
class Eval
end

puts eval("5*5")

e=Eval.new
puts e.respond_to?("a_method")  #=> False

m="a_method"
s="def #{m}; puts 'in method a'; end"
eval(s)
puts e.respond_to?("a_method")    #=>  False

a_method

e.instance_eval(s)
puts e.respond_to?("a_method")    #=> True
e.a_method

puts "e now has the method"
puts e.methods(false)       #=> a_method

puts "Does the class have the method?"
puts Eval.instance_methods(false).include?('a_method')


var="Outer"
class V
end

V.class_eval { define_method("v") { puts var}}
V.new.v   #=> Outer
