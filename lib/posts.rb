class Posts
  include Enumerable

  def initialize(*args)
    @posts = Array.new(*args)
  end

  def each(*args, &block)
    posts.each(*args, &block)
  end

  def reverse
    posts.reverse
  end

  def last
    reverse.first
  end

  protected
  attr_reader :posts
end

