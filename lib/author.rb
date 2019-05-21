class Author 
  
  attr_accessor :name
  @@all_posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(post)
    post.author = self
    @posts << post
    @@all_posts << post
  end
  
  def add_post_by_title(title)
    add_post(Post.new(title))
  end
  
  def self.post_count
    @@all_posts.count 
  end
    
end