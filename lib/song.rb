class Song
  @@all = []
  def initialize(title)
    @name = title
    @@all << self
  end
  attr_accessor :name
  attr_accessor :artist

  def self.all
    @@all
  end

  def artist_name
    self.artist.name unless self.artist == nil
  end

end
