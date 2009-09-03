#!/usr/bin/env ruby
#
#  Created by Dan on 2007-09-05.
#  Copyright (c) 2007. All rights reserved.

require 'test/unit'

class RegexTest < Test::Unit::TestCase
  
  def setup
    @str="This is some string"
  end

  def test_basic_start_match
    assert(@str =~ /^T/)
    assert(@str.match("^T"))
  end
  
  # Can be anywhere in the string
  def test_match_any_character
    assert(@str =~ /s/)
  end
  
  def test_basic_end_match
    assert(@str =~ /g$/)
  end
  
  def test_any_character
      assert(@str =~ /.his is some string/)
    end
  
  def test_character_class
    assert(@str =~ /[Tt]his is some string/)
  end
  
  def test_capture
    /([Tt]his)(.*)/.match(@str)
    assert($1 == "This")
    assert($2 == " is some string")
  end
  

end