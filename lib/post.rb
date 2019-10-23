class Post

  attr_accessor :title, :author

  @@all=[]

  def initalize(title)
    @title=title
    @@all << self
  end

  def self.all
    @@all
  end


  def author_name
    @author.name if @author
  end

end
