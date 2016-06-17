require_relative 'rooms'
require 'pry-byebug'

class Guest

  attr_reader(:name, :favourite_song, :cash)

  def initialize(name, favourite_song, cash)
    @name = name
    @favourite_song = favourite_song
    @cash = cash
  end

  def fave_song(song)
    if @favourite_song = song 
      return "Oh my God I love this ooooooonnnnnnnnneeee"
    end
  end 

  def can_afford(room)
    if @cash > room.price
      puts "Come on in. Please drink a lot"
      return true
    else
      puts "Get out of here before Big Dave crushes your broke ass"
      return false
    end
  end

end