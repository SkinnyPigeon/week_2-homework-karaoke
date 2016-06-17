require_relative 'guests'
require_relative 'songs'
require 'pry-byebug'
class Room

  attr_reader(:name, :guests)
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

  def add_guest(name)
    @guests << name
  end

  def remove_guest(name)
    @guests.delete(name)
  end

  def number_of_guests
    @guests.length
  end

  def puts_guests
    binding.pry
    for guest in @guests
      puts guest
    end
  end

end


