require_relative 'playlist'
require_relative 'guests'
require 'pry-byebug'
class Room

  attr_reader(:name)
  attr_accessor(:playlist)

  def initialize(name)
    @name = name
    @guests = []
    @playlist = []
  end

  def add_song(song)
    @playlist << song
  end

  def number_of_songs
    @playlist.length
  end

end