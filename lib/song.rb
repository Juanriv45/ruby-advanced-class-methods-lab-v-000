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
    song = self.new
    song.save
    song
  end

  def self.new_by_name(new_song)
    song = self.new
    song.name = new_song
    song
  end
  def self.create_by_name(new_song)
    song = self.create
    song.name = new_song
    song
  end
  def self.find_by_name(song_name)
    self.all.detect do |song|
      song == song_name
    end
  end
end
