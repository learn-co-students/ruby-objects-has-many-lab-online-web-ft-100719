class Artist
  
  attr_accessor :name, :songs, :genre
  
  def initialize(name = "", genre = "")
    @songs = []
    @name = name
    @genre = genre
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.name
    @name
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
    @songs << new_song
  end
  
  def self.song_count
    Song.all.size
  end
    
  
end