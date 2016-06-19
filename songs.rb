require 'pry-byebug'

class Song

  attr_reader(:name, :artist, :year, :genre, :songs)

  def initialize(name, artist, year, genre)
    @name = name
    @artist = artist
    @year = year
    @genre = genre
    @songs = []
  end

  def find_song_by_name(name)
    binding.pry
    result = @songs.find { |name| song.name == name }
    return result.name
  end
  

end