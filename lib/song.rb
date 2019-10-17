class Song

  attr_accessor :name

  attr_reader :artist

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def artist=(artist)
    @artist = artist
    artist.songs << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    !!self.artist ? self.artist.name : nil
  end

end
