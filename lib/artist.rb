class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Songs.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.collect {|song| song.genre}
  end

end
