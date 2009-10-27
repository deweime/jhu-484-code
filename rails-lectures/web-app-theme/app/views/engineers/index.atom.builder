atom_feed do |feed|
      feed.title("My great blog!")
      feed.updated((@engineers.first.created_at))

      for engineer in @engineers
        feed.entry(engineer) do |entry|
          entry.title(engineer.lname)
          entry.content(engineer.fname + " " + engineer.lname, :type => 'html')

          entry.author do |author|
            author.name("DEW")
          end
        end
      end
end