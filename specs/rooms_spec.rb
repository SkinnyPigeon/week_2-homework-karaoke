require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'
require_relative '../songs'

class RoomsTest < MiniTest::Test

  def setup 
    @room=Room.new("Nice 'n Sleezy")
    @song1=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
    @song2=Song.new("I'm Going To Kill Yo Mamma", "Iain and The Steamtrain", 2016, "Rocket Houselite")

    @playlist = [ @song1, @song2 ]
  end

  def test_room_has_name
    assert_equal("Nice 'n Sleezy", @room.name)
  end

  def test_room_has_playlist
    assert_equal([], @room.playlist)
  end



end