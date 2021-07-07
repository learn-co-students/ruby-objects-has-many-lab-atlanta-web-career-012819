require 'pry'

class Song
  @@all = []

  attr_reader :name
  attr_accessor :artist

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
  artist.name if artist 
  end
  end
