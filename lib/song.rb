class Song
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, genre = "")
    @name = name
    @genre = genre
    save 
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.artist 
    @artist 
  end
  
    def artist_name
    if @artist == nil 
      return nil 
    else 
      @artist.name
    end
  end
  
  
end