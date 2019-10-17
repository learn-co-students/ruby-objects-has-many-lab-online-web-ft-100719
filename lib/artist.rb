class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = [] #empty collection of songs
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song_name)
  end

  def self.song_count
    @@song_count
  end

end
