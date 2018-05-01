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

  def self.new_by_name(song_title)
    song = self.new
    song.name = song_title
    song
  end

  def self.create_by_name(song_title)
    song = self.create
    song.name = song_title
    song
  end

  def self.find_by_name(song_title)
    song = nil
    self.all.detect do |i|
      if i.name == song_title
        song = i.name
      end
    end
  end

  def self.find_or_create_by_name(song_title)
    if self.find_by_name
      self.find_by_name
    else
      self.create_by_name
    end
  end

end
