class Post
  @@all = []
  def self.all
    @@all.count
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  attr_accessor :title
  attr_accessor :author

  def author_name
    @author.name unless @author == nil
  end


end
