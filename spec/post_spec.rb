require 'lib/post'

describe Post do
  let (:attrs) { { "title" => "my title",
                   "body"  => "my blog post",
                   "date"  => "01-01-2001",
                   "tags"  => %w[watermelon games tv]} }

  it "can be created from a hash" do
    Post.from_hash(attrs).title.should == "my title"
  end

  it "can return a hash of its values" do
    Post.from_hash(attrs).attributes.should == attrs
  end

  it "returns a slug of the post title" do
    Post.new("This Is My Title").slug.should == "this-is-my-title"
    Post.new("This Shouldn't Have any @t's or Bangs!").slug.should == "this-shouldnt-have-any-ts-or-bangs" end
end
