class Artist

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
    #@@all.select{|artist| artist.name}
  end

  def songs
    Song.all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    Song.all.map{|song| song.genre}
  end
end



end
