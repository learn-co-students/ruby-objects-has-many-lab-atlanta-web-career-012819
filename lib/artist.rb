class Artist
  @@all = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name
  attr_accessor :songs

  def add_song(song)
    @songs << song
    song.artist = self
    @@all += 1
  end

  def add_song_by_name(title)
    song = Song.new(title)
    self.add_song(song)
  end

  def self.song_count
    @@all
  end
end
