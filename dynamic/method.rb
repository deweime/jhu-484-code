require 'introspect'  

class Parent
  def mx
    puts "I'm the base class"
    puts "self #{self}"
  end
end

class Child < Parent
  def mx
    puts "I'm the child class"
    puts "self #{self}"
  end
  
  def call_parent
    Parent.instance_method(:mx).bind(self).call
  end
end

parent=Parent.new
child=Child.new

unbound_method=Parent.instance_method(:mx)    # bind(obj)
#puts Introspect.hierarchy_pretty(unbound_method)

puts "Getting the mx method for the parent"
method=parent.method(:mx)
puts Introspect.hierarchy_pretty(method)

puts "Executing mx on both parent and child"
parent.mx
child.mx

puts "Unbinding parent mx method and binding to child"
unbound=method.unbind
bound=unbound.bind(child)
bound.call

puts "Messing around to call parent's impl of mx"
child.call_parent


