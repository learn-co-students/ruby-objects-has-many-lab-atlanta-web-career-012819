class Author
  @@all = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  attr_accessor :name
  attr_accessor :posts

  def add_post(post)
    @posts << post
    post.author = self
    @@all += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.post_count
    @@all
  end
end
