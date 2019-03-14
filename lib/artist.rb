require 'pry'

class Artist

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist = self}
  end

  def add_song(song)
    @@all << song
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
  end

  def self.song_count
    Song.all.select {|song| song.artist = self}.count
    # binding.pry
  end



end
