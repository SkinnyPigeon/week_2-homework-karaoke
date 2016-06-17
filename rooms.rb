require_relative 'songs'
require_relative 'guests'
require 'pry-byebug'
class Room

  attr_reader(:name)
  attr_accessor(:playlist)

  def initialize(name)
    @name = name
    @playlist = []
  end

  def add_song_by_name(song)
    @playlist << song.name
  end

end