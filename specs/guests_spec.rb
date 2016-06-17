require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'
require_relative '../songs'

class GuestTest < MiniTest::Test

  def setup
    @guest1=Guest.new("Jonny Big-Tash", "Slow Roast")
    @guest2=Guest.new("Stevie Winwood", "I'm Going To Kill Yo Mamma")
    @guest3=Guest.new("The Entire Royal Philharmoic East Compton Rap Brigade's PA", "Deep Down In The Ole Pit")

    @song1=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
    @song2=Song.new("I'm Going To Kill Yo Mamma", "Iain and The Steamtrain", 2016, "Rocket Houselite")
    @song3=Song.new("Slow Roast", "Immortal Jane", 1906, "Sleeze Mode 8")
  end

  def test_guests_have_names
    assert_equal("Jonny Big-Tash", @guest1.name)
  end

  def test_guests_have_favourite_song
    assert_equal("Oh my God I love this ooooooonnnnnnnnneeee", @guest1.fave_song(@song3))
  end


end