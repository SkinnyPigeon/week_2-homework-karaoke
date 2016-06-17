require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'
require_relative '../reception'
require_relative '../guests'
require 'pry-byebug'

class RoomsTest < MiniTest::Test

  def setup 
    @room1=Room.new("Nice 'n Sleezy", 2, 15)
    @room2=Room.new("Jim's Bassy Song Hole", 4, 25)

    @song1=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
    @song2=Song.new("I'm Going To Kill Yo Mamma", "Iain and The Steamtrain", 2016, "Rocket Houselite")
    @song3=Song.new("Slow Roast", "Immortal Jane", 1906, "Sleeze Mode 8")

    @guest1=Guest.new("Jonny Big-Tash", "Slow Roast")
    @guest2=Guest.new("Stevie Winwood", "I'm Going To Kill Yo Mamma")
    @guest3=Guest.new("The Entire Royal Philharmoic East Compton Rap Brigade's PA", "Deep Down In The Ole Pit")

  end


end