require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'
require_relative '../songs'
require_relative '../guests'
require 'pry-byebug'

class RoomsTest < MiniTest::Test

  def setup 
    @room=Room.new("Nice 'n Sleezy", 2)

    @song1=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
    @song2=Song.new("I'm Going To Kill Yo Mamma", "Iain and The Steamtrain", 2016, "Rocket Houselite")
    @song3=Song.new("Slow Roast", "Immortal Jane", 1906, "Sleeze Mode 8")

    @guest1=Guest.new("Jonny Big-Tash")
    @guest2=Guest.new("Stevie Winwood")
    @guest3=Guest.new("The Entire Royal Philharmoic East Compton Rap Brigade's PA")

    @songs = [ @song1, @song2 ]
  end

  def test_room_has_name
    assert_equal("Nice 'n Sleezy", @room.name)
  end

  def test_room_has_playlist
    assert_equal([], @room.playlist)
  end

  def test_add_song_to_room
    @room.add_song(@song1)
    assert_equal(1, @room.number_of_songs)
  end

  def test_add_guests_to_room
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    assert_equal(2,@room.number_of_guests)
  end

  def test_remove_guest_from_room
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.remove_guest(@guest1)
    binding.pry
    assert_equal(1, @room.number_of_guests)
  end

  def test_cannot_exceed_capacity
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.add_guest(@guest3)
    binding.pry
    assert_equal(2, @room.number_of_guests)
  end

end










