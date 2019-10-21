class Author
attr_accessor :name, :posts

  def initialize(name)
    @name=name
    @posts=[]
  end
  
  def add_post(post)
    post.author=self
    @posts<< post unless @posts.include?(post)
  end
  
  def add_post_by_title(post_title)
    post=Post.new(post_title)
    self.add_post(post)
  end
  
  def self.post_count
    Post.all.size
  end
  
end