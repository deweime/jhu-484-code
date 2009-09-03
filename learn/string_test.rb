require 'test/unit'

class StringTest < Test::Unit::TestCase

  def test_length
    s = "Hello, World!"
    assert_equal(13, s.length)
  end

  def test_plus
    s = "Hello"
    h = s + " World"
    assert_equal(h,"Hello World") 
    assert_equal(s,"Hello")
  end
  
  def test_append
    s="Hello"
    s << " World"
    assert_equal(s,"Hello World")
  end

  def test_interpolation
    val="AddMeIn"
    str="This is a string #{val}"
    assert_equal(str,"This is a string AddMeIn")
  end

  def test_content_equality
      str1="one"
      str2="one"
      assert(str1==str2,"Content equality test")
  end
  
  def test_object_equality
      str1="one"
      str2="one"
      assert(! (str1.equal?(str2)),"object equality test")
  end
  
  def test_capitalize
    str="one".capitalize
    assert_equal(str,"One")
  end
  
  def test_reverse
    str="one".reverse
    assert_equal(str,"eno")
  end
  
  def test_upcase
    a="one"
    str=a.upcase
    assert_equal(str,"ONE")
    assert_equal(a,"one")
  end
  
  def test_upcase_modify
    a="one"
    str=a.upcase!
    assert_equal(str,"ONE")
    assert_equal(a,"ONE")
  end

end

st=StringTest.new
st.test_upcase

