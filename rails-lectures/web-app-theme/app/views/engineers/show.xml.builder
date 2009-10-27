xml.div(:class => "engineerList") do
  xml.timestamp(Time.now)
  
  xml.engineer(:id => @engineer.id) do
     xml.fname(@engineer.fname) 
     xml.lname(@engineer.lname)  
  end  
end