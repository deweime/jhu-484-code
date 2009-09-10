require 'Fib'
  
describe Fib do 
   before(:each) do 
     @fib = Fib.new
   end

   it "should equal 1 for Fib(0)" do
     @fib.fib(0).should == 1
   end

   it "should equal 1 for Fib(1)" do
     @fib.fib(1).should == 1
   end

   it "should equal 2 for Fib(2)" do
     @fib.fib(2).should == 2
   end

end
