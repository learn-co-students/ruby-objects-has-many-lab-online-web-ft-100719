class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    self.name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
  def posts
    Post.all.select{|post| post.author == self}
  end
  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
  end

  def self.post_count
    @@all.reduce(0) do |counter, author|
      counter += author.posts.length
      counter
    end
  end
end
