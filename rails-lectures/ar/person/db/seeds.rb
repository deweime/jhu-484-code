#Document.create(:name => "D1", :title => "Title 1", :body => "This is doc 1 body")

user = Octopi::User.find('deweime')
puts "#{user.name} is being followed by #{user.followers.join(", ")} and following #{user.following.join(", ")}" 

user.followers.each do |follower|
  github_person = Octopi::User.find(follower)
  next if github_person.name.nil?

  # split their name in half... good enough (like the goonies)
  first_name = github_person.name.split(' ')[0]
  last_name = github_person.name.split(' ')[1]
  
  puts "#{first_name} #{last_name}"
  #Person.create(:fname => first_name, :lname => last_name)
  
end