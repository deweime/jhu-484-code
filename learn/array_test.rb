require 'test/unit'

class ArrayTest < Test::Unit::TestCase

  def setup
    @a=Array.new    # can also use @a=[]
  end

  def test_newly_created_array_length
    assert(@a.length==0,"Array was just created so length should be 0")
  end
  
  def test_index_Starts_with_0
    b=["One", 2, "Three"]
    assert(b[0] == "One")
  end
  
  def test_array_initialize
    n=0
    f=Array.new(10) { n += 1; n*10}
    assert(f[2] == 30)
  end 

  def test_array_get_multiple
    a=[1,2,3,4,5]
    b=a[1,2]
    assert(b.length==2, "Testing we got an array slice back")
    assert(b[1] == 3, "Get correct number from array suvset")
  end
  
  def test_add_to_beginning
    a=[1,2,3,4]
    a.unshift(9)
    assert_equal(a[0],9)
  end
  
  def test_add_to_end
    a=[1,2,3,4]
    a.push(5)     # Push can add more than 1 argument
    assert_equal(a[4],5)
  end
  
  def test_add_to_end2
    a=[1,2,3,4]
    a << 5
    assert_equal(a[4],5)
  end
  
  def test_remove_from_beginning
    a=[1,2,3,4]
    a.shift
    assert(a.length==3,"Array should be smaller")
    assert_equal(a[0],2)
  end
  
  def test_remove_from_end
     a=[1,2,3,4]
     a.pop
     assert(a.length==3,"Array should be smaller")
     assert_equal(a[-1],3)
   end
   
   def test_concatenate
     a=["one", "two", "three"]
     b=[1,2,3]
     a.concat(b)
     assert(a.length==6, "Receiver was modified")
     assert(a[-1]==3,"Concatentated in order")
   end
     
   def test_join
     a=["one", "two"]
     str=a.join(",")
     assert_equal(str,"one,two")
   end   
   
   def test_find
     a=[1,3,7,10]
     i=a.find { |s| s > 5}
     assert_equal(i,7)
   end
   
   def test_find_all
     a=[1,3,7,10]
     a2=a.find_all { |s| s > 5}
     assert_equal(a2.length, 2)
     assert_equal(a2[1], 10)
   end
   
   def test_reject
     a=[1,3,7,10,15]
     b=a.reject { |n| n > 3 }
     assert_equal(b.length,2)
     assert_equal(b[0],1)
   end
   
   def test_include
      a=[1,3,7,10,15]
      assert(a.include?(7))
   end
   
end


