xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Justin Herrick's Blog"
    xml.description "Personal Blog and Site of Justin Herrick. Software Craftsman, Video Gamer Player, and Maker."
    xml.link "http://justinherrick.com/"

    for post in locals[:posts]
      xml.item do
        xml.title       post.title
        xml.description post.body
        xml.pubDate     post.date
        xml.link        url("posts/" + post.slug)
      end
    end
  end
end
