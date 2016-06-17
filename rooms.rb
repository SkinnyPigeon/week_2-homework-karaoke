require_relative 'guests'
require_relative 'songs'
require 'pry-byebug'
class Room

  attr_reader(:name, :guests, :capacity, :price, :beer, :wine, :jaeger_bomb)
  attr_accessor(:playlist)

  def initialize(name, capacity, price)
    @name = name
    @capacity = capacity
    @price = price
    @guests = []
    @groups = []
    @playlist = []
    @beer = 3.5
    @wine = 5
    @jaeger_bomb = 7.5
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


  def form_groups(names)
    number_in_group() < @capacity ? @groups << names : "Sorry pal, that's a firehazard. That could be my license."
  end


  def number_in_group
    @groups.flatten.length
  end

end


