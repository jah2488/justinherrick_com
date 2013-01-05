xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Justin Herrick's Blog"
    xml.description "Personal Blog and Site of Justin Herrick. Software Craftsman, Video Gamer Player, and Maker."
    xml.link "http://justinherrick.com/posts"

    for post in locals[:posts]
      xml.item do
        xml.title       post.fetch("title") { "None" }
        xml.description post.fetch("body")  { "Emptiness..." }
        xml.pubDate     post.fetch("date")  { "01-01-01" }
        xml.link        "http://justinherrick.com/posts/#{post.fetch("title") { "404" }.downcase.gsub(" ", "-")}"
      end
    end
  end
end
