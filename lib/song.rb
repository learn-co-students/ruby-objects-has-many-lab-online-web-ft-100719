class Song 
  attr_accessor :artist, :name 
  @@all = []
  
  def initialize(name, artist=nil)
    @name = name 
    @artist = artist
    @@all << self 
  end
  def self.all 
   @@all
  end 
  def artist_name
    if artist 
      @artist.name 
    else 
      nil
    end
  end
end