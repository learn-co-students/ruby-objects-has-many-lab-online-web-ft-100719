class Artist 
  attr_accessor :name 
  
  def initialize(name)
    self.name = name
  end
  
  def add_song(song)
    song.artist = self 
    self.songs << song
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self 
    self.songs << song 
  end 
  
  def songs 
    Song.all
  end 
  
  def self.song_count
    Song.all.uniq.count
  end 
end 