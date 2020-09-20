class Artist
require 'pry'
    attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song1)
    song1.artist = self
  end

  def add_song_by_name(song_name)
    song2 = Song.new(song_name)
    song2.artist = self
  end

  def self.song_count
    k = Song.all.select do |song|
      song.artist_name
    end
    k.count
  end
end
