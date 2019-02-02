require 'pry'

class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    
  end

  def add_song(song)
    @songs << song
    @@all << song
    song.artist = self
    song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    @@all << song
    song.artist = self
    song
  end

  def self.song_count
    @@all.length
  end

end
