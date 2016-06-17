require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'
require_relative '../songs'
require_relative '../rooms'

class GuestTest < MiniTest::Test

  def setup
    @room1=Room.new("Nice 'n Sleezy", 2, 15)
    @room2=Room.new("Jim's Bassy Song Hole", 4, 25)

    @guest1=Guest.new("Jonny Big-Tash", "Slow Roast", 100)
    @guest2=Guest.new("Stevie Winwood", "I'm Going To Kill Yo Mamma", 150)
    @guest3=Guest.new("The Entire Royal Philharmoic East Compton Rap Brigade's PA", "Deep Down In The Ole Pit", 10)

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

  def test_guest_can_afford_room
    assert_equal(true, @guest1.can_afford(@room1))
    assert_equal("Get out of here before Big Dave crushes your broke ass", @guest3.can_afford(@room2))
  end


end