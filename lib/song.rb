class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(new_song)
    new_song = Song.new
    new_song.save
    new_song.name = new_name
    new_song.name
  end
end
