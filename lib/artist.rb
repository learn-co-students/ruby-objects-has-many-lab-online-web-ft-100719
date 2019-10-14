class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    self.name = name
    save
  end

  def save
    @@all << self
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.all
    @@all
  end

  def self.song_count
    @@all.reduce(0) do |counter, artist|
      counter += artist.songs.length
      counter
    end
  end
end
