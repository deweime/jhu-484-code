#!/usr/bin/env ruby
#
#  Created by Dan on 2007-09-05.
#  Copyright (c) 2007. All rights reserved.

require 'test/unit'

class HashTest < Test::Unit::TestCase

  def setup
    @h= { "Maryland" => "MD", "Virginia" => "VA", "MISSISSIPPI" => "MS"}    
  end
  
  def test_hash_creation
     assert_equal( @h["Maryland"], "MD")
  end
  
  # Any issues here?
  def test_hash_flip
    h2=@h.invert
    assert_equal(h2["MD"], "Maryland")
  end
  
  def test_hash_clear
     @h.clear
     assert_equal(@h.size,0)
  end
   
  # merge! is the same as update
  def test_hash_update
    h2 = { "Florida" => "FL", "Georgia" => "GQ"}
    h2.update(@h)
    assert_equal(h2.size,5)
  end
  
  # same as select for a hash
  def test_find_all
    h2 = @h.find { |key, value| key =~ /^M/ }
    assert_equal(h2.length,2)
  end
  
  def test_has_key
    assert(@h.has_key?("Maryland"))
  end
  
  def test_has_value
    assert(@h.has_value?("MD"))
  end
   
end

