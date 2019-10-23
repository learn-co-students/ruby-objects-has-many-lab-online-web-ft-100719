require 'pry'

class Song

  attr_accessor :name, :artist

  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist=artist
    @artist.songs<<self# self is object Hello.
  end
  # def name
  #
  # end
  #
  # def artist
  #
  # end

  def artist_name
   @artist.name if @artist
    # artist.name if artist #.name calls getter and gives value. The attr accessor gives name
  end





end
