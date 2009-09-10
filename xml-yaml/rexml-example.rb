

urls = Array.new
REXML::Document.new(xml).root.get_elements('post').each do |post|
  name = post.attributes['href']
  tag = post.attributes['tag']
  description = post.attributes['description']
  if tag =~ /#{TAG}/
    urls[urls.size] = name
  end
end unless xml.nil?