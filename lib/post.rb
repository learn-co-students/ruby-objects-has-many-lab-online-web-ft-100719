class Post

  attr_accessor :title

  attr_reader :author

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def author=(author)
    @author = author
    author.posts << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    !!self.author ? self.author.name : nil
  end

end
