
class Introspect
  
  def my_private_method
  end
  def my_protected_method 
  end
  def my_public_method
  end
  
  private :my_private_method
  protected :my_protected_method
  public :my_public_method
  

# Includes the class of the original object as well but excludes modules
def self.superclasses(obj)
  superclasses=Array.new
  klass=obj.class
  begin
    superclasses << klass unless klass.nil?
    klass=klass.superclass
  end while klass
  superclasses
end

def self.modules(obj)
  obj.class.ancestors - Introspect.superclasses(obj)
end

# Creates a array of ancestor strings
# Modules have a '[M]' appended to the name
def self.hierarchy(obj)
  ancestors=Array.new
  all=obj.class.ancestors
  all.each do |c|
    str=c.to_s
    str = str + "[M]" if c.instance_of?(Module)
    ancestors << str
  end
  ancestors
end

def self.hierarchy_pretty(obj)
  ary=Introspect.hierarchy(obj)
  "Class hierarchy: " + ary.join(" < ")
end

end

s="String Object"
class << s
  def talk
    puts "hello"
  end
end

#puts "#{s.object_id}"
#ObjectSpace.define_finalizer(s, lambda {|id| puts "Finalizer one on #{id}" })

# Objects with immediate values not shown (nil,true,false,symbol,fixnum)
f=50.0
#puts Introspect.hierarchy(f).join(" < ")
#count = ObjectSpace.each_object(Float) {|x| p x }

#puts Introspect.modules(s)

#puts Introspect.hierarchy(s).join(" < ")

#puts Introspect.superclasses(20)
#puts "================"
#puts Introspect.modules(20)
#puts "================"

