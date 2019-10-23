require 'pry'
class Artist

  attr_accessor :name #attr sets reader and writer for @name


  def initialize(name)#initalized the class with a name so that artist=Artist.new("Name") #=> #<Artist:0x00005612e033d1e8 @name="Drake", @songs=[]>
    @name=name #set the instance variable @name to the name we passed in as an argument at initialization ^ seen above
    @songs=[]#set instance variable to empty array to hold songs that an artist was initialized with
  end

  def songs #defined a method #songs
    @songs
    #Song.all.select{|song| song.artist==self}#works off of the Song class, calls the self.all method that returns @@all the array, and selects songs if the song calls on its artist and matches itself (Artist instance)
  end

  def add_song(song)#defined an instance method add_song that takes in a song as as an argument
    song.artist=self #the song calls on its artist and sets it to self (the artist itself.)
    @songs << song
    # song.artist=self---->code I wrote before watching Avi's video
  end

  def add_song_by_name(name)#defined instance method that takes in a song name as an argument
    song=Song.new(name) #We set a local variable song to a new instance of a song initialized with a name
    song.artist=self# the song calls on the artist and stores t

    end

  def self.song_count
    Song.all.count
  end

end
