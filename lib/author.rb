class Author
  attr_accessor :name, :posts
  def initialize(name="")
    self.name = name
    @posts = []
  end

  def add_post(title="")
    new_p = Post.all.find do |p| p.title == title end
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
