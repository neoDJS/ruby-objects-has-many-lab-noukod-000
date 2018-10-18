class Author
  attr_accessor :name, :posts
  def initialize(name="")
    self.name = name
    @posts = []
  end

  def add_post(post="")
    new_p = post
    new_p.author = self
    @posts << new_p
  end

  def add_post_by_title(title="")
    new_p = Post.new(title)
    new_p.author = self
    @posts << new_p
  end

  def self.post_count
    Post.all.count
  end
end
