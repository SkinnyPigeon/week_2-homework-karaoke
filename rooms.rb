require_relative 'guests'
require_relative 'songs'
require 'pry-byebug'
class Room

  attr_reader(:name, :guests, :capacity, :price)
  attr_accessor(:playlist)

  def initialize(name, capacity, price)
    @name = name
    @capacity = capacity
    @price = price
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
    number_of_guests() < @capacity ? @guests << name : "Sorry pal, that's a firehazard. That could be my license."
  end

  def remove_guest(name)
    @guests.delete(name)
  end

  def number_of_guests
    @guests.length
  end



end


