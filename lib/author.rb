class Author

  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []

  end

  def add_post(post)
    @posts << post
    @@all << post
    post.author = self
    post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    @@all << post
    post.author = self
    post
  end

  def self.post_count
    @@all.length
  end

end
