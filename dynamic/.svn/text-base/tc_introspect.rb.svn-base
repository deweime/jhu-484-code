require 'test/unit'
require 'introspect'

class IntrospectTest < Test::Unit::TestCase
  
  def setup
    @instance=Introspect.new 
  end
  
  def test_respond_to
    assert @instance.respond_to?("my_public_method")
    assert ! (@instance.respond_to?("non-existent-method"))
  end
  
  def test_kind_of
    assert @instance.kind_of?(Introspect)
    assert ! (@instance.kind_of?(String))
    
    assert 20.kind_of?(Numeric)   # kind_of looks at inheritance hierarchy
    assert 20.instance_of?(Fixnum)
  end
  
  def test_superclasses
    assert Introspect.superclasses(20).include?(Fixnum)
    assert !(Introspect.superclasses(20).include?(Kernel))
  end
 
  def test_modules
    assert Introspect.modules(20).include?(Kernel)
    assert !(Introspect.modules(20).include?(Fixnum))
  end
  
  def test_hierarchy
    assert Introspect.hierarchy(20).include?("Kernel[M]")
  end
 
end

puts Introspect.superclasses(20)
puts "================"
puts Introspect.modules(20)
puts "================"
puts 20.class.ancestors
