module RecordStore
  Posts = Posts.new([
    Post.from_hash(:title => "My Post", :body => "Body of My Cool Post", :date => "1-5-2013", :tags => %w[code Development gaming]),
    Post.from_hash(:title=> "Challenging Challenges Are Challenging Me",
                   :body => "<p>Whew! It has been a crazy week so far. This past Monday was the first official day of my challenges to wrap up my residency at 8th Light. I cannot believe that its been that long already. <img src='/images/ludumdare24.PNG'> Sadly I cannot go into what my challenges actually are, but I can say that they&#39;ve kept me extremely busy this entire week and will be this weekend as well. After a quick trip to see my family for my Birthday tomorrow, it&#39;ll be back home to pack for my trip to Chicago.</p>",
                   :date => "1-1-2001",
                   :tags => ["8th Light", "Development"]),
  ])

  NOTFOUND = {:title => "404 and Such.", :body => "Sorry, it looks like this post doesn't exist. Are you sure it's typed correctly?", :date => "12-31-1999", :tags => %w[404 error lost]}
end
