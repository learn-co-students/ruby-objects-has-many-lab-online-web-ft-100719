class Author
attr_accessor :name
attr_reader :posts

  def initialize(name)
    @name=name
    @posts=[]
  end
  
  def add_post(post)
    @posts<< post
    post.artist=self
  end
  
  def add_post_by_title(post_title)
    poste=Post.new(post_title)
    self.add_post(poste)
  end
  
  def post_count
    self.posts.size
  end
  
end