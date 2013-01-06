module RecordStore
  Posts = Posts.new([
    #Post.from_hash(:title => "My Post", :body => "Body of My Cool Post", :date => "1-5-2013", :tags => %w[code Development gaming]),
    Post.from_hash(:title=> "New Year and New Things",
                   :body => "<p>Trying to start the new year off the right way with a long overdue redesign of the site.
                   I'm happy with how things have turned out so far, but I wnated to take this interatively and will be gradually
                   tweaking and addings things as times goes on.
                   The focus was much more on how little I need than what can I add.</p>",
                   :date => "1-6-2013",
                   :tags => ["Design"]),
  ])

  NOTFOUND = Post.from_hash(:title => "404 and Such.", :body => "Sorry, it looks like this post doesn't exist. Are you sure it's typed correctly?", :date => "12-31-1999", :tags => %w[404 error lost])
end
