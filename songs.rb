class Song

  attr_reader(:name, :artist, :year, :genre)

  def initialize(name, artist, year, genre)
    @name = name
    @artist = artist
    @year = year
    @genre = genre
  end

end