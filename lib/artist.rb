class Artist
  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name
  attr_accessor :song

  def add_song(song)
    @songs << song
  end

  def add_song_by_name(title)
    song = Song.new(title)
    self.add_song(song)
  end

  def song_count
    songs.count
  end
end
