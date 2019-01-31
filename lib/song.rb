class Song
  @@all = []
  attr_accessor :artist
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    artist.name if artist
  end

  def self.all
    @@all
  end
end
