require 'pry'

class Post

  attr_accessor :author
  attr_reader :post

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def title
    @title
  end

  def self.all
    @@all
  end

  def author_name
    if author == nil
      return nil
    else
      return author.name
    end
  end
end 
