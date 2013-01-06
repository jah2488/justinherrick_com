require 'lib/posts'
require 'lib/post'

describe Posts do
  it "has enumerable included and resonds correctly." do
    posts = Posts.new([Post.new('title'), Post.new('Not this one')])
    posts.find { |x| x.title == "title" }.should == Post.new('title')
  end
end
