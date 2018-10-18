class Artist
  attr_accessor :name, :songs

  def initialize(name="")
    self.name = name
    @songs = []
  end

  def add_song(song="")
    new_s = song
    new_s.author = self
    @songs << new_s
  end

  def add_song_by_name(title="")
    new_s = Song.new(title)
    new_s.artist = self
    @songs << new_s
  end

  def self.song_count
    Song.all.count
  end
end
