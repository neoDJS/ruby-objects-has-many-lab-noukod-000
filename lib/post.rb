class Post
  @@all = []
  attr_accessor :title, :author
  def initialize(title="")
    self.title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author ? self.author.name : nil ;
  end
end
