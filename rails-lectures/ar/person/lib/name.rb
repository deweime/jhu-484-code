class Name
   attr_reader   :fname, :lname

   def initialize(fname, lname)
      @fname, @lname = fname, lname
   end
   
   def to_s
     puts "#{fname}:#{lname}"
   end
end