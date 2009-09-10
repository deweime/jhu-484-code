require 'builder'

sites = {
  'work' => 'www.integratedcc.com', 'work2' => 'coreservlets.com', 'school' => 'www.apl.jhu.edu/~weimer/'
}

xml = Builder::XmlMarkup.new( :target => $stdout, :indent => 2 )

xml.instruct! :xml, :version => "1.1", :encoding => "US-ASCII"

xml.sites do 
 sites.each do | name, choice |
  xml.site( choice, :description => name )
 end
end